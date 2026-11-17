// Issue components and severity dictionaries
export const ISSUE_COMPONENTS = ["BMS", "Motor", "DCDC", "EPAS", "MDM", "Other"];
export const ISSUE_SEVERITIES = ["Low", "Medium", "High", "Critical"];

export const SEVERITY_STYLES = {
  "Low": ["#dcfce7", "#16a34a"],
  "Medium": ["#ffedd5", "#ea580c"],
  "High": ["#fee2e2", "#dc2626"],
  "Critical": ["#991b1b", "#ffffff"]
};

export const SEVERITY_BORDERS = {
  "Low": "#16a34a",
  "Medium": "#ea580c",
  "High": "#dc2626",
  "Critical": "#991b1b"
};

export function escapeHtml(value) {
  return String(value == null ? '' : value)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#x27;');
}

export function severityBadge(severity) {
  if (!SEVERITY_STYLES[severity]) return '';
  const [bg, fg] = SEVERITY_STYLES[severity];
  return `<span style="display: inline-block; padding: 3px 8px; font-size: 10px; font-weight: bold; border-radius: 12px; background-color: ${bg}; color: ${fg}; text-transform: uppercase;">${severity}</span>`;
}

export function syncDateInputsFromDuration(rangeStr) {
  const input = document.getElementById('global-duration-input');
  if (input) input.value = rangeStr || '';
}
