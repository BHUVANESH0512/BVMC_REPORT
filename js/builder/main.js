import { state } from './state.js';
import { syncDateInputsFromDuration } from './helpers.js';
import {
  populateSearchDropdown,
  onSearchFocus,
  onSearchInput,
  filterSearchDropdown,
  selectVehicle,
  setRegion,
  setMode,
  setStatus,
  addVersionRow,
  clearForm,
  initSearchDismiss
} from './form.js';
import {
  addIssue,
  resetIssueForm,
  editIssue,
  removeIssue
} from './issues.js';
import {
  addVehicle,
  editVehicle,
  removeVehicle,
  clearFleet,
  updateFleetListUI,
  saveStateToServer,
  downloadReport,
  exportIssuesCSV,
  updateReportPreview,
  uploadMissionReport,
  closePublishModal
} from './fleet.js';
import {
  getFleetState,
  getAllReports,
  deleteReport,
  checkDatabaseStatus
} from '../fleetApi.js';
import { supabase, isSupabaseConfigured } from '../supabaseClient.js';

let isInitialized = false;

// POPULATE PREDEFINED SEARCH LIST & INITIALIZE DASHBOARD
export async function initOwnerDashboard() {
  if (isInitialized) return;
  isInitialized = true;

  populateSearchDropdown();
  initSearchDismiss();

  // Initialize dynamic version fields
  const vContainer = document.getElementById('versions-container');
  if (vContainer && vContainer.children.length === 0) {
    addVersionRow('VT_BOX Version', '');
    addVersionRow('VCU Firmware Version', '');
  }

  // Check authentication session (localStorage OR sessionStorage)
  const sessionStr = localStorage.getItem('bvmc_owner_session') || sessionStorage.getItem('bvmc_owner_session');
  if (!sessionStr && typeof window !== 'undefined') {
    const urlParams = new URLSearchParams(window.location.search);
    if (!urlParams.has('demo')) {
      window.location.href = '/login.html?next=' + encodeURIComponent(window.location.pathname);
      return;
    }
  }

  // 1. Fetch latest state from Supabase / local storage
  try {
    const fleetState = await getFleetState();
    if (fleetState && fleetState.vehicles && Object.keys(fleetState.vehicles).length > 0) {
      state.activeFleet = fleetState.vehicles;
      if (fleetState.global_duration) {
        const durInput = document.getElementById('global-duration-input');
        if (durInput) durInput.value = fleetState.global_duration;
      }
      updateFleetListUI();
    } else {
      // Fallback to embedded state
      const scriptTag = document.getElementById('vehicles-json-state');
      if (scriptTag && scriptTag.textContent.trim()) {
        const parsed = JSON.parse(scriptTag.textContent.trim());
        if (parsed && parsed.vehicles && Object.keys(parsed.vehicles).length > 0) {
          state.activeFleet = parsed.vehicles;
          if (parsed.global_duration) {
            const durInput = document.getElementById('global-duration-input');
            if (durInput) durInput.value = parsed.global_duration;
          }
          updateFleetListUI();
        }
      }
    }
  } catch (err) {
    console.warn("Fleet state sync error:", err);
  }

  // 2. Load saved report periods to populate period dropdown & delete options
  await loadSavedReportsList();

  // 3. Check database connection status on load
  checkDatabaseStatusUI();
}

export async function loadSavedReportsList() {
  try {
    const data = await getAllReports();
    if (Array.isArray(data)) {
      state.SAVED_REPORTS = data;
      populateSavedPeriodsDropdown();
    }
  } catch (err) {
    console.warn("Could not load saved reports list:", err);
  }
}

export function populateSavedPeriodsDropdown() {
  const select = document.getElementById('saved-periods-select');
  if (!select) return;

  const currentDuration = (document.getElementById('global-duration-input')?.value || '').trim();
  select.innerHTML = '<option value="">-- Choose a saved report period to load --</option>';

  let matched = false;
  state.SAVED_REPORTS.forEach(report => {
    const opt = document.createElement('option');
    opt.value = report.range || report.id;
    const vCount = report.vehicles_count || (report.vehicles ? Object.keys(report.vehicles).length : 0);
    opt.textContent = `${report.range} (${report.label || 'Mission Report'} — ${vCount} Vehicles)`;
    if (report.range && report.range.trim() === currentDuration) {
      opt.selected = true;
      matched = true;
    }
    select.appendChild(opt);
  });

  updateDeleteButtonVisibility(matched);
}

export function updateDeleteButtonVisibility(visible) {
  const btn = document.getElementById('delete-period-btn');
  if (btn) {
    btn.style.display = visible ? 'inline-block' : 'none';
  }
}

export function onSelectSavedPeriod(rangeVal) {
  if (!rangeVal) {
    updateDeleteButtonVisibility(false);
    return;
  }

  const report = state.SAVED_REPORTS.find(r => r.range === rangeVal || r.id === rangeVal);
  if (!report) return;

  const newRange = report.range || rangeVal;
  const durInput = document.getElementById('global-duration-input');
  if (durInput) durInput.value = newRange;
  syncDateInputsFromDuration(newRange);

  if (report.vehicles && Object.keys(report.vehicles).length > 0) {
    state.activeFleet = JSON.parse(JSON.stringify(report.vehicles));
    updateFleetListUI();
  }

  updateDeleteButtonVisibility(true);
  saveStateToServer();
}

