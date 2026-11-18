/**
 * BVMC Report — Email HTML Report Generator
 * 1:1 port of generate_html_report_content() and compress_html() from app.py.
 * 
 * Recreates the exact email-safe HTML report matching "Fleet Mission Report Summary.html"
 * with complete support for Gmail, Outlook, responsive layout, table-based structure,
 * and absolute HTTPS assets.
 */

import { esc } from './dataHelpers.js';
import {
  normalizeVehicles,
  getIssueSummarySection,
  buildIssueDetailTable
} from './issueReport.js';

// Standard logo path (served from /static/ directory by Vite & Vercel)
export const DEFAULT_LOGO_URL = "/Boson_logo.png?v=20260826";
export const FALLBACK_LOGO_URL = "/Boson_logo.png?v=20260826";

/**
 * Strips embedded JSON scripts and collapses blank lines for email compactness.
 * @param {string} html 
 * @returns {string}
 */
export function compressHtml(html) {
  if (!html) return '';
  const cleaned = html.replace(/<script type="application\/json" id="vehicles-json-state-report">[\s\S]*?<\/script>/gi, '');
  return cleaned
    .split('\n')
    .map(line => line.trim())
    .filter(line => line.length > 0)
    .join('\n');
}

/**
 * Generates the complete, email-safe XHTML mission report summary.
 * 
 * @param {object} vehicles Fleet vehicles dictionary keyed by VIN
 * @param {string} globalDuration Report duration string e.g. "16-10-2026 to 31-10-2026"
 * @param {object} options Optional settings (logoUrl, forEmailDownload)
 * @returns {string} Fully formatted XHTML email report
 */
