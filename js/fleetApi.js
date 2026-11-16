/**
 * BVMC Report — Fleet & Report Database API
 * Replaces Python FastAPI endpoints with direct Supabase client calls.
 */

import { supabase, isSupabaseConfigured } from './supabaseClient.js';
import { parseSortDate, deriveMonthLabel } from './dataHelpers.js';
import { normalizeVehicles, vehicleIssueItems } from './issueReport.js';

// Local storage fallback key for offline/demo development
const LOCAL_STORAGE_STATE_KEY = 'bvmc_local_fleet_state';
const LOCAL_STORAGE_REPORTS_KEY = 'bvmc_local_reports';

/**
 * Loads the active working fleet state.
 * @returns {Promise<{ global_duration: string, vehicles: object }>}
 */
export async function getFleetState() {
  if (isSupabaseConfigured()) {
    try {
      const { data, error } = await supabase
        .from('fleet_state')
        .select('global_duration, vehicles_json')
        .eq('id', 1)
        .maybeSingle();

      if (!error && data) {
        return {
          global_duration: data.global_duration || '',
          vehicles: data.vehicles_json || {}
        };
      }
    } catch (e) {
      console.warn("Could not query fleet_state from Supabase:", e);
    }
  }

  // Fallback to localStorage or embedded state
  try {
    const cached = localStorage.getItem(LOCAL_STORAGE_STATE_KEY);
    if (cached) {
      return JSON.parse(cached);
    }
  } catch (e) {
    // Ignore storage error
  }

  // Fallback to initial embedded state script if present in DOM
  if (typeof document !== 'undefined') {
    const el = document.getElementById('vehicles-json-state');
    if (el && el.textContent) {
      try {
        const parsed = JSON.parse(el.textContent);
        if (parsed && parsed.vehicles) {
          return parsed;
        }
      } catch (e) {
        // Ignore JSON parse error
      }
    }
  }

  return { global_duration: '', vehicles: {} };
}

/**
 * Saves the active fleet state to Supabase.
 * @param {object} vehicles 
 * @param {string} globalDuration 
 * @returns {Promise<{ status: string, message: string }>}
 */
export async function saveFleetState(vehicles, globalDuration) {
  const normVehicles = normalizeVehicles(vehicles || {});
  const cleanDuration = (globalDuration || '').trim();

  // Save to localStorage as immediate backup
  try {
    localStorage.setItem(LOCAL_STORAGE_STATE_KEY, JSON.stringify({
      global_duration: cleanDuration,
      vehicles: normVehicles
    }));
  } catch (e) {
    console.warn("Could not write to localStorage:", e);
  }

  if (!isSupabaseConfigured()) {
    return {
      status: 'success',
      message: 'State saved to local browser storage (Supabase credentials not configured).'
    };
  }

  const { error } = await supabase
    .from('fleet_state')
    .upsert({
      id: 1,
      global_duration: cleanDuration,
      vehicles_json: normVehicles,
      updated_at: new Date().toISOString()
    }, { onConflict: 'id' });

  if (error) {
    console.error("Supabase fleet_state upsert error:", error);
    throw new Error(error.message || 'Failed to save state to Supabase');
  }

  return { status: 'success', message: 'Fleet state saved successfully to Supabase.' };
}

/**
 * Retrieves all published reports sorted newest first.
 * @returns {Promise<Array<object>>}
 */
export async function getAllReports() {
  if (isSupabaseConfigured()) {
    try {
      const { data, error } = await supabase
        .from('reports')
        .select('*')
        .order('sort_date', { ascending: false });

      if (!error && Array.isArray(data) && data.length > 0) {
        return data.map(r => ({
          id: r.id,
          label: r.label,
          range: r.date_range,
          sort_date: r.sort_date,
          timestamp: r.timestamp,
          vehicles_count: r.vehicles_count,
          vehicles_label: r.vehicles_label,
          file: r.file_path,
          vehicles: r.vehicles_json
        }));
      }
    } catch (e) {
      console.warn("Could not query reports from Supabase:", e);
    }
  }

  // Fallback to static reports.json
  try {
    const res = await fetch('/reports.json');
    if (res.ok) {
      const data = await res.json();
      if (Array.isArray(data) && data.length > 0) {
        return data;
      }
    }
  } catch (e) {
    // Ignore fetch error
  }

  // Fallback to localStorage
  try {
    const cached = localStorage.getItem(LOCAL_STORAGE_REPORTS_KEY);
    if (cached) {
      return JSON.parse(cached);
    }
  } catch (e) {
    // Ignore storage error
  }

  return [];
}

/**
 * Publishes a new mission report to Supabase (or updates an existing period).
 * Replaces Python's /api/publish_report endpoint.
 * 
 * @param {object} params
 * @param {string} params.globalDuration
 * @param {object} params.vehicles
 * @param {string} [params.reportLabel]
 * @returns {Promise<{ status: string, message: string, report: object }>}
 */
