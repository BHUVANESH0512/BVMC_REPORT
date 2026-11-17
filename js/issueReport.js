/**
 * BVMC Report — Issue Report & Summary Processing Logic
 * 1:1 port of issue_report.py to JavaScript.
 * 
 * Generates the Issue Summary section, Issue Category Summary, Data/Telemetry Issues tables,
 * per-vehicle issue detail table, and CSV rows.
 */

import { esc, cleanText, cleanUrl, getShortNickname, MAX_FIELD_LEN, MAX_FEEDBACK_LEN } from './dataHelpers.js';

export const COMPONENTS = ["BMS", "Motor", "DCDC", "EPAS", "MDM", "Other"];
export const SEVERITIES = ["Low", "Medium", "High", "Critical"];
export const BMS_MOTOR_COMPONENTS = ["BMS", "Motor", "DCDC"];
export const ISSUE_STATUSES = ["unhealthy", "mdm_issue"];

// [component, table label, icon, icon background]
export const CATEGORY_DEFS = [
  ["BMS", "BMS Issues", "🔋", "#dc2626"],
  ["EPAS", "EPAS Issues", "🚗", "#2563eb"],
  ["DCDC", "DCDC Issues", "🔌", "#0d9488"],
  ["Motor", "Motor Faults", "⚙️", "#ea580c"],
  ["MDM", "Data / Telemetry Issues", "📶", "#7c3aed"],
];

// severity -> [badge background, badge text colour]
export const SEVERITY_STYLES = {
  "Low": ["#dcfce7", "#16a34a"],
  "Medium": ["#ffedd5", "#ea580c"],
  "High": ["#fee2e2", "#dc2626"],
  "Critical": ["#991b1b", "#ffffff"],
};

// severity -> accent colour of the left border of an issue block
export const SEVERITY_BORDERS = {
  "Low": "#16a34a",
  "Medium": "#ea580c",
  "High": "#dc2626",
  "Critical": "#991b1b"
};

/**
 * Return one object per issue of a vehicle.
 * Handles both structured issue_details and legacy plain-text issues.
 * @param {object} val 
 * @returns {Array<object>}
 */
export function vehicleIssueItems(val) {
  const issues = Array.isArray(val?.issues) ? val.issues : [];
  const details = Array.isArray(val?.issue_details) ? val.issue_details : [];
  const count = details.length > 0 ? Math.max(issues.length, details.length) : issues.length;

  const items = [];
  const usedIds = new Set();

  for (let idx = 0; idx < count; idx++) {
    const d = (idx < details.length && typeof details[idx] === 'object' && details[idx] !== null) ? details[idx] : {};
    const legacyTitle = (idx < issues.length && issues[idx] !== null && issues[idx] !== undefined) ? cleanText(issues[idx]) : '';
    let component = cleanText(d.component);
    if (!COMPONENTS.includes(component)) component = '';
    let severity = cleanText(d.severity);
    if (!SEVERITIES.includes(severity)) severity = '';
    let issueId = cleanText(d.id, 64).replace(/[^A-Za-z0-9_-]/g, '');
    if (!issueId || usedIds.has(issueId)) issueId = `i${idx + 1}`;
    usedIds.add(issueId);

    items.push({
      id: issueId,
      title: cleanText(d.issue) || legacyTitle,
      description: cleanText(d.description),
      period: cleanText(d.period),
      occurrences: cleanText(d.occurrences),
      component: component,
      reported_by: cleanText(d.reported_by),
      severity: severity,
      rca: cleanText(d.rca),
      responsible_team: cleanText(d.responsible_team),
      customer_feedback: cleanText(d.customer_feedback, MAX_FEEDBACK_LEN),
      grafana_url: cleanUrl(d.grafana_url),
      structured: Boolean(component)
    });
  }
  return items;
}

/**
 * Return a copy of a vehicle with clean, aligned issues/issue_details.
 * Old vehicles (no issue_details) keep their issues list unchanged.
 * @param {object} val 
 * @returns {object}
 */
