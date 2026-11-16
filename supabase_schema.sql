-- =============================================================================
-- BVMC Report — Supabase (PostgreSQL) Schema
-- Generated for Boson Motors Vehicle Mission Report
-- =============================================================================
-- SAFE TO RERUN: Uses CREATE TABLE IF NOT EXISTS and DROP POLICY IF EXISTS.
-- Never uses DROP TABLE or TRUNCATE.
-- =============================================================================

-- Enable UUID extension if not already enabled
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
CREATE EXTENSION IF NOT EXISTS "pgcrypto";

-- ─────────────────────────────────────────────────────────────────────────────
-- 1. vehicles — Master vehicle registry
-- ─────────────────────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS vehicles (
    vin         TEXT PRIMARY KEY,
    nickname    TEXT,
    location    TEXT,
    mode        TEXT,                          -- 'Non-Autonomous' | 'Autonomous'
    predefined  BOOLEAN DEFAULT false,
    raw_data    JSONB,
    created_at  TIMESTAMPTZ DEFAULT now()
);

-- ─────────────────────────────────────────────────────────────────────────────
-- 2. reports — Report metadata (one row per published reporting period)
-- ─────────────────────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS reports (
    id              TEXT PRIMARY KEY,
    label           TEXT,
    date_range      TEXT NOT NULL,
    sort_date       DATE,
    timestamp       TEXT,
    vehicles_count  INTEGER DEFAULT 0,
    vehicles_label  TEXT,
    file_path       TEXT,
    vehicles_json   JSONB,                     -- Complete snapshot for fast client retrieval
    created_at      TIMESTAMPTZ DEFAULT now()
);

-- ─────────────────────────────────────────────────────────────────────────────
-- 3. report_vehicles — Per-report vehicle snapshot (normalized relational data)
-- ─────────────────────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS report_vehicles (
    id          UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    report_id   TEXT NOT NULL REFERENCES reports(id) ON DELETE CASCADE,
    vin         TEXT NOT NULL,
    nickname    TEXT,
    location    TEXT,
    mode        TEXT,
    status      TEXT,                          -- 'healthy' | 'unhealthy' | 'inactive' | 'mdm_issue'
    distance    TEXT,
    duration    TEXT,
    timestamp   TEXT,
    vt_box_time TEXT,
    grafana_url TEXT,
    versions    JSONB,
    raw_data    JSONB,
    created_at  TIMESTAMPTZ DEFAULT now(),
    UNIQUE(report_id, vin)
);

-- ─────────────────────────────────────────────────────────────────────────────
-- 4. report_vehicle_issues — Individual issues per vehicle per report
-- ─────────────────────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS report_vehicle_issues (
    id                  UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    report_vehicle_id   UUID NOT NULL REFERENCES report_vehicles(id) ON DELETE CASCADE,
    issue_id            TEXT,
    issue_title         TEXT,
    description         TEXT,
    period              TEXT,
    occurrences         TEXT,
    component           TEXT,                  -- 'BMS' | 'Motor' | 'DCDC' | 'EPAS' | 'MDM' | 'Other'
    reported_by         TEXT,
    severity            TEXT,                  -- 'Low' | 'Medium' | 'High' | 'Critical'
    rca                 TEXT,
    responsible_team    TEXT,
    customer_feedback   TEXT,
    grafana_url         TEXT,
    sort_order          INTEGER DEFAULT 0,
    raw_data            JSONB,
    created_at          TIMESTAMPTZ DEFAULT now()
);

-- ─────────────────────────────────────────────────────────────────────────────
-- 5. fleet_state — Active working state (single-row table for report builder)
-- ─────────────────────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS fleet_state (
    id              INTEGER PRIMARY KEY DEFAULT 1 CHECK (id = 1),
    global_duration TEXT,
    vehicles_json   JSONB,
    updated_at      TIMESTAMPTZ DEFAULT now()
);

-- ─────────────────────────────────────────────────────────────────────────────
-- 6. customer_feedback — Feedback records preserved from fleet_state.db
-- ─────────────────────────────────────────────────────────────────────────────
CREATE TABLE IF NOT EXISTS customer_feedback (
    vin         TEXT NOT NULL,
    issue_id    TEXT NOT NULL,
    feedback    TEXT NOT NULL,
    created_at  TIMESTAMPTZ DEFAULT now(),
    updated_at  TIMESTAMPTZ DEFAULT now(),
    PRIMARY KEY (vin, issue_id)
);