export async function publishReport({ globalDuration, vehicles, reportLabel }) {
  const normVehicles = normalizeVehicles(vehicles || {});
  const cleanDuration = (globalDuration || '').trim();

  if (Object.keys(normVehicles).length === 0) {
    throw new Error("Vehicle fleet is empty. Please add vehicles before publishing.");
  }
  if (!cleanDuration) {
    throw new Error("Global report duration is required.");
  }

  const sortDate = parseSortDate(cleanDuration);
  const derivedLabel = reportLabel || deriveMonthLabel(cleanDuration);
  const cleanDateStr = cleanDuration.replace(/\s+to\s+/g, '_').replace(/[^a-zA-Z0-9_-]/g, '_');
  const filename = `report_${cleanDateStr}.html`;
  const reportRelPath = `reports/${filename}`;

  const vCount = Object.keys(normVehicles).length;
  const firstNick = Object.values(normVehicles)[0]?.nickname || 'Vehicle';
  const vLabel = vCount > 1 ? `Customer Fleet (${vCount} Vehicles)` : firstNick;
  const timestampStr = new Date().toLocaleString('en-US', { timeZoneName: 'short' });
  const reportId = `rpt_${Date.now()}_${cleanDateStr}`;

  const reportRecord = {
    id: reportId,
    label: derivedLabel,
    range: cleanDuration,
    sort_date: sortDate,
    timestamp: timestampStr,
    vehicles_count: vCount,
    vehicles_label: vLabel,
    file: reportRelPath,
    vehicles: normVehicles
  };

  // Save active fleet state first
  await saveFleetState(normVehicles, cleanDuration);

  if (isSupabaseConfigured()) {
    // 1. Delete older report for the same period if republishing
    await supabase
      .from('reports')
      .delete()
      .eq('date_range', cleanDuration);

    // 2. Insert into reports table
    const { error: repErr } = await supabase
      .from('reports')
      .upsert({
        id: reportId,
        label: derivedLabel,
        date_range: cleanDuration,
        sort_date: sortDate,
        timestamp: timestampStr,
        vehicles_count: vCount,
        vehicles_label: vLabel,
        file_path: reportRelPath,
        vehicles_json: normVehicles,
        created_at: new Date().toISOString()
      }, { onConflict: 'id' });

    if (repErr) {
      console.error("Supabase insert report error:", repErr);
      throw new Error(repErr.message || 'Failed to save report to Supabase');
    }

    // 3. Insert report_vehicles and report_vehicle_issues
    for (const [vin, val] of Object.entries(normVehicles)) {
      const statusVal = val.status || 'healthy';
      const distVal = statusVal === 'inactive' ? 'Nil' : `${val.distance || 0} km`;
      const durVal = statusVal === 'inactive' ? 'Nil' : (val.duration || '0s');

      const { data: rvData, error: rvErr } = await supabase
        .from('report_vehicles')
        .upsert({
          report_id: reportId,
          vin: vin,
          nickname: val.nickname || '',
          location: val.location || '',
          mode: val.mode || 'Non-Autonomous',
          status: statusVal,
          distance: distVal,
          duration: durVal,
          timestamp: val.timestamp || '',
          vt_box_time: val.vt_box_time || '',
          grafana_url: val.grafana_url || '',
          versions: val.versions || {},
          raw_data: val
        }, { onConflict: 'report_id,vin' })
        .select('id')
        .single();

      if (!rvErr && rvData) {
        const issues = vehicleIssueItems(val);
        for (let idx = 0; idx < issues.length; idx++) {
          const it = issues[idx];
          await supabase
            .from('report_vehicle_issues')
            .insert({
              report_vehicle_id: rvData.id,
              issue_id: it.id,
              issue_title: it.title,
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
              sort_order: idx,
              raw_data: it.raw_data
            });
        }
      }
    }
  }

  // Also update local storage
  try {
    const existing = JSON.parse(localStorage.getItem(LOCAL_STORAGE_REPORTS_KEY) || '[]');
    const filtered = existing.filter(r => r.id !== reportId && r.range !== cleanDuration);
    filtered.unshift(reportRecord);
    localStorage.setItem(LOCAL_STORAGE_REPORTS_KEY, JSON.stringify(filtered));
  } catch (e) {
    // Ignore
  }

  return {
    status: 'success',
    message: 'Report generated and published successfully to Customer Dashboard!',
    report: reportRecord
  };
}

/**
 * Deletes a report from Supabase by ID or date range.
 * @param {string} reportIdentifier 
 * @returns {Promise<{ status: string, message: string }>}
 */
export async function deleteReport(reportIdentifier) {
  if (!reportIdentifier) {
    throw new Error("Missing report_id or range to delete.");
  }

  if (isSupabaseConfigured()) {
    const { error } = await supabase
      .from('reports')
      .delete()
      .or(`id.eq.${reportIdentifier},date_range.eq.${reportIdentifier}`);

    if (error) {
      console.error("Supabase delete report error:", error);
      throw new Error(error.message || 'Failed to delete report from Supabase');
    }
  }

  // Clean local storage
  try {
    const existing = JSON.parse(localStorage.getItem(LOCAL_STORAGE_REPORTS_KEY) || '[]');
    const filtered = existing.filter(r => r.id !== reportIdentifier && r.range !== reportIdentifier);
    localStorage.setItem(LOCAL_STORAGE_REPORTS_KEY, JSON.stringify(filtered));
  } catch (e) {
    // Ignore
  }

  return {
    status: 'success',
    message: `Report '${reportIdentifier}' deleted successfully.`
  };
}

/**
 * Checks database connectivity status.
 * @returns {Promise<{ status: string, database: { connected: boolean, error: string|null, type: string } }>}
 */
export async function checkDatabaseStatus() {
  if (!isSupabaseConfigured()) {
    return {
      status: 'healthy',
      database: {
        connected: false,
        error: 'Supabase URL or Key not set in environment (using local client state).',
        type: 'Client-Side Local Storage'
      }
    };
  }

  try {
    const { error } = await supabase.from('fleet_state').select('id').limit(1);
    return {
      status: 'healthy',
      database: {
        connected: !error,
        error: error ? error.message : null,
        type: 'Supabase PostgreSQL'
      }
    };
  } catch (e) {
    return {
      status: 'degraded',
      database: {
        connected: false,
        error: e.message,
        type: 'Supabase PostgreSQL'
      }
    };
  }
}