export function normalizeVehicle(val) {
  if (!val || typeof val !== 'object') return {};
  const out = { ...val };
  if (!ISSUE_STATUSES.includes(out.status || 'healthy') || !(val.issue_details && val.issue_details.length > 0)) {
    out.issue_details = [];
    return out;
  }
  const items = vehicleIssueItems(val);
  const details = items.map(it => ({
    id: it.id,
    issue: it.title,
    description: it.description,
    period: it.period,
    occurrences: it.occurrences,
    component: it.component,
    reported_by: it.reported_by,
    severity: it.severity,
    rca: it.rca,
    responsible_team: it.responsible_team,
    customer_feedback: it.customer_feedback,
    grafana_url: it.grafana_url,
  }));
  out.issue_details = details;
  out.issues = items.map(it => it.title);
  return out;
}

/**
 * Normalizes all vehicles in a fleet dictionary.
 * @param {object} vehicles 
 * @returns {object}
 */
export function normalizeVehicles(vehicles) {
  const result = {};
  for (const [vin, val] of Object.entries(vehicles || {})) {
    result[vin] = (val && typeof val === 'object') ? normalizeVehicle(val) : val;
  }
  return result;
}

/**
 * Return a list of human-readable problems (empty when everything is valid).
 * @param {object} vehicles 
 * @returns {Array<string>}
 */
export function validateVehicles(vehicles) {
  const problems = [];
  for (const [vin, val] of Object.entries(vehicles || {})) {
    if (!val || typeof val !== 'object' || !ISSUE_STATUSES.includes(val.status)) {
      continue;
    }
    const items = vehicleIssueItems(val);
    items.forEach((it, idx) => {
      if (it.structured && (!it.title || !it.description)) {
        problems.push(`Vehicle ${vin}, issue ${idx + 1}: both Issue and Description are required.`);
      }
    });
  }
  return problems;
}

/**
 * Severity badge HTML span.
 * @param {string} severity 
 * @returns {string}
 */
export function severityBadge(severity) {
  if (!SEVERITY_STYLES[severity]) return '';
  const [bg, fg] = SEVERITY_STYLES[severity];
  return `<span style="display: inline-block; padding: 3px 8px; font-size: 10px; font-weight: bold; border-radius: 12px; background-color: ${bg}; color: ${fg}; text-transform: uppercase;">${severity}</span>`;
}

/**
 * Single structured issue block HTML.
 * @param {object} item 
 * @returns {string}
 */
export function issueBlockHtml(item) {
  const border = SEVERITY_BORDERS[item.severity] || "#cbd5e1";
  const badge = severityBadge(item.severity);
  const lines = [
    `<strong style="color: #0f172a;">${esc(item.title)}</strong>` + (badge ? ` &nbsp;${badge}` : "")
  ];

  const fieldDefs = [
    ["Description", "description"],
    ["Period", "period"],
    ["Occurrences", "occurrences"],
    ["RCA", "rca"],
    ["Responsible Team", "responsible_team"]
  ];

  for (const [label, key] of fieldDefs) {
    if (item[key]) {
      lines.push(`<span style="color: #64748b;">${label}:</span> ${esc(item[key])}`);
    }
  }

  return `<div style="margin-top: 6px; padding: 8px 10px; background-color: #f8fafc; border: 1px solid #e2e8f0; border-left: 3px solid ${border}; border-radius: 4px; font-size: 12px; line-height: 1.5; color: #475569;">${lines.join('<br/>')}</div>`;
}

function _bucketFor(item, statusVal) {
  if (item.component === "MDM") return "mdm";
  if (BMS_MOTOR_COMPONENTS.includes(item.component)) return "bms";
  if (statusVal === "mdm_issue" && !item.structured) return "mdm";
  const title = (item.title || '').toLowerCase();
  if (title.includes("data loss")) return "data_loss";
  if (title.includes("plug state 4") || title.includes("charging")) return "charging";
  return "bms";
}

