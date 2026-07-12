#!/usr/bin/env python3
import os
import sys
import json
import re
import webbrowser

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
    "MD9GBUE28FC341028": {"nickname": "P53 Vehicle", "location": "IST", "mode": "Autonomous"},
    "MD9GBUE2XDC341030": {"nickname": "Black Dragon", "location": "Not Available", "mode": "Autonomous"},
    "MD9GBUE28DC341012": {"nickname": "Yellow Dragon", "location": "Not Available", "mode": "Autonomous"}
}

def get_db_connection():
    db_url = os.environ.get("DATABASE_URL")
    if not db_url:
        raise RuntimeError("DATABASE_URL environment variable is not set.")
    import psycopg2
    if db_url.startswith("postgres://"):
        db_url = db_url.replace("postgres://", "postgresql://", 1)
    
    # Auto-append sslmode=require if not present in the URL
    if "sslmode=" not in db_url:
        if "?" in db_url:
            db_url += "&sslmode=require"
        else:
            db_url += "?sslmode=require"
            
    return psycopg2.connect(db_url)

def init_db():
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS fleet_state (
            id INTEGER PRIMARY KEY,
            global_duration TEXT,
            vehicles_json TEXT
        );
    """)
    conn.commit()
    conn.close()

def save_state_to_db(vehicles, global_duration):
    conn = get_db_connection()
    cursor = conn.cursor()
    vehicles_json = json.dumps(vehicles)
    
    # Check if row 1 exists
    cursor.execute("SELECT id FROM fleet_state WHERE id = 1")
    if cursor.fetchone():
        cursor.execute("UPDATE fleet_state SET global_duration = %s, vehicles_json = %s WHERE id = 1", (global_duration, vehicles_json))
    else:
        cursor.execute("INSERT INTO fleet_state (id, global_duration, vehicles_json) VALUES (1, %s, %s)", (global_duration, vehicles_json))
            
    conn.commit()
    conn.close()

def load_previous_vehicles():
    try:
        init_db()
    except Exception as e:
        print(f"⚠️ Warning: Could not initialize database ({e})")
        
    try:
        conn = get_db_connection()
        cursor = conn.cursor()
        cursor.execute("SELECT global_duration, vehicles_json FROM fleet_state WHERE id = 1")
        row = cursor.fetchone()
        conn.close()
        
        if row:
            global_duration, vehicles_json = row
            vehicles = json.loads(vehicles_json) if vehicles_json else {}
            return {"global_duration": global_duration or "", "vehicles": vehicles}
    except Exception as e:
        print(f"⚠️ Warning: Could not load state from database ({e})")
        
    # Fallback to HTML state (also seeds the database if empty)
    html_state = {"global_duration": "", "vehicles": {}}
    dir_path = os.path.dirname(os.path.abspath(__file__))
    dest_file = os.path.join(dir_path, "vehicle_mission_report-4.html")
    if not os.path.exists(dest_file):
        dest_file = os.path.join(dir_path, "vehicle_mission_report_email.html")
        
    if os.path.exists(dest_file):
        try:
            with open(dest_file, "r", encoding="utf-8") as f:
                content = f.read()
            
            match = re.search(r'<script type="application/json" id="vehicles-json-state">(.*?)</script>', content, re.DOTALL)
            if not match:
                match = re.search(r'<script type="application/json" id="vehicles-json-data">(.*?)</script>', content, re.DOTALL)
            if match:
                parsed = json.loads(match.group(1).strip())
                if isinstance(parsed, dict) and "vehicles" in parsed:
                    html_state = parsed
                else:
                    html_state = {"global_duration": "", "vehicles": parsed}
                
                # Seed database from HTML state
                try:
                    save_state_to_db(html_state.get("vehicles", {}), html_state.get("global_duration", ""))
                    print("✅ Successfully seeded database with HTML state data.")
                except Exception as seed_err:
                    print(f"⚠️ Warning: Could not seed database ({seed_err})")
        except Exception as e:
            print(f"⚠️ Warning: Could not parse previous state data from HTML ({e}). Starting fresh.")
            
    return html_state

def save_state_to_builder(vehicles, global_duration):
    # Save to database first
    db_err_to_raise = None
    try:
        save_state_to_db(vehicles, global_duration)
    except Exception as db_err:
        print(f"⚠️ Warning: Could not save state to database ({db_err})")
        db_err_to_raise = db_err
        
    if db_err_to_raise and os.environ.get("DATABASE_URL"):
        raise db_err_to_raise

    dir_path = os.path.dirname(os.path.abspath(__file__))
    builder_file = os.path.join(dir_path, "vehicle_mission_report-4.html")
    if not os.path.exists(builder_file):
        return
        
    try:
        with open(builder_file, "r", encoding="utf-8") as f:
            content = f.read()
            
        state_data = {
            "global_duration": global_duration,
            "vehicles": vehicles
        }
        json_str = json.dumps(state_data, indent=2)
        
        # Replace content inside the script tags in the builder
        new_content = re.sub(
            r'<script type="application/json" id="vehicles-json-state">.*?</script>',
            f'<script type="application/json" id="vehicles-json-state">\n  {json_str}\n  </script>',
            content,
            flags=re.DOTALL
        )
        
        with open(builder_file, "w", encoding="utf-8") as f:
            f.write(new_content)
    except Exception as e:
        print(f"⚠️ Warning: Could not save state back to HTML builder ({e})")

def prompt_vehicle_data(vin, existing_data=None):
    # Determine defaults
    if existing_data:
        defaults = {
            "nickname": existing_data.get("nickname", "Not Named"),
            "location": existing_data.get("location", "Not Available"),
            "mode": existing_data.get("mode", "Non-Autonomous"),
            "status": existing_data.get("status", "healthy"),
            "issues": existing_data.get("issues", []),
            "timestamp": existing_data.get("timestamp", ""),
            "vt_box_time": existing_data.get("vt_box_time", ""),
            "distance": existing_data.get("distance", ""),
            "duration": existing_data.get("duration", "")
        }
        print(f"\n--- Loaded Active Session Details for Vehicle: {vin} ---")
    elif vin in PREDEFINED_VEHICLES:
        defaults = {
            "nickname": PREDEFINED_VEHICLES[vin]["nickname"],
            "location": PREDEFINED_VEHICLES[vin]["location"],
            "mode": PREDEFINED_VEHICLES[vin]["mode"],
            "status": "healthy",
            "issues": [],
            "timestamp": "",
            "vt_box_time": "",
            "distance": "",
            "duration": ""
        }
        print(f"\n--- Loaded Predefined Details for Vehicle: {vin} ---")
    else:
        # Search by nickname prefix match if not directly matching VIN
        matched_vin = None
        for p_vin, data in PREDEFINED_VEHICLES.items():
            if data["nickname"].lower() == vin.lower():
                matched_vin = p_vin
                break
        
        if matched_vin:
            vin = matched_vin
            defaults = {
                "nickname": PREDEFINED_VEHICLES[vin]["nickname"],
                "location": PREDEFINED_VEHICLES[vin]["location"],
                "mode": PREDEFINED_VEHICLES[vin]["mode"],
                "status": "healthy",
                "issues": [],
                "timestamp": "",
                "vt_box_time": "",
                "distance": "",
                "duration": ""
            }
            print(f"\n--- Loaded Predefined Details (Matched by Nickname) for: {vin} ---")
        else:
            defaults = {
                "nickname": "Not Named",
                "location": "Not Available",
                "mode": "Non-Autonomous",
                "status": "healthy",
                "issues": [],
                "timestamp": "",
                "vt_box_time": "",
                "distance": "",
                "duration": ""
            }
            print(f"\n--- Entering details for new vehicle: {vin} ---")

    print(f"Nickname: {defaults['nickname']}  |  Location: {defaults['location']}  |  Mode: {defaults['mode']}")

    modify_input = input("Modify vehicle details (Nickname/Location/Mode)? (y/N): ").strip().lower()
    nickname = defaults['nickname']
    location = defaults['location']
    mode = defaults['mode']

    if modify_input in ['y', 'yes']:
        nick = input(f"   Enter Nickname (default: '{defaults['nickname']}'): ").strip()
        if nick: nickname = nick
        loc = input(f"   Enter Location (default: '{defaults['location']}'): ").strip()
        if loc: location = loc
        curr_mode = defaults['mode']
        mode_input = input(f"   Select Mode: [1] Autonomous, [2] Non-Autonomous (default: '{curr_mode}'): ").strip()
        if mode_input:
            while mode_input not in ['1', '2']:
                mode_input = input("      Please enter 1 or 2: ").strip()
            mode = "Autonomous" if mode_input == '1' else "Non-Autonomous"

    # Status Prompts
    print(f"Select Health / Activity Status (current: '{defaults['status']}'):")
    print("   [1] Healthy")
    print("   [2] Issues Detected")
    print("   [3] Not Active")
    print("   [4] MDM Issue")
    status_input = input("   Enter status choice (1, 2, 3, or 4, or Enter to keep current): ").strip()
    if not status_input:
        status = defaults['status']
    else:
        while status_input not in ['1', '2', '3', '4']:
            status_input = input("   Please enter 1, 2, 3, or 4: ").strip()
        status = "healthy" if status_input == '1' else ("unhealthy" if status_input == '2' else ("inactive" if status_input == '3' else "mdm_issue"))

    issues = []
    timestamp = ""
    vt_box_time = ""
    distance = ""
    duration = ""

    if status == 'healthy':
        # Prompt for Distance/Duration
        dist_prompt = "Enter Distance Travelled in km"
        if defaults['distance'] and defaults['distance'] != 'Nil':
            dist_prompt += f" (default: '{defaults['distance']}')"
        dist_prompt += ": "
        distance = input(dist_prompt).strip()
        if not distance: distance = defaults['distance']
        while not distance or distance == 'Nil':
            distance = input("   Distance is required. Enter Distance: ").strip()

        dur_prompt = "Enter Data Logged Duration"
        if defaults['duration'] and defaults['duration'] != 'Nil':
            dur_prompt += f" (default: '{defaults['duration']}')"
        dur_prompt += ": "
        duration = input(dur_prompt).strip()
        if not duration: duration = defaults['duration']
        while not duration or duration == 'Nil':
            duration = input("   Duration is required. Enter Duration: ").strip()

    elif status == 'unhealthy':
        # Prompt for Issues
        keep_issues = 'n'
        if existing_data and existing_data.get('status') == 'unhealthy' and existing_data.get('issues'):
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
                        print("      At least one issue is required if status is Issues Detected.")
                        continue
                    break
                issues.append(issue)
                idx += 1
        
        # Prompt for Distance/Duration
        dist_prompt = "Enter Distance Travelled in km"
        if defaults['distance'] and defaults['distance'] != 'Nil':
            dist_prompt += f" (default: '{defaults['distance']}')"
        dist_prompt += ": "
        distance = input(dist_prompt).strip()
        if not distance: distance = defaults['distance']
        while not distance or distance == 'Nil':
            distance = input("   Distance is required. Enter Distance: ").strip()

        dur_prompt = "Enter Data Logged Duration"
        if defaults['duration'] and defaults['duration'] != 'Nil':
            dur_prompt += f" (default: '{defaults['duration']}')"
        dur_prompt += ": "
        duration = input(dur_prompt).strip()
        if not duration: duration = defaults['duration']
        while not duration or duration == 'Nil':
            duration = input("   Duration is required. Enter Duration: ").strip()

    elif status == 'inactive':
        # Inactive means Distance/Duration are Nil
        distance = "Nil"
        duration = "Nil"
        # Prompt for last active timestamp
        time_prompt = "Enter Last Active Timestamp"
        if defaults['timestamp']:
            time_prompt += f" (default: '{defaults['timestamp']}')"
        time_prompt += ": "
        timestamp = input(time_prompt).strip()
        if not timestamp:
            timestamp = defaults['timestamp'] if defaults['timestamp'] else "Not Available"

    elif status == 'mdm_issue':
        # Prompt for VT_BOX Online Time
        time_prompt = "Enter VT_BOX Online Time"
        if defaults['vt_box_time']:
            time_prompt += f" (default: '{defaults['vt_box_time']}')"
        time_prompt += ": "
        vt_box_time = input(time_prompt).strip()
        if not vt_box_time:
            vt_box_time = defaults['vt_box_time'] if defaults['vt_box_time'] else "Not Available"

        # Distance is automatically Nil
        distance = "Nil"

        # Prompt for Duration (required)
        dur_prompt = "Enter Data Logged Duration"
        if defaults['duration'] and defaults['duration'] != 'Nil':
            dur_prompt += f" (default: '{defaults['duration']}')"
        dur_prompt += ": "
        duration = input(dur_prompt).strip()
        if not duration: duration = defaults['duration']
        while not duration or duration == 'Nil':
            duration = input("   Duration is required. Enter Duration: ").strip()

    temp_data = {
        "vin": vin,
        "nickname": nickname,
        "location": location,
        "mode": mode,
        "status": status,
        "is_healthy": (status == 'healthy'),
        "issues": issues,
        "timestamp": timestamp,
        "vt_box_time": vt_box_time,
        "distance": distance,
        "duration": duration
    }

    add_report_input = input("\nAdd this vehicle to the report? (Y/n): ").strip().lower()
    if not add_report_input or add_report_input in ['y', 'yes']:
        return temp_data
    else:
        print("Vehicle entry discarded.")
        return None

def get_short_nickname(nickname):
    name = re.sub(r'\s*Vehicle.*', '', nickname)
    name = re.sub(r'\s*\(.*?\)', '', name)
    if name == "US HC Fargo":
        return "USHC Fargo"
    if name == "US HC Yuba":
        return "USHC Yuba"
    return name.strip()

def get_issue_summary_section(vehicles, global_duration):
    # Setup static list for temperature anomalies
    temp_anomaly_vins = [
        "MD9GBUE27DC341048",  # P1
        "MD9GBUE23DC341063",  # P6
        "MD9GBUE29DC341066",  # P9
        "MD9GBUE22DC341068",  # P11
        "MD9GBUE27DC341079",  # P22
        "MD9GBUE20DC341070",  # P13
        "MD9GBUE24DC341038",  # T9
    ]

    # Categorize active vehicles
    mdm_list = []
    inactive_list = []
    temp_anomaly_list = []
    bms_list = []
    charging_list = []
    ok_list = []
    data_loss_list = []

    for vin, val in sorted(vehicles.items()):
        status = val.get("status", "healthy")
        nick = get_short_nickname(val.get("nickname", ""))
        issues = val.get("issues", [])
        issues_str = ", ".join(issues)
        
        # Link to vehicle if there are issues or is inactive
        link_color = "#dc2626"
        if status == 'healthy':
            link_color = "#16a34a"
        elif status == 'inactive':
            link_color = "#64748b"
        elif status == 'mdm_issue':
            link_color = "#ea580c"

        vehicle_link = f'<strong><a href="#vin-{vin}" style="color: {link_color}; text-decoration: none; font-weight: 600;">{nick}</a></strong>'

        # Determine base category
        if status == 'mdm_issue':
            desc = issues_str if issues_str else f"VT_BOX online: {val.get('vt_box_time') or 'Not Available'}"
            mdm_list.append(f'{vehicle_link} ({vin}) — {desc}.')
        elif status == 'inactive':
            timestamp = val.get("timestamp") or "Not Available"
            inactive_list.append(f'{vehicle_link} — Last updated {timestamp}')
        elif status == 'unhealthy':
            if any("data loss" in issue.lower() for issue in issues):
                data_loss_list.append(f'{vehicle_link} — {issues_str}')
            else:
                if any("plug state 4" in issue.lower() or "charging" in issue.lower() for issue in issues):
                    charging_list.append(f'{vehicle_link} — {issues_str}')
                else:
                    bms_list.append(f'{vehicle_link} — {issues_str}')
        elif status == 'healthy':
            ok_list.append(f'<a href="#vin-{vin}" style="color:#16a34a; font-weight:600; text-decoration:none;">{nick}</a>')

        # Temp anomalies
        if vin in temp_anomaly_vins:
            temp_anomaly_list.append(nick)

    # Format lists into table rows
    def format_row(title, color, text_list, count, is_bold=True, badge_bg=None, badge_color=None):
        if not text_list:
            if title == "Charging Issues (Plug State 4)":
                rendered_text = "None reported"
            else:
                return "" # Don't display empty rows
        else:
            if title == "Motor Controller Temperature Anomaly (Negative Values)":
                rendered_text = ", ".join(text_list)
            elif title == "✓ OK / No Issues":
                rendered_text = ", ".join(text_list)
            else:
                rendered_text = "<br/>".join(text_list)

        count_badge = "—"
        if count is not None:
            if badge_bg and badge_color:
                count_badge = f'<span style="display: inline-block; padding: 4px 8px; font-size: 11px; font-weight: bold; border-radius: 12px; background-color: {badge_bg}; color: {badge_color};">{count}</span>'
            else:
                count_badge = f'<span style="display: inline-block; padding: 4px 8px; font-size: 11px; font-weight: bold; border-radius: 12px; background-color: #f1f3f5; color: #475569;">{count}</span>'

        title_style = f"color: {color}; font-weight: 600; vertical-align: top;" if is_bold else "color: #475569; vertical-align: top;"
        
        return f"""
            <tr style="border-bottom: 1px solid #f1f5f9;">
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; {title_style}">{title}</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; color: #475569; vertical-align: top;">{rendered_text}</td>
              <td style="padding: 12px; border-bottom: 1px solid #f1f5f9; text-align: right; vertical-align: top;">{count_badge}</td>
            </tr>
        """

    rows = []
    rows.append(format_row("⚠ MDM ON but No Data Received", "#ea580c", mdm_list, len(mdm_list), badge_bg="#ffedd5", badge_color="#ea580c"))
    rows.append(format_row("⊘ No Data Reported", "#64748b", inactive_list, len(inactive_list)))
    rows.append(format_row("Motor Controller Temperature Anomaly (Negative Values)", "#475569", temp_anomaly_list, len(temp_anomaly_list) if temp_anomaly_list else 0, is_bold=False))
    rows.append(format_row("✗ BMS / Motor Faults", "#dc2626", bms_list, len(bms_list), badge_bg="#fee2e2", badge_color="#dc2626"))
    rows.append(format_row("Charging Issues (Plug State 4)", "#475569", charging_list, len(charging_list), is_bold=False))
    rows.append(format_row("✓ OK / No Issues", "#16a34a", ok_list, len(ok_list), badge_bg="#dcfce7", badge_color="#16a34a"))
    rows.append(format_row("✗ Data Loss", "#dc2626", data_loss_list, len(data_loss_list), badge_bg="#fee2e2", badge_color="#dc2626"))

    table_rows_html = "\n".join(rows)

    return f"""
    <!-- ISSUE SUMMARY SECTION -->
    <tr>
      <td style="padding: 24px; border-top: 1px solid #e2e8f0;">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="border-bottom: 2px solid #f1f5f9; padding-bottom: 8px; margin-bottom: 16px;">
          <tr>
            <td style="vertical-align: middle;">
              <h2 style="margin: 0; font-size: 18px; font-weight: 600; color: #0f172a;"> Issue Summary</h2>
            </td>
            <td style="text-align: right; font-size: 12px; color: #64748b; font-weight: 500; vertical-align: middle;">
              <strong>Report Duration:</strong> {global_duration} (PDT)
            </td>
          </tr>
        </table>
        <p style="font-size: 13px; color: #64748b; margin-bottom: 16px;">
          Category-level breakdown of vehicle issues compiled for the report duration.
        </p>

        <table width="100%" border="0" cellpadding="0" cellspacing="0" style="font-size: 13px; border: 1px solid #e2e8f0; border-radius: 6px; overflow: hidden;">
          <thead>
            <tr bgcolor="#f8fafc">
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569; width: 220px;">Issue Category</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: left; border-bottom: 2px solid #e2e8f0; color: #475569;">Affected Vehicles</th>
              <th style="padding: 10px 12px; font-weight: 600; text-align: right; border-bottom: 2px solid #e2e8f0; color: #475569; width: 70px;">Count</th>
            </tr>
          </thead>
          <tbody>
            {table_rows_html}
            <tr>
              <td style="padding: 12px; color: #0f172a; font-weight: 700;" colspan="2">Total Vehicles</td>
              <td style="padding: 12px; text-align: right; color: #0f172a; font-weight: 700;">{len(vehicles)}</td>
            </tr>
          </tbody>
        </table>
      </td>
    </tr>
    """

def compress_html(html):
    # Remove the state script tag since it's not needed in the email report
    html = re.sub(
        r'<script type="application/json" id="vehicles-json-state-report">.*?</script>',
        '',
        html,
        flags=re.DOTALL
    )
    # Strip leading and trailing spaces from each line, but keep non-empty lines
    lines = [line.strip() for line in html.splitlines() if line.strip()]
    return "\n".join(lines)

def generate_html_report(vehicles, global_duration):
    dir_path = os.path.dirname(os.path.abspath(__file__))
    dest_file = os.path.join(dir_path, "vehicle_mission_report_email.html")

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
  </style>
</head>
<body style="margin: 0; padding: 20px 0; background-color: #f1f5f9; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;">

  <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%" style="max-width: 800px; background-color: #ffffff; border-radius: 8px; box-shadow: 0 4px 12px rgba(0,0,0,0.05); overflow: hidden; border: 1px solid #e2e8f0;">
    
    <!-- HEADER -->
    <tr>
      <td bgcolor="#1e293b" style="padding: 30px 24px; text-align: center;">
        <h1 style="margin: 0; color: #ffffff; font-size: 24px; font-weight: 700; letter-spacing: -0.5px;">Boson Motor</h1>
        <p style="margin: 6px 0 0 0; color: #94a3b8; font-size: 14px; font-weight: 500;">Vehicle Dashboard &mdash; Static Customer Vehicles Mission Report</p>
      </td>
    </tr>
"""

    if not vehicles:
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
        # Dynamic Issue Summary Section
        html_out += get_issue_summary_section(vehicles, global_duration)

        # VEHICLE DETAILS SECTION
        html_out += """
    <!-- VEHICLE DETAILS SECTION -->
    <tr>
      <td style="padding: 16px 20px; background-color: #fafbfc; border-top: 1px solid #e2e8f0;">
        <h2 style="margin: 0 0 12px 0; font-size: 16px; font-weight: 600; color: #0f172a; border-bottom: 2px solid #e2e8f0; padding-bottom: 6px;">
          🔍 Detailed Vehicle Diagnostics
        </h2>
"""

        for vin in sorted(vehicles.keys()):
            val = vehicles[vin]
            versions = val.get("versions", {})
            versions_html = ""
            if versions:
                cells = []
                for k, v in sorted(versions.items()):
                    if v.strip():
                        cells.append(f'<span style="color: #475569; font-weight: 600;">{k}:</span> <span style="color: #0f172a; margin-right: 15px;">{v}</span>')
                if cells:
                    joined_cells = " &nbsp;|&nbsp; ".join(cells)
                    versions_html = f"""
                    <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 10px; margin-bottom: 8px; font-size: 10px; font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;">
                      {joined_cells}
                    </div>
                    """
            status = val.get("status", "healthy")
            
            card_border_color = "#22c55e"
            status_header = '<span style="color: #16a34a; font-weight: bold;">HEALTHY</span>'
            
            if status == 'unhealthy':
                card_border_color = "#ef4444"
                status_header = '<span style="color: #dc2626; font-weight: bold;">ISSUE DETECTED</span>'
            elif status == 'inactive':
                card_border_color = "#64748b"
                status_header = '<span style="color: #64748b; font-weight: bold;">NOT ACTIVE</span>'
            elif status == 'mdm_issue':
                card_border_color = "#ea580c"
                status_header = '<span style="color: #ea580c; font-weight: bold;">MDM ISSUE</span>'

            # Anomaly content
            if status == 'healthy':
                anomalies_section = """
                    <div style="background-color: #f0fdf4; border: 1px solid #bbf7d0; border-radius: 6px; padding: 12px; color: #166534; font-size: 11px; font-weight: 500;">
                      ✓ No system anomalies or safety faults detected.
                    </div>
                """
            elif status == 'inactive':
                timestamp_str = val.get("timestamp") or "Not Available"
                anomalies_section = f"""
                    <div style="background-color: #f1f5f9; border: 1px solid #e2e8f0; border-radius: 6px; padding: 12px; color: #475569; font-size: 11px; font-weight: 500;">
                      ⊘ Vehicle is currently Not Active / Not Available. Last active timestamp: <strong>{timestamp_str}</strong>
                    </div>
                """
            elif status == 'mdm_issue':
                vt_box_time = val.get("vt_box_time") or "Not Available"
                anomalies_section = f"""
                    <div style="background-color: #fff7ed; border: 1px solid #ffedd5; border-radius: 6px; padding: 12px; color: #c2410c; font-size: 11px; font-weight: 500;">
                      ⚠ MDM Issue: Monitoring flag is True, but no data came. VT_BOX came online at: <strong>{vt_box_time}</strong>
                    </div>
                """
            else:
                table_rows = ""
                for idx, issue in enumerate(val.get("issues", []), start=1):
                    table_rows += f"""
                    <tr style="border-bottom: 1px solid #e2e8f0;">
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #0f172a; font-family: monospace; text-align: left;">{idx:03d}</td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #475569; font-weight: 600; text-align: left;">User Reported</td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #0f172a; text-align: left;">{issue}</td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; text-align: left;"><span style="display: inline-block; padding: 3px 8px; font-size: 10px; font-weight: bold; border-radius: 12px; background-color: #fee2e2; color: #dc2626; text-transform: uppercase;">Critical</span></td>
                      <td style="padding: 8px 10px; border-bottom: 1px solid #e2e8f0; color: #475569; text-align: left;">Inspect vehicle diagnostics</td>
                    </tr>
                    """
                anomalies_section = f"""
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
                        {table_rows}
                      </tbody>
                    </table>
                """

            dist_val = f"{val['distance']} km" if status != 'inactive' else "Nil"
            dur_val = val['duration'] if status != 'inactive' else "Nil"
            
            extra_kpi_row = ""
            if status == 'mdm_issue':
                extra_kpi_row = f"""
                <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 16px;">
                  <tr>
                    <td>
                      <div style="background-color: #fff7ed; border: 1px solid #ffedd5; border-radius: 6px; padding: 10px;">
                        <span style="font-size: 8px; color: #ea580c; text-transform: uppercase; font-weight: bold; display: block; margin-bottom: 2px;">VT_BOX Online Time</span>
                        <span style="font-size: 11px; font-weight: 700; color: #c2410c;">{val.get('vt_box_time', 'Not Available')}</span>
                      </div>
                    </td>
                  </tr>
                </table>
                """

            html_out += f"""
        <!-- VEHICLE CARD: {vin} -->
        <div id="vin-{vin}" style="background-color: #ffffff; border: 1px solid #e2e8f0; border-left: 4px solid {card_border_color}; border-radius: 6px; padding: 12px; margin-bottom: 14px; box-shadow: 0 1px 4px rgba(0,0,0,.05);">
          
          <!-- Card Header -->
          <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 8px;">
            <tr>
              <td>
                <span style="font-size: 14px; font-weight: 700; color: #0f172a; font-family: Courier, monospace;">VIN: {vin}</span>
                <div style="font-size: 9px; color: #64748b; margin-top: 2px;line-height:1.3;">Nickname: <strong>{val['nickname']}</strong> &nbsp;|&nbsp; Location: <strong>{val['location']}</strong></div>
              </td>
              <td style="text-align: right; vertical-align: top;">
                {status_header}
              </td>
            </tr>
          </table>

          <!-- Overview KPI blocks -->
          <table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-bottom: 8px;">
            <tr>
              <td width="25%" style="padding-right: 8px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                  <div style="font-size: 6px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Vehicle Mode</div>
                  <div style="font-size: 6px; font-weight: 700; color: #1d4ed8;">{val['mode']}</div>
                </div>
              </td>
              <td width="25%" style="padding-left: 4px; padding-right: 4px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                  <div style="font-size: 6px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Distance Travelled</div>
                  <div style="font-size: 11px; font-weight: 700; color: #0f172a;">{dist_val}</div>
                </div>
              </td>
              <td width="25%" style="padding-left: 4px; padding-right: 4px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                  <div style="font-size: 6px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Logged Duration</div>
                  <div style="font-size: 11px; font-weight: 700; color: #0f172a;">{dur_val}</div>
                </div>
              </td>
              <td width="25%" style="padding-left: 8px;">
                <div style="background-color: #f8fafc; border: 1px solid #e2e8f0; border-radius: 6px; padding: 5px; text-align: center;">
                  <div style="font-size: 5px; color: #64748b; text-transform: uppercase; margin-bottom: 2px;">Total Issues Logged</div>
                  <div style="font-size: 11px; font-weight: 700; color: { '#16a34a' if status == 'healthy' else ('#64748b' if status == 'inactive' else ('#ea580c' if status == 'mdm_issue' else '#dc2626')) };">{len(val.get('issues', []))}</div>
                </div>
              </td>
            </tr>
          </table>

          {extra_kpi_row}

          {versions_html}

          <div style="font-size: 11px; font-weight: 600; color: #475569; margin-bottom: 8px; text-transform: uppercase;">⚠️ System Diagnostics & Activity Status</div>
          {anomalies_section}

          <div style="text-align: right; margin-top: 15px;">
            <a href="#" style="font-size: 10px; color: #2563eb; text-decoration: none; font-weight: 600;">&uarr; Back to Customer Vehicles Overview</a>
          </div>
        </div>
        """

    # Persistent JSON state block
    state_json = {"global_duration": global_duration, "vehicles": vehicles}
    state_json_str = json.dumps(state_json)

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
  <script type="application/json" id="vehicles-json-state-report">
  {state_json_str}
  </script>

