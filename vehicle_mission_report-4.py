#!/usr/bin/env python3
import os
import sys
import json
import re

PREDEFINED_VEHICLES = {
    # Non-Autonomous
    "MD9GBUE28DC341009": {"nickname": "Green HC(PST)", "location": "PST", "mode": "Non-Autonomous"},
    "MD9GBUE27DC341051": {"nickname": "P2 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22DC341054": {"nickname": "P3 Vehicle (P4 to P3)", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE28DC341057": {"nickname": "P4 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE28DC341060": {"nickname": "P5 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23DC341063": {"nickname": "P6 Vehicle (14-12-2025)", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25DC341064": {"nickname": "P7 Vehicle", "location": "India", "mode": "Non-Autonomous"},
    "MD9GBUE29DC341066": {"nickname": "P9 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22DC341068": {"nickname": "P11 Vehicle(IST)", "location": "IST", "mode": "Non-Autonomous"},
    "MD9GBUE20DC341070": {"nickname": "P13 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22DC341071": {"nickname": "P14 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE28DC341074": {"nickname": "P17 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE2XDC341075": {"nickname": "P18 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE21DC341076": {"nickname": "P19 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23DC341077": {"nickname": "P20 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25DC341078": {"nickname": "P21 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE27DC341079": {"nickname": "P22 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23DC341080": {"nickname": "P23 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE27DC341082": {"nickname": "P25 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25DC341081": {"nickname": "P24 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE2XFC341001": {"nickname": "P26 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE21FC341002": {"nickname": "P27 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23FC341003": {"nickname": "P28 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25FC341004": {"nickname": "P29 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE27FC341005": {"nickname": "P30 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE29FC341006": {"nickname": "P31 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE20FC341007": {"nickname": "P32 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22FC341008": {"nickname": "P33 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE24FC341009": {"nickname": "P34 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE20FC341010": {"nickname": "P35 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22FC341011": {"nickname": "P36 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE24FC341012": {"nickname": "P37 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE26FC341013": {"nickname": "P38 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE28FC341014": {"nickname": "P39 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE2XFC341015": {"nickname": "P40 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE21FC341016": {"nickname": "P41 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23FC341017": {"nickname": "P42 Vehicle (15-12-2025)", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25FC341018": {"nickname": "P43 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE27FC341019": {"nickname": "P44 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23FC341020": {"nickname": "P45 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25FC341021": {"nickname": "P46 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE27FC341022": {"nickname": "P47 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE29FC341023": {"nickname": "P48 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE20FC341024": {"nickname": "P49 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22FC341025": {"nickname": "P50 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE24FC341026": {"nickname": "P51 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE26FC341027": {"nickname": "P52 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE2XFC341029": {"nickname": "P54 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE26FC341030": {"nickname": "P55 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE28FC341031": {"nickname": "P56 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE2XFC341032": {"nickname": "P57 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE21FC341033": {"nickname": "P58 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE23FC341034": {"nickname": "P59 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE25FC341035": {"nickname": "P60 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE27FC341036": {"nickname": "P61 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE29FC341037": {"nickname": "P62 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE20FC341038": {"nickname": "P63 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE22FC341039": {"nickname": "P64 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE29FC341040": {"nickname": "P65 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE2XDC341027": {"nickname": "T4 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE26DC341039": {"nickname": "T10 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    "MD9GBUE26DC341042": {"nickname": "T11 Vehicle", "location": "Not Available", "mode": "Non-Autonomous"},
    # Autonomous
    "MD9GBUE27DC341003": {"nickname": "US HC Fargo", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE22DC341006": {"nickname": "US HC Yuba", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE27DC341048": {"nickname": "P1 Vehicle", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE24DC341069": {"nickname": "P12 Vehicle", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE24DC341072": {"nickname": "P15 Vehicle", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE20DC341036": {"nickname": "T7 Vehicle", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE25DC341033": {"nickname": "T6 Vehicle", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE22DC341037": {"nickname": "T8 Vehicle", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE24DC341038": {"nickname": "T9 Vehicle(HMI)", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE28FC341028": {"nickname": "P53 Vehicle(IST)", "location": "IST", "mode": "Autonomous"},
    "MD9GBUE2XDC341030": {"nickname": "Black Dragon", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE28DC341012": {"nickname": "Yellow Dragon", "location": "Not Available", "mode": "Autonomous"}
}

def load_previous_vehicles():
    dir_path = os.path.dirname(os.path.abspath(__file__))
    dest_file = os.path.join(dir_path, "vehicle_mission_report-4.html")
    if not os.path.exists(dest_file):
        return {}
    
    try:
        with open(dest_file, "r", encoding="utf-8") as f:
            content = f.read()
        
        match = re.search(r'<script type="application/json" id="vehicles-json-data">(.*?)</script>', content, re.DOTALL)
        if match:
            return json.loads(match.group(1).strip())
    except Exception as e:
        print(f"⚠️ Warning: Could not parse previous state data ({e}). Starting fresh.")
    return {}

def prompt_vehicle_data(vin, existing_data=None):
    # Determine defaults
    if existing_data:
        defaults = {
            "nickname": existing_data.get("nickname", "Not Named"),
            "location": existing_data.get("location", "Not Available"),
            "mode": existing_data.get("mode", "Non-Autonomous"),
            "is_healthy": existing_data.get("is_healthy", True),
            "issues": existing_data.get("issues", []),
            "distance": existing_data.get("distance", ""),
            "duration": existing_data.get("duration", "")
        }
        print(f"\n--- Loaded Active Session Details for Vehicle: {vin} ---")
    elif vin in PREDEFINED_VEHICLES:
        defaults = {
            "nickname": PREDEFINED_VEHICLES[vin]["nickname"],
            "location": PREDEFINED_VEHICLES[vin]["location"],
            "mode": PREDEFINED_VEHICLES[vin]["mode"],
            "is_healthy": True,
            "issues": [],
            "distance": "",
            "duration": ""
        }
        print(f"\n--- Loaded Predefined Details for Vehicle: {vin} ---")
    else:
        defaults = {
            "nickname": "Not Named",
            "location": "Not Available",
            "mode": "Non-Autonomous",
            "is_healthy": True,
            "issues": [],
            "distance": "",
            "duration": ""
        }
        print(f"\n--- Entering details for new vehicle: {vin} ---")

    # Display Nickname and Location info
    print(f"Nickname: {defaults['nickname']}  |  Location: {defaults['location']}  |  Mode: {defaults['mode']}")

    # Ask if they want to modify Nickname/Location/Mode or skip
    modify_input = input("Modify vehicle details (Nickname/Location/Mode)? (y/N): ").strip().lower()
    nickname = defaults['nickname']
    location = defaults['location']
    mode = defaults['mode']

    if modify_input in ['y', 'yes']:
        # 1. Nickname
        nick = input(f"   Enter Nickname (default: '{defaults['nickname']}'): ").strip()
        if nick:
            nickname = nick

        # 2. Location
        loc = input(f"   Enter Location (default: '{defaults['location']}'): ").strip()
        if loc:
            location = loc

        # 3. Mode (Autonomous or Non-Autonomous)
        curr_mode = defaults['mode']
        mode_input = input(f"   Select Mode: [1] Autonomous, [2] Non-Autonomous (default: '{curr_mode}'): ").strip()
        if mode_input:
            while mode_input not in ['1', '2']:
                mode_input = input("      Please enter 1 or 2: ").strip()
            mode = "Autonomous" if mode_input == '1' else "Non-Autonomous"

    # 4. Health status
    curr_health = "Yes" if defaults['is_healthy'] else "No"
    healthy_input = input(f"Is the vehicle healthy? (Yes/No, default: '{curr_health}'): ").strip().lower()
    if not healthy_input:
        is_healthy = defaults['is_healthy']
        issues = defaults['issues']
    else:
        while healthy_input not in ['yes', 'y', 'no', 'n']:
            healthy_input = input("   Please enter Yes or No: ").strip().lower()
        is_healthy = healthy_input in ['yes', 'y']
        issues = []

    # 5. Issues (if unhealthy)
    if not is_healthy:
        keep_issues = 'n'
        if existing_data and not existing_data.get('is_healthy', True) and existing_data.get('issues'):
            print(f"   Current issues: {existing_data['issues']}")
            keep_input = input("   Do you want to keep the current issues? (Yes/No, default: Yes): ").strip().lower()
            if not keep_input or keep_input in ['yes', 'y']:
                keep_issues = 'y'
                issues = existing_data['issues']

        if keep_issues != 'y':
            print("\n   --- Enter Vehicle Issues (Press Enter on an empty line to finish) ---")
            idx = 1
            while True:
                issue = input(f"      Issue #{idx}: ").strip()
                if not issue:
                    if not issues:
                        print("      At least one issue is required if the vehicle is not healthy.")
                        continue
                    break
                issues.append(issue)
                idx += 1

    # 6. Distance
    dist_prompt = "Enter Distance Travelled in km"
    if defaults['distance']:
        dist_prompt += f" (default: '{defaults['distance']}')"
    dist_prompt += ": "
    
    distance = input(dist_prompt).strip()
    if not distance:
        distance = defaults['distance']
    while not distance:
        distance = input("   Distance is required. Enter Distance: ").strip()

    # 7. Duration
    dur_prompt = "Enter Data Logged Duration"
    if defaults['duration']:
        dur_prompt += f" (default: '{defaults['duration']}')"
    dur_prompt += ": "
    
    duration = input(dur_prompt).strip()
    if not duration:
        duration = defaults['duration']
    while not duration:
        duration = input("   Duration is required. Enter Duration: ").strip()

    temp_data = {
        "vin": vin,
        "nickname": nickname,
        "location": location,
        "mode": mode,
        "is_healthy": is_healthy,
        "issues": issues,
        "distance": distance,
        "duration": duration
    }

    # Ask: add to report or not
    add_report_input = input("\nAdd this vehicle to the report? (Y/n): ").strip().lower()
    if not add_report_input or add_report_input in ['y', 'yes']:
        return temp_data
    else:
        print("Vehicle entry discarded.")
        return None

def generate_html_report(vehicles):
    dir_path = os.path.dirname(os.path.abspath(__file__))
    dest_file = os.path.join(dir_path, "vehicle_mission_report-4.html")

    # Start building the static HTML email
    html_out = """<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
      mso-table-lspace: 0pt;
      mso-table-rspace: 0pt;
    }
    p {
      margin: 0 0 10px 0;
      line-height: 1.5;
    }
    .badge {
      display: inline-block;
      padding: 4px 8px;
      font-size: 11px;
      font-weight: bold;
      border-radius: 12px;
      text-transform: uppercase;
    }
    .badge-green {
      background-color: #dcfce7;
      color: #16a34a;
    }
    .badge-red {
      background-color: #fee2e2;
      color: #dc2626;
    }
    .badge-blue {
      background-color: #dbeafe;
      color: #1d4ed8;
    }
    .badge-grey {
      background-color: #f1f3f5;
      color: #475569;
    }
  </style>
</head>
<body style="margin: 0; padding: 20px 0; background-color: #f1f5f9; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;">

  <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 800px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.05); overflow: hidden; border: 1px solid #e2e8f0;">
    
    <!-- HEADER -->
    <tr>
      <td bgcolor="#1e293b" style="padding: 30px 24px; text-align: center;">
        <h1 style="margin: 0; color: #ffffff; font-size: 24px; font-weight: 700; letter-spacing: -0.5px;">Boson Motor</h1>
        <p style="margin: 6px 0 0 0; color: #94a3b8; font-size: 14px; font-weight: 500;">Vehicle Dashboard &mdash; Static Fleet Mission Report</p>
      </td>
    </tr>
"""

    if not vehicles:
        # Empty State
        html_out += """
    <!-- EMPTY STATE -->
    <tr>
      <td style="padding: 40px 24px; text-align: center;">
        <div style="font-size: 48px; margin-bottom: 16px;">🏢</div>
        <h2 style="margin: 0 0 8px 0; font-size: 18px; font-weight: 600; color: #0f172a;">No Vehicles Logged</h2>
        <p style="font-size: 13px; color: #64748b; margin-bottom: 0;">
          Please run the `vehicle_mission_report-4.py` script and enter vehicle details to populate this report.
        </p>
      </td>
    </tr>
"""
    else:
        # Summary Section
        html_out += """
    <!-- SUMMARY SECTION -->
    <tr>
      <td style="padding: 24px;">
        <h2 style="margin: 0 0 16px 0; font-size: 18px; font-weight: 600; color: #0f172a; border-bottom: 2px solid #f1f5f9; padding-bottom: 8px;">
          🏢 Fleet Overview Summary
        </h2>
        <p style="font-size: 13px; color: #64748b; margin-bottom: 16px;">
          This report compiles vehicle capture data for the fleet. Click on any VIN below to jump directly to its detailed diagnostics and issues log.
        </p>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 13px;">
          <thead>
            <tr bgcolor="#f8fafc">
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Vehicle VIN</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Nickname</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Location</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Mode</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Status</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: right; border-bottom: 2px solid #e2e8f0; color: #475569;">Distance</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: right; border-bottom: 2px solid #e2e8f0; color: #475569;">Duration</th>
            </tr>
          </thead>
          <tbody>
"""
        for vin in sorted(vehicles.keys()):
            val = vehicles[vin]
            is_healthy = val["is_healthy"]
            status_badge = '<span class="badge badge-green">✓ Healthy</span>' if is_healthy else f'<span class="badge badge-red">✗ {len(val["issues"])} Issues</span>'
            mode_badge = f'<span class="badge badge-blue">{val.get("mode", "Autonomous")}</span>'
            
            html_out += f"""
            <tr style="border-bottom: 1px solid #f1f5f9;">
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9;"><a href="#vin-{vin}" style="color: #2563eb; font-weight: 600; text-decoration: none;">{vin}</a></td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; color: #475569;">{val['nickname']}</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; color: #475569;">{val['location']}</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9;">{mode_badge}</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9;">{status_badge}</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; text-align: right; font-weight: 600;">{val['distance']} km</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; text-align: right; font-weight: 600;">{val['duration']}</td>
            </tr>
            """

        html_out += """
          </tbody>
        </table>
      </td>
    </tr>

    <!-- VEHICLE DETAILS SECTION -->
    <tr>
      <td style="padding: 24px; background-color: #fafbfc; border-top: 1px solid #e2e8f0;">
        <h2 style="margin: 0 0 20px 0; font-size: 18px; font-weight: 600; color: #0f172a; border-bottom: 2px solid #e2e8f0; padding-bottom: 8px;">
          🔍 Detailed Vehicle Diagnostics
        </h2>
"""

        for vin in sorted(vehicles.keys()):
            val = vehicles[vin]
            is_healthy = val["is_healthy"]
            card_border_color = "#22c55e" if is_healthy else "#ef4444"
            status_header = '<span style="color: #16a34a; font-weight: bold;">HEALTHY</span>' if is_healthy else '<span style="color: #dc2626; font-weight: bold;">ISSUE DETECTED</span>'
            
            # Anomaly Rows Table
            issues_list = val["issues"]
            if is_healthy:
                anomalies_section = """
                    <div style="background-color: #f0fdf4; border: 1px solid #bbf7d0; border-radius: 6px; padding: 12px; color: #166534; font-size: 13px; font-weight: 500;">
                      ✓ No system anomalies or safety faults detected.
                    </div>
                """
            else:
                table_rows = ""
                for idx, issue in enumerate(issues_list, start=1):
                    table_rows += f"""
                    <tr style="border-bottom: 1px solid #e2e8f0;">
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #0f172a; font-family: monospace; text-align: left;">{idx:03d}</td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #475569; font-weight: 600; text-align: left;">User Reported</td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #0f172a; text-align: left;">{issue}</td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; text-align: left;"><span style="display: inline-block; padding: 3px 8px; font-size: 11px; font-weight: bold; border-radius: 12px; background-color: #fee2e2; color: #dc2626; text-transform: uppercase;">Critical</span></td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #475569; text-align: left;">Inspect vehicle diagnostics</td>
                    </tr>
                    """
                anomalies_section = f"""
                    <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 12px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
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
                        {table_rows}
                      </tbody>
                    </table>
                """

            html_out += f"""
        <!-- VEHICLE CARD: {vin} -->
        <div id="vin-{vin}" style="background-color: #ffffff; border: 1px solid #e2e8f0; border-left: 5px solid {card_border_color}; border-radius: 6px; padding: 20px; margin-bottom: 24px; box-shadow: 0 2px 8px rgba(0,0,0,0.02);">
          
          <!-- Card Header -->
          <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 16px;">
            <tr>
              <td>
                <span style="font-size: 16px; font-weight: 700; color: #0f172a; font-family: Courier, monospace;">VIN: {vin}</span>
                <div style="font-size: 11px; color: #64748b; margin-top: 4px;">Nickname: <strong>{val['nickname']}</strong> &nbsp;|&nbsp; Location: <strong>{val['location']}</strong></div>
              </td>
              <td style="text-align: right; valign: top;">
                {status_header}
              </td>
            </tr>
          </table>

          <!-- Overview KPI blocks -->
          <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 16px;">
            <tr>
              <td width="25%" style="padding-right: 8px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 8px; text-align: center;">
                  <div style="font-size: 9px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Vehicle Mode</div>
                  <div style="font-size: 13px; font-weight: 700; color: #1d4ed8;">{val.get('mode', 'Autonomous')}</div>
                </div>
              </td>
              <td width="25%" style="padding-left: 4px; padding-right: 4px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 8px; text-align: center;">
                  <div style="font-size: 9px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Distance Travelled</div>
                  <div style="font-size: 13px; font-weight: 700; color: #0f172a;">{val['distance']} km</div>
                </div>
              </td>
              <td width="25%" style="padding-left: 4px; padding-right: 4px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 8px; text-align: center;">
                  <div style="font-size: 9px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Logged Duration</div>
                  <div style="font-size: 13px; font-weight: 700; color: #0f172a;">{val['duration']}</div>
                </div>
              </td>
              <td width="25%" style="padding-left: 8px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 8px; text-align: center;">
                  <div style="font-size: 9px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Total Issues Logged</div>
                  <div style="font-size: 13px; font-weight: 700; color: {'#dc2626' if not is_healthy else '#16a34a'};">{len(issues_list)}</div>
                </div>
              </td>
            </tr>
          </table>

          <!-- Anomalies Table / Warning Section -->
          <div style="font-size: 12px; font-weight: 600; color: #475569; margin-bottom: 8px; text-transform: uppercase;">⚠️ System Anomalies & Warnings Log</div>
          {anomalies_section}

          <div style="text-align: right; margin-top: 15px;">
            <a href="#" style="font-size: 11px; color: #2563eb; text-decoration: none; font-weight: 600;">&uarr; Back to Fleet Overview</a>
          </div>

        </div>
            """

        html_out += """
      </td>
    </tr>
"""

    # Add the hidden persistent JSON script block at the bottom
    json_data = json.dumps(vehicles)
    html_out += f"""
    <!-- FOOTER -->
    <tr>
      <td bgcolor="#f8fafc" style="padding: 24px; text-align: center; border-top: 1px solid #e2e8f0; color: #64748b; font-size: 12px;">
        <p style="margin: 0;">This email was generated automatically by Boson Vehicle Dashboard Capture Analysis.</p>
        <p style="margin: 4px 0 0 0;">&copy; 2026 Boson Motor Co. All rights reserved.</p>
      </td>
    </tr>

  </table>

  <!-- PERSISTENT STATE DATA -->
  <script type="application/json" id="vehicles-json-data">
  {json_data}
  </script>

</body>
</html>
"""

    with open(dest_file, "w", encoding="utf-8") as f:
        f.write(html_out)

    print("\n==================================================")
    print("🎉 SUCCESS: HTML Report Populated Successfully!")
    print(f"📁 File Saved Location: {dest_file}")
    print("💡 You can now open this HTML file or attach it to your email.")
    print("==================================================")


def main():
    # Load previous records from HTML if it exists
    vehicles = load_previous_vehicles()
    
    print("==================================================")
    print("    BOSON MOTOR - MULTI-VEHICLE REPORT GENERATOR")
    print("==================================================")
    print("Type VINs one by one. If you want to finish, save the report,")
    print("and close the script, type 'exit'.")

    try:
        while True:
            # Display entered vehicles
            if vehicles:
                print("\n--- Currently Stored Vehicles ---")
                for idx, (v_vin, v_data) in enumerate(sorted(vehicles.items()), start=1):
                    status_str = "Healthy" if v_data['is_healthy'] else f"Unhealthy ({len(v_data['issues'])} issues)"
                    mode_str = v_data.get('mode', 'Autonomous')
                    print(f"  {idx}. VIN: {v_vin} | '{v_data['nickname']}' | Loc: '{v_data['location']}' | Mode: {mode_str} | Status: {status_str}")
                print("---------------------------------")

            vin = input("\nEnter Vehicle VIN (or type 'exit' to save and close): ").strip()
            if not vin:
                continue

            if vin.lower() == 'exit':
                print("\nExiting and generating HTML report...")
                break

            if vin in vehicles:
                print(f"\n⚠️ Vehicle with VIN '{vin}' already exists in the list.")
                action = input("   Choose action: [E]dit details, [R]emove vehicle, or [C]ancel: ").strip().lower()
                while action not in ['e', 'edit', 'r', 'remove', 'c', 'cancel']:
                    action = input("   Please enter E (Edit), R (Remove), or C (Cancel): ").strip().lower()
                
                if action in ['e', 'edit']:
                    result = prompt_vehicle_data(vin, vehicles[vin])
                    if result is not None:
                        vehicles[vin] = result
                        print(f"   ✓ Vehicle '{vin}' updated.")
                elif action in ['r', 'remove']:
                    del vehicles[vin]
                    print(f"   ✓ Vehicle '{vin}' removed from the list.")
                else:
                    print("   ✓ Action cancelled.")
            else:
                # Add new vehicle
                result = prompt_vehicle_data(vin)
                if result is not None:
                    vehicles[vin] = result
                    print(f"   ✓ Vehicle '{vin}' added.")

        # Save and generate HTML
        generate_html_report(vehicles)

    except KeyboardInterrupt:
        print("\n\nScript cancelled by user. Generating report with current vehicles...")
        generate_html_report(vehicles)
        sys.exit(0)

if __name__ == "__main__":
    main()
