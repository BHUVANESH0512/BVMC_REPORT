# Boson Motor — Fleet Mission Reports (JavaScript + Supabase + Vercel)

A 100% JavaScript Fleet Mission Reports application featuring a **public Customer Portal** for viewing historical and published mission reports, and a **secure Owner Dashboard** for configuring fleet diagnostics, editing mission data, and publishing reports to **Supabase** and **Vercel**.

---

## 🌟 Application Architecture

- **Frontend**: Responsive HTML, CSS, and modern JavaScript (ES Modules).
- **Backend / Database**: [Supabase](https://supabase.com/) (PostgreSQL with Row Level Security & JSONB historical snapshots).
- **Hosting**: [Vercel](https://vercel.com/) (Static deployment with clean URL rewrites).
- **Email Report Generator**: 100% Client-side JavaScript generating email-safe HTML with all 22 required diagnostic sections.
- **CSV Exporter**: 100% Client-side JavaScript with RFC 4180 escaping, UTF-8 BOM, and formula-injection guards.
- **Python-Free**: Zero Python runtime or server dependencies.

---

## 📱 Portals & Routing

| Portal | Route | Access | Purpose |
|---|---|---|---|
| **Customer Portal** | `/` or `/customer` | Public | View published mission reports library, inspect diagnostics in preview iframe, download HTML reports, export CSV. |
| **Owner Dashboard** | `/owner` or `/admin` | Authenticated | Manage active fleet, edit vehicle issues & versions, switch historical report periods, save to Supabase, publish new reports. |
| **Login** | `/login` | Public | Authenticate owner session via Supabase Auth (or default admin credentials). |

---

## 🔑 Default Owner Credentials

- **Username**: `admin`
- **Password**: `boson2026`
*(Or sign in using your configured Supabase Auth user).*

---

## 🗄️ Supabase Database Setup

Run the following SQL scripts in the **Supabase Dashboard &rarr; SQL Editor &rarr; New Query**:

1. **`supabase_schema.sql`**:
   Creates tables (`vehicles`, `reports`, `report_vehicles`, `report_vehicle_issues`, `fleet_state`, `customer_feedback`), indexes, and Row Level Security policies.
2. **`supabase_historical_import.sql`**:
   Imports all 3 months of historical data:
   - **74** master vehicle records
   - **6** historical mission reports (August – October 2026)
   - **323** report vehicle diagnostic snapshots
   - **149** issue records with RCA, severity, and responsible teams
   - **1** customer feedback record
   - Current active fleet state
3. **`supabase_validation.sql`**:
   Run validation queries to verify that all counts match.

---

## 🚀 Local Development

No Python required. Run using standard Node.js:

```bash
# 1. Start local dev server (zero external dependencies)
npm start
# Server runs at http://localhost:3000

# 2. Run unit & report generation tests
npm test
```

---

## 🌐 Deploy to Vercel

1. Push this repository to GitHub / GitLab / Bitbucket.
2. Import the project in your **Vercel Dashboard**.
3. In **Project Settings &rarr; Environment Variables**, configure:
   - `VITE_SUPABASE_URL`: `https://<your-project-id>.supabase.co`
   - `VITE_SUPABASE_ANON_KEY`: `<your-supabase-anon-key>`
4. Deploy! Vercel serves the static application directly according to `vercel.json`.
