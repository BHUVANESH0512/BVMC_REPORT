# Boson Motor - Customer Vehicles Mission Report Builder

An interactive, offline-capable application designed to construct and generate static, email-safe mission reports for Boson Motor customer vehicles. 

## 🌟 Key Features

- **Prepopulated Fleet Database:** Encodes all 75 predefined vehicles (both Autonomous and Non-Autonomous) with their default nicknames, locations, and modes.
- **Search Autocomplete:** Allows searching and selecting vehicles by either **VIN** or **Nickname** to auto-fill location and mode.
- **Three-state Status Management:** Supports checking and logging vehicles under three statuses:
  - `✓ Healthy` (Green)
  - `✗ Issues Detected` (Red - with customizable issue logs)
  - `⊘ Not Active` (Grey - with automatic `Nil` distance/duration locking and last active timestamp input)
- **Global Duration Range:** Configure the global time range interval, displayed on the right of the **Customer Vehicles Overview Summary** heading.
- **State Persistence:** Automatically saves and loads your active fleet list directly from/to the `vehicle_mission_report-4.html` file using a hidden persistent JSON script block.
- **Email-Safe Report Generation:** The download button generates a **zero-JavaScript** static HTML document styled using nested tables and inline CSS styles, ensuring cross-client rendering in email clients (Outlook, Gmail, Apple Mail).

## 📁 Repository Structure

- **[vehicle_mission_report-4.html](file:///Users/kowshik28/Desktop/testing/vehicle_mission_report-4.html)**: The interactive browser-based builder application.
- **[vehicle_mission_report-4.py](file:///Users/kowshik28/Desktop/testing/vehicle_mission_report-4.py)**: The command-line interactive Python builder script.

## 🚀 How to Use the Builder

1. Double-click or open **[vehicle_mission_report-4.html](file:///Users/kowshik28/Desktop/testing/vehicle_mission_report-4.html)** in any web browser (Chrome, Safari, Firefox, Edge).
2. Enter the global report time range in the **Global Report Configuration** box (e.g. `08-07-2026 09:00:00 to 08-07-2026 12:00:00`).
3. Search for a vehicle by typing its VIN or Nickname, or fill in a custom VIN.
4. Fill in the vehicle status, distance, and duration, then click **Add / Update Vehicle**.
5. Once your active list is ready, click **Download Email-Safe HTML Report** to save your clean, JS-free email-ready report.