/**
 * Counts for the Issue Category Summary and the Data / Telemetry table.
 * @param {object} vehicles 
 * @returns {object}
 */
export function categoryData(vehicles) {
  const counts = {};
  const affected = {};
  const affected_details = {};
  CATEGORY_DEFS.forEach(([comp]) => {
    counts[comp] = 0;
    affected[comp] = [];
    affected_details[comp] = [];
  });

  const telemetry = [];
  let anyStructured = false;

  const sortedVins = Object.keys(vehicles || {}).sort();
  for (const vin of sortedVins) {
    const val = vehicles[vin];
    if (!ISSUE_STATUSES.includes(val?.status || 'healthy')) continue;

    const nick = getShortNickname(val.nickname || '');
    const mdmItems = [];

    for (const it of vehicleIssueItems(val)) {
      if (!it.structured) continue;
      anyStructured = true;
      const comp = it.component;
      if (counts[comp] !== undefined) {
        counts[comp] += 1;
        if (!affected[comp].includes(nick)) {
          affected[comp].push(nick);
          affected_details[comp].push({ vin, nick });
        }
      }
      if (comp === "MDM") {
        mdmItems.push(it);
      }
    }
    if (mdmItems.length > 0) {
      telemetry.push({ vin, nick, items: mdmItems });
    }
  }

  return {
    counts,
    affected,
    affected_details,
    telemetry,
    any_structured: anyStructured
  };
}

/**
 * Builds the side-by-side 'Issue Category Summary' and 'Data / Telemetry Issues' tables.
 * Returns '' when no issue carries a Component (legacy reports).
 * @param {object} vehicles 
 * @returns {string}
 */
