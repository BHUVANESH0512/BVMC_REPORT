import { state } from './state.js';
import { escapeHtml } from './helpers.js';
import { addIssue, resetIssueForm, renderIssuesList, issuesFromVehicle } from './issues.js';
import { setMode, setRegion, setStatus, addVersionRow, clearForm } from './form.js';
import { saveFleetState, publishReport } from '../fleetApi.js';
import { downloadIssuesCsv } from '../csvExport.js';
import { generateHtmlReportContent } from '../emailReportGenerator.js';
import { checkDatabaseStatusUI, loadSavedReportsList } from './main.js';

export function addVehicle() {
  const vin = (document.getElementById('vin-input')?.value || '').trim();
  let nickname = (document.getElementById('nickname-input')?.value || '').trim();
  let location = (document.getElementById('location-input')?.value || '').trim();
  const distance = (document.getElementById('distance-input')?.value || '').trim();
  const duration = (document.getElementById('duration-input')?.value || '').trim();
  let timestamp = (document.getElementById('timestamp-input')?.value || '').trim();
  let vtBoxTime = (document.getElementById('vt-box-time-input')?.value || '').trim();
  const grafanaUrl = (document.getElementById('grafana-url-input')?.value || '').trim();

  if (!vin) {
    alert("VIN is required.");
    return;
  }

  // Only validate distance and duration if NOT inactive
  if (state.currentStatus !== 'inactive') {
    if (!distance) {
      alert("Distance Travelled is required.");
      return;
    }
    if (!duration) {
      alert("Data Logged Duration is required.");
      return;
    }
  }

  if (!nickname) nickname = "Not Named";
  if (!location) location = "Not Available";

  // An issue that was typed in the form but not added yet is added now,
  // so it can never be lost silently (this is what makes the Component,
  // e.g. MDM, appear in the report tables).
  if ((state.currentStatus === 'unhealthy' || state.currentStatus === 'mdm_issue') && state.editingIssueIndex < 0 &&
    (document.getElementById('issue-title-input')?.value.trim() ||
      document.getElementById('issue-description-input')?.value.trim())) {
    const before = state.activeIssues.length;
    addIssue(); // shows its own message if Issue/Description is missing
    if (state.activeIssues.length === before) return;
  }

  if (state.currentStatus === 'unhealthy' && state.activeIssues.length === 0) {
    alert("Please add at least one issue if status is set to Issues Detected.");
    return;
  }

  if (state.editingIssueIndex >= 0) {
    alert("You are editing an issue. Please click \"Update Issue\" (or \"Cancel Edit\") before saving the vehicle.");
    return;
  }

  const hasIssueLog = (state.currentStatus === 'unhealthy' || state.currentStatus === 'mdm_issue');

  if (state.currentStatus === 'inactive' && !timestamp) {
    timestamp = "Not Available";
  }

  if (state.currentStatus === 'mdm_issue' && !vtBoxTime) {
    vtBoxTime = "Not Available";
  }

  // Collect version details
  const versionRows = document.querySelectorAll('#versions-container .version-row');
  const versions = {};
  versionRows.forEach(row => {
    const key = row.querySelector('.version-key')?.value.trim();
    const val = row.querySelector('.version-value')?.value.trim() || '';
    if (key) {
      versions[key] = val;
    }
  });

  // Add to fleet list with exact required shape
  state.activeFleet[vin] = {
    vin: vin,
    nickname: nickname,
    location: location,
    region: state.currentRegion,
    mode: state.currentMode,
    status: state.currentStatus,
    issues: hasIssueLog ? state.activeIssues.map(i => i.issue) : [],
    issue_details: hasIssueLog ? state.activeIssues.map(i => ({ ...i })) : [],
    timestamp: (state.currentStatus === 'inactive') ? timestamp : '',
    vt_box_time: (state.currentStatus === 'mdm_issue') ? vtBoxTime : '',
    grafana_url: grafanaUrl,
    distance: (state.currentStatus === 'inactive') ? 'Nil' : distance,
    duration: (state.currentStatus === 'inactive') ? 'Nil' : duration,
    versions: versions
  };

  updateFleetListUI();
  saveStateToServer();
  clearForm();
}