-- ─────────────────────────────────────────────────────────────────────────────
-- Indexes for fast lookups and joins
-- ─────────────────────────────────────────────────────────────────────────────
CREATE INDEX IF NOT EXISTS idx_vehicles_mode ON vehicles(mode);
CREATE INDEX IF NOT EXISTS idx_reports_sort_date ON reports(sort_date DESC);
CREATE INDEX IF NOT EXISTS idx_reports_date_range ON reports(date_range);
CREATE INDEX IF NOT EXISTS idx_report_vehicles_report_id ON report_vehicles(report_id);
CREATE INDEX IF NOT EXISTS idx_report_vehicles_vin ON report_vehicles(vin);
CREATE INDEX IF NOT EXISTS idx_report_vehicles_status ON report_vehicles(status);
CREATE INDEX IF NOT EXISTS idx_report_vehicle_issues_rv_id ON report_vehicle_issues(report_vehicle_id);
CREATE INDEX IF NOT EXISTS idx_report_vehicle_issues_component ON report_vehicle_issues(component);
CREATE INDEX IF NOT EXISTS idx_report_vehicle_issues_severity ON report_vehicle_issues(severity);

-- =============================================================================
-- Row-Level Security (RLS) Policies
-- =============================================================================

-- Enable RLS on all tables
ALTER TABLE vehicles              ENABLE ROW LEVEL SECURITY;
ALTER TABLE reports               ENABLE ROW LEVEL SECURITY;
ALTER TABLE report_vehicles       ENABLE ROW LEVEL SECURITY;
ALTER TABLE report_vehicle_issues ENABLE ROW LEVEL SECURITY;
ALTER TABLE fleet_state           ENABLE ROW LEVEL SECURITY;
ALTER TABLE customer_feedback     ENABLE ROW LEVEL SECURITY;

-- ── 1. Anonymous (public) read access ────────────────────────────────────────

DROP POLICY IF EXISTS "vehicles_anon_select" ON vehicles;
CREATE POLICY "vehicles_anon_select"
    ON vehicles FOR SELECT
    TO anon
    USING (true);

DROP POLICY IF EXISTS "reports_anon_select" ON reports;
CREATE POLICY "reports_anon_select"
    ON reports FOR SELECT
    TO anon
    USING (true);

DROP POLICY IF EXISTS "report_vehicles_anon_select" ON report_vehicles;
CREATE POLICY "report_vehicles_anon_select"
    ON report_vehicles FOR SELECT
    TO anon
    USING (true);

DROP POLICY IF EXISTS "report_vehicle_issues_anon_select" ON report_vehicle_issues;
CREATE POLICY "report_vehicle_issues_anon_select"
    ON report_vehicle_issues FOR SELECT
    TO anon
    USING (true);

DROP POLICY IF EXISTS "fleet_state_anon_select" ON fleet_state;
CREATE POLICY "fleet_state_anon_select"
    ON fleet_state FOR SELECT
    TO anon
    USING (true);

DROP POLICY IF EXISTS "customer_feedback_anon_select" ON customer_feedback;
CREATE POLICY "customer_feedback_anon_select"
    ON customer_feedback FOR SELECT
    TO anon
    USING (true);

-- ── 2. Authenticated user full access (Owner / Admin Portal) ─────────────────

DROP POLICY IF EXISTS "vehicles_auth_all" ON vehicles;
CREATE POLICY "vehicles_auth_all"
    ON vehicles FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

DROP POLICY IF EXISTS "reports_auth_all" ON reports;
CREATE POLICY "reports_auth_all"
    ON reports FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

DROP POLICY IF EXISTS "report_vehicles_auth_all" ON report_vehicles;
CREATE POLICY "report_vehicles_auth_all"
    ON report_vehicles FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

DROP POLICY IF EXISTS "report_vehicle_issues_auth_all" ON report_vehicle_issues;
CREATE POLICY "report_vehicle_issues_auth_all"
    ON report_vehicle_issues FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

DROP POLICY IF EXISTS "fleet_state_auth_all" ON fleet_state;
CREATE POLICY "fleet_state_auth_all"
    ON fleet_state FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

DROP POLICY IF EXISTS "customer_feedback_auth_all" ON customer_feedback;
CREATE POLICY "customer_feedback_auth_all"
    ON customer_feedback FOR ALL
    TO authenticated
    USING (true)
    WITH CHECK (true);

-- ── 3. Anonymous write access for Fleet State, Reports & Feedback ───────────
-- Allows Owner Portal to save and publish reports using the Supabase anon key
DROP POLICY IF EXISTS "fleet_state_anon_all" ON fleet_state;
CREATE POLICY "fleet_state_anon_all" ON fleet_state FOR ALL TO anon USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "reports_anon_all" ON reports;
CREATE POLICY "reports_anon_all" ON reports FOR ALL TO anon USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "report_vehicles_anon_all" ON report_vehicles;
CREATE POLICY "report_vehicles_anon_all" ON report_vehicles FOR ALL TO anon USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "report_vehicle_issues_anon_all" ON report_vehicle_issues;
CREATE POLICY "report_vehicle_issues_anon_all" ON report_vehicle_issues FOR ALL TO anon USING (true) WITH CHECK (true);

DROP POLICY IF EXISTS "customer_feedback_anon_all" ON customer_feedback;
CREATE POLICY "customer_feedback_anon_all" ON customer_feedback FOR ALL TO anon USING (true) WITH CHECK (true);

-- =============================================================================
-- Schema creation complete. Next step: run supabase_historical_import.sql
-- =============================================================================
