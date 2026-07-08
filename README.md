# Boson Motor - Customer Vehicles Mission Report Builder

An interactive web application and server-side builder designed to construct, manage, and generate static, email-safe mission reports for Boson Motor customer vehicles. 

---

## 🌟 Key Features

- **Prepopulated Fleet Database:** Automatically matches and searches all 75 predefined vehicles (both Autonomous and Non-Autonomous) with their default nicknames, locations, and modes.
- **Search Autocomplete:** Allows clicking or typing to search vehicles by **VIN** or **Nickname** to auto-fill location and mode.
- **Four-State Status Management:** Supports checking and logging vehicles under four distinct statuses:
  - `✓ Healthy` (Green): Standard active state. Prompt for Distance and Duration.
  - `✗ Issues Detected` (Red): Active state with issues. Prompt for Distance, Duration, and a list of specific system anomalies.
  - `⊘ Inactive` (Grey): Non-active state. Distance/Duration are automatically locked to `Nil`. Prompt for last active timestamp.
  - `⚠ MDM Issue` (Orange): Device connection issues where the monitoring flag is True but no telemetry is logged. Distance is automatically locked to `Nil`. Prompt for Duration and **VT_BOX Online Time**.
- **Global Duration Range:** Configure the global time range interval, displayed on the right of the **Customer Vehicles Overview Summary** heading.
- **State Persistence (Auto-Save):** Automatically saves your active fleet list and configurations to the server on every action (add, edit, remove, clear, and duration edits) using the local auto-save API.
- **Email-Safe HTML Report Generation:** Exports a **zero-JavaScript** static HTML document styled using nested tables and inline CSS styles, ensuring pixel-perfect rendering in strict email clients (Outlook, Gmail, Apple Mail, etc.).

---

## 📁 Repository Structure

- **[vehicle_mission_report-4.html](file:///Users/kowshik28/Desktop/testing/vehicle_mission_report-4.html)**: The interactive HTML builder page (includes the CSS styles, UI panels, autocomplete dropdown, and the report download templates).
- **[vehicle_mission_report-4.py](file:///Users/kowshik28/Desktop/testing/vehicle_mission_report-4.py)**: The Python web server script that hosts the builder, handles automatic local browser launching, and provides state persistence APIs.
- **[requirements.txt](file:///Users/kowshik28/Desktop/testing/requirements.txt)**: Minimal requirements declaration (uses built-in standard Python libraries).

---

## 🚀 How to Run Locally

1. Open your terminal in this directory.
2. Start the Python web server:
   ```bash
   python3 vehicle_mission_report-4.py
   ```
3. The script will start the server and automatically launch the visual builder page in your default web browser at:
   ```
   http://localhost:8000
   ```
4. Enter the global report duration, search for vehicles, set their details, and click **Add / Update Vehicle**. Any changes are automatically persisted to the local HTML file!
5. When ready, click **Download Email-Safe HTML Report** to save a copy of the clean, JS-free email report.

---

## ☁️ Deploying to Render

To deploy this application as a hosted web app on [Render](https://render.com):

1. Create a new **Web Service** on Render and connect it to your GitHub repository (`BVMC_day_wise_reports`).
2. Use the following configuration:
   - **Runtime / Language:** `Python`
   - **Build Command:** *(Leave blank or use `pip install -r requirements.txt`)*
   - **Start Command:** `python3 vehicle_mission_report-4.py`
3. Add the following **Environment Variable** in Render's dashboard:
   - Key: `RENDER`
   - Value: `true`
   *(This ensures the server runs headlessly in the cloud and does not try to launch a desktop browser window).*

---

## 🛠️ Git Synchronization

Once you create a new repository named `BVMC_day_wise_reports` on your GitHub account, run these commands to link and push your files:
```bash
git remote add origin https://github.com/Kowshik-28/BVMC_day_wise_reports.git
git branch -M main
git push -u origin main
```
