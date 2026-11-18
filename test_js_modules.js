import fs from 'fs';
import path from 'path';
import { fileURLToPath } from 'url';

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

import {
  vehicleIssueItems,
  normalizeVehicle,
  normalizeVehicles,
  getIssueSummarySection,
  buildCsvRows,
  CSV_COLUMNS
} from './js/issueReport.js';
import { generateHtmlReportContent, compressHtml } from './js/emailReportGenerator.js';
import { generateIssuesCsv } from './js/csvExport.js';
import { getShortNickname, parseSortDate, deriveMonthLabel } from './js/dataHelpers.js';

console.log('Testing JS modules...');

// 1. Test data helpers
console.log('Test parseSortDate:');
console.log('  16-10-2026 to 31-10-2026 ->', parseSortDate('16-10-2026 to 31-10-2026'));
console.log('  2026-08-01 to 2026-08-15 ->', parseSortDate('2026-08-01 to 2026-08-15'));
console.log('Test deriveMonthLabel:');
console.log('  16-10-2026 to 31-10-2026 ->', deriveMonthLabel('16-10-2026 to 31-10-2026'));
console.log('  01-08-2026 to 31-08-2026 ->', deriveMonthLabel('01-08-2026 to 31-08-2026'));
console.log('Test getShortNickname:');
console.log('  P6 Vehicle (14-12-2025) ->', getShortNickname('P6 Vehicle (14-12-2025)'));
console.log('  US HC Fargo ->', getShortNickname('US HC Fargo'));

import { PREDEFINED_VEHICLES } from './js/vehicles.js';

// 2. Load vehicles
let vehicles = {};
let duration = '16-10-2026 to 31-10-2026';
if (fs.existsSync(path.join(__dirname, 'fleet_state.json'))) {
  const fleetState = JSON.parse(fs.readFileSync(path.join(__dirname, 'fleet_state.json'), 'utf8'));
  vehicles = fleetState.vehicles || {};
  duration = fleetState.global_duration || duration;
} else {
  vehicles = {
    "MD9GBUE28FC341028": {
      vin: "MD9GBUE28FC341028",
      nickname: "P53 Vehicle",
      location: "IST",
      mode: "Autonomous",
      status: "unhealthy",
      distance: "6.67",
      duration: "13.3 hours",
      issues: ["Motor fault"],
      issue_details: [{
        component: "Motor",
        severity: "Medium",
        issue: "Motor fault",
        description: "Motor in thermal cutback",
        period: "1 day",
        occurrences: "2 times"
      }],
      versions: { "VT_BOX Version": "1.2.2" }
    },
    "MD9GBUE2XDC341075": {
      vin: "MD9GBUE2XDC341075",
      nickname: "P18 Vehicle",
      location: "US",
      mode: "Non-Autonomous",
      status: "mdm_issue",
      distance: "Nil",
      duration: "10 mins",
      vt_box_time: "27-10-2026",
      issues: ["MDM is on but no data"],
      issue_details: [{
        component: "MDM",
        severity: "Medium",
        issue: "MDM is on but no data",
        description: "No data received"
      }],
      versions: { "VT_BOX Version": "1.2.2" }
    }
  };
}

console.log(`Loaded ${Object.keys(vehicles).length} vehicles for testing.`);

// 3. Test HTML Report Generation
const generatedHtml = generateHtmlReportContent(vehicles, duration);
console.log(`Generated HTML Report length: ${generatedHtml.length} characters.`);

// Check key sections in HTML
const requiredSections = [
  'Customer Vehicles Mission Report',
  'Issue Category Summary',
  'Data / Telemetry Issues',
  'Issue Summary',
  'Detailed Vehicle Diagnostics',
  'Vehicle Mode',
  'Distance Travelled',
  'Logged Duration',
  'Total Issues Logged',
  'System Diagnostics & Activity Status',
  'Boson Motor Co. All rights reserved'
];

let allSectionsPresent = true;
requiredSections.forEach(sec => {
  const has = generatedHtml.includes(sec);
  console.log(`  [${has ? '✓' : '✗'}] ${sec}`);
  if (!has) allSectionsPresent = false;
});

// Compare with existing vehicle_mission_report_email.html if present
if (fs.existsSync(path.join(__dirname, 'vehicle_mission_report_email.html'))) {
  const referenceHtml = fs.readFileSync(path.join(__dirname, 'vehicle_mission_report_email.html'), 'utf8');
  console.log(`Reference HTML length: ${referenceHtml.length} characters.`);
}

// 4. Test CSV Export
const csvOutput = generateIssuesCsv(vehicles);
const csvLines = csvOutput.split('\r\n');
console.log(`Generated CSV: ${csvLines.length} lines (including header). Header: ${csvLines[0].substring(0, 50)}...`);

console.log('\nVerification result:', allSectionsPresent ? '✓ ALL TESTS PASSED' : '✗ SOME CHECKS FAILED');
