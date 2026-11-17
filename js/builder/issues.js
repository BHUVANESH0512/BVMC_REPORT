import { state } from './state.js';
import { ISSUE_COMPONENTS, ISSUE_SEVERITIES, SEVERITY_BORDERS, escapeHtml, severityBadge } from './helpers.js';

export function newIssueId() {
  return 'm' + Date.now().toString(36) + Math.random().toString(36).slice(2, 6);
}

export function resetIssueForm() {
  const titleInput = document.getElementById('issue-title-input');
  if (titleInput) titleInput.value = '';
  const descInput = document.getElementById('issue-description-input');
  if (descInput) descInput.value = '';
  const periodInput = document.getElementById('issue-period-input');
  if (periodInput) periodInput.value = '';
  const occInput = document.getElementById('issue-occurrences-input');
  if (occInput) occInput.value = '';
  const compSelect = document.getElementById('issue-component-select');
  if (compSelect) compSelect.value = 'Other';
  const sevSelect = document.getElementById('issue-severity-select');
  if (sevSelect) sevSelect.value = 'Medium';
  const repInput = document.getElementById('issue-reported-by-input');
  if (repInput) repInput.value = '';
  const teamInput = document.getElementById('issue-team-input');
  if (teamInput) teamInput.value = '';
  const rcaInput = document.getElementById('issue-rca-input');
  if (rcaInput) rcaInput.value = '';
  const fbInput = document.getElementById('issue-feedback-input');
  if (fbInput) fbInput.value = '';
  const grafanaInput = document.getElementById('issue-grafana-input');
  if (grafanaInput) grafanaInput.value = '';

  state.editingIssueIndex = -1;
  const addBtn = document.getElementById('issue-add-btn');
  if (addBtn) addBtn.textContent = 'Add Issue';
  const cancelBtn = document.getElementById('issue-cancel-btn');
  if (cancelBtn) cancelBtn.style.display = 'none';
}

export function addIssue() {
  const titleInput = document.getElementById('issue-title-input');
  const descInput = document.getElementById('issue-description-input');
  const title = titleInput ? titleInput.value.trim() : '';
  const description = descInput ? descInput.value.trim() : '';

  if (!title) {
    alert("Please enter the Issue title.");
    if (titleInput) titleInput.focus();
    return;
  }
  if (!description) {
    alert("Please enter the Description of the issue.");
    if (descInput) descInput.focus();
    return;
  }

  const previous = state.editingIssueIndex >= 0 ? state.activeIssues[state.editingIssueIndex] : null;
  const issue = {
    id: previous ? previous.id : newIssueId(),
    issue: title,
    description: description,
    period: document.getElementById('issue-period-input')?.value.trim() || '',
    occurrences: document.getElementById('issue-occurrences-input')?.value.trim() || '',
    component: document.getElementById('issue-component-select')?.value || 'Other',
    reported_by: document.getElementById('issue-reported-by-input')?.value.trim() || '',
    severity: document.getElementById('issue-severity-select')?.value || 'Medium',
    rca: document.getElementById('issue-rca-input')?.value.trim() || '',
    responsible_team: document.getElementById('issue-team-input')?.value.trim() || '',
    customer_feedback: document.getElementById('issue-feedback-input')?.value.trim() || '',
    grafana_url: document.getElementById('issue-grafana-input')?.value.trim() || ''
  };

  if (state.editingIssueIndex >= 0) {
    state.activeIssues[state.editingIssueIndex] = issue;
  } else {
    state.activeIssues.push(issue);
  }
  resetIssueForm();
  renderIssuesList();
}