export function buildCategoryTablesHtml(vehicles) {
  const data = categoryData(vehicles);
  if (!data.any_structured) {
    return "";
  }

  const th = (align) => `padding: 8px 10px; font-weight: 600; text-align: ${align}; border-bottom: 2px solid #e2e8f0; color: #475569; font-size: 12px;`;
  const td = `padding: 10px; border-bottom: 1px solid #f1f5f9; vertical-align: middle;`;

  let rowsA = "";
  let total = 0;
  for (const [comp, label, icon, color] of CATEGORY_DEFS) {
    const count = data.counts[comp];
    if (count === 0) continue;
    total += count;

    const vehLinks = (data.affected_details[comp] || []).map(v => 
      `<span style="white-space: nowrap;"><a href="#vin-${v.vin}" class="vehicle-link" style="color: #2563eb; text-decoration: underline; text-underline-offset: 3px; font-weight: 600; cursor: pointer;">${esc(v.nick)}</a>&nbsp;(${v.vin})</span>`
    );
    const names = vehLinks.length > 0 ? vehLinks.join('<br/>') : data.affected[comp].map(x => esc(x)).join('<br/>');

    rowsA += `<tr>
      <td style="${td}">
        <table border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td width="28" height="28" align="center" valign="middle" bgcolor="${color}" style="width: 28px; height: 28px; background-color: ${color}; border-radius: 6px; color: #ffffff; font-size: 14px; line-height: 28px; text-align: center;">${icon}</td>
            <td style="padding-left: 10px; font-size: 13px; font-weight: 600; color: #0f172a;">${label}</td>
          </tr>
        </table>
      </td>
      <td style="${td} text-align: center; font-size: 14px; font-weight: 700; color: #0f172a;">${count}</td>
      <td style="${td} font-size: 12px; line-height: 1.6; color: #475569; white-space: nowrap;">${names}</td>
    </tr>`;
  }

  rowsA += `<tr bgcolor="#f8fafc">
    <td style="padding: 10px; font-size: 13px; font-weight: 700; color: #0f172a;">Total Issues</td>
    <td style="padding: 10px; text-align: center; font-size: 14px; font-weight: 700; color: #0f172a;">${total}</td>
    <td style="padding: 10px; font-size: 12px; color: #475569;">—</td>
  </tr>`;

  const tableA = `<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 13px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
    <thead>
      <tr bgcolor="#f8fafc">
        <th style="${th('left')}">Issue Category</th>
        <th style="${th('center')} width: 80px;">Issue Count</th>
        <th style="${th('left')} white-space: nowrap;">Affected Vehicles</th>
      </tr>
    </thead>
    <tbody>${rowsA}</tbody>
  </table>`;

  let tableB = '';
  if (data.telemetry && data.telemetry.length > 0) {
    let rowsB = "";
    for (const entry of data.telemetry) {
      const lines = [];
      for (const it of entry.items) {
        let text = esc(it.description || it.title);
        if (it.period) {
          text += ` (${esc(it.period)})`;
        }
        lines.push(text);
      }
      const vehCell = `<a href="#vin-${entry.vin}" class="vehicle-link" style="color: #2563eb; text-decoration: underline; text-underline-offset: 3px; font-weight: 600; cursor: pointer;">${esc(entry.nick)}</a><br/><span style="font-size: 10px; color: #64748b; font-weight: normal; font-family: Courier, monospace;">(${entry.vin})</span>`;
      rowsB += `<tr>
        <td style="${td} font-size: 13px; font-weight: 700; color: #0f172a;">${vehCell}</td>
        <td style="${td} text-align: center; font-size: 13px; font-weight: 700; color: #0f172a;">${entry.items.length}</td>
        <td style="${td} font-size: 12px; color: #475569;">${lines.join('<br/>')}</td>
      </tr>`;
    }
    tableB = `<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 13px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
      <thead>
        <tr bgcolor="#f8fafc">
          <th style="${th('left')}">Vehicle(s)</th>
          <th style="${th('center')} width: 80px;">Issue Count</th>
          <th style="${th('left')}">Description</th>
        </tr>
      </thead>
      <tbody>${rowsB}</tbody>
    </table>`;
  } else {
    tableB = `<table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 13px; border: 1px solid #e2e8f0; border-radius: 6px;">
      <tr><td style="padding: 16px; font-size: 13px; color: #64748b; text-align: center;">No telemetry issues reported.</td></tr>
    </table>`;
  }

  const heading = 'margin: 0 0 10px 0; font-size: 15px; font-weight: 600; color: #0f172a;';
  return `
    <!-- ISSUE CATEGORY SUMMARY + DATA / TELEMETRY ISSUES -->
    <tr id="issue-category-summary">
      <td style="padding: 0 24px 24px 24px;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td class="stack-col" width="50%" valign="top" style="padding-right: 8px;">
              <h3 style="${heading}">Issue Category Summary</h3>
              ${tableA}
            </td>
            <td class="stack-col" width="50%" valign="top" style="padding-left: 8px;">
              <h3 style="${heading}">Data / Telemetry Issues</h3>
              ${tableB}
            </td>
          </tr>
        </table>
      </td>
    </tr>
  `;
}

export function formatCompactVehicleLink(vin, nick) {
  return `<a href="#vin-${vin}" class="vehicle-link" style="color: #2563eb; text-decoration: underline; text-underline-offset: 3px; font-weight: 600; cursor: pointer;">${esc(nick)}</a>`;
}

export function formatCompactFaults(vin, nick, grafanaUrl, items) {
  const vehicleLink = `<strong>${formatCompactVehicleLink(vin, nick)}</strong>`;
  const grafanaLink = grafanaUrl ? `<a href="${esc(grafanaUrl)}" target="_blank" style="color: #2563eb; text-decoration: underline; font-size: 11px; font-weight: 600;">Grafana link ↗</a>` : "";
  const parts = [vehicleLink];
  if (grafanaLink) parts.push(grafanaLink);

  for (const it of items) {
    if (it.structured) {
      const title = it.title;
      const sev = it.severity;
      const badge = sev ? severityBadge(sev) : "";
      if (badge) {
        parts.push(`<strong>${esc(title)} — ${badge}</strong>`);
      } else {
        parts.push(`<strong>${esc(title)}</strong>`);
      }
    } else if (it.title) {
      parts.push(`<strong>${esc(it.title)}</strong>`);
    }
  }
  return parts.join(" &nbsp;|&nbsp; ");
}