export function editVehicle(vin) {
  const vehicle = state.activeFleet[vin];
  if (!vehicle) return;

  const searchInput = document.getElementById('search-input');
  if (searchInput) searchInput.value = vehicle.nickname ? `${vehicle.nickname} (${vehicle.vin})` : vehicle.vin;
  const vinInput = document.getElementById('vin-input');
  if (vinInput) vinInput.value = vehicle.vin;
  const nickInput = document.getElementById('nickname-input');
  if (nickInput) nickInput.value = vehicle.nickname;
  const locInput = document.getElementById('location-input');
  if (locInput) locInput.value = vehicle.location;
  const grafanaInput = document.getElementById('grafana-url-input');
  if (grafanaInput) grafanaInput.value = vehicle.grafana_url || '';

  setMode(vehicle.mode);
  if (vehicle.region) {
    setRegion(vehicle.region);
  } else if (vehicle.location && (vehicle.location.includes('IST') || vehicle.location.includes('India'))) {
    setRegion('India');
  } else {
    setRegion('US');
  }
  setStatus(vehicle.status || 'healthy');

  // Populate version details
  const vContainer = document.getElementById('versions-container');
  if (vContainer) {
    vContainer.innerHTML = '';
    if (vehicle.versions && Object.keys(vehicle.versions).length > 0) {
      Object.entries(vehicle.versions).forEach(([k, v]) => {
        addVersionRow(k, v);
      });
    } else {
      addVersionRow('VT_BOX Version', '');
      addVersionRow('VCU Firmware Version', '');
    }
  }

  const distanceInput = document.getElementById('distance-input');
  const durationInput = document.getElementById('duration-input');

  if (vehicle.status === 'inactive') {
    const tsInput = document.getElementById('timestamp-input');
    if (tsInput) tsInput.value = vehicle.timestamp || '';
    if (distanceInput) {
      distanceInput.value = 'Nil';
      distanceInput.disabled = true;
    }
    if (durationInput) {
      durationInput.value = 'Nil';
      durationInput.disabled = true;
    }
  } else if (vehicle.status === 'mdm_issue') {
    const vtInput = document.getElementById('vt-box-time-input');
    if (vtInput) vtInput.value = vehicle.vt_box_time || '';
    if (distanceInput) {
      distanceInput.value = 'Nil';
      distanceInput.disabled = true;
    }
    if (durationInput) {
      durationInput.value = vehicle.duration;
      durationInput.disabled = false;
    }
  } else {
    if (distanceInput) {
      distanceInput.value = vehicle.distance;
      distanceInput.disabled = false;
    }
    if (durationInput) {
      durationInput.value = vehicle.duration;
      durationInput.disabled = false;
    }
  }

  resetIssueForm();
  state.activeIssues = (vehicle.status === 'unhealthy' || vehicle.status === 'mdm_issue') ? issuesFromVehicle(vehicle) : [];
  renderIssuesList();

  // Scroll to form panel
  document.querySelector('.panel')?.scrollIntoView({ behavior: 'smooth' });
}

export async function saveStateToServer() {
  const globalDuration = (document.getElementById('global-duration-input')?.value || '').trim();
  try {
    const res = await saveFleetState(state.activeFleet, globalDuration);
    console.log("State saved successfully:", res);
    checkDatabaseStatusUI();
  } catch (error) {
    console.error("Error saving state:", error);
    alert("❌ Error: Could not save data to database!\n" + error.message);
    checkDatabaseStatusUI();
  }
}

export function removeVehicle(vin) {
  if (confirm(`Remove vehicle ${vin} from report?`)) {
    delete state.activeFleet[vin];
    updateFleetListUI();
    saveStateToServer();
  }
}

export function clearFleet() {
  if (confirm("Are you sure you want to clear all vehicles from the fleet?")) {
    state.activeFleet = {};
    updateFleetListUI();
    saveStateToServer();
  }
}

