import { state } from './state.js';
import { PREDEFINED_VEHICLES } from '../vehicles.js';
import { escapeHtml } from './helpers.js';
import { resetIssueForm, renderIssuesList } from './issues.js';
import { editVehicle, updateReportPreview } from './fleet.js';

export function populateSearchDropdown() {
  const dropdown = document.getElementById('search-dropdown');
  if (!dropdown) return;
  dropdown.innerHTML = '';

  for (const [vin, data] of Object.entries(PREDEFINED_VEHICLES)) {
    const item = document.createElement('div');
    item.className = 'dropdown-item';
    item.dataset.vin = vin;
    item.dataset.search = `${data.nickname} ${vin}`.toLowerCase();
    item.innerHTML = `<span><strong>${escapeHtml(data.nickname)}</strong></span><span style="color: var(--text-muted); font-family: monospace; font-size: 11px;">${escapeHtml(vin)}</span>`;
    item.onclick = function (e) {
      e.stopPropagation();
      selectVehicle(vin, data.nickname);
    };
    dropdown.appendChild(item);
  }
}

export function onSearchFocus() {
  const dropdown = document.getElementById('search-dropdown');
  if (dropdown) dropdown.style.display = 'block';
  filterSearchDropdown();
}

export function onSearchInput() {
  filterSearchDropdown();
}

export function filterSearchDropdown() {
  const searchInput = document.getElementById('search-input');
  const query = searchInput ? searchInput.value.toLowerCase().trim() : '';
  const items = document.querySelectorAll('.dropdown-item');
  let visibleCount = 0;

  items.forEach(item => {
    const searchText = item.dataset.search || '';
    if (searchText.includes(query)) {
      item.style.display = 'flex';
      visibleCount++;
    } else {
      item.style.display = 'none';
    }
  });

  const dropdown = document.getElementById('search-dropdown');
  if (dropdown) {
    dropdown.style.display = visibleCount > 0 ? 'block' : 'none';
  }
}

export function selectVehicle(vin, nickname) {
  const dropdown = document.getElementById('search-dropdown');
  if (dropdown) dropdown.style.display = 'none';

  const existing = state.activeFleet[vin];
  if (existing) {
    editVehicle(vin);
    const searchInput = document.getElementById('search-input');
    if (searchInput) searchInput.value = `${existing.nickname} (${vin})`;
    return;
  }

  // If it is a new predefined vehicle, clear previous forms to avoid data bleeding
  clearForm();

  const data = PREDEFINED_VEHICLES[vin] || {};
  const searchInput = document.getElementById('search-input');
  if (searchInput) searchInput.value = `${nickname || data.nickname || ''} (${vin})`;
  const vinInput = document.getElementById('vin-input');
  if (vinInput) vinInput.value = vin;
  const nickInput = document.getElementById('nickname-input');
  if (nickInput) nickInput.value = nickname || data.nickname || '';
  const locInput = document.getElementById('location-input');
  if (locInput) locInput.value = data.location || 'Not Available';
  setMode(data.mode || 'Autonomous');

  // Auto-detect region
  if (data.location && (data.location.includes('IST') || data.location.includes('India'))) {
    setRegion('India');
  } else if (data.location && (data.location.includes('PST') || data.location.includes('United States') || data.location.includes('Glenn, CA') || data.location.includes('CA'))) {
    setRegion('US');
  }
}