export function formatCompactMdm(vin, nick, grafanaUrl, mdmItems, val, issuesStr) {
  const vehicleLink = `<strong>${formatCompactVehicleLink(vin, nick)}</strong>`;
  const grafanaLink = grafanaUrl ? ` &nbsp;<a href="${esc(grafanaUrl)}" target="_blank" style="color: #2563eb; text-decoration: underline; font-size: 11px; font-weight: 600;">Grafana link ↗</a>` : "";

  let descStr = '';
  if (mdmItems && mdmItems.length > 0) {
    const itemParts = [];
    for (const it of mdmItems) {
      let desc = (it.description || it.title || `VT_BOX online: ${val?.vt_box_time || 'Not Available'}`).trim();
      desc = desc.replace(/\.+$/, '');
      const sev = it.severity;
      const badge = sev ? severityBadge(sev) : "";
      if (badge) {
        itemParts.push(`${esc(desc)}. &nbsp;${badge}`);
      } else {
        itemParts.push(`${esc(desc)}.`);
      }
    }
    descStr = itemParts.join(" &nbsp;|&nbsp; ");
  } else {
    let desc = issuesStr ? issuesStr : `VT_BOX online: ${val?.vt_box_time || 'Not Available'}`;
    desc = desc.replace(/\.+$/, '');
    descStr = `${esc(desc)}.`;
  }

  return `${vehicleLink} (${vin}) — ${descStr}${grafanaLink}`;
}

/**
 * Builds the complete Issue Summary table and category summary tables.
 * @param {object} vehicles 
 * @param {string} globalDuration 
 * @param {object} [options={}] Optional report settings (region, timezone)
 * @returns {string}
 */