export function updateFleetListUI() {
  const container = document.getElementById('fleet-items-container');
  const countEl = document.getElementById('fleet-count');
  const clearBtn = document.getElementById('clear-fleet-btn');
  if (!container || !countEl || !clearBtn) return;

  const vins = Object.keys(state.activeFleet);
  countEl.innerText = vins.length;

  if (vins.length === 0) {
    clearBtn.style.display = 'none';
    container.innerHTML = `
      <div class="empty-state">
        <div>🏢</div>
        <h4>No Vehicles Added Yet</h4>
        <p>Fill out the data entry form and click "Add / Update Vehicle" to populate your customer vehicles list.</p>
      </div>
    `;
    updateReportPreview();
    return;
  }

  clearBtn.style.display = 'block';
  container.innerHTML = '';

  vins.sort().forEach(vin => {
    const vehicle = state.activeFleet[vin];
    const item = document.createElement('div');
    item.className = 'fleet-item';

    let healthBadge = '';
    if (vehicle.status === 'healthy') {
      healthBadge = `<span class="badge badge-green">Healthy</span>`;
    } else if (vehicle.status === 'unhealthy') {
      healthBadge = `<span class="badge badge-red">${(vehicle.issues || []).length} Issues</span>`;
    } else if (vehicle.status === 'inactive') {
      healthBadge = `<span class="badge badge-grey">Not Active</span>`;
    } else if (vehicle.status === 'mdm_issue') {
      healthBadge = `<span class="badge badge-orange">MDM Issue</span>`;
    }

    const modeBadge = `<span class="badge badge-blue">${escapeHtml(vehicle.mode)}</span>`;
    const distStr = vehicle.status === 'inactive' ? 'Nil' : `${escapeHtml(vehicle.distance)} km`;
    const durStr = vehicle.status === 'inactive' ? 'Nil' : escapeHtml(vehicle.duration);
    const grafanaBadge = vehicle.grafana_url
      ? `<p style="margin-top: 4px; font-size: 11px;"><a href="${escapeHtml(vehicle.grafana_url)}" target="_blank" rel="noopener noreferrer" style="color: #2563eb; font-weight: 600; text-decoration: underline;">📊 Grafana Link ↗</a></p>`
      : '';

    item.innerHTML = `
      <div class="fleet-item-info">
        <h4>${escapeHtml(vehicle.vin)}</h4>
        <p>Nick: <strong>${escapeHtml(vehicle.nickname)}</strong> | Loc: <strong>${escapeHtml(vehicle.location)}</strong></p>
        <p>Mode: ${modeBadge} | Status: ${healthBadge}</p>
        <p style="margin-top: 4px; font-size: 11px;">Dist: <strong>${distStr}</strong> | Dur: <strong>${durStr}</strong></p>
        ${grafanaBadge}
      </div>
      <div class="fleet-item-actions">
        <button class="btn-secondary" onclick="editVehicle('${escapeHtml(vehicle.vin)}')">Edit</button>
        <button class="btn-danger" onclick="removeVehicle('${escapeHtml(vehicle.vin)}')" style="padding: 6px 10px;">Remove</button>
      </div>
    `;
    container.appendChild(item);
  });

  updateReportPreview();
}

export function getCompiledReportHTML() {
  const globalDuration = (document.getElementById('global-duration-input')?.value || '').trim() || 'Not Specified';
  return generateHtmlReportContent(state.activeFleet, globalDuration, { isOnlineEmail: true, region: state.currentRegion });
}

export function downloadReport() {
  const vins = Object.keys(state.activeFleet);
  if (vins.length === 0) {
    alert("Please add at least one vehicle to the fleet before generating the report.");
    return;
  }
  const globalDuration = (document.getElementById('global-duration-input')?.value || '').trim();
  const reportHTML = generateHtmlReportContent(state.activeFleet, globalDuration, { isOnlineEmail: true, region: state.currentRegion });

  const cleanDuration = globalDuration.replace(/\s+to\s+/g, '_').replace(/[^a-zA-Z0-9_-]/g, '_');
  const filename = cleanDuration ? `report_${cleanDuration}.html` : 'vehicle_mission_report_email.html';

  const blob = new Blob([reportHTML], { type: 'text/html;charset=utf-8;' });
  const link = document.createElement("a");
  const url = URL.createObjectURL(blob);
  link.setAttribute("href", url);
  link.setAttribute("download", filename);
  link.style.visibility = 'hidden';
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
  URL.revokeObjectURL(url);
}