export function setRegion(region) {
  state.currentRegion = region;
  const indiaBtn = document.getElementById('region-india');
  const usBtn = document.getElementById('region-us');
  const tzBadge = document.getElementById('duration-tz-badge');
  const vehTzBadge = document.getElementById('vehicle-tz-indicator');
  const locInput = document.getElementById('location-input');

  if (region === 'India') {
    if (indiaBtn) indiaBtn.className = 'region-toggle-btn active-india';
    if (usBtn) usBtn.className = 'region-toggle-btn';
    if (tzBadge) {
      tzBadge.textContent = 'IST (UTC+5:30)';
      tzBadge.style.background = '#dcfce7';
      tzBadge.style.color = '#16a34a';
      tzBadge.style.borderColor = '#bbf7d0';
    }
    if (vehTzBadge) {
      vehTzBadge.textContent = 'Timezone: IST (UTC+5:30)';
      vehTzBadge.style.background = '#dcfce7';
      vehTzBadge.style.color = '#16a34a';
      vehTzBadge.style.borderColor = '#bbf7d0';
    }
    if (locInput && (!locInput.value || locInput.value === 'PST' || locInput.value === 'Not Available' || locInput.value === 'US')) {
      locInput.value = 'India';
    }
  } else {
    if (indiaBtn) indiaBtn.className = 'region-toggle-btn';
    if (usBtn) usBtn.className = 'region-toggle-btn active-us';
    if (tzBadge) {
      tzBadge.textContent = 'PST (America/Los_Angeles)';
      tzBadge.style.background = '#dbeafe';
      tzBadge.style.color = '#2563eb';
      tzBadge.style.borderColor = '#bfdbfe';
    }
    if (vehTzBadge) {
      vehTzBadge.textContent = 'Timezone: PST (America/Los_Angeles)';
      vehTzBadge.style.background = '#dbeafe';
      vehTzBadge.style.color = '#2563eb';
      vehTzBadge.style.borderColor = '#bfdbfe';
    }
    if (locInput && (!locInput.value || locInput.value === 'India' || locInput.value === 'IST' || locInput.value === 'Not Available')) {
      locInput.value = 'PST';
    }
  }
  updateReportPreview();
}

export function setMode(mode) {
  state.currentMode = mode;
  const autoBtn = document.getElementById('mode-auto');
  const nonBtn = document.getElementById('mode-non');
  if (mode === 'Autonomous') {
    if (autoBtn) autoBtn.classList.add('active');
    if (nonBtn) nonBtn.classList.remove('active');
  } else {
    if (autoBtn) autoBtn.classList.remove('active');
    if (nonBtn) nonBtn.classList.add('active');
  }
}

export function setStatus(status) {
  state.currentStatus = status;

  // Reset active styles
  const healthyBtn = document.getElementById('health-healthy');
  const unhealthyBtn = document.getElementById('health-unhealthy');
  const inactiveBtn = document.getElementById('health-inactive');
  const mdmBtn = document.getElementById('health-mdm');

  if (healthyBtn) healthyBtn.className = 'health-toggle-btn';
  if (unhealthyBtn) unhealthyBtn.className = 'health-toggle-btn';
  if (inactiveBtn) inactiveBtn.className = 'health-toggle-btn';
  if (mdmBtn) mdmBtn.className = 'health-toggle-btn';

  // Hide conditional containers
  const issuesCont = document.getElementById('issues-container');
  const inactiveCont = document.getElementById('inactive-container');
  const mdmCont = document.getElementById('mdm-container');
  const issuesLabel = document.getElementById('issues-container-label');

  if (issuesCont) issuesCont.style.display = 'none';
  if (inactiveCont) inactiveCont.style.display = 'none';
  if (mdmCont) mdmCont.style.display = 'none';

  const distanceInput = document.getElementById('distance-input');
  const durationInput = document.getElementById('duration-input');

  if (status === 'healthy') {
    if (healthyBtn) healthyBtn.className = 'health-toggle-btn active-healthy';
    if (distanceInput) {
      distanceInput.disabled = false;
      if (distanceInput.value === 'Nil') distanceInput.value = '';
    }
    if (durationInput) {
      durationInput.disabled = false;
      if (durationInput.value === 'Nil') durationInput.value = '';
    }
  } else if (status === 'unhealthy') {
    if (unhealthyBtn) unhealthyBtn.className = 'health-toggle-btn active-unhealthy';
    if (issuesCont) issuesCont.style.display = 'block';
    if (issuesLabel) issuesLabel.textContent = 'Anomalies / Warnings Log';
    if (distanceInput) {
      distanceInput.disabled = false;
      if (distanceInput.value === 'Nil') distanceInput.value = '';
    }
    if (durationInput) {
      durationInput.disabled = false;
      if (durationInput.value === 'Nil') durationInput.value = '';
    }
  } else if (status === 'inactive') {
    if (inactiveBtn) inactiveBtn.className = 'health-toggle-btn active-inactive';
    if (inactiveCont) inactiveCont.style.display = 'block';

    // Auto-fill Nil and disable inputs
    if (distanceInput) {
      distanceInput.value = 'Nil';
      distanceInput.disabled = true;
    }
    if (durationInput) {
      durationInput.value = 'Nil';
      durationInput.disabled = true;
    }
  } else if (status === 'mdm_issue') {
    if (mdmBtn) mdmBtn.className = 'health-toggle-btn active-mdm';
    if (mdmCont) mdmCont.style.display = 'block';
    if (issuesCont) issuesCont.style.display = 'block';
    if (issuesLabel) issuesLabel.textContent = 'Issues Log (Optional for MDM Issue)';
    if (distanceInput) {
      distanceInput.value = 'Nil';
      distanceInput.disabled = true;
    }
    if (durationInput) {
      durationInput.disabled = false;
      if (durationInput.value === 'Nil') durationInput.value = '';
    }
  }
}