export function onDurationInputChanged() {
  const val = (document.getElementById('global-duration-input')?.value || '').trim();
  const select = document.getElementById('saved-periods-select');
  const match = state.SAVED_REPORTS.find(r => r.range && r.range.trim().toLowerCase() === val.toLowerCase());

  if (match) {
    if (select) select.value = match.range || match.id;
    updateDeleteButtonVisibility(true);
  } else {
    if (select) select.value = "";
    updateDeleteButtonVisibility(false);
  }
}

export function onDurationInputSaved() {
  saveStateToServer();
}

export async function deleteCurrentReportPeriod() {
  const currentDuration = (document.getElementById('global-duration-input')?.value || '').trim();
  if (!currentDuration) return;

  const report = state.SAVED_REPORTS.find(r => r.range && r.range.trim() === currentDuration);
  const reportIdentifier = report ? report.id : currentDuration;

  const confirmMsg = `⚠️ Are you sure you want to delete the mission report for period "${currentDuration}"?\n\nThis will remove it from both the Customer Dashboard and the database.`;
  if (!confirm(confirmMsg)) return;

  try {
    await deleteReport(reportIdentifier);
    alert(`✅ Mission report period "${currentDuration}" has been deleted.`);

    // Reload saved reports list
    await loadSavedReportsList();

    // If there are other reports, select the first one; else clear
    if (state.SAVED_REPORTS.length > 0) {
      onSelectSavedPeriod(state.SAVED_REPORTS[0].range);
    } else {
      const durInput = document.getElementById('global-duration-input');
      if (durInput) durInput.value = "";
      syncDateInputsFromDuration("");
      updateDeleteButtonVisibility(false);
    }
  } catch (err) {
    console.error("Error deleting report:", err);
    alert("❌ Error deleting report: " + err.message);
  }
}

export async function checkDatabaseStatusUI() {
  const statusBadge = document.getElementById('db-status-badge');
  if (!statusBadge) return;

  try {
    const data = await checkDatabaseStatus();
    if (data && data.database) {
      if (data.database.connected) {
        statusBadge.style.backgroundColor = '#dcfce7';
        statusBadge.style.color = '#16a34a';
        statusBadge.style.border = '1px solid #bbf7d0';
        statusBadge.textContent = '✅ Database Connected (Supabase PostgreSQL)';
      } else {
        statusBadge.style.backgroundColor = '#fef3c7';
        statusBadge.style.color = '#b45309';
        statusBadge.style.border = '1px solid #fde68a';
        statusBadge.textContent = 'ℹ️ ' + (data.database.error || 'Client Local Storage Mode');
      }
    }
  } catch (err) {
    statusBadge.style.backgroundColor = '#f1f5f9';
    statusBadge.style.color = '#475569';
    statusBadge.style.border = '1px solid #cbd5e1';
    statusBadge.textContent = 'ℹ️ Running in Client-Side Mode';
    console.warn("Database status note:", err);
  }
}

export async function handleLogout(event) {
  if (event) {
    try { event.preventDefault(); } catch (e) { }
  }
  try {
    if (isSupabaseConfigured()) {
      await supabase.auth.signOut();
    }
  } catch (e) {
    console.warn("Sign out note:", e);
  }
  try { localStorage.removeItem('bvmc_owner_session'); } catch (e) { }
  try { sessionStorage.removeItem('bvmc_owner_session'); } catch (e) { }
  window.location.replace('/login.html?logout=1');
}

// Attach all 29 handlers to window for HTML inline handlers & external callers
window.onload = initOwnerDashboard;
window.deleteCurrentReportPeriod = deleteCurrentReportPeriod;
window.clearForm = clearForm;
window.onSearchFocus = onSearchFocus;
window.onSearchInput = onSearchInput;
window.setMode = setMode;
window.setRegion = setRegion;
window.setStatus = setStatus;
window.addIssue = addIssue;
window.resetIssueForm = resetIssueForm;
window.addVersionRow = addVersionRow;
window.addVehicle = addVehicle;
window.clearFleet = clearFleet;
window.uploadMissionReport = uploadMissionReport;
window.downloadReport = downloadReport;
window.exportIssuesCSV = exportIssuesCSV;
window.editIssue = editIssue;
window.removeIssue = removeIssue;
window.editVehicle = editVehicle;
window.removeVehicle = removeVehicle;
window.closePublishModal = closePublishModal;
window.onSelectSavedPeriod = onSelectSavedPeriod;
window.onDeleteSavedPeriod = deleteCurrentReportPeriod;
window.saveStateToServer = saveStateToServer;
window.checkDatabaseStatusUI = checkDatabaseStatusUI;
window.updateReportPreview = updateReportPreview;
window.onDurationInputChanged = onDurationInputChanged;
window.onDurationInputSaved = onDurationInputSaved;
window.handleLogout = handleLogout;

// Run dashboard init once document is ready
if (typeof document !== 'undefined') {
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', () => initOwnerDashboard());
  } else {
    initOwnerDashboard();
  }
}