export function exportIssuesCSV() {
  const vins = Object.keys(state.activeFleet);
  if (vins.length === 0) {
    alert("⚠️ No vehicles in fleet to export.");
    return;
  }
  try {
    downloadIssuesCsv(state.activeFleet);
  } catch (err) {
    alert("❌ Could not export CSV file:\n" + err.message);
  }
}

export function updateReportPreview() {
  const iframe = document.getElementById('report-preview-iframe');
  if (iframe) {
    const globalDuration = (document.getElementById('global-duration-input')?.value || '').trim();
    iframe.srcdoc = generateHtmlReportContent(state.activeFleet, globalDuration, { region: state.currentRegion, isOnlineEmail: true });
  }
}

export async function uploadMissionReport() {
  const vins = Object.keys(state.activeFleet);
  if (vins.length === 0) {
    alert("⚠️ Please add at least one vehicle to the customer fleet list before publishing.");
    return;
  }

  const globalDuration = (document.getElementById('global-duration-input')?.value || '').trim();
  if (!globalDuration) {
    alert("⚠️ Please specify the Global Report Duration Range (e.g. 01-08-2026 to 15-08-2026) before uploading.");
    const durInput = document.getElementById('global-duration-input');
    if (durInput) durInput.focus();
    return;
  }

  const uploadBtn = document.getElementById('upload-mission-report-btn');
  const originalText = uploadBtn ? uploadBtn.innerHTML : '';
  if (uploadBtn) {
    uploadBtn.disabled = true;
    uploadBtn.innerHTML = `
      <span style="display:inline-block; animation: spin 1s linear infinite;">⏳</span>
      Generating & Publishing Report...
    `;
  }

  try {
    const res = await publishReport({
      globalDuration: globalDuration,
      vehicles: state.activeFleet
    });

    await loadSavedReportsList();
    showPublishSuccessModal(res.report || {});
  } catch (err) {
    console.error("Error uploading report:", err);
    alert("❌ Error publishing mission report:\n" + err.message);
  } finally {
    if (uploadBtn) {
      uploadBtn.disabled = false;
      uploadBtn.innerHTML = originalText;
    }
  }
}

export function showPublishSuccessModal(report) {
  const modal = document.getElementById('publish-success-modal');
  const metaEl = document.getElementById('publish-modal-meta');
  if (!modal || !metaEl) return;

  const vLabel = report.vehicles_label || `${Object.keys(state.activeFleet).length} Vehicles`;
  const dateRange = report.range || (document.getElementById('global-duration-input')?.value || '').trim();
  const timeStr = report.timestamp || new Date().toLocaleString();

  metaEl.innerHTML = `
    <div style="background: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 12px; font-size: 13px; text-align: left; display: flex; flex-direction: column; gap: 8px;">
      <div><strong style="color: #475569;">Report Range:</strong> <span style="color: #0f172a; font-weight: 600;">${escapeHtml(dateRange)}</span></div>
      <div><strong style="color: #475569;">Vehicles Included:</strong> <span style="color: #0f172a;">${escapeHtml(vLabel)}</span></div>
      <div><strong style="color: #475569;">Published Timestamp:</strong> <span style="color: #0f172a;">${escapeHtml(timeStr)}</span></div>
      <div><strong style="color: #475569;">Status:</strong> <span style="color: #16a34a; font-weight: 700;">✓ Live on Customer Portal</span></div>
    </div>
  `;

  modal.style.display = 'flex';
}

export function closePublishModal() {
  const modal = document.getElementById('publish-success-modal');
  if (modal) modal.style.display = 'none';
}