export function getIssueSummarySection(vehicles, globalDuration, options = {}) {
  const tempAnomalyVins = [
    "MD9GBUE27DC341048",  // P1
    "MD9GBUE23DC341063",  // P6
    "MD9GBUE29DC341066",  // P9
    "MD9GBUE22DC341068",  // P11
    "MD9GBUE27DC341079",  // P22
    "MD9GBUE20DC341070",  // P13
    "MD9GBUE24DC341038",  // T9
  ];

  const normVehicles = normalizeVehicles(vehicles);
  const lists = {
    mdm: [],
    inactive: [],
    temp: [],
    bms: [],
    charging: [],
    ok: [],
    data_loss: []
  };

  const sortedVins = Object.keys(normVehicles).sort();
  for (const vin of sortedVins) {
    const val = normVehicles[vin];
    const statusVal = val.status || "healthy";
    const nick = getShortNickname(val.nickname || "");
    const items = vehicleIssueItems(val);
    const issues = items.map(i => i.title);
    const issuesStr = issues.join(", ");

    const grafanaUrl = (val.grafana_url || "").trim();
    const grafanaLink = grafanaUrl ? ` &nbsp;<a href="${esc(grafanaUrl)}" target="_blank" style="color: #2563eb; text-decoration: underline; font-size: 11px; font-weight: 600;">Grafana link ↗</a>` : "";

    const hasStructured = items.some(i => i.structured);

    if (statusVal === 'mdm_issue') {
      if (!hasStructured) {
        lists.mdm.push(formatCompactMdm(vin, nick, grafanaUrl, [], val, issuesStr));
      } else {
        const groups = {};
        for (const it of items) {
          const b = _bucketFor(it, statusVal);
          if (!groups[b]) groups[b] = [];
          groups[b].push(it);
        }
        const mdmItems = groups.mdm || [];
        delete groups.mdm;
        lists.mdm.push(formatCompactMdm(vin, nick, grafanaUrl, mdmItems, val, issuesStr));
        for (const bucket of ["data_loss", "charging", "bms"]) {
          if (groups[bucket]) {
            lists[bucket].push(formatCompactFaults(vin, nick, grafanaUrl, groups[bucket]));
          }
        }
      }
    } else if (statusVal === 'inactive') {
      const timestamp = val.timestamp || "Not Available";
      lists.inactive.push(`<strong><span style="color: #64748b;">${nick}</span></strong> — Last updated ${timestamp}${grafanaLink}`);
    } else if (statusVal === 'unhealthy') {
      if (!hasStructured) {
        const parts = [`<strong>${formatCompactVehicleLink(vin, nick)}</strong>`];
        if (grafanaUrl) {
          parts.push(`<a href="${esc(grafanaUrl)}" target="_blank" style="color: #2563eb; text-decoration: underline; font-size: 11px; font-weight: 600;">Grafana link ↗</a>`);
        }
        if (issuesStr) {
          parts.push(`<strong>${esc(issuesStr)}</strong>`);
        }
        const entry = parts.join(" &nbsp;|&nbsp; ");
        if (issues.some(i => i.toLowerCase().includes("data loss"))) {
          lists.data_loss.push(entry);
        } else if (issues.some(i => i.toLowerCase().includes("plug state 4") || i.toLowerCase().includes("charging"))) {
          lists.charging.push(entry);
        } else {
          lists.bms.push(entry);
        }
      } else {
        const groups = {};
        for (const it of items) {
          const b = _bucketFor(it, statusVal);
          if (!groups[b]) groups[b] = [];
          groups[b].push(it);
        }
        for (const bucket of ["mdm", "data_loss", "charging", "bms"]) {
          if (!groups[bucket]) continue;
          if (bucket === "mdm") {
            lists.mdm.push(formatCompactMdm(vin, nick, grafanaUrl, groups.mdm, val, issuesStr));
          } else {
            lists[bucket].push(formatCompactFaults(vin, nick, grafanaUrl, groups[bucket]));
          }
        }
      }
    } else if (statusVal === 'healthy') {
      lists.ok.push(`<span style="color:#16a34a; font-weight:600;">${nick}</span>${grafanaLink}`);
    }

    if (tempAnomalyVins.includes(vin)) {
      lists.temp.push(formatCompactVehicleLink(vin, nick));
    }
  }

  function formatRow(title, color, textList, count, isBold = true, badgeBg = null, badgeColor = null) {
    let renderedText = "";
    if (!textList || textList.length === 0) {
      if (title === "Charging Issues (Plug State 4)") {
        renderedText = "None reported";
      } else {
        return "";
      }
    } else {
      if (title === "Motor Controller Temperature (Negative Values)" || title === "✓ OK / No Issues") {
        renderedText = textList.join(", ");
      } else {
        renderedText = textList.join("<br/>");
      }
    }

    let countBadge = "—";
    if (count !== null && count !== undefined) {
      if (badgeBg && badgeColor) {
        countBadge = `<span style="display: inline-block; padding: 4px 8px; font-size: 11px; font-weight: bold; border-radius: 12px; background-color: ${badgeBg}; color: ${badgeColor};">${count}</span>`;
      } else {
        countBadge = `<span style="display: inline-block; padding: 4px 8px; font-size: 11px; font-weight: bold; border-radius: 12px; background-color: #f1f3f5; color: #475569;">${count}</span>`;
      }
    }

    const titleStyle = isBold ? `color: ${color}; font-weight: 600; vertical-align: top;` : `color: #475569; vertical-align: top;`;

    return `
      <tr style="border-bottom: 1px solid #f1f5f9;">
        <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; ${titleStyle}">${title}</td>
        <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; color: #475569; vertical-align: top;">${renderedText}</td>
        <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; text-align: right; vertical-align: top;">${countBadge}</td>
      </tr>
    `;
  }

  const rows = [];
  rows.push(formatRow("⚠ MDM ON but No Data Received", "#ea580c", lists.mdm, lists.mdm.length, true, "#ffedd5", "#ea580c"));
  rows.push(formatRow("⊘ No Data Reported", "#64748b", lists.inactive, lists.inactive.length));
  rows.push(formatRow("Motor Controller Temperature (Negative Values)", "#475569", lists.temp, lists.temp.length, false));
  rows.push(formatRow("✗ BMS / Motor Faults", "#dc2626", lists.bms, lists.bms.length, true, "#fee2e2", "#dc2626"));
  rows.push(formatRow("Charging Issues (Plug State 4)", "#475569", lists.charging, lists.charging.length, false));
  rows.push(formatRow("✓ OK / No Issues", "#16a34a", lists.ok, lists.ok.length, true, "#dcfce7", "#16a34a"));
  rows.push(formatRow("✗ Data Loss", "#dc2626", lists.data_loss, lists.data_loss.length, true, "#fee2e2", "#dc2626"));

  const tableRowsHtml = rows.join("\n");
  const totalVehiclesCount = Object.keys(normVehicles).length;

  const tzLabel = options.timezone || (options.region === 'India' ? 'IST' : 'PST (America/Los_Angeles)');

  return `
    ${buildCategoryTablesHtml(normVehicles)}
    <!-- ISSUE SUMMARY SECTION -->
    <tr id="issue-summary">
      <td style="padding: 24px; border-top: 1px solid #e2e8f0;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-bottom: 2px solid #f1f5f9; padding-bottom: 8px; margin-bottom: 16px;">
          <tr>
            <td style="vertical-align: middle;">
              <h2 style="margin: 0; font-size: 18px; font-weight: 600; color: #0f172a;"> Issue Summary</h2>
            </td>
            <td style="text-align: right; font-size: 12px; color: #64748b; font-weight: 500; vertical-align: middle;">
              <strong>Report Duration:</strong> ${globalDuration} (${tzLabel})
            </td>
          </tr>
        </table>
        <p style="font-size: 13px; color: #64748b; margin-bottom: 16px;">
          Vehicle issues compiled for the report duration.
        </p>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 13px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
          <thead>
            <tr bgcolor="#f8fafc">
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569; width: 220px;">Issue Category</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Vehicles description</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: right; border-bottom: 2px solid #e2e8f0; color: #475569; width: 70px;">Count</th>
            </tr>
          </thead>
          <tbody>
            ${tableRowsHtml}
            <tr>
              <td style="padding: 12px; color: #0f172a; font-weight: 700;" colspan="2">Total Vehicles</td>
              <td style="padding: 12px; text-align: right; color: #0f172a; font-weight: 700;">${totalVehiclesCount}</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
  `;
}