export function addVersionRow(key = '', val = '') {
  const container = document.getElementById('versions-container');
  if (!container) return;
  const row = document.createElement('div');
  row.className = 'version-row';
  row.style.display = 'flex';
  row.style.gap = '8px';
  row.style.alignItems = 'center';
  row.style.marginTop = '8px';
  row.innerHTML = `
    <input type="text" placeholder="Field Name (e.g. VT_BOX Version)" class="version-key" style="flex: 1;" value="${escapeHtml(key)}">
    <input type="text" placeholder="Value (e.g. 1.2.2)" class="version-value" style="flex: 1;" value="${escapeHtml(val)}">
    <button class="btn-danger" onclick="this.parentElement.remove()" style="padding: 10px; width: 36px; height: 36px; line-height: 1; min-width: unset; flex-shrink: 0; display: inline-flex; align-items: center; justify-content: center; font-weight: bold; border-radius: 6px; background-color: #ef4444; color: #ffffff;">×</button>
  `;
  container.appendChild(row);
}

export function clearForm() {
  const searchInput = document.getElementById('search-input');
  if (searchInput) searchInput.value = '';
  const vinInput = document.getElementById('vin-input');
  if (vinInput) vinInput.value = '';
  const nickInput = document.getElementById('nickname-input');
  if (nickInput) nickInput.value = '';
  const locInput = document.getElementById('location-input');
  if (locInput) locInput.value = '';

  const distanceInput = document.getElementById('distance-input');
  const durationInput = document.getElementById('duration-input');
  if (distanceInput) {
    distanceInput.value = '';
    distanceInput.disabled = false;
  }
  if (durationInput) {
    durationInput.value = '';
    durationInput.disabled = false;
  }

  const tsInput = document.getElementById('timestamp-input');
  if (tsInput) tsInput.value = '';
  const vtInput = document.getElementById('vt-box-time-input');
  if (vtInput) vtInput.value = '';
  const grafanaInput = document.getElementById('grafana-url-input');
  if (grafanaInput) grafanaInput.value = '';

  setMode('Autonomous');
  setRegion(state.currentRegion);
  setStatus('healthy');
  state.activeIssues = [];
  resetIssueForm();
  renderIssuesList();

  // Reset Version details section
  const vContainer = document.getElementById('versions-container');
  if (vContainer) {
    vContainer.innerHTML = '';
    addVersionRow('VT_BOX Version', '');
    addVersionRow('VCU Firmware Version', '');
  }
}

export function initSearchDismiss() {
  document.addEventListener('click', function (e) {
    const container = document.querySelector('.search-container');
    if (container && !container.contains(e.target)) {
      const dropdown = document.getElementById('search-dropdown');
      if (dropdown) dropdown.style.display = 'none';
    }
  });
}
