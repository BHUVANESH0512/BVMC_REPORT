/**
 * BVMC Report — Data & String Utility Helpers
 * Ported from Python issue_report.py and app.py
 */

export const MAX_FIELD_LEN = 2000;
export const MAX_FEEDBACK_LEN = 1000;

/**
 * Escapes characters for safe inclusion in HTML.
 * @param {*} value 
 * @returns {string}
 */
export function esc(value) {
  if (value === null || value === undefined) return '';
  return String(value)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#39;');
}

/**
 * Removes ASCII control characters and trims text to specified limit.
 * @param {*} value 
 * @param {number} limit 
 * @returns {string}
 */
export function cleanText(value, limit = MAX_FIELD_LEN) {
  if (value === null || value === undefined) return '';
  const text = String(value)
    .replace(/[\x00-\x08\x0b\x0c\x0e-\x1f\x7f]/g, '')
    .trim();
  return text.slice(0, limit);
}

/**
 * Validates and sanitizes a URL. Only http(s) URLs are allowed.
 * @param {*} value 
 * @returns {string}
 */
export function cleanUrl(value) {
  const url = cleanText(value, 500);
  if (/^https?:\/\/[^\s<>"']+$/i.test(url)) {
    return url;
  }
  return '';
}

/**
 * Cleans vehicle nickname for display.
 * e.g., "P6 Vehicle (14-12-2025)" -> "P6"
 * @param {string} nickname 
 * @returns {string}
 */
export function getShortNickname(nickname) {
  if (!nickname) return '';
  let name = String(nickname)
    .replace(/\s*Vehicle.*/i, '')
    .replace(/\s*\(.*?\)/g, '');
  if (name.trim() === 'US HC Fargo') return 'USHC Fargo';
  if (name.trim() === 'US HC Yuba') return 'USHC Yuba';
  return name.trim();
}

/**
 * Extracts a sortable YYYY-MM-DD date from various date string formats.
 * @param {string} dateStr 
 * @returns {string}
 */
export function parseSortDate(dateStr) {
  if (!dateStr) {
    return new Date().toISOString().slice(0, 10);
  }

  // Check for YYYY-MM-DD
  const isoMatches = [...dateStr.matchAll(/(\d{4})-(\d{2})-(\d{2})/g)];
  if (isoMatches.length > 0) {
    const [, y, m, d] = isoMatches[isoMatches.length - 1];
    return `${y}-${m.padStart(2, '0')}-${d.padStart(2, '0')}`;
  }

  // Check for DD-MM-YYYY
  const dmyMatches = [...dateStr.matchAll(/(\d{1,2})-(\d{1,2})-(\d{4})/g)];
  if (dmyMatches.length > 0) {
    const [, d, m, y] = dmyMatches[dmyMatches.length - 1];
    return `${y}-${m.padStart(2, '0')}-${d.padStart(2, '0')}`;
  }

  // Check for YYYY_MM_DD
  const undMatches = [...dateStr.matchAll(/(\d{4})_(\d{2})_(\d{2})/g)];
  if (undMatches.length > 0) {
    const [, y, m, d] = undMatches[undMatches.length - 1];
    return `${y}-${m.padStart(2, '0')}-${d.padStart(2, '0')}`;
  }

  return new Date().toISOString().slice(0, 10);
}

/**
 * Generates a clean, friendly month label like "August 2026" from a date range string.
 * @param {string} dateRange 
 * @returns {string}
 */
export function deriveMonthLabel(dateRange) {
  const monthNames = [
    "January", "February", "March", "April", "May", "June",
    "July", "August", "September", "October", "November", "December"
  ];

  if (!dateRange) return "Mission Report";

  // Look for DD-MM-YYYY
  const dmyMatches = [...dateRange.matchAll(/(\d{1,2})-(\d{1,2})-(\d{4})/g)];
  if (dmyMatches.length > 0) {
    const [, , m, y] = dmyMatches[0];
    const mInt = parseInt(m, 10);
    if (mInt >= 1 && mInt <= 12) {
      return `${monthNames[mInt - 1]} ${y}`;
    }
  }

  // Look for YYYY-MM-DD
  const isoMatches = [...dateRange.matchAll(/(\d{4})-(\d{1,2})-(\d{1,2})/g)];
  if (isoMatches.length > 0) {
    const [, y, m] = isoMatches[0];
    const mInt = parseInt(m, 10);
    if (mInt >= 1 && mInt <= 12) {
      return `${monthNames[mInt - 1]} ${y}`;
    }
  }

  return dateRange;
}