function grafanaCell(item) {
  if (!item.grafana_url) return "—";
  return `<a href="${esc(item.grafana_url)}" target="_blank" style="color: #2563eb; text-decoration: underline; font-weight: 600;">Open</a>`;
}

/**
 * Builds the per-vehicle issue table for a vehicle card in Detailed Vehicle Diagnostics.
 * Returns '' when no issue has a Component.
 * @param {string} vin 
 * @param {object} val 
 * @returns {string}
 */
export function buildIssueDetailTable(vin, val) {
  const items = vehicleIssueItems(val);
  if (!items.some(i => i.structured)) {
    return "";
  }

  const cell = "padding: 8px 10px; border-bottom: 1px solid #e2e8f0; text-align: left; vertical-align: top;";
  const head = "padding: 8px 10px; font-weight: 600; text-align: left; border-bottom: 1px solid #e2e8f0; color: #475569;";

  let rows = "";
  items.forEach((it, idx) => {
    const idFormatted = String(idx + 1).padStart(3, '0');
    if (it.structured) {
      let issueCell = `<strong style="color: #0f172a;">${esc(it.title)}</strong>`;
      if (it.description) {
        issueCell += `<br/><span style="color: #475569;">${esc(it.description)}</span>`;
      }
      if (it.reported_by) {
        issueCell += `<br/><span style="color: #64748b; font-size: 10px;">Reported by: ${esc(it.reported_by)}</span>`;
      }

      const period = esc(it.period) || "—";
      const occ = esc(it.occurrences) || "—";
      const rca = esc(it.rca) || "—";
      const team = esc(it.responsible_team) || "—";
      const badge = severityBadge(it.severity) || "—";
      const feedback = esc(it.customer_feedback) || "—";

      rows += `
        <tr style="border-bottom: 1px solid #e2e8f0;">
          <td style="${cell} color: #0f172a; font-family: monospace;">${idFormatted}</td>
          <td style="${cell} color: #475569; font-weight: 600;">${it.component}</td>
          <td style="${cell} color: #0f172a;">${issueCell}</td>
          <td style="${cell} color: #475569;">${period}<br/><span style="color: #64748b; font-size: 10px;">Occurrences: ${occ}</span></td>
          <td style="${cell}">${badge}</td>
          <td style="${cell} color: #475569;">${rca}<br/><span style="color: #64748b; font-size: 10px;">Team: ${team}</span></td>
          <td style="${cell} color: #475569;">${feedback}</td>
          <td style="${cell}">${grafanaCell(it)}</td>
        </tr>
      `;
    } else {
      rows += `
        <tr style="border-bottom: 1px solid #e2e8f0;">
          <td style="${cell} color: #0f172a; font-family: monospace;">${idFormatted}</td>
          <td style="${cell} color: #475569; font-weight: 600;">—</td>
          <td style="${cell} color: #0f172a;">${it.title}</td>
          <td style="${cell} color: #475569;">—</td>
          <td style="${cell}">—</td>
          <td style="${cell} color: #475569;">—</td>
          <td style="${cell} color: #475569;">—</td>
          <td style="${cell} color: #475569;">—</td>
        </tr>
      `;
    }
  });

  return `
    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 11px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
      <thead>
        <tr bgcolor="#f8fafc">
          <th style="${head} width: 40px;">ID</th>
          <th style="${head} width: 60px;">Component</th>
          <th style="${head}">Issue / Description</th>
          <th style="${head} width: 90px;">Period / Occurrences</th>
          <th style="${head} width: 70px;">Severity</th>
          <th style="${head} width: 100px;">RCA / Team</th>
          <th style="${head} width: 130px;">Customer Feedback</th>
          <th style="${head} width: 70px;">Grafana</th>
        </tr>
      </thead>
      <tbody style="background-color: #ffffff;">
        ${rows}
      </tbody>
    </table>
  `;
}