export function generateHtmlReportContent(vehicles, globalDuration, options = {}) {
  const normVehicles = normalizeVehicles(vehicles || {});
  const logoUrl = options.logoUrl || (options.isOnlineEmail ? DEFAULT_LOGO_URL : FALLBACK_LOGO_URL);

  let htmlOut = `<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <title>Fleet Mission Report Summary</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <style type="text/css">
    body {
      font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
      background-color: #f1f5f9;
      color: #1e293b;
      margin: 0;
      padding: 0;
      -webkit-text-size-adjust: 100%;
      -ms-text-size-adjust: 100%;
    }
    table {
      border-collapse: collapse;
    }
    p {
      margin: 0 0 10px 0;
      line-height: 1.5;
    }
    @media only screen and (max-width: 620px) {
      .stack-col {
        display: block !important;
        width: 100% !important;
        padding: 0 0 16px 0 !important;
        box-sizing: border-box !important;
      }
    }
    .vehicle-link {
      color: #2563eb;
      text-decoration: underline;
      text-underline-offset: 3px;
      font-weight: 600;
      cursor: pointer;
    }
    .vehicle-link:hover {
      color: #1d4ed8;
      text-decoration-thickness: 2px;
    }
    .vehicle-link:focus-visible {
      outline: 2px solid #2563eb;
      outline-offset: 3px;
      border-radius: 3px;
    }
  </style>
  <!--[if mso]>
  <style type="text/css">
    table { mso-table-lspace: 0pt; mso-table-rspace: 0pt; }
  </style>
  <![endif]-->
</head>
<body style="margin: 0; padding: 20px 0; background-color: #f1f5f9; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;">

  <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 800px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.05); overflow: hidden; border: 1px solid #e2e8f0;">
    
    <!-- HEADER -->
    <tr>
      <td bgcolor="#1e293b" style="padding: 30px 24px; text-align: center;">
        <img src="${esc(logoUrl)}" onerror="this.onerror=null;this.src='/Boson_logo.png?v=20260826';" alt="Boson Motor" style="height: 76px; width: auto; max-width: 320px; object-fit: contain; display: block; margin: 0 auto 14px auto;">
        <p style="margin: 6px 0 0 0; color: #94a3b8; font-size: 14px; font-weight: 500;">Customer Vehicles Mission Report</p>
      </td>
    </tr>
`;

  const vehicleKeys = Object.keys(normVehicles);
  if (vehicleKeys.length === 0) {
    htmlOut += `
    <!-- EMPTY STATE -->
    <tr>
      <td style="padding: 40px 24px; text-align: center;">
        <div style="font-size: 48px; margin-bottom: 16px;">🏢</div>
        <h2 style="margin: 0 0 8px 0; font-size: 18px; font-weight: 600; color: #0f172a;">No Vehicles Logged</h2>
        <p style="font-size: 13px; color: #64748b; margin-bottom: 0;">
          Please enter vehicle details to populate this report.
        </p>
      </td>
    </tr>
`;
  } else {
    // 1. Issue Summary and Category Summary tables
    htmlOut += getIssueSummarySection(normVehicles, globalDuration, options);

    // 2. Detailed Vehicle Diagnostics cards
    const hasIssueCards = Object.values(normVehicles).some(v => !['healthy', 'inactive'].includes(v.status || 'healthy'));

    if (hasIssueCards) {
      htmlOut += `
    <!-- VEHICLE DETAILS SECTION -->
    <tr>
      <td style="padding: 16px 20px; background-color: #fafbfc; border-top: 1px solid #e2e8f0;">
        <h2 style="margin: 0 0 12px 0; font-size: 16px; font-weight: 600; color: #0f172a; border-bottom: 2px solid #e2e8f0; padding-bottom: 6px;">
          🔍 Detailed Vehicle Diagnostics
        </h2>
`;

      const sortedVins = vehicleKeys.sort();
      for (const vin of sortedVins) {
        const val = normVehicles[vin];
        const statusVal = val.status || 'healthy';
        if (['healthy', 'inactive'].includes(statusVal)) {
          continue;
        }

        const versions = val.versions || {};
        let versionsHtml = '';
        if (versions && Object.keys(versions).length > 0) {
          const cells = [];
          const sortedVersionKeys = Object.keys(versions).sort();
          for (const k of sortedVersionKeys) {
            const v = versions[k];
            if (v && String(v).trim()) {
              cells.push(`<span style="color: #475569; font-weight: 600;">${esc(k)}:</span> <span style="color: #0f172a; margin-right: 15px;">${esc(v)}</span>`);
            }
          }
          if (cells.length > 0) {
            versionsHtml = `
              <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 10px; margin-bottom: 8px; font-size: 10px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;">
                ${cells.join(' &nbsp;|&nbsp; ')}
              </div>
            `;
          }
        }

        let cardBorderColor = "#22c55e";
        let statusHeader = '<span style="color: #16a34a; font-weight: bold;">HEALTHY</span>';

        if (statusVal === 'unhealthy') {
          cardBorderColor = "#ef4444";
          statusHeader = '<span style="color: #dc2626; font-weight: bold;">ISSUE DETECTED</span>';
        } else if (statusVal === 'inactive') {
          cardBorderColor = "#64748b";
          statusHeader = '<span style="color: #64748b; font-weight: bold;">NOT ACTIVE</span>';
        } else if (statusVal === 'mdm_issue') {
          cardBorderColor = "#ea580c";
          statusHeader = '<span style="color: #ea580c; font-weight: bold;">MDM ISSUE</span>';
        }

        let anomaliesSection = '';
        if (statusVal === 'inactive') {
          const timestampStr = val.timestamp || "Not Available";
          anomaliesSection = `
            <div style="background-color: #f1f5f9; border: 1px solid #e2e8f0; border-radius: 6px; padding: 12px; color: #475569; font-size: 11px; font-weight: 500;">
              ⊘ Vehicle is currently Not Active / Not Available. Last active timestamp: <strong>${esc(timestampStr)}</strong>
            </div>
          `;
        } else if (statusVal === 'mdm_issue') {
          const vtBoxTime = val.vt_box_time || "Not Available";
          anomaliesSection = `
            <div style="background-color: #fff7ed; border: 1px solid #ffedd5; border-radius: 6px; padding: 12px; color: #c2410c; font-size: 11px; font-weight: 500;">
              ⚠ MDM Issue: Monitoring flag is True, but no data came. VT_BOX came online at: <strong>${esc(vtBoxTime)}</strong>
            </div>
          `;
          const mdmDetailTable = buildIssueDetailTable(vin, val);
          if (mdmDetailTable) {
            anomaliesSection += `<div style="margin-top: 8px;">${mdmDetailTable}</div>`;
          }
        } else if (buildIssueDetailTable(vin, val)) {
          anomaliesSection = buildIssueDetailTable(vin, val);
        } else {
          let tableRows = '';
          const issuesList = Array.isArray(val.issues) ? val.issues : [];
          issuesList.forEach((issue, idx) => {
            const idFmt = String(idx + 1).padStart(3, '0');
            tableRows += `
              <tr style="border-bottom: 1px solid #e2e8f0;">
                <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #0f172a; font-family: monospace; text-align: left;">${idFmt}</td>
                <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #475569; font-weight: 600; text-align: left;">User Reported</td>
                <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #0f172a; text-align: left;">${esc(issue)}</td>
                <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; text-align: left;"><span style="display: inline-block; padding: 3px 8px; font-size: 10px; font-weight: bold; border-radius: 12px; background-color: #fee2e2; color: #dc2626; text-transform: uppercase;">Critical</span></td>
                <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #475569; text-align: left;">Inspect vehicle diagnostics</td>
              </tr>
            `;
          });
          anomaliesSection = `
            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 11px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
              <thead>
                <tr bgcolor="#f8fafc">
                  <th style="padding: 8px 10px; font-weight: 600; text-align: left; border-bottom: 1px solid #e2e8f0; color: #475569; width: 45px;">ID</th>
                  <th style="padding: 8px 10px; font-weight: 600; text-align: left; border-bottom: 1px solid #e2e8f0; color: #475569; width: 110px;">System</th>
                  <th style="padding: 8px 10px; font-weight: 600; text-align: left; border-bottom: 1px solid #e2e8f0; color: #475569;">Description</th>
                  <th style="padding: 8px 10px; font-weight: 600; text-align: left; border-bottom: 1px solid #e2e8f0; color: #475569; width: 85px;">Severity</th>
                  <th style="padding: 8px 10px; font-weight: 600; text-align: left; border-bottom: 1px solid #e2e8f0; color: #475569; width: 180px;">Recommended Action</th>
                </tr>
              </thead>
              <tbody style="background-color: #ffffff;">
                ${tableRows}
              </tbody>
            </table>
          `;
        }

        const distVal = statusVal !== 'inactive' ? `${val.distance || 0} km` : "Nil";
        const durVal = statusVal !== 'inactive' ? (val.duration || '0s') : "Nil";

        let extraKpiRow = "";
        if (statusVal === 'mdm_issue') {
          extraKpiRow = `
            <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 16px;">
              <tr>
                <td>
                  <div style="background-color: #fff7ed; border: 1px solid #ffedd5; border-radius: 6px; padding: 10px;">
                    <span style="font-size: 8px; color: #ea580c; text-transform: uppercase; font-weight: bold; display: block; margin-bottom: 2px;">VT_BOX Online Time</span>
                    <span style="font-size: 11px; font-weight: 700; color: #c2410c;">${esc(val.vt_box_time || 'Not Available')}</span>
                  </div>
                </td>
              </tr>
            </table>
          `;
        }

        const grafanaBtn = val.grafana_url ? `
          <div style="margin-bottom: 8px;">
            <a href="${esc(val.grafana_url)}" target="_blank" style="display: inline-flex; align-items: center; gap: 5px; padding: 4px 10px; font-size: 10px; font-weight: 600; color: #ffffff; background-color: #ea580c; border-radius: 4px; text-decoration: none;">
              <span>📊</span> Open Grafana Telemetry Dashboard ↗
            </a>
          </div>
        ` : '';

        const totalIssuesCount = Array.isArray(val.issues) ? val.issues.length : 0;
        let issuesBadgeColor = '#16a34a';
        if (statusVal === 'inactive') issuesBadgeColor = '#64748b';
        else if (statusVal === 'mdm_issue') issuesBadgeColor = '#ea580c';
        else if (statusVal === 'unhealthy') issuesBadgeColor = '#dc2626';

        htmlOut += `
            <!-- VEHICLE CARD: ${vin} -->
            <div id="vin-${vin}" style="background-color: #ffffff; border: 1px solid #e2e8f0; border-left: 4px solid ${cardBorderColor}; border-radius: 6px; padding: 12px; margin-bottom: 14px; box-shadow: 0 1px 4px rgba(0,0,0,.05);">
              
              <!-- Card Header -->
              <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 8px;">
                <tr>
                  <td>
                    <span style="font-size: 14px; font-weight: 700; color: #0f172a; font-family: Courier, monospace;">VIN: ${vin}</span>
                    <div style="font-size: 9px; color: #64748b; margin-top: 2px;line-height:1.3;">Nickname: <strong><a href="#vin-${vin}" class="vehicle-link" style="color: #2563eb; text-decoration: underline; text-underline-offset: 3px; font-weight: 600; cursor: pointer;">${esc(val.nickname || '')}</a></strong> &nbsp;|&nbsp; Location: <strong>${esc(val.location || '')}</strong></div>
                  </td>
                  <td style="text-align: right; vertical-align: top;">
                    ${statusHeader}
                  </td>
                </tr>
              </table>

              ${grafanaBtn}

              <!-- Overview KPI blocks -->
              <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 8px;">
                <tr>
                  <td width="25%" style="padding-right: 8px;">
                    <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                      <div style="font-size: 6px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Vehicle Mode</div>
                      <div style="font-size: 6px; font-weight: 700; color: #1d4ed8;">${esc(val.mode || 'Non-Autonomous')}</div>
                    </div>
                  </td>
                  <td width="25%" style="padding-left: 4px; padding-right: 4px;">
                    <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                      <div style="font-size: 6px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Distance Travelled</div>
                      <div style="font-size: 11px; font-weight: 700; color: #0f172a;">${esc(distVal)}</div>
                    </div>
                  </td>
                  <td width="25%" style="padding-left: 4px; padding-right: 4px;">
                    <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                      <div style="font-size: 6px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Logged Duration</div>
                      <div style="font-size: 11px; font-weight: 700; color: #0f172a;">${esc(durVal)}</div>
                    </div>
                  </td>
                  <td width="25%" style="padding-left: 8px;">
                    <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                      <div style="font-size: 5px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Total Issues Logged</div>
                      <div style="font-size: 11px; font-weight: 700; color: ${issuesBadgeColor};">${totalIssuesCount}</div>
                    </div>
                  </td>
                </tr>
              </table>

              ${extraKpiRow}
              ${versionsHtml}

              <div style="font-size: 11px; font-weight: 600; color: #475569; margin-bottom: 8px; text-transform: uppercase;">⚠️ System Diagnostics & Activity Status</div>
              ${anomaliesSection}

              <div style="text-align: right; margin-top: 15px;">
                <a href="#issue-summary" style="font-size: 10px; color: #2563eb; text-decoration: none; font-weight: 600;">&uarr; Back to Customer Vehicles Overview</a>
              </div>
            </div>
        `;
      }

      htmlOut += `
      </td>
    </tr>
`;
    }
  }

  htmlOut += `
    <!-- FOOTER -->
    <tr>
      <td bgcolor="#f8fafc" style="padding: 24px; text-align: center; border-top: 1px solid #e2e8f0; color: #64748b; font-size: 12px;">
        <p style="margin: 0;">This email was generated automatically by Boson Vehicle Dashboard Capture Analysis.</p>
        <p style="margin: 4px 0 0 0;">Timezone: <strong>${esc(options.timezone || (options.region === 'India' ? 'IST (UTC+5:30)' : 'PST (America/Los_Angeles)'))}</strong> &bull; &copy; 2026 Boson Motor Co. All rights reserved.</p>
      </td>
    </tr>

  </table>

</body>
</html>
`;

  return compressHtml(htmlOut);
}