</body>
</html>
"""

    try:
        compressed_html = compress_html(html_out)
        with open(dest_file, "w", encoding="utf-8") as f:
            f.write(compressed_html)
        print(f"\n🎉 SUCCESS: HTML Email Report Generated successfully!")
        print(f"Report Saved Location: {dest_file}")
    except Exception as e:
        print(f"⚠️ Warning: Could not write HTML Email Report to disk ({e})")

import http.server
import socketserver
import threading
import time

class CustomHandler(http.server.SimpleHTTPRequestHandler):
    def log_message(self, format, *args):
        # Suppress logging to keep console/Render output clean
        pass

    def do_GET(self):
        # Health check endpoint for cron-job.org or monitoring services
        if self.path == '/health':
            self.send_response(200)
            self.send_header('Content-Type', 'application/json')
            self.end_headers()
            self.wfile.write(json.dumps({"status": "healthy"}).encode('utf-8'))
            return

        # Status endpoint to report database connectivity to frontend builder
        if self.path == '/api/status':
            db_connected = False
            db_error = None
            try:
                conn = get_db_connection()
                conn.close()
                db_connected = True
            except Exception as e:
                db_error = str(e)
            
            self.send_response(200)
            self.send_header('Content-Type', 'application/json')
            self.end_headers()
            self.wfile.write(json.dumps({
                "status": "healthy",
                "database": {
                    "connected": db_connected,
                    "error": db_error
                }
            }).encode('utf-8'))
            return

        # Serve vehicle_mission_report-4.html as the root index page
        if self.path == '/':
            self.path = '/vehicle_mission_report-4.html'
        return http.server.SimpleHTTPRequestHandler.do_GET(self)

    def do_POST(self):
        if self.path == '/api/save':
            content_length = int(self.headers['Content-Length'])
            post_data = self.rfile.read(content_length)
            try:
                data = json.loads(post_data.decode('utf-8'))
                vehicles = data.get("vehicles", {})
                global_duration = data.get("global_duration", "")
                
                # Save state back to builder
                save_state_to_builder(vehicles, global_duration)
                
                # Generate report
                generate_html_report(vehicles, global_duration)
                
                self.send_response(200)
                self.send_header('Content-Type', 'application/json')
                self.end_headers()
                self.wfile.write(json.dumps({"status": "success"}).encode('utf-8'))
            except Exception as e:
                self.send_response(500)
                self.send_header('Content-Type', 'application/json')
                self.end_headers()
                self.wfile.write(json.dumps({"status": "error", "message": str(e)}).encode('utf-8'))
            return
        
        self.send_response(404)
        self.end_headers()

class CustomTCPServer(socketserver.TCPServer):
    allow_reuse_address = True

def open_browser(port):
    time.sleep(1.5)
    file_url = f"http://localhost:{port}"
    print(f"\n🚀 Opening visual builder in browser: {file_url}\n")
    webbrowser.open(file_url)

def main():
    port = int(os.environ.get("PORT", 8000))
    
    print("==================================================")
    print("    BOSON MOTOR - MULTI-VEHICLE REPORT GENERATOR")
    print("==================================================")
    print(f"Starting web server on port {port}...")
    
    # Launch browser only if NOT running in Render cloud environment
    if "RENDER" not in os.environ:
        threading.Thread(target=open_browser, args=(port,), daemon=True).start()
    else:
        print("Running in Cloud Environment (Render). Browser launching disabled.")
        
    try:
        # Change cwd to script directory to serve correct files
        dir_path = os.path.dirname(os.path.abspath(__file__))
        os.chdir(dir_path)
        
        # Load state from database on startup to rebuild the HTML builder file
        try:
            startup_state = load_previous_vehicles()
            if startup_state:
                save_state_to_builder(startup_state.get("vehicles", {}), startup_state.get("global_duration", ""))
                print("✅ Successfully restored last saved state from database on startup.")
        except Exception as startup_err:
            print(f"⚠️ Warning: Could not restore database state on startup ({startup_err})")
        
        with CustomTCPServer(("0.0.0.0", port), CustomHandler) as httpd:
            print(f"Server is running at http://0.0.0.0:{port}")
            print("Press Ctrl+C to stop the server.")
            httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nShutting down server.")
    except Exception as e:
        print(f"\n❌ Error starting server: {e}")

if __name__ == "__main__":
    main()