export function editIssue(index) {
  const issue = state.activeIssues[index];
  if (!issue) return;

  const titleInput = document.getElementById('issue-title-input');
  if (titleInput) titleInput.value = issue.issue || '';
  const descInput = document.getElementById('issue-description-input');
  if (descInput) descInput.value = issue.description || '';
  const periodInput = document.getElementById('issue-period-input');
  if (periodInput) periodInput.value = issue.period || '';
  const occInput = document.getElementById('issue-occurrences-input');
  if (occInput) occInput.value = issue.occurrences || '';
  const compSelect = document.getElementById('issue-component-select');
  if (compSelect) compSelect.value = ISSUE_COMPONENTS.includes(issue.component) ? issue.component : 'Other';
  const sevSelect = document.getElementById('issue-severity-select');
  if (sevSelect) sevSelect.value = ISSUE_SEVERITIES.includes(issue.severity) ? issue.severity : 'Medium';
  const repInput = document.getElementById('issue-reported-by-input');
  if (repInput) repInput.value = issue.reported_by || '';
  const teamInput = document.getElementById('issue-team-input');
  if (teamInput) teamInput.value = issue.responsible_team || '';
  const rcaInput = document.getElementById('issue-rca-input');
  if (rcaInput) rcaInput.value = issue.rca || '';
  const fbInput = document.getElementById('issue-feedback-input');
  if (fbInput) fbInput.value = issue.customer_feedback || '';
  const grafanaInput = document.getElementById('issue-grafana-input');
  if (grafanaInput) grafanaInput.value = issue.grafana_url || '';

  state.editingIssueIndex = index;
  const addBtn = document.getElementById('issue-add-btn');
  if (addBtn) addBtn.textContent = 'Update Issue';
  const cancelBtn = document.getElementById('issue-cancel-btn');
  if (cancelBtn) cancelBtn.style.display = 'inline-flex';
  if (titleInput) titleInput.focus();
}

export function removeIssue(index) {
  state.activeIssues.splice(index, 1);
  if (state.editingIssueIndex === index) resetIssueForm();
  else if (state.editingIssueIndex > index) state.editingIssueIndex--;
  renderIssuesList();
}

export function issuesFromVehicle(vehicle) {
  const details = Array.isArray(vehicle.issue_details) ? vehicle.issue_details : [];
  const titles = Array.isArray(vehicle.issues) ? vehicle.issues : [];
  const count = details.length ? Math.max(details.length, titles.length) : titles.length;
  const list = [];
  for (let i = 0; i < count; i++) {
    const d = (details[i] && typeof details[i] === 'object') ? details[i] : {};
    list.push({
      id: d.id || newIssueId(),
      issue: d.issue || titles[i] || '',
      description: d.description || '',
      period: d.period || '',
      occurrences: d.occurrences || '',
      component: ISSUE_COMPONENTS.includes(d.component) ? d.component : '',
      reported_by: d.reported_by || '',
      severity: ISSUE_SEVERITIES.includes(d.severity) ? d.severity : '',
      rca: d.rca || '',
      responsible_team: d.responsible_team || '',
      customer_feedback: d.customer_feedback || '',
      grafana_url: d.grafana_url || ''
    });
  }
  return list;
}

export function renderIssuesList() {
  const listEl = document.getElementById('issues-list');
  if (!listEl) return;
  listEl.innerHTML = '';
  state.activeIssues.forEach((issue, idx) => {
    const item = document.createElement('div');
    item.className = 'issue-card';
    item.style.borderLeftColor = SEVERITY_BORDERS[issue.severity] || '#e2e8f0';
    let meta = '';
    [
      ['Description', 'description'],
      ['Period', 'period'],
      ['Occurrences', 'occurrences'],
      ['Component', 'component'],
      ['Reported by', 'reported_by'],
      ['Severity', 'severity'],
      ['RCA', 'rca'],
      ['Responsible team', 'responsible_team'],
      ['Customer feedback', 'customer_feedback'],
      ['Grafana link', 'grafana_url']
    ].forEach(([label, key]) => {
      if (issue[key]) meta += `<div><span class="k">${label}:</span> ${escapeHtml(issue[key])}</div>`;
    });
    item.innerHTML = `
      <div class="issue-card-header">
        <div><strong>${escapeHtml(issue.issue)}</strong> ${severityBadge(issue.severity)}</div>
        <div class="issue-card-actions">
          <button class="btn-secondary" onclick="editIssue(${idx})">Edit</button>
          <button class="btn-danger" onclick="removeIssue(${idx})">Remove</button>
        </div>
      </div>
      <div class="issue-card-meta">${meta}</div>
    `;
    listEl.appendChild(item);
  });
}
