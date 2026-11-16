-- =============================================================================
-- BVMC Report — Supabase Validation Queries
-- Run these queries in Supabase SQL Editor after executing:
--   1. supabase_schema.sql
--   2. supabase_historical_import.sql
-- =============================================================================

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 1: Master Vehicles Count (Expected: 74 vehicles)
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    COUNT(*) AS total_master_vehicles,
    COUNT(*) FILTER (WHERE mode = 'Non-Autonomous') AS non_autonomous_count,
    COUNT(*) FILTER (WHERE mode = 'Autonomous') AS autonomous_count,
    COUNT(*) FILTER (WHERE predefined = true) AS predefined_count
FROM vehicles;

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 2: Reports Overview (Expected: 6 reports, August to October 2026)
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    id,
    label,
    date_range,
    sort_date,
    vehicles_count AS declared_vehicles,
    created_at
FROM reports
ORDER BY sort_date DESC;

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 3: Report Vehicle Snapshots per Report (Expected total: 323)
-- Checks that declared vehicle count matches actual report_vehicles rows
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    r.id AS report_id,
    r.label,
    r.date_range,
    r.vehicles_count AS declared_count,
    COUNT(rv.id) AS actual_vehicle_snapshots,
    COUNT(rv.id) FILTER (WHERE rv.status = 'healthy') AS healthy_count,
    COUNT(rv.id) FILTER (WHERE rv.status = 'unhealthy') AS unhealthy_count,
    COUNT(rv.id) FILTER (WHERE rv.status = 'inactive') AS inactive_count,
    COUNT(rv.id) FILTER (WHERE rv.status = 'mdm_issue') AS mdm_issue_count,
    CASE 
        WHEN r.vehicles_count = COUNT(rv.id) THEN '✓ MATCH'
        ELSE '⚠ MISMATCH'
    END AS count_validation
FROM reports r
LEFT JOIN report_vehicles rv ON rv.report_id = r.id
GROUP BY r.id, r.label, r.date_range, r.vehicles_count, r.sort_date
ORDER BY r.sort_date DESC;

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 4: Total Logged Issues (Expected total: 149 issues)
-- Breakdown by Component and Severity across all reports
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    COALESCE(NULLIF(component, ''), 'Unspecified / Legacy') AS issue_component,
    COUNT(*) AS total_count,
    COUNT(*) FILTER (WHERE severity = 'Low') AS low_severity,
    COUNT(*) FILTER (WHERE severity = 'Medium') AS medium_severity,
    COUNT(*) FILTER (WHERE severity = 'High') AS high_severity,
    COUNT(*) FILTER (WHERE severity = 'Critical') AS critical_severity,
    COUNT(*) FILTER (WHERE severity = '' OR severity IS NULL) AS legacy_severity
FROM report_vehicle_issues
GROUP BY component
ORDER BY total_count DESC;

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 5: Active Fleet State Verification (Expected: 1 row, 50 vehicles)
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    id,
    global_duration,
    jsonb_typeof(vehicles_json) AS vehicles_json_type,
    (SELECT COUNT(*) FROM jsonb_object_keys(vehicles_json)) AS active_vehicles_count,
    updated_at
FROM fleet_state;

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 6: Customer Feedback Verification (Expected: 1 row)
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    vin,
    issue_id,
    feedback,
    created_at,
    updated_at
FROM customer_feedback;

-- ─────────────────────────────────────────────────────────────────────────────
-- Query 7: Sample Inspection — October 16-31 Report Issues
-- Verifies detailed issue attributes (RCA, responsible team, customer feedback)
-- ─────────────────────────────────────────────────────────────────────────────
SELECT 
    rv.vin,
    rv.nickname,
    rvi.component,
    rvi.issue_title,
    rvi.severity,
    rvi.period,
    rvi.occurrences,
    rvi.rca,
    rvi.responsible_team,
    rvi.customer_feedback,
    LEFT(rvi.grafana_url, 60) AS grafana_url_preview
FROM report_vehicle_issues rvi
JOIN report_vehicles rv ON rv.id = rvi.report_vehicle_id
WHERE rv.report_id = 'rpt_1793789596_16-10-2026_31-10-2026'
ORDER BY rv.vin, rvi.sort_order;

-- =============================================================================
-- Validation complete! If all counts match expected values, data migration is 100% verified.
-- =============================================================================
