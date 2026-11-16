/**
 * BVMC Report — CSV Generation & Client Download
 * Ported from Python issue_report.py build_csv_rows() and app.py /api/export_csv.
 */

import { CSV_COLUMNS, buildCsvRows } from './issueReport.js';

/**
 * Escapes a single CSV cell according to RFC 4180.
 * @param {*} val 
 * @returns {string}
 */
export function formatCsvCell(val) {
  if (val === null || val === undefined) return '';
  let str = String(val);
  // If string contains comma, double quote, or newline, wrap in quotes and escape internal quotes
  if (/[",\n\r]/.test(str)) {
    return '"' + str.replace(/"/g, '""') + '"';
  }
  return str;
}

/**
 * Generates the complete CSV string from fleet vehicles.
 * @param {object} vehicles Fleet vehicles dictionary keyed by VIN
 * @returns {string} CSV text including headers and rows
 */
export function generateIssuesCsv(vehicles) {
  const rows = buildCsvRows(vehicles);
  const headerLine = CSV_COLUMNS.map(formatCsvCell).join(',');
  const dataLines = rows.map(row => row.map(formatCsvCell).join(','));
  return [headerLine, ...dataLines].join('\r\n');
}

/**
 * Triggers a browser download of the issues CSV using the Blob API.
 * Works 100% client-side without any server or Python dependency.
 * 
 * @param {object} vehicles Fleet vehicles dictionary
 * @param {string} filename Optional custom filename
 */
export function downloadIssuesCsv(vehicles, filename = null) {
  const csvContent = generateIssuesCsv(vehicles);
  const dateStr = new Date().toISOString().slice(0, 10);
  const downloadName = filename || `vehicle_issues_${dateStr}.csv`;

  // Prepend UTF-8 BOM (\ufeff) so Excel correctly recognizes UTF-8 formatting
  const blob = new Blob(["\ufeff" + csvContent], { type: 'text/csv;charset=utf-8;' });
  const url = URL.createObjectURL(blob);
  const link = document.createElement('a');
  link.href = url;
  link.download = downloadName;
  link.style.display = 'none';
  document.body.appendChild(link);
  link.click();
  document.body.removeChild(link);
  URL.revokeObjectURL(url);
}