// ------------------------------------------------------------------
// CSV Export Data
// ------------------------------------------------------------------

export const CSV_COLUMNS = [
  "S.No.", "VIN", "Nickname", "Location", "Issue", "Description",
  "Period", "Occurrences", "Component", "Issue Reported By",
  "Severity", "RCA", "Responsible Team", "Customer Feedback",
  "Grafana Link"
];

function _csvSafe(value) {
  if (typeof value === 'string' && value && ['=', '+', '-', '@', '\t', '\r'].includes(value[0])) {
    return "'" + value;
  }
  return value;
}

/**
 * Builds array of CSV row arrays from vehicles.
 * @param {object} vehicles 
 * @returns {Array<Array<*>>}
 */
export function buildCsvRows(vehicles) {
  const rows = [];
  let serial = 0;
  const sortedVins = Object.keys(vehicles || {}).sort();

  for (const vin of sortedVins) {
    const val = vehicles[vin];
    if (!val || typeof val !== 'object' || !ISSUE_STATUSES.includes(val.status)) {
      continue;
    }
    for (const it of vehicleIssueItems(val)) {
      serial += 1;
      rows.push([
        serial,
        _csvSafe(vin),
        _csvSafe(val.nickname || ""),
        _csvSafe(val.location || ""),
        _csvSafe(it.title),
        _csvSafe(it.description),
        _csvSafe(it.period),
        _csvSafe(it.occurrences),
        _csvSafe(it.component),
        _csvSafe(it.reported_by),
        _csvSafe(it.severity),
        _csvSafe(it.rca),
        _csvSafe(it.responsible_team),
        _csvSafe(it.customer_feedback),
        _csvSafe(it.grafana_url)
      ]);
    }
  }
  return rows;
}
