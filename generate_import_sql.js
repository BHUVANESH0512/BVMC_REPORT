const fs = require('fs');
const path = require('path');
const { DatabaseSync } = require('node:sqlite');

const BASE_DIR = __dirname;
const REPORTS_JSON_PATH = path.join(BASE_DIR, 'reports.json');
const FLEET_STATE_JSON_PATH = path.join(BASE_DIR, 'fleet_state.json');
const DB_PATH = path.join(BASE_DIR, 'fleet_state.db');
const APP_PY_PATH = path.join(BASE_DIR, 'app.py');

// SQL escape string
function sqlVal(str) {
  if (str === null || str === undefined) return 'NULL';
  return "'" + String(str).replace(/'/g, "''") + "'";
}

function sqlJson(obj) {
  if (obj === null || obj === undefined) return 'NULL';
  return "'" + JSON.stringify(obj).replace(/'/g, "''") + "'::jsonb";
}

// 1. Extract PREDEFINED_VEHICLES from app.py
const appPyContent = fs.readFileSync(APP_PY_PATH, 'utf8');
const predefinedVehicles = {};
const matchPredef = appPyContent.match(/PREDEFINED_VEHICLES\s*=\s*\{([\s\S]*?)\n\}/);
if (matchPredef) {
  const lines = matchPredef[1].split('\n');
  lines.forEach(line => {
    const m = line.match(/"([^"]+)":\s*\{"nickname":\s*"([^"]+)",\s*"location":\s*"([^"]+)",\s*"mode":\s*"([^"]+)"\}/);
    if (m) {
      predefinedVehicles[m[1]] = {
        vin: m[1],
        nickname: m[2],
        location: m[3],
        mode: m[4],
        predefined: true
      };
    }
  });
}
console.log('Extracted predefined vehicles from app.py:', Object.keys(predefinedVehicles).length);

// 2. Load reports.json
const reportsData = JSON.parse(fs.readFileSync(REPORTS_JSON_PATH, 'utf8'));
console.log('Loaded reports count from reports.json:', reportsData.length);

// 3. Load fleet_state.json
const fleetStateData = JSON.parse(fs.readFileSync(FLEET_STATE_JSON_PATH, 'utf8'));
console.log('Loaded fleet_state vehicles count:', Object.keys(fleetStateData.vehicles || {}).length);

// 4. Load customer_feedback from SQLite DB
let customerFeedbackRows = [];
try {
  const db = new DatabaseSync(DB_PATH);
  customerFeedbackRows = db.prepare("SELECT * FROM customer_feedback").all();
  console.log('Loaded customer_feedback rows from SQLite:', customerFeedbackRows.length);
} catch (e) {
  console.warn('Could not read customer_feedback from SQLite:', e.message);
}

// 5. Build Master Vehicles Map
const masterVehicles = {};

// Add predefined first
for (const [vin, v] of Object.entries(predefinedVehicles)) {
  masterVehicles[vin] = {
    vin: vin,
    nickname: v.nickname,
    location: v.location,
    mode: v.mode,
    predefined: true,
    raw_data: null
  };
}

// Collect from all reports
reportsData.forEach(rep => {
  for (const [vin, v] of Object.entries(rep.vehicles || {})) {
    if (!masterVehicles[vin]) {
      masterVehicles[vin] = {
        vin: vin,
        nickname: v.nickname || '',
        location: v.location || '',
        mode: v.mode || 'Non-Autonomous',
        predefined: false,
        raw_data: null
      };
    } else {
      // Update with non-empty values if missing
      if (!masterVehicles[vin].nickname && v.nickname) masterVehicles[vin].nickname = v.nickname;
      if ((!masterVehicles[vin].location || masterVehicles[vin].location === 'Not Available') && v.location && v.location !== 'Not Available') {
        masterVehicles[vin].location = v.location;
      }
    }
  }
});

// Also from fleet_state
for (const [vin, v] of Object.entries(fleetStateData.vehicles || {})) {
  if (!masterVehicles[vin]) {
    masterVehicles[vin] = {
      vin: vin,
      nickname: v.nickname || '',
      location: v.location || '',
      mode: v.mode || 'Non-Autonomous',
      predefined: false,
      raw_data: null
    };
  }
}
console.log('Total unique master vehicles across all sources:', Object.keys(masterVehicles).length);

// Helper for issue items (identical to issue_report.py vehicle_issue_items)
const COMPONENTS = ["BMS", "Motor", "DCDC", "EPAS", "MDM", "Other"];
const SEVERITIES = ["Low", "Medium", "High", "Critical"];

function getVehicleIssueItems(val) {
  const issues = Array.isArray(val.issues) ? val.issues : [];
  const details = Array.isArray(val.issue_details) ? val.issue_details : [];
  const count = details.length > 0 ? Math.max(issues.length, details.length) : issues.length;
  const items = [];
  const usedIds = new Set();

  for (let idx = 0; idx < count; idx++) {
    const d = (idx < details.length && typeof details[idx] === 'object' && details[idx] !== null) ? details[idx] : {};
    const legacyTitle = (idx < issues.length && issues[idx]) ? String(issues[idx]).trim() : '';
    let component = d.component ? String(d.component).trim() : '';
    if (!COMPONENTS.includes(component)) component = '';
    let severity = d.severity ? String(d.severity).trim() : '';
    if (!SEVERITIES.includes(severity)) severity = '';
    let issueId = d.id ? String(d.id).replace(/[^A-Za-z0-9_-]/g, '').trim() : '';
    if (!issueId || usedIds.has(issueId)) issueId = `i${idx + 1}`;
    usedIds.add(issueId);

    items.push({
      id: issueId,
      title: (d.issue ? String(d.issue).trim() : '') || legacyTitle,
      description: d.description ? String(d.description).trim() : '',
      period: d.period ? String(d.period).trim() : '',
      occurrences: d.occurrences ? String(d.occurrences).trim() : '',
      component: component,
      reported_by: d.reported_by ? String(d.reported_by).trim() : '',
      severity: severity,
      rca: d.rca ? String(d.rca).trim() : '',
      responsible_team: d.responsible_team ? String(d.responsible_team).trim() : '',
      customer_feedback: d.customer_feedback ? String(d.customer_feedback).trim() : '',
      grafana_url: d.grafana_url ? String(d.grafana_url).trim() : '',
      raw_data: d
    });
  }
  return items;
}

// 6. Generate SQL statements
let sql = `-- =============================================================================
-- BVMC Report — Historical Data Import
-- Contains full three-month history (August 2026 – October 2026)
-- SAFE TO RERUN: Uses ON CONFLICT DO NOTHING for all inserts.
-- =============================================================================

BEGIN;

-- ─────────────────────────────────────────────────────────────────────────────
-- 1. Populate Master Vehicles Registry (${Object.keys(masterVehicles).length} unique vehicles)
-- ─────────────────────────────────────────────────────────────────────────────
`;

for (const v of Object.values(masterVehicles)) {
  sql += `INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES (${sqlVal(v.vin)}, ${sqlVal(v.nickname)}, ${sqlVal(v.location)}, ${sqlVal(v.mode)}, ${v.predefined ? 'true' : 'false'}, ${sqlJson(v.raw_data)})
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);\n`;
}

sql += `\n-- ─────────────────────────────────────────────────────────────────────────────
-- 2. Populate Reports (${reportsData.length} published historical reports)
-- ─────────────────────────────────────────────────────────────────────────────
`;

for (const rep of reportsData) {
  const filePath = rep.file || `reports/report_${rep.id}.html`;
  sql += `INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES (${sqlVal(rep.id)}, ${sqlVal(rep.label)}, ${sqlVal(rep.range)}, ${sqlVal(rep.sort_date)}, ${sqlVal(rep.timestamp)}, ${rep.vehicles_count || 0}, ${sqlVal(rep.vehicles_label)}, ${sqlVal(filePath)}, ${sqlJson(rep.vehicles)})
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;\n`;
}

sql += `\n-- ─────────────────────────────────────────────────────────────────────────────
-- 3. Populate Report Vehicles and Issues (per-report snapshots)
-- ─────────────────────────────────────────────────────────────────────────────
`;

let totalReportVehicles = 0;
let totalReportIssues = 0;

for (const rep of reportsData) {
  sql += `\n-- Report: ${rep.id} (${rep.range})\n`;
  const reportVehicles = rep.vehicles || {};

  for (const [vin, val] of Object.entries(reportVehicles)) {
    totalReportVehicles++;
    // We use a DO block or direct INSERT with generated UUID or ON CONFLICT
    // Since report_vehicles has UNIQUE(report_id, vin), we can insert and retrieve or use upsert
    const statusVal = val.status || 'healthy';
    const distVal = val.distance || (statusVal === 'inactive' ? 'Nil' : '0');
    const durVal = val.duration || (statusVal === 'inactive' ? 'Nil' : '0s');

    sql += `INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES (${sqlVal(rep.id)}, ${sqlVal(vin)}, ${sqlVal(val.nickname)}, ${sqlVal(val.location)}, ${sqlVal(val.mode)}, ${sqlVal(statusVal)}, ${sqlVal(distVal)}, ${sqlVal(durVal)}, ${sqlVal(val.timestamp)}, ${sqlVal(val.vt_box_time)}, ${sqlVal(val.grafana_url)}, ${sqlJson(val.versions)}, ${sqlJson(val)})
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;\n`;

    const issueItems = getVehicleIssueItems(val);
    if (issueItems.length > 0) {
      issueItems.forEach((it, orderIdx) => {
        totalReportIssues++;
        sql += `INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, ${sqlVal(it.id)}, ${sqlVal(it.title)}, ${sqlVal(it.description)}, ${sqlVal(it.period)}, ${sqlVal(it.occurrences)}, ${sqlVal(it.component)}, ${sqlVal(it.reported_by)}, ${sqlVal(it.severity)}, ${sqlVal(it.rca)}, ${sqlVal(it.responsible_team)}, ${sqlVal(it.customer_feedback)}, ${sqlVal(it.grafana_url)}, ${orderIdx}, ${sqlJson(it.raw_data)}
FROM report_vehicles WHERE report_id = ${sqlVal(rep.id)} AND vin = ${sqlVal(vin)}
ON CONFLICT DO NOTHING;\n`;
      });
    }
  }
}

sql += `\n-- ─────────────────────────────────────────────────────────────────────────────
-- 4. Populate Active Fleet State (latest working state)
-- ─────────────────────────────────────────────────────────────────────────────
`;

sql += `INSERT INTO fleet_state (id, global_duration, vehicles_json, updated_at)
VALUES (1, ${sqlVal(fleetStateData.global_duration || '16-10-2026 to 31-10-2026')}, ${sqlJson(fleetStateData.vehicles || {})}, now())
ON CONFLICT (id) DO UPDATE SET
  global_duration = EXCLUDED.global_duration,
  vehicles_json = EXCLUDED.vehicles_json,
  updated_at = now();\n`;

sql += `\n-- ─────────────────────────────────────────────────────────────────────────────
-- 5. Populate Customer Feedback (${customerFeedbackRows.length} historical records)
-- ─────────────────────────────────────────────────────────────────────────────
`;

for (const row of customerFeedbackRows) {
  sql += `INSERT INTO customer_feedback (vin, issue_id, feedback, created_at, updated_at)
VALUES (${sqlVal(row.vin)}, ${sqlVal(row.issue_id)}, ${sqlVal(row.feedback)}, ${sqlVal(row.created_at)}, ${sqlVal(row.updated_at)})
ON CONFLICT (vin, issue_id) DO UPDATE SET
  feedback = EXCLUDED.feedback,
  updated_at = EXCLUDED.updated_at;\n`;
}

sql += `\nCOMMIT;\n
-- =============================================================================
-- Historical Import Complete!
-- Summary:
--   Master Vehicles: ${Object.keys(masterVehicles).length}
--   Reports: ${reportsData.length}
--   Report Vehicle Snapshots: ${totalReportVehicles}
--   Report Issues Logged: ${totalReportIssues}
--   Active Fleet Vehicles: ${Object.keys(fleetStateData.vehicles || {}).length}
--   Customer Feedback Entries: ${customerFeedbackRows.length}
-- =============================================================================
`;

const IMPORT_SQL_PATH = path.join(BASE_DIR, 'supabase_historical_import.sql');
fs.writeFileSync(IMPORT_SQL_PATH, sql, 'utf8');
console.log(`Generated ${IMPORT_SQL_PATH} (${(sql.length / 1024).toFixed(1)} KB)`);
console.log(`Summary: ${Object.keys(masterVehicles).length} vehicles, ${reportsData.length} reports, ${totalReportVehicles} report_vehicles, ${totalReportIssues} issues.`);
