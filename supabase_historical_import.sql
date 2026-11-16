-- =============================================================================
-- BVMC Report — Historical Data Import
-- Contains full three-month history (August 2026 – October 2026)
-- SAFE TO RERUN: Uses ON CONFLICT DO NOTHING for all inserts.
-- =============================================================================

BEGIN;

-- ─────────────────────────────────────────────────────────────────────────────
-- 1. Populate Master Vehicles Registry (74 unique vehicles)
-- ─────────────────────────────────────────────────────────────────────────────
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28DC341009', 'Green HC(PST)', 'PST', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27DC341051', 'P2 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22DC341054', 'P3 Vehicle (P4 to P3)', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28DC341057', 'P4 Vehicle', '5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28DC341060', 'P5 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23DC341063', 'P6 Vehicle (14-12-2025)', 'P26H+WR, Glenn, CA 95943, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25DC341064', 'P7 Vehicle', 'India', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE29DC341066', 'P9 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22DC341068', 'P11 Vehicle(IST)', 'IST', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE20DC341070', 'P13 Vehicle', '16098, Road 43, Yolo County, California, 95637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22DC341071', 'P14 Vehicle', '6624, Avenue 228, Tulare County, California, 93274, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28DC341074', 'P17 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XDC341075', 'P18 Vehicle', 'U.S', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE21DC341076', 'P19 Vehicle', 'Falcon Drive, Madera, Madera County, California, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23DC341077', 'P20 Vehicle', '16098, Road 43, Yolo County, California, 95637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25DC341078', 'P21 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27DC341079', 'P22 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23DC341080', 'P23 Vehicle', 'FM 493, Hargill, Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27DC341082', 'P25 Vehicle', 'Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25DC341081', 'P24 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XFC341001', 'P26 Vehicle', 'Fresno Avenue, Shafter, Kern County, California, USA', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE21FC341002', 'P27 Vehicle', 'C222+222 Carbondale, California, USA', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23FC341003', 'P28 Vehicle', 'County Road 379, Rio Arriba County, New Mexico, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25FC341004', 'P29 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27FC341005', 'P30 Vehicle', '1103, Mockingbird Hill, Calaveras County, California, 95252, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE29FC341006', 'P31 Vehicle', '17007, You Bet Road, You Bet, Nevada County, California, 95945, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE20FC341007', 'P32 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22FC341008', 'P33 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, U.S', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno, Fresno County, California, 93725, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22FC341011', 'P36 Vehicle', 'San Francisco Peninsula, California, USA', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE24FC341012', 'P37 Vehicle', 'Atascosa County, Texas, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE26FC341013', 'P38 Vehicle', 'Avenue 295, Tulare County, California, 93221, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28FC341014', 'P39 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XFC341015', 'P40 Vehicle', 'County Road 182, Lamb County, Texas, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE21FC341016', 'P41 Vehicle', '16361, Bonney Road, Monterey County, California, 95076, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23FC341017', 'P42 Vehicle (15-12-2025)', 'East Fantz Avenue, Fresno County, California, 93648, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25FC341018', 'P43 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27FC341019', 'P44 Vehicle', '2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23FC341020', 'P45 Vehicle', '323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE29FC341023', 'P48 Vehicle', 'San Francisco Bay Area in California, USA', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE20FC341024', 'P49 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22FC341025', 'P50 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE24FC341026', 'P51 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE26FC341027', 'P52 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XFC341029', 'P54 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE26FC341030', 'P55 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28FC341031', 'P56 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XFC341032', 'P57 Vehicle', '8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE21FC341033', 'P58 Vehicle', 'Rivercrest Golf Club & Preserve, Oriole Lane, Upper Providence Township, Montgomery County, Pennsylvania, 19482, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE23FC341034', 'P59 Vehicle', '22579, Snow Road, Kern County, California, 93314, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25FC341035', 'P60 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27FC341036', 'P61 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE29FC341037', 'P62 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE20FC341038', 'P63 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22FC341039', 'P64 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE29FC341040', 'P65 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XDC341027', 'T4 Vehicle', 'Not Available', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE26DC341039', 'T10 Vehicle', 'FM 493, Hargill, Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, 78617, United States', 'Non-Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27DC341003', 'US HC Fargo', 'McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22DC341006', 'US HC Yuba', 'McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE27DC341048', 'P1 Vehicle', '671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE24DC341069', 'P12 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE24DC341072', 'P15 Vehicle', 'Not Available', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE20DC341036', 'T7 Vehicle', 'Travis County, Texas, 78617, United States', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE25DC341033', 'T6 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE22DC341037', 'T8 Vehicle', 'West Cerini Avenue, Fresno County, California, 93656, United States', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE24DC341038', 'T9 Vehicle(HMI)', 'Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28FC341028', 'P53 Vehicle', 'IST', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE2XDC341030', 'Black Dragon', 'Not Available', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);
INSERT INTO vehicles (vin, nickname, location, mode, predefined, raw_data)
VALUES ('MD9GBUE28DC341012', 'Yellow Dragon', 'Not Available', 'Autonomous', true, NULL)
ON CONFLICT (vin) DO UPDATE SET
  nickname = COALESCE(EXCLUDED.nickname, vehicles.nickname),
  location = CASE WHEN EXCLUDED.location IS NOT NULL AND EXCLUDED.location != 'Not Available' THEN EXCLUDED.location ELSE vehicles.location END,
  mode = COALESCE(EXCLUDED.mode, vehicles.mode);

-- ─────────────────────────────────────────────────────────────────────────────
-- 2. Populate Reports (6 published historical reports)
-- ─────────────────────────────────────────────────────────────────────────────
INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'October 2026', '16-10-2026 to 31-10-2026', '2026-10-31', '04-11-2026 16:23:16 PDT', 50, 'Customer Fleet (50 Vehicles)', 'reports/report_16-10-2026_31-10-2026.html', '{"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle (14-12-2025)","location":"P26H+WR, Glenn, CA 95943, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM is on but no data"],"issue_details":[{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 27 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_"}],"timestamp":"","vt_box_time":"27-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-110","distance":"Nil","duration":"10 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-29T07:00:00.000Z&to=2026-10-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"0.05","duration":"30 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"125.83","duration":"2.10 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"6624, Avenue 228, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"81.88","duration":"1.61 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"3.73","duration":"11.2 hours","versions":{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"198.88","duration":"4.08 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.29","duration":"5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault"],"issue_details":[{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-35","distance":"69.85","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"0s","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"C222+222 Carbondale, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"14-09-2026(Location: C222+222 Carbondale, California, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"County Road 379, Rio Arriba County, New Mexico, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"County Road 379, Rio Arriba County, New Mexico, United States only location data came on 11.10.2026","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"332.95","duration":"4.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"1103, Mockingbird Hill, Calaveras County, California, 95252, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"4.09","duration":"53.5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"17007, You Bet Road, You Bet, Nevada County, California, 95945, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"194.13","duration":"1.88 days","versions":{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22FC341008&var-NickName=P33%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno, Fresno County, California, 93725, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.33","duration":"10.8 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Atascosa County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"45.85","duration":"1.14 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"Avenue 295, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational & RPDO Timeout (drive inhibit)"],"issue_details":[{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-16 11:47:19, 2026-10-19 08:07:12 & 2026-10-20 15:21:54 and RPDO Timeout (drive inhibit) on 2026-10-02 11:47:06 & 13:45:07","period":"multiple times","occurrences":"4 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The key position was observed to be in Position 2 while the vehicle was in motion. It is suspected that the driver may have changed the key position while driving, which could have resulted in a sudden change in vehicle behaviour and triggered the issue. The PTE team also observed that the throttle input was triggered during the key ON/OFF operation.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121","distance":"145.86","duration":"1.04 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"62.58","duration":"22.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"County Road 182, Lamb County, Texas, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"Last updated on 09.10.2026(so many faults are coming BMS, EPAS, anomaly''s and DCDC Medium & Location:County Road 182, Lamb County, Texas, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"16361, Bonney Road, Monterey County, California, 95076, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"121.49","duration":"3.01 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle (15-12-2025)","location":"East Fantz Avenue, Fresno County, California, 93648, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"162.84","duration":"1.14 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.86","duration":"35.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 09-10-2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341020&var-NickName=P45%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"32.69","duration":"1.41 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"01-09-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"240.51","duration":"1.09 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"11.70","duration":"18.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["3-pin connector"],"issue_details":[{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.89","duration":"1.52 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.22","duration":"3.96 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"144.67","duration":"6.85 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Rivercrest Golf Club & Preserve, Oriole Lane, Upper Providence Township, Montgomery County, Pennsylvania, 19482, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"27.32","duration":"1.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"184.64","duration":"6.32 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE29FC341037":{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"107.67","duration":"5.16 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE29FC341040":{"vin":"MD9GBUE29FC341040","nickname":"P65 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"27.14","duration":"3.02 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE27FC341036":{"vin":"MD9GBUE27FC341036","nickname":"P61 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"84.59","duration":"5.47 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","auxilary_battery_voltage"],"issue_details":[{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-16T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-cc"},{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 15 October 2026. On 19 October, the auxiliary battery voltage dropped to approximately 5 V. DC-DC data resumed after the vehicle was driven recently.","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"The U.S. team contacted the customer (US Citrus / Mani Skaria). No abnormalities were reported, and the vehicle is functioning normally. Further monitoring is required.","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"50.73","duration":"1.56 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["chrgr_highest_voltage"],"issue_details":[{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the Boson service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38","distance":"150.25","duration":"4.71 days","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS data is coming"],"issue_details":[{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The vehicle is running an older software version, so version details are unavailable. We can monitor only BMS data, limiting our ability to diagnose EPAS, motor, and DC-DC issues.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"The update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"nil","duration":"10.1 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"77.45","duration":"2.14 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"issue_details":[{"id":"mmw1z3rpy7xel","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 26th October 2026. On 26 October, the auxiliary battery voltage dropped to approximately 5 V.","period":"26 Oct","occurrences":"1 time","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"32.67","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-NickName=T6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}},"MD9GBUE25FC341035":{"vin":"MD9GBUE25FC341035","nickname":"P60 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["Data missing"],"issue_details":[{"id":"mmw0rdh1vzv5l","issue":"Data missing","description":"From 22-10-2026 to 26-10-2026, the MDM was online, but no data was received. We need to check whether the vehicle was at the Madera office during this period.","period":"5 days","occurrences":"no data came","component":"MDM","reported_by":"BVMC","severity":"High","rca":"need to check the application","responsible_team":"Data Scouting","customer_feedback":"it is in the office","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"22-10-2026 to 26-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110","distance":"Nil","duration":"4 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE20FC341038":{"vin":"MD9GBUE20FC341038","nickname":"P63 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.36","duration":"1.87 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE22FC341039":{"vin":"MD9GBUE22FC341039","nickname":"P64 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"155.34","duration":"6.07 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}}'::jsonb)
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;
INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'October 2026', '01-10-2026 to 15-10-2026', '2026-10-15', '17-10-2026 23:31:35 PDT', 47, 'Customer Fleet (47 Vehicles)', 'reports/report_01-10-2026_15-10-2026.html', '{"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle (14-12-2025)","location":"P26H+WR, Glenn, CA 95943, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM is on but no data"],"issue_details":[{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 14 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&"}],"timestamp":"","vt_box_time":"14-09-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110","distance":"Nil","duration":"10 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 12-06-2026(Location on 5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"168.52","duration":"2.87 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"6624, Avenue 228, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"50.95","duration":"3.95 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"16.46","duration":"7.80 hours","versions":{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"218.70","duration":"2.55 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.05","duration":"2 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","DSP Overvoltage"],"issue_details":[{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&va"},{"id":"mmv9f6ibhqg6r","issue":"DSP Overvoltage","description":"Need to check the motorcontroller_1_controller_capacitor_voltage in node 1","period":"08.09.2026 & 01.10.2026","occurrences":"2 times","component":"Motor","reported_by":"BVMC","severity":"Medium","rca":"The DSP Overvoltage may be associated with the motorcontroller_1_controller_capacitor_voltage field. We need to monitor whether this condition occurs continuously to determine if further RCA is required.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported By: BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse","distance":"69.85","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["Location Data only came"],"issue_details":[{"id":"mmv9fnn9aqud7","issue":"Location Data only came","description":"Location data is available, but no other data has been received. The last data was received on 18 September 2026.","period":"07-10-2026","occurrences":"6 times","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application launch issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"07-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"6 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"C222+222 Carbondale, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"14-09-2026(Location: C222+222 Carbondale, California, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"County Road 379, Rio Arriba County, New Mexico, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM/VT-Box is on but no data"],"issue_details":[{"id":"mmv9hmd3q8eq0","issue":"MDM/VT-Box is on but no data","description":"The VT-Box came online on 11 October 2026, but no data was received.","period":"3 months","occurrences":"Continous","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application lunch or need to check the storage","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl"}],"timestamp":"","vt_box_time":"11-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-110","distance":"Nil","duration":"20 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Fault Level 2 occurred twice, on the 3rd and 7th, and EPAS Fault Level 3 occurred on the 3rd."],"issue_details":[{"id":"mmv9ngrzna2re","issue":"EPAS Fault Level 2 occurred twice, on the 3rd and 7th, and EPAS Fault Level 3 occurred on the 3rd.","description":"The vehicle did not stop or experience any noticeable operational issues when these faults occurred.","period":"3rd, 4th & 7th","occurrences":"3 times","component":"EPAS","reported_by":"BVMC","severity":"Low","rca":"The VT-Box came online on 11 October 2026, but no telemetry data was received. Further investigation is required to identify the cause of the data transmission issue.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"328.88","duration":"2.34 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"1103, Mockingbird Hill, Calaveras County, California, 95252, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.48","duration":"1.82 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"17007, You Bet Road, You Bet, Nevada County, California, 95945, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"268.74","duration":"1.59 days","versions":{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno, Fresno County, California, 93725, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"40.52","duration":"4.06 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"24-09-2026(Location: Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"North Kaweah Avenue, Exeter, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational & RPDO Timeout (drive inhibit)"],"issue_details":[{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-02 10:14:36 and RPDO Timeout (drive inhibit) on 2026-10-02 10:14:27","period":"once","occurrences":"1 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The unit is in pre-operation, so we need to check the Node 1 heartbeat CAN ID to determine whether it is related to the issue. The RPDO Timeout occurred three times, on 29 September, 30 September, and 2 October. We need to monitor future occurrences and increase the severity to High if the issue continues to occur.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-45","distance":"165.83","duration":"3.37 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"20.85","duration":"1.57 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"County Road 182, Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["so many faults are coming BMS, EPAS, anomaly''s and DCDC"],"issue_details":[{"id":"mmvasi9tduvw9","issue":"so many faults are coming BMS, EPAS, anomaly''s and DCDC","description":"Over the last four months, these issues have been observed only in vehicle P40, including BMS faults, EPAS fault levels, and DC-DC faults","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"We still need to check with the customer. If the customer is not experiencing any issues, we need to inspect the VT-Box.","responsible_team":"PTE & Data Scouting","customer_feedback":"Setting Sun Dairy - have not heard back (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"365.40","duration":"3.88 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"16361, Bonney Road, Monterey County, California, 95076, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"147.20","duration":"2.63 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle (15-12-2025)","location":"East Goodfellow Avenue, Fresno County, California, 93657, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"23.17","duration":"1.33 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["The SOC dropped by 29% within a distance of 9 km."],"issue_details":[{"id":"mmvauzpmzow03","issue":"The SOC dropped by 29% within a distance of 9 km.","description":"The vehicle needs to undergo multiple charge and discharge cycles to investigate the 29% SOC drop over 9 km.","period":"07-10-2026","occurrences":"once","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"Charge the vehicle to 100% SOC and perform multiple charge and discharge cycles to evaluate SOC calibration and determine the cause of the sudden drop.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-61","distance":"28.13","duration":"15.3 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"2.09","duration":"5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"181.77","duration":"4.67 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"01-09-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"95.65","duration":"3.69 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.93","duration":"1.36 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.7.0"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["3-pin connector"],"issue_details":[{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.31","duration":"1.08 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"97.10","duration":"4.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Elk Grove Florin Road, Sacramento County, California, 95829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.59","duration":"3.05 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"7th Standard Road, Kern County, California, 93263, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"217.30","duration":"4.72 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE29FC341037":{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Gearbox Whirring Sound"],"issue_details":[{"id":"mmvc8djdbqjno","issue":"Gearbox Whirring Sound","description":"a loud noise was observed from the motor/gearbox area. The gear oil was drained for inspection, and metal shavings were found on the drain plug. The team also raised a concern about whether the originally used gearbox oil matches the oil currently used for refilling in the US. Additionally, the charger box mounting bracket was found contacting the front driver-side fender, causing a squeaking noise.","period":"Oct 15","occurrences":"nil","component":"Other","reported_by":"Vehicle Support and Service Engineer","severity":"Medium","rca":"The exact root cause of the motor/gearbox noise and metal shavings has not yet been confirmed. The gearbox oil specification and compatibility with the oil used for refilling in the US need to be verified. The squeaking noise appears to be caused by physical contact between the charger box mounting bracket and the front driver-side fender. Further inspection is required to confirm the root causes and implement corrective actions to prevent recurrence.","responsible_team":"","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"9.98","duration":"3.12 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE29FC341040":{"vin":"MD9GBUE29FC341040","nickname":"P65 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"issue_details":[{"id":"mmvc9eyarniwb","issue":"auxilary_battery_voltage","description":"Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT:\n- 06 Oct 2026: 09:57:17–09:57:23\n- 06 Oct 2026: 12:33:47–12:33:56\n- 13 Oct 2026: 17:15:42–17:15:50\n- 14 Oct 2026: 09:33:37–09:33:41\n- 14 Oct 2026: 11:14:44–11:14:58\n- 14 Oct 2026: 15:34:26–15:34:30\nPlease check these time ranges and share your findings.","period":"6th, 13th & 14th Oct","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"","responsible_team":"PTE","customer_feedback":"It is in the U.S Office(Madera)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:33:47.000Z&to=2026-10-06T19:33:56.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:32:55.823Z&to=2026-10-06T19:34:45.684Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37","distance":"0.93","duration":"2.43 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE27FC341036":{"vin":"MD9GBUE27FC341036","nickname":"P61 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.21","duration":"5.08","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","auxilary_battery_voltage"],"issue_details":[{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor="},{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT: - 2026-10-02 07:18:07\nto 07:18:10, 2026-10-02 08:47:13 to 08:47:15, 2026-10-06 10:10:20 to 10:10:23, 2026-10-06 11:07:50 to 11:07:54, etc...","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-06T19:22:20.000Z&to=2026-10-06T19:22:37.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37","distance":"135.21","duration":"4.96 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["chrgr_highest_voltage"],"issue_details":[{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38","distance":"75.43","duration":"23.2 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS data is coming"],"issue_details":[{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The version details are unavailable because the vehicle is running an older version. We are unable to verify the software versions or diagnose issues related to EPAS, the motor, and DC-DC systems. We can only monitor the BMS data, which limits our ability to perform a complete diagnosis.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"We need to contact the customer to arrange remote access and check whether the update can be performed remotely. Otherwise, a service team member needs to visit the vehicle, or the update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"nil","duration":"10.1 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"236.75","duration":"1.13 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Not Available","mode":"Autonomous","status":"mdm_issue","issues":["MDM/VT-Box is on but no data"],"issue_details":[{"id":"mmvcor8rx54o2","issue":"MDM/VT-Box is on but no data","description":"VT_Box came online on 15 October 2026, but no data was received","period":"26th sept","occurrences":"Continous","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application lunch or need to check the storage","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"15-10-2026","grafana_url":"","distance":"Nil","duration":"18 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}}}'::jsonb)
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;
INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'September 2026', '16-09-2026 to 30-09-2026', '2026-09-30', '30-09-2026 18:00:00 PDT', 56, 'Customer Fleet (56 Vehicles)', 'reports/report_16-09-2026_30-09-2026.html', '{"MD9GBUE28DC341009":{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341051":{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE22DC341054":{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}},"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Ivy Street, Stirling Junction, Chico, Butte County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["BMS_high_voltage_isolation_fault","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341063&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&viewPanel=panel-99","distance":"0","duration":"9.70 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Bootloader Version":"Missing"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"03-08-2026(only location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)(Data Scouting Team)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"129.63","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"77.36","duration":"1.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Falcon Drive, Madera, Madera County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"55.30","duration":"1.56 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"19.09.2026(Location: Zerker Road, Shafter, Kern County, California, United States)(Data Scouting Team)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"CA 16, Rumsey, Yolo County, California, 95679, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas communication fault this may cause issue further need to monitor 16th, 17th, 18th, 22nd, 23rd. 24th & 29th","(need to check with the customer)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341077&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=High_Intres_Id&viewPanel=panel-99","distance":"321.89","duration":"6.06 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"11.78","duration":"1.69 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27DC341079":{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341080&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=High_Intres_Id&viewPanel=panel-99","distance":"78.68","duration":"3.30 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"only location updated on 24.09.2026(Data Scouting)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE27DC341082&from=2026-09-11T07:00:00.000Z&to=2026-09-27T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=auxilary_battery_voltage&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XFC341001":{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"Last updated 14-09-2026(Location: Elk Grove High School, Fontana Court, Sacramento County, California, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Northwestern New Mexico, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"2026-09-15 08:46:24(MDM is on but no data location: Rio Arriba County, New Mexico, U.S)(data Scouting Team)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"243.82","duration":"2.78 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"13.57","duration":"57.7 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2","MCU 2 Firmware":"nil"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"191.90","duration":"2.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"MDM is on but no data 2026-09-09 (Location: Batesville, Zavala County, Texas, 78829, U.S)(Data Scouting Team)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-118","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.48","duration":"52.7 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}},"MD9GBUE22FC341011":{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.45","duration":"2.29 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"Rocky Hill School, 313 Sequoia Drive, Exeter, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational on 24th","RPDO Timeout (drive inhibit) on 29th & 30","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-24T07:00:00.000Z&to=2026-10-03T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-85","distance":"178.28","duration":"5.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"21.58","duration":"2.58 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS, anomaly''s and DCDC","(PTE & Data Scouting)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"675.72","duration":"1.08 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 2 times(28th & 30)","DSP Control Fault on 23rd","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341016&var-NickName=P41%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-82","distance":"140.36","duration":"3.32 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"14.80","duration":"27.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"27.08.2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"70.11","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"MDM online on 09-07-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE29FC341023":{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"25.45","duration":"1.65 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"Sacramento County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 18th","DSP Encoder Fault","(Need to check with the customer)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-18T07:00:00.000Z&to=2026-09-19T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341030&var-NickName=P55%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-85","distance":"1.99","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"10.7 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"154.26","duration":"3.46 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"MDM is on 23rd but no data(Data Scouting Team)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-09-25T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341033&var-NickName=P58%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"Nil","duration":"5 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"Sullivan Road, Kern County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"212.87","duration":"5.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","epas on 21st, 23rd, 24th & 29th sept level 1 & 2 faults","(Need to Check with Customer)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-21T07:00:00.000Z&to=2026-09-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"120.37","duration":"5.62 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"102.70","duration":"4.66 days","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.93","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE22DC341006":{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming","(Need to update the firmware)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-21T07:00:00.000Z&to=2026-09-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22DC341006&var-NickName=US%20HC%20Yuba&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-61","distance":"NIL","duration":"18.02 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"unhealthy","issues":["BMS_redundant_power_supply_fault","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-09-26T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE24DC341069&var-NickName=P12%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"22.76","duration":"2.10 week","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.18","duration":"13.5 hours","versions":{"VT_BOX Version":"1.2.2-VT_BOX","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE21DC341076":{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["DSP Overvoltage & Line Contactor welded on 24th","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-09-24T07:00:00.000Z&to=2026-09-25T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21DC341076&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1%20distance_travelled&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2&viewPanel=panel-130","distance":"71.87","duration":"1.23 weeks","versions":{"VT_BOX Version":"1.2.4_location_database_clean-VT_BOX","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"33.09","duration":"4.62 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE22DC341037":{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"14-08-2026 (Location: West Cerini Avenue, Fresno County, California, 93656, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE24DC341038":{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"unhealthy","issues":["no data in HMI or AVC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE29FC341037":{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.69","duration":"7.03 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader":"2.0.0"}}}'::jsonb)
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;
INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'September 2026', '01-09-2026 to 15-09-2026', '2026-09-15', '15-09-2026 18:00:00 PDT', 56, 'Customer Fleet (56 Vehicles)', 'reports/report_01-09-2026_15-09-2026.html', '{"MD9GBUE28DC341009":{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341051":{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE22DC341054":{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}},"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Ivy Street, Stirling Junction, Chico, Butte County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.23","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Bootloader Version":"Missing"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"03-08-2026(only location came)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"124","duration":"3.79 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"112.91","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Falcon Drive, Madera, Madera County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.32","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"26.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"Harrison Street, Guinda, Yolo County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"280.90","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"29.76","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27DC341079":{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341080&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-98","distance":"84.50","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Near Greenville, Hunt County, Texas, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"Location on 12.08.2026 (Near Greenville, Hunt County, Texas, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XFC341001":{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"30.99","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Rio Arriba County, New Mexico, U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"2026-09-15 08:46:24","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"13 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"67.34","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["MCU 2 Firmware missing"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE27FC341005&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-116","distance":"20.20","duration":"5.67 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2","MCU 2 Firmware":"nil"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["fault enumeration level 3 on 01th, 02nd & 15th","DSP Powerframe Fault on 15th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-15T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20FC341007&var-NickName=P32%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-86","distance":"111.07","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"2026-09-09 (Location: Batesville, Zavala County, Texas, 78829, U.S)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-118","distance":"Nil","duration":"20 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"34.10","duration":"2.35 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}},"MD9GBUE22FC341011":{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE24FC341012&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37","distance":"0","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"San Joaquin Valley, Central California, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"145.27","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"16.66","duration":"3.65 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS, anomaly''s and DCDC"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341015&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"1398.86","duration":"1.39 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)","Motor in thermal cutback on 07th,","RPDO Timeout (drive inhibit) on 11th","DSP Overvoltage, High Capacitor Cut, Line Contactor welded"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21FC341016&from=2026-08-26T19:31:16.000Z&to=2026-08-26T19:38:16.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=12Vconv_Outputcurrent&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"162.78","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"15.81","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.23","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"70.11","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"MDM online on 09-07-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE29FC341023":{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxiliary battery"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341029&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"159.67","duration":"17.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"3307, Golden State Boulevard, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 3rd"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"1.99","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["DCDC_input_undervoltage_alarm","BMS_redundant_power_supply_fault"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE28FC341031&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"1.86","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.86","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"2.80","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"152.09","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","DSP control Fault on 5th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"112.43","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"62.46","duration":"ni","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.93","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE22DC341006":{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"NIL","duration":"10.9 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"unhealthy","issues":["Motor in thermal cutback on 01 & 15th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE24DC341069&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2","distance":"55.23","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"4.95","duration":"nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341028":{"vin":"MD9GBUE28FC341028","nickname":"P53 Vehicle","location":"IST","mode":"Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28FC341028&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"5.21","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE21DC341076":{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"7.35","duration":"nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"14.07","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE22DC341037":{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"14-08-2026 (Location: West Cerini Avenue, Fresno County, California, 93656, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE24DC341038":{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"unhealthy","issues":["no data in HMI or AVC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}}'::jsonb)
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;
INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'August 2026', '01-08-2026 to 31-08-2026', '2026-08-31', '01-09-2026 22:46:41 PDT', 57, 'Customer Fleet (57 Vehicles)', 'reports/report_01-08-2026_31-08-2026.html', '{"MD9GBUE28DC341009":{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341051":{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE22DC341054":{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}},"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Yolo–Colusa County, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["BMS_High_voltage_isolation"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"35.99","duration":"1.96 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"approximately North Texas, USA","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"location data came 03.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"2 hours gap","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}},"MD9GBUE22DC341068":{"vin":"MD9GBUE22DC341068","nickname":"P11 Vehicle(IST)","location":"Zoho Corporation, Tamil Nadu, India","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"154.86","duration":"1.48 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.1.0","Mew Bootloader":"Nil"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"294.61","duration":"3.79 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"168.49","duration":"1.11 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Mountain View, California, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"8.71","duration":"4.10 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"26.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["Motor 2 Error : Very Severe | Encoder Fault on 10th Aug","EPAS_fault_enumeration - 3rd(2 times), 11th(1 time), 12th(2 time), 14th(3rd time), 19th, 24th, 25th, 26th & 27th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-09T18:30:00.000Z&to=2026-08-10T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE23DC341077&var-NickName=P20%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-85","distance":"392.32","duration":"3.68 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"169.77","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27DC341079":{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-2d&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"254.84","duration":"5.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Near Greenville, Hunt County, Texas, USA","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"Location on 12.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XFC341001":{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.37","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Rio Arriba County, New Mexico, U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"09-08-2026 17:24:14","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-07-09T07:00:00.000Z&to=2026-07-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"13 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["epas level 1 on 05th & 12th, 13th, 17th, 20th to 22nd, 24th & 27th Total 18"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE25FC341004&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id","distance":"133.81","duration":"1.33 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas fault on 23rd"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-23T18:30:00.000Z&to=2026-08-24T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27FC341005&var-NickName=P30%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"20.20","duration":"5.67 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["fault enumeration level 3 & 1 13th, 1&2 on 27th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE20FC341007&from=2026-08-11T18:30:00.000Z&to=2026-08-14T18:29:59.000Z&timezone=browser&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"226.46","duration":"1.17 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"18.08.2026  (Location: Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&viewPanel=panel-118","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"58.40","duration":"2.35 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}},"MD9GBUE22FC341011":{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.98","duration":"2.72 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"San Joaquin Valley, Central California, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 13th","Epas level 1 fault on 17th & 24th (3 times)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-08-17T21:47:00.000Z&to=2026-08-17T21:59:32.009Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=DC_DC_Conv_OutputCurrent&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=12Vconv_Outputcurrent&var-Field2=12Vconv_Outputcurrent","distance":"142.85","duration":"2.75 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"44.11","duration":"3.65 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS and DCDC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1398.86","duration":"1.39 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)","Motor in thermal cutback on 07th,","RPDO Timeout (drive inhibit) on 11th","DSP Overvoltage, High Capacitor Cut, Line Contactor welded"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21FC341016&from=2026-08-26T19:31:16.000Z&to=2026-08-26T19:38:16.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=12Vconv_Outputcurrent&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"308.68","duration":"4.06 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"30.86","duration":"59.1 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.23","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"172.75","duration":"2.16 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"MDM online on 09-07-2026","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE29FC341023":{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxiliary battery - 6, 7, 8, 10, 12 &17 dates"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341029&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"42.24","duration":"17.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"3307, Golden State Boulevard, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 2nd & 5th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-01T18:30:00.000Z&to=2026-08-02T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE26FC341030&var-NickName=P55%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-85","distance":"42.24","duration":"9.27 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.28","duration":"4.20 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.89","duration":"4.82 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.29","duration":"12.6 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["IO can''t init on 4th","RPDO Timeout (drive inhibit)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&from=2026-08-04T07:00:00.000Z&to=2026-08-05T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2","distance":"156.98","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","Epas Level 2 & 1 on 4th & 11th","DSP control Fault on 1st, 7th & 20th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=DC_DC_Conv_OutputCurrent&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=12Vconv_Outputcurrent&var-Field2=12Vconv_Outputcurrent","distance":"289.55","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas level 2 on 04th, 12th & 15th","Epas level 1 on 04th, 15th & 23rd","Epas level 3 on 04th, 06th, 07th, 12th & 15th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341042&from=2026-08-11T07:00:00.000Z&to=2026-08-26T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_cell_values&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=cell_open_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"223.44","duration":"1.26 weeks","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"69.69","duration":"2.90 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE22DC341006":{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"NIL","duration":"10.9 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"unhealthy","issues":["Motor in thermal cutback on 8th, 20th, 21th & 22nd"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE24DC341069&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id","distance":"98.27","duration":"1.57 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"Hargill, Hidalgo County, Texa, U.S","mode":"Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 1th aug"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-08-02T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29","distance":"160.30","duration":"1.36 week","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341028":{"vin":"MD9GBUE28FC341028","nickname":"P53 Vehicle","location":"IST","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"10.65","duration":"4.02 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE21DC341076":{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Many errors occurred, but they were recovered after the VCU version was changed."],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21DC341076&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id","distance":"3.21","duration":"3 days","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"53.88","duration":"1.16 week","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE22DC341037":{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"unhealthy","issues":["BMS_redundant_power_supply_fault","BMS_input_power_supply_fault","auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22DC341037&var-max_amp_hours=210&var-bms_profile_checksum=&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-27","distance":"9.94","duration":"9.14 hours","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE24DC341038":{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"unhealthy","issues":["no data in HMI or AVC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}}'::jsonb)
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;
INSERT INTO reports (id, label, date_range, sort_date, timestamp, vehicles_count, vehicles_label, file_path, vehicles_json)
VALUES ('report_2026-08-01_2026-08-15', 'August 2026', '01-08-2026 to 15-08-2026', '2026-08-15', '15-08-2026 18:00:00 PDT', 57, 'Customer Fleet (57 Vehicles)', 'reports/report_2026-08-01_2026-08-15.html', '{"MD9GBUE28DC341009":{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341051":{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE22DC341054":{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}},"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Yolo–Colusa County, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["BMS_High_voltage_isolation","RPDO Timeout on 15th & 16th"],"timestamp":"","vt_box_time":"","distance":"222.39KM","duration":"1 week","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"approximately North Texas, USA","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"Location data''s only came(01, 02 & 03)","distance":"Nil","duration":"2 hours gap","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}},"MD9GBUE22DC341068":{"vin":"MD9GBUE22DC341068","nickname":"P11 Vehicle(IST)","location":"Zoho Corporation, Tamil Nadu, India","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","motorcontroller_1_distance_travelled(ANOMALIES) -176 times"],"timestamp":"","vt_box_time":"","distance":"26.69","duration":"35.2 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.1.0","Mew Bootloader":"Nil"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"118.74","duration":"2.03 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"48.57","duration":"37.4 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Mountain View, California, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.12","duration":"0 s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"07-08-2026","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["Motor 2 Error : Very Severe | Encoder Fault on 10th Aug","EPAS_fault_enumeration - 3rd(2 times), 11th(1 time), 12th(2 time) &14th(3rd time)"],"timestamp":"","vt_box_time":"","distance":"176.10","duration":"4.29 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS_fault_enumeration 03(1), 05(1), 06(1), 07(5 times), 10(1), 13(1), 15(1)"],"timestamp":"","vt_box_time":"","distance":"153.29","duration":"20.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27DC341079":{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault"],"timestamp":"","vt_box_time":"","distance":"144.53","duration":"6.78 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Near Greenville, Hunt County, Texas, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.86","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE2XFC341001":{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.07","duration":"1.10 day","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Rio Arriba County, New Mexico, U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"09-08-2026 17:24:14","distance":"Nil","duration":"13 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["epas level 1 on 05th & 12th &13th Total 8"],"timestamp":"","vt_box_time":"","distance":"62.85","duration":"4.83 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_voltage"],"timestamp":"","vt_box_time":"","distance":"6.39","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["fault enumeration level 3 & 1 13th"],"timestamp":"","vt_box_time":"","distance":"82.95","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28.04.2026 (Location: Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"26.48","duration":"19.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}},"MD9GBUE22FC341011":{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas Level - 2 on 17th"],"timestamp":"","vt_box_time":"","distance":"73.25","duration":"2.63 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"San Joaquin Valley, Central California, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 13th"],"timestamp":"","vt_box_time":"","distance":"8.21","duration":"13.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"7.20","duration":"2 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS and DCDC"],"timestamp":"","vt_box_time":"","distance":"1353.29","duration":"2.20 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)","Motor in thermal cutback on 07th,","RPDO Timeout (drive inhibit) on 11th"],"timestamp":"","vt_box_time":"","distance":"138.12","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"14.37","duration":"2.71 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"unhealthy","issues":["On 22nd July, the motor entered thermal cutback. The motor temperature decreased from 64°C to 57°C."],"timestamp":"","vt_box_time":"","distance":"29.58","duration":"1.14 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"100.67","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"MDM online on 09-07-2026","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE29FC341023":{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"Silver Creek, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"33.44","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"Siilver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 2nd & 5th"],"timestamp":"","vt_box_time":"","distance":"1.74","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"Silver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.16","duration":"16.4 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"Silver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.65","duration":"2.13 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.06","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"Silver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"unhealthy","issues":["IO can''t init on 4th","RPDO Timeout (drive inhibit)"],"timestamp":"","vt_box_time":"","distance":"28.64","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","Epas Level 2 & 1 on 4th & 11th"],"timestamp":"","vt_box_time":"","distance":"148.00","duration":"16.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas level 2 on 04th, 12th & 15th","peas level 1 on 04th & 15th","Epas level 3 on 04th, 06th, 07th & 15th"],"timestamp":"","vt_box_time":"","distance":"110.59","duration":"1.94","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"27.97","duration":"2 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE22DC341006":{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming"],"timestamp":"","vt_box_time":"","distance":"NIL","duration":"1.86 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"Ignatius Drive, Richwoods, Frisco, Collin County, Texas, United States","mode":"Autonomous","status":"unhealthy","issues":["Motor in thermal cutback on 8th"],"timestamp":"","vt_box_time":"","distance":"22.23","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"Hargill, Hidalgo County, Texa, U.S","mode":"Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 1th aug"],"timestamp":"","vt_box_time":"","distance":"160.30","duration":"1.67 days","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE28FC341028":{"vin":"MD9GBUE28FC341028","nickname":"P53 Vehicle","location":"IST","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"6.67","duration":"13.3 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}},"MD9GBUE21DC341076":{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0","duration":"3 days","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.5.10","Mew Hardware":"2.2.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"25.63","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE22DC341037":{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"unhealthy","issues":["BMS_redundant_power_supply_fault","BMS_input_power_supply_fault","auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","distance":"9.94","duration":"nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}},"MD9GBUE24DC341038":{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"no data in HMI or AVC","distance":"Nil","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}}'::jsonb)
ON CONFLICT (id) DO UPDATE SET
  label = EXCLUDED.label,
  date_range = EXCLUDED.date_range,
  sort_date = EXCLUDED.sort_date,
  timestamp = EXCLUDED.timestamp,
  vehicles_count = EXCLUDED.vehicles_count,
  vehicles_label = EXCLUDED.vehicles_label,
  file_path = EXCLUDED.file_path,
  vehicles_json = EXCLUDED.vehicles_json;

-- ─────────────────────────────────────────────────────────────────────────────
-- 3. Populate Report Vehicles and Issues (per-report snapshots)
-- ─────────────────────────────────────────────────────────────────────────────

-- Report: rpt_1793789596_16-10-2026_31-10-2026 (16-10-2026 to 31-10-2026)
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23DC341063', 'P6 Vehicle (14-12-2025)', 'P26H+WR, Glenn, CA 95943, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle (14-12-2025)","location":"P26H+WR, Glenn, CA 95943, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE2XDC341075', 'P18 Vehicle', 'U.S', 'Non-Autonomous', 'mdm_issue', 'Nil', '10 mins', '', '27-10-2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-110', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM is on but no data"],"issue_details":[{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 27 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_"}],"timestamp":"","vt_box_time":"27-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-110","distance":"Nil","duration":"10 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv52altmj10p', 'MDM is on but no data', 'The VT-Box/MDM came online on 27 October 2026, but no data was received.', '2 months', '10 mins', 'MDM', 'BVMC', 'Medium', 'application lunching issue', 'Data Scouting', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_', 0, '{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 27 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE2XDC341075'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE29DC341066', 'P9 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE28DC341057', 'P4 Vehicle', '5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States', 'Non-Autonomous', 'healthy', '0.05', '30 mins', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-29T07:00:00.000Z&to=2026-10-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}'::jsonb, '{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-29T07:00:00.000Z&to=2026-10-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"0.05","duration":"30 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE20DC341070', 'P13 Vehicle', '16098, Road 43, Yolo County, California, 95637, United States', 'Non-Autonomous', 'healthy', '125.83', '2.10 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"125.83","duration":"2.10 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE22DC341071', 'P14 Vehicle', '6624, Avenue 228, Tulare County, California, 93274, United States', 'Non-Autonomous', 'healthy', '81.88', '1.61 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"6624, Avenue 228, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"81.88","duration":"1.61 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE28DC341074', 'P17 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '3.73', '11.2 hours', '', '', '', '{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}'::jsonb, '{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"3.73","duration":"11.2 hours","versions":{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23DC341077', 'P20 Vehicle', '16098, Road 43, Yolo County, California, 95637, United States', 'Non-Autonomous', 'healthy', '198.88', '4.08 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"198.88","duration":"4.08 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE25DC341078', 'P21 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '1.29', '5 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.29","duration":"5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23DC341080', 'P23 Vehicle', 'FM 493, Hargill, Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '69.85', '2.50 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-35', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault"],"issue_details":[{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-35","distance":"69.85","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv9d9xx21ktt', 'High_voltage_isolation_fault', 'The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.', '4 months', 'Continous', 'BMS', 'BVMC', 'Low', 'Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.', 'PTE', 'US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', 0, '{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27DC341082', 'P25 Vehicle', 'Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States', 'Non-Autonomous', 'healthy', '0', '0s', '', '', '', '{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"0s","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE21FC341002', 'P27 Vehicle', 'C222+222 Carbondale, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '14-09-2026(Location: C222+222 Carbondale, California, USA)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"C222+222 Carbondale, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"14-09-2026(Location: C222+222 Carbondale, California, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23FC341003', 'P28 Vehicle', 'County Road 379, Rio Arriba County, New Mexico, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'County Road 379, Rio Arriba County, New Mexico, United States only location data came on 11.10.2026', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"County Road 379, Rio Arriba County, New Mexico, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"County Road 379, Rio Arriba County, New Mexico, United States only location data came on 11.10.2026","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE25FC341004', 'P29 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '332.95', '4.40 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"332.95","duration":"4.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27FC341005', 'P30 Vehicle', '1103, Mockingbird Hill, Calaveras County, California, 95252, United States', 'Non-Autonomous', 'healthy', '4.09', '53.5 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}'::jsonb, '{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"1103, Mockingbird Hill, Calaveras County, California, 95252, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"4.09","duration":"53.5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE29FC341006', 'P31 Vehicle', '17007, You Bet Road, You Bet, Nevada County, California, 95945, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"17007, You Bet Road, You Bet, Nevada County, California, 95945, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE20FC341007', 'P32 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '194.13', '1.88 days', '', '', '', '{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}'::jsonb, '{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"194.13","duration":"1.88 days","versions":{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE22FC341008', 'P33 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22FC341008&var-NickName=P33%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22FC341008&var-NickName=P33%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)', '', '', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno, Fresno County, California, 93725, United States', 'Non-Autonomous', 'healthy', '36.33', '10.8 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno, Fresno County, California, 93725, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.33","duration":"10.8 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE24FC341012', 'P37 Vehicle', 'Atascosa County, Texas, United States', 'Non-Autonomous', 'healthy', '45.85', '1.14 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Atascosa County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"45.85","duration":"1.14 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE26FC341013', 'P38 Vehicle', 'Avenue 295, Tulare County, California, 93221, United States', 'Non-Autonomous', 'unhealthy', '145.86', '1.04 weeks', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"Avenue 295, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational & RPDO Timeout (drive inhibit)"],"issue_details":[{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-16 11:47:19, 2026-10-19 08:07:12 & 2026-10-20 15:21:54 and RPDO Timeout (drive inhibit) on 2026-10-02 11:47:06 & 13:45:07","period":"multiple times","occurrences":"4 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The key position was observed to be in Position 2 while the vehicle was in motion. It is suspected that the driver may have changed the key position while driving, which could have resulted in a sudden change in vehicle behaviour and triggered the issue. The PTE team also observed that the throttle input was triggered during the key ON/OFF operation.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121","distance":"145.86","duration":"1.04 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvaqo8t5i0a8', 'Unit in preoperational & RPDO Timeout (drive inhibit)', 'Unit in preoperational on 2026-10-16 11:47:19, 2026-10-19 08:07:12 & 2026-10-20 15:21:54 and RPDO Timeout (drive inhibit) on 2026-10-02 11:47:06 & 13:45:07', 'multiple times', '4 time', 'Motor', 'BVMC', 'Low', 'The key position was observed to be in Position 2 while the vehicle was in motion. It is suspected that the driver may have changed the key position while driving, which could have resulted in a sudden change in vehicle behaviour and triggered the issue. The PTE team also observed that the throttle input was triggered during the key ON/OFF operation.', 'PTE', 'Linder Equipment Co. - Troy reported no issues (Bryce Telfer)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=', 0, '{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-16 11:47:19, 2026-10-19 08:07:12 & 2026-10-20 15:21:54 and RPDO Timeout (drive inhibit) on 2026-10-02 11:47:06 & 13:45:07","period":"multiple times","occurrences":"4 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The key position was observed to be in Position 2 while the vehicle was in motion. It is suspected that the driver may have changed the key position while driving, which could have resulted in a sudden change in vehicle behaviour and triggered the issue. The PTE team also observed that the throttle input was triggered during the key ON/OFF operation.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum="}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE28FC341014', 'P39 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '62.58', '22.7 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"62.58","duration":"22.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE2XFC341015', 'P40 Vehicle', 'County Road 182, Lamb County, Texas, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'Last updated on 09.10.2026(so many faults are coming BMS, EPAS, anomaly''s and DCDC Medium & Location:County Road 182, Lamb County, Texas, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"County Road 182, Lamb County, Texas, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"Last updated on 09.10.2026(so many faults are coming BMS, EPAS, anomaly''s and DCDC Medium & Location:County Road 182, Lamb County, Texas, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE21FC341016', 'P41 Vehicle', '16361, Bonney Road, Monterey County, California, 95076, United States', 'Non-Autonomous', 'healthy', '121.49', '3.01 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"16361, Bonney Road, Monterey County, California, 95076, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"121.49","duration":"3.01 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23FC341017', 'P42 Vehicle (15-12-2025)', 'East Fantz Avenue, Fresno County, California, 93648, United States', 'Non-Autonomous', 'healthy', '162.84', '1.14 weeks', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle (15-12-2025)","location":"East Fantz Avenue, Fresno County, California, 93648, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"162.84","duration":"1.14 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27FC341019', 'P44 Vehicle', '2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States', 'Non-Autonomous', 'healthy', '12.86', '35.9 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.86","duration":"35.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23FC341020', 'P45 Vehicle', '323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'on 09-10-2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341020&var-NickName=P45%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 09-10-2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341020&var-NickName=P45%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, United States', 'Non-Autonomous', 'healthy', '32.69', '1.41 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"32.69","duration":"1.41 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '01-09-2026', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"01-09-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE20FC341024', 'P49 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '240.51', '1.09 weeks', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"240.51","duration":"1.09 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE2XFC341029', 'P54 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '11.70', '18.4 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"11.70","duration":"18.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE26FC341030', 'P55 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '0.89', '1.52 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["3-pin connector"],"issue_details":[{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.89","duration":"1.52 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvax8jqczxxd', '3-pin connector', 'After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.', 'Sept 3rd', '1st time', 'Motor', 'BVMC', 'High', 'The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.', 'Mechanical Team', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc', 0, '{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE28FC341031', 'P56 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.22', '3.96 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.22","duration":"3.96 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE2XFC341032', 'P57 Vehicle', '8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States', 'Non-Autonomous', 'healthy', '144.67', '6.85 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"144.67","duration":"6.85 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE21FC341033', 'P58 Vehicle', 'Rivercrest Golf Club & Preserve, Oriole Lane, Upper Providence Township, Montgomery County, Pennsylvania, 19482, United States', 'Non-Autonomous', 'healthy', '27.32', '1.27 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Rivercrest Golf Club & Preserve, Oriole Lane, Upper Providence Township, Montgomery County, Pennsylvania, 19482, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"27.32","duration":"1.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE23FC341034', 'P59 Vehicle', '22579, Snow Road, Kern County, California, 93314, United States', 'Non-Autonomous', 'healthy', '184.64', '6.32 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"184.64","duration":"6.32 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE29FC341037', 'P62 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '107.67', '5.16 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"107.67","duration":"5.16 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE29FC341040', 'P65 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '27.14', '3.02 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE29FC341040","nickname":"P65 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"27.14","duration":"3.02 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27FC341036', 'P61 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '84.59', '5.47 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE27FC341036","nickname":"P61 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"84.59","duration":"5.47 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE26DC341039', 'T10 Vehicle', 'FM 493, Hargill, Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '50.73', '1.56 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","auxilary_battery_voltage"],"issue_details":[{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-16T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-cc"},{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 15 October 2026. On 19 October, the auxiliary battery voltage dropped to approximately 5 V. DC-DC data resumed after the vehicle was driven recently.","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"The U.S. team contacted the customer (US Citrus / Mani Skaria). No abnormalities were reported, and the vehicle is functioning normally. Further monitoring is required.","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"50.73","duration":"1.56 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcb24ur00kk', 'High_voltage_isolation_fault', 'The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.', '2 months', 'Contionus', 'BMS', 'BVMC', 'Low', 'Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.', 'PTE', 'US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-16T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-cc', 0, '{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-16T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-cc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcbbpkq2v5e', 'auxilary_battery_voltage', 'The DC-DC converter stopped reporting data after 15 October 2026. On 19 October, the auxiliary battery voltage dropped to approximately 5 V. DC-DC data resumed after the vehicle was driven recently.', '2 months', 'Continous', 'BMS', 'BVMC', 'High', 'The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.', 'PTE', 'The U.S. team contacted the customer (US Citrus / Mani Skaria). No abnormalities were reported, and the vehicle is functioning normally. Further monitoring is required.', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', 1, '{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 15 October 2026. On 19 October, the auxiliary battery voltage dropped to approximately 5 V. DC-DC data resumed after the vehicle was driven recently.","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"The U.S. team contacted the customer (US Citrus / Mani Skaria). No abnormalities were reported, and the vehicle is functioning normally. Further monitoring is required.","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, 78617, United States', 'Non-Autonomous', 'unhealthy', '150.25', '4.71 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["chrgr_highest_voltage"],"issue_details":[{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the Boson service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38","distance":"150.25","duration":"4.71 days","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcby5xlz2u7', 'chrgr_highest_voltage', 'chrgr_highest_voltage are receving the values like 950', '4 months', 'Continous', 'BMS', 'BVMC', 'Low', 'This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the Boson service center.', 'PTE', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc', 0, '{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the Boson service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27DC341003', 'US HC Fargo', 'McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States', 'Autonomous', 'unhealthy', 'nil', '10.1 hours', '', '', '', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS data is coming"],"issue_details":[{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The vehicle is running an older software version, so version details are unavailable. We can monitor only BMS data, limiting our ability to diagnose EPAS, motor, and DC-DC issues.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"The update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"nil","duration":"10.1 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvccg3jvlrr9', 'Only BMS data is coming', 'The vehicle is running an older software version, so version details are unavailable. We can monitor only BMS data, limiting our ability to diagnose EPAS, motor, and DC-DC issues.', '4 months', 'Continous', 'Other', 'BVMC', 'Medium', 'The update can be completed when the customer brings the vehicle to the service center.', 'Vehicle Support and Service Engineer', '', '', 0, '{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The vehicle is running an older software version, so version details are unavailable. We can monitor only BMS data, limiting our ability to diagnose EPAS, motor, and DC-DC issues.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"The update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE27DC341003'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE27DC341048', 'P1 Vehicle', 'Not Available', 'Autonomous', 'inactive', 'Nil', 'Nil', '10-03-2026', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE24DC341069', 'P12 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'healthy', '77.45', '2.14 weeks', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"77.45","duration":"2.14 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE20DC341036', 'T7 Vehicle', 'Travis County, Texas, 78617, United States', 'Autonomous', 'unhealthy', '32.67', 'Nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"issue_details":[{"id":"mmw1z3rpy7xel","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 26th October 2026. On 26 October, the auxiliary battery voltage dropped to approximately 5 V.","period":"26 Oct","occurrences":"1 time","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"32.67","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmw1z3rpy7xel', 'auxilary_battery_voltage', 'The DC-DC converter stopped reporting data after 26th October 2026. On 26 October, the auxiliary battery voltage dropped to approximately 5 V.', '26 Oct', '1 time', 'BMS', 'BVMC', 'Medium', 'The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.', 'PTE', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_', 0, '{"id":"mmw1z3rpy7xel","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 26th October 2026. On 26 October, the auxiliary battery voltage dropped to approximately 5 V.","period":"26 Oct","occurrences":"1 time","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE20DC341036'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE25DC341033', 'T6 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'inactive', 'Nil', 'Nil', '02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-NickName=T6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}'::jsonb, '{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-NickName=T6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE25FC341035', 'P60 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '4 days', '', '22-10-2026 to 26-10-2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE25FC341035","nickname":"P60 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["Data missing"],"issue_details":[{"id":"mmw0rdh1vzv5l","issue":"Data missing","description":"From 22-10-2026 to 26-10-2026, the MDM was online, but no data was received. We need to check whether the vehicle was at the Madera office during this period.","period":"5 days","occurrences":"no data came","component":"MDM","reported_by":"BVMC","severity":"High","rca":"need to check the application","responsible_team":"Data Scouting","customer_feedback":"it is in the office","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"22-10-2026 to 26-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110","distance":"Nil","duration":"4 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmw0rdh1vzv5l', 'Data missing', 'From 22-10-2026 to 26-10-2026, the MDM was online, but no data was received. We need to check whether the vehicle was at the Madera office during this period.', '5 days', 'no data came', 'MDM', 'BVMC', 'High', 'need to check the application', 'Data Scouting', 'it is in the office', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc', 0, '{"id":"mmw0rdh1vzv5l","issue":"Data missing","description":"From 22-10-2026 to 26-10-2026, the MDM was online, but no data was received. We need to check whether the vehicle was at the Madera office during this period.","period":"5 days","occurrences":"no data came","component":"MDM","reported_by":"BVMC","severity":"High","rca":"need to check the application","responsible_team":"Data Scouting","customer_feedback":"it is in the office","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1793789596_16-10-2026_31-10-2026' AND vin = 'MD9GBUE25FC341035'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE20FC341038', 'P63 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '12.36', '1.87 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE20FC341038","nickname":"P63 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.36","duration":"1.87 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1793789596_16-10-2026_31-10-2026', 'MD9GBUE22FC341039', 'P64 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '155.34', '6.07 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE22FC341039","nickname":"P64 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"155.34","duration":"6.07 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;

-- Report: rpt_1792260095_01-10-2026_15-10-2026 (01-10-2026 to 15-10-2026)
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23DC341063', 'P6 Vehicle (14-12-2025)', 'P26H+WR, Glenn, CA 95943, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle (14-12-2025)","location":"P26H+WR, Glenn, CA 95943, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE2XDC341075', 'P18 Vehicle', 'U.S', 'Non-Autonomous', 'mdm_issue', 'Nil', '10 mins', '', '14-09-2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM is on but no data"],"issue_details":[{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 14 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&"}],"timestamp":"","vt_box_time":"14-09-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110","distance":"Nil","duration":"10 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv52altmj10p', 'MDM is on but no data', 'The VT-Box/MDM came online on 14 October 2026, but no data was received.', '2 months', '10 mins', 'MDM', 'BVMC', 'Medium', 'application lunching issue', 'Data Scouting', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&', 0, '{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 14 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE2XDC341075&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=&var-ccl_scale_factor=&var-dcl_scale_factor=&var-timezone=IST%20UTC%2B5:30&"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE2XDC341075'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE29DC341066', 'P9 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE28DC341057', 'P4 Vehicle', '5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'on 12-06-2026(Location on 5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}'::jsonb, '{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 12-06-2026(Location on 5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE20DC341070', 'P13 Vehicle', '16098, Road 43, Yolo County, California, 95637, United States', 'Non-Autonomous', 'healthy', '168.52', '2.87 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"168.52","duration":"2.87 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE22DC341071', 'P14 Vehicle', '6624, Avenue 228, Tulare County, California, 93274, United States', 'Non-Autonomous', 'healthy', '50.95', '3.95 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"6624, Avenue 228, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"50.95","duration":"3.95 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE28DC341074', 'P17 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '16.46', '7.80 hours', '', '', '', '{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}'::jsonb, '{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"16.46","duration":"7.80 hours","versions":{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23DC341077', 'P20 Vehicle', '16098, Road 43, Yolo County, California, 95637, United States', 'Non-Autonomous', 'healthy', '218.70', '2.55 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"218.70","duration":"2.55 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE25DC341078', 'P21 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '1.05', '2 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.05","duration":"2 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23DC341080', 'P23 Vehicle', 'FM 493, Hargill, Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '69.85', '2.50 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","DSP Overvoltage"],"issue_details":[{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&va"},{"id":"mmv9f6ibhqg6r","issue":"DSP Overvoltage","description":"Need to check the motorcontroller_1_controller_capacitor_voltage in node 1","period":"08.09.2026 & 01.10.2026","occurrences":"2 times","component":"Motor","reported_by":"BVMC","severity":"Medium","rca":"The DSP Overvoltage may be associated with the motorcontroller_1_controller_capacitor_voltage field. We need to monitor whether this condition occurs continuously to determine if further RCA is required.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported By: BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse","distance":"69.85","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv9d9xx21ktt', 'High_voltage_isolation_fault', 'The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.', '4 months', 'Continous', 'BMS', 'BVMC', 'Low', 'Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.', 'PTE', 'US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&va', 0, '{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&va"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv9f6ibhqg6r', 'DSP Overvoltage', 'Need to check the motorcontroller_1_controller_capacitor_voltage in node 1', '08.09.2026 & 01.10.2026', '2 times', 'Motor', 'BVMC', 'Medium', 'The DSP Overvoltage may be associated with the motorcontroller_1_controller_capacitor_voltage field. We need to monitor whether this condition occurs continuously to determine if further RCA is required.', 'PTE', 'US Citrus/Mani Skaria - have not heard back (Reported By: BRYCE TELFER)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', 1, '{"id":"mmv9f6ibhqg6r","issue":"DSP Overvoltage","description":"Need to check the motorcontroller_1_controller_capacitor_voltage in node 1","period":"08.09.2026 & 01.10.2026","occurrences":"2 times","component":"Motor","reported_by":"BVMC","severity":"Medium","rca":"The DSP Overvoltage may be associated with the motorcontroller_1_controller_capacitor_voltage field. We need to monitor whether this condition occurs continuously to determine if further RCA is required.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported By: BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27DC341082', 'P25 Vehicle', 'Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '6 mins', '', '07-10-2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["Location Data only came"],"issue_details":[{"id":"mmv9fnn9aqud7","issue":"Location Data only came","description":"Location data is available, but no other data has been received. The last data was received on 18 September 2026.","period":"07-10-2026","occurrences":"6 times","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application launch issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"07-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"6 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv9fnn9aqud7', 'Location Data only came', 'Location data is available, but no other data has been received. The last data was received on 18 September 2026.', '07-10-2026', '6 times', 'MDM', 'BVMC', 'Medium', 'Application launch issue', 'Data Scouting', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', 0, '{"id":"mmv9fnn9aqud7","issue":"Location Data only came","description":"Location data is available, but no other data has been received. The last data was received on 18 September 2026.","period":"07-10-2026","occurrences":"6 times","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application launch issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-01T21:01:02.335Z&to=2026-10-01T21:01:32.170Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE27DC341082'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE21FC341002', 'P27 Vehicle', 'C222+222 Carbondale, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '14-09-2026(Location: C222+222 Carbondale, California, USA)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"C222+222 Carbondale, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"14-09-2026(Location: C222+222 Carbondale, California, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23FC341003', 'P28 Vehicle', 'County Road 379, Rio Arriba County, New Mexico, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '20 mins', '', '11-10-2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-110', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"County Road 379, Rio Arriba County, New Mexico, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM/VT-Box is on but no data"],"issue_details":[{"id":"mmv9hmd3q8eq0","issue":"MDM/VT-Box is on but no data","description":"The VT-Box came online on 11 October 2026, but no data was received.","period":"3 months","occurrences":"Continous","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application lunch or need to check the storage","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl"}],"timestamp":"","vt_box_time":"11-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-110","distance":"Nil","duration":"20 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv9hmd3q8eq0', 'MDM/VT-Box is on but no data', 'The VT-Box came online on 11 October 2026, but no data was received.', '3 months', 'Continous', 'MDM', 'BVMC', 'Medium', 'Application lunch or need to check the storage', 'Data Scouting', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl', 0, '{"id":"mmv9hmd3q8eq0","issue":"MDM/VT-Box is on but no data","description":"The VT-Box came online on 11 October 2026, but no data was received.","period":"3 months","occurrences":"Continous","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application lunch or need to check the storage","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE23FC341003'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE25FC341004', 'P29 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'unhealthy', '328.88', '2.34 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Fault Level 2 occurred twice, on the 3rd and 7th, and EPAS Fault Level 3 occurred on the 3rd."],"issue_details":[{"id":"mmv9ngrzna2re","issue":"EPAS Fault Level 2 occurred twice, on the 3rd and 7th, and EPAS Fault Level 3 occurred on the 3rd.","description":"The vehicle did not stop or experience any noticeable operational issues when these faults occurred.","period":"3rd, 4th & 7th","occurrences":"3 times","component":"EPAS","reported_by":"BVMC","severity":"Low","rca":"The VT-Box came online on 11 October 2026, but no telemetry data was received. Further investigation is required to identify the cause of the data transmission issue.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"328.88","duration":"2.34 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmv9ngrzna2re', 'EPAS Fault Level 2 occurred twice, on the 3rd and 7th, and EPAS Fault Level 3 occurred on the 3rd.', 'The vehicle did not stop or experience any noticeable operational issues when these faults occurred.', '3rd, 4th & 7th', '3 times', 'EPAS', 'BVMC', 'Low', 'The VT-Box came online on 11 October 2026, but no telemetry data was received. Further investigation is required to identify the cause of the data transmission issue.', 'PTE', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', 0, '{"id":"mmv9ngrzna2re","issue":"EPAS Fault Level 2 occurred twice, on the 3rd and 7th, and EPAS Fault Level 3 occurred on the 3rd.","description":"The vehicle did not stop or experience any noticeable operational issues when these faults occurred.","period":"3rd, 4th & 7th","occurrences":"3 times","component":"EPAS","reported_by":"BVMC","severity":"Low","rca":"The VT-Box came online on 11 October 2026, but no telemetry data was received. Further investigation is required to identify the cause of the data transmission issue.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25FC341004&var-NickName=P29%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE25FC341004'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27FC341005', 'P30 Vehicle', '1103, Mockingbird Hill, Calaveras County, California, 95252, United States', 'Non-Autonomous', 'healthy', '1.48', '1.82 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}'::jsonb, '{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"1103, Mockingbird Hill, Calaveras County, California, 95252, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.48","duration":"1.82 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE29FC341006', 'P31 Vehicle', '17007, You Bet Road, You Bet, Nevada County, California, 95945, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"17007, You Bet Road, You Bet, Nevada County, California, 95945, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE20FC341007', 'P32 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '268.74', '1.59 days', '', '', '', '{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}'::jsonb, '{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"268.74","duration":"1.59 days","versions":{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE22FC341008', 'P33 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)', '', '', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)', '', '', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno, Fresno County, California, 93725, United States', 'Non-Autonomous', 'healthy', '40.52', '4.06 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno, Fresno County, California, 93725, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"40.52","duration":"4.06 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE24FC341012', 'P37 Vehicle', 'Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '24-09-2026(Location: Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States)', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"24-09-2026(Location: Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE26FC341013', 'P38 Vehicle', 'North Kaweah Avenue, Exeter, Tulare County, California, 93221, United States', 'Non-Autonomous', 'unhealthy', '165.83', '3.37 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-45', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"North Kaweah Avenue, Exeter, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational & RPDO Timeout (drive inhibit)"],"issue_details":[{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-02 10:14:36 and RPDO Timeout (drive inhibit) on 2026-10-02 10:14:27","period":"once","occurrences":"1 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The unit is in pre-operation, so we need to check the Node 1 heartbeat CAN ID to determine whether it is related to the issue. The RPDO Timeout occurred three times, on 29 September, 30 September, and 2 October. We need to monitor future occurrences and increase the severity to High if the issue continues to occur.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-45","distance":"165.83","duration":"3.37 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvaqo8t5i0a8', 'Unit in preoperational & RPDO Timeout (drive inhibit)', 'Unit in preoperational on 2026-10-02 10:14:36 and RPDO Timeout (drive inhibit) on 2026-10-02 10:14:27', 'once', '1 time', 'Motor', 'BVMC', 'Low', 'The unit is in pre-operation, so we need to check the Node 1 heartbeat CAN ID to determine whether it is related to the issue. The RPDO Timeout occurred three times, on 29 September, 30 September, and 2 October. We need to monitor future occurrences and increase the severity to High if the issue continues to occur.', 'PTE', 'Linder Equipment Co. - Troy reported no issues (Bryce Telfer)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse', 0, '{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-02 10:14:36 and RPDO Timeout (drive inhibit) on 2026-10-02 10:14:27","period":"once","occurrences":"1 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The unit is in pre-operation, so we need to check the Node 1 heartbeat CAN ID to determine whether it is related to the issue. The RPDO Timeout occurred three times, on 29 September, 30 September, and 2 October. We need to monitor future occurrences and increase the severity to High if the issue continues to occur.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-02T17:14:04.000Z&to=2026-10-02T17:15:19.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE28FC341014', 'P39 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '20.85', '1.57 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"20.85","duration":"1.57 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE2XFC341015', 'P40 Vehicle', 'County Road 182, Lamb County, Texas, United States', 'Non-Autonomous', 'unhealthy', '365.40', '3.88 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"County Road 182, Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["so many faults are coming BMS, EPAS, anomaly''s and DCDC"],"issue_details":[{"id":"mmvasi9tduvw9","issue":"so many faults are coming BMS, EPAS, anomaly''s and DCDC","description":"Over the last four months, these issues have been observed only in vehicle P40, including BMS faults, EPAS fault levels, and DC-DC faults","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"We still need to check with the customer. If the customer is not experiencing any issues, we need to inspect the VT-Box.","responsible_team":"PTE & Data Scouting","customer_feedback":"Setting Sun Dairy - have not heard back (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"365.40","duration":"3.88 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvasi9tduvw9', 'so many faults are coming BMS, EPAS, anomaly''s and DCDC', 'Over the last four months, these issues have been observed only in vehicle P40, including BMS faults, EPAS fault levels, and DC-DC faults', '4 months', 'Continous', 'Other', 'BVMC', 'Medium', 'We still need to check with the customer. If the customer is not experiencing any issues, we need to inspect the VT-Box.', 'PTE & Data Scouting', 'Setting Sun Dairy - have not heard back (Bryce Telfer)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc', 0, '{"id":"mmvasi9tduvw9","issue":"so many faults are coming BMS, EPAS, anomaly''s and DCDC","description":"Over the last four months, these issues have been observed only in vehicle P40, including BMS faults, EPAS fault levels, and DC-DC faults","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"We still need to check with the customer. If the customer is not experiencing any issues, we need to inspect the VT-Box.","responsible_team":"PTE & Data Scouting","customer_feedback":"Setting Sun Dairy - have not heard back (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE21FC341016', 'P41 Vehicle', '16361, Bonney Road, Monterey County, California, 95076, United States', 'Non-Autonomous', 'healthy', '147.20', '2.63 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"16361, Bonney Road, Monterey County, California, 95076, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"147.20","duration":"2.63 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23FC341017', 'P42 Vehicle (15-12-2025)', 'East Goodfellow Avenue, Fresno County, California, 93657, United States', 'Non-Autonomous', 'healthy', '23.17', '1.33 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle (15-12-2025)","location":"East Goodfellow Avenue, Fresno County, California, 93657, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"23.17","duration":"1.33 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27FC341019', 'P44 Vehicle', '2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States', 'Non-Autonomous', 'unhealthy', '28.13', '15.3 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-61', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["The SOC dropped by 29% within a distance of 9 km."],"issue_details":[{"id":"mmvauzpmzow03","issue":"The SOC dropped by 29% within a distance of 9 km.","description":"The vehicle needs to undergo multiple charge and discharge cycles to investigate the 29% SOC drop over 9 km.","period":"07-10-2026","occurrences":"once","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"Charge the vehicle to 100% SOC and perform multiple charge and discharge cycles to evaluate SOC calibration and determine the cause of the sudden drop.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-61","distance":"28.13","duration":"15.3 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvauzpmzow03', 'The SOC dropped by 29% within a distance of 9 km.', 'The vehicle needs to undergo multiple charge and discharge cycles to investigate the 29% SOC drop over 9 km.', '07-10-2026', 'once', 'BMS', 'BVMC', 'Medium', 'Charge the vehicle to 100% SOC and perform multiple charge and discharge cycles to evaluate SOC calibration and determine the cause of the sudden drop.', 'PTE', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=', 0, '{"id":"mmvauzpmzow03","issue":"The SOC dropped by 29% within a distance of 9 km.","description":"The vehicle needs to undergo multiple charge and discharge cycles to investigate the 29% SOC drop over 9 km.","period":"07-10-2026","occurrences":"once","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"Charge the vehicle to 100% SOC and perform multiple charge and discharge cycles to evaluate SOC calibration and determine the cause of the sudden drop.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-07T17:44:24.000Z&to=2026-10-07T23:53:44.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-NickName=P44%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset="}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE27FC341019'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23FC341020', 'P45 Vehicle', '323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States', 'Non-Autonomous', 'healthy', '2.09', '5 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"2.09","duration":"5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, United States', 'Non-Autonomous', 'healthy', '181.77', '4.67 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"181.77","duration":"4.67 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '01-09-2026', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"01-09-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE20FC341024', 'P49 Vehicle', '774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'healthy', '95.65', '3.69 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"95.65","duration":"3.69 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE2XFC341029', 'P54 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.93', '1.36 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.7.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.93","duration":"1.36 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.7.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE26FC341030', 'P55 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '0', '0', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["3-pin connector"],"issue_details":[{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvax8jqczxxd', '3-pin connector', 'After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.', 'Sept 3rd', '1st time', 'Motor', 'BVMC', 'High', 'The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.', 'Mechanical Team', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc', 0, '{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE28FC341031', 'P56 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.31', '1.08 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.31","duration":"1.08 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE2XFC341032', 'P57 Vehicle', '8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States', 'Non-Autonomous', 'healthy', '97.10', '4.27 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"97.10","duration":"4.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE21FC341033', 'P58 Vehicle', 'Elk Grove Florin Road, Sacramento County, California, 95829, United States', 'Non-Autonomous', 'healthy', '0.59', '3.05 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Elk Grove Florin Road, Sacramento County, California, 95829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.59","duration":"3.05 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE23FC341034', 'P59 Vehicle', '7th Standard Road, Kern County, California, 93263, United States', 'Non-Autonomous', 'healthy', '217.30', '4.72 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"7th Standard Road, Kern County, California, 93263, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"217.30","duration":"4.72 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE29FC341037', 'P62 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '9.98', '3.12 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Gearbox Whirring Sound"],"issue_details":[{"id":"mmvc8djdbqjno","issue":"Gearbox Whirring Sound","description":"a loud noise was observed from the motor/gearbox area. The gear oil was drained for inspection, and metal shavings were found on the drain plug. The team also raised a concern about whether the originally used gearbox oil matches the oil currently used for refilling in the US. Additionally, the charger box mounting bracket was found contacting the front driver-side fender, causing a squeaking noise.","period":"Oct 15","occurrences":"nil","component":"Other","reported_by":"Vehicle Support and Service Engineer","severity":"Medium","rca":"The exact root cause of the motor/gearbox noise and metal shavings has not yet been confirmed. The gearbox oil specification and compatibility with the oil used for refilling in the US need to be verified. The squeaking noise appears to be caused by physical contact between the charger box mounting bracket and the front driver-side fender. Further inspection is required to confirm the root causes and implement corrective actions to prevent recurrence.","responsible_team":"","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"9.98","duration":"3.12 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvc8djdbqjno', 'Gearbox Whirring Sound', 'a loud noise was observed from the motor/gearbox area. The gear oil was drained for inspection, and metal shavings were found on the drain plug. The team also raised a concern about whether the originally used gearbox oil matches the oil currently used for refilling in the US. Additionally, the charger box mounting bracket was found contacting the front driver-side fender, causing a squeaking noise.', 'Oct 15', 'nil', 'Other', 'Vehicle Support and Service Engineer', 'Medium', 'The exact root cause of the motor/gearbox noise and metal shavings has not yet been confirmed. The gearbox oil specification and compatibility with the oil used for refilling in the US need to be verified. The squeaking noise appears to be caused by physical contact between the charger box mounting bracket and the front driver-side fender. Further inspection is required to confirm the root causes and implement corrective actions to prevent recurrence.', '', '', '', 0, '{"id":"mmvc8djdbqjno","issue":"Gearbox Whirring Sound","description":"a loud noise was observed from the motor/gearbox area. The gear oil was drained for inspection, and metal shavings were found on the drain plug. The team also raised a concern about whether the originally used gearbox oil matches the oil currently used for refilling in the US. Additionally, the charger box mounting bracket was found contacting the front driver-side fender, causing a squeaking noise.","period":"Oct 15","occurrences":"nil","component":"Other","reported_by":"Vehicle Support and Service Engineer","severity":"Medium","rca":"The exact root cause of the motor/gearbox noise and metal shavings has not yet been confirmed. The gearbox oil specification and compatibility with the oil used for refilling in the US need to be verified. The squeaking noise appears to be caused by physical contact between the charger box mounting bracket and the front driver-side fender. Further inspection is required to confirm the root causes and implement corrective actions to prevent recurrence.","responsible_team":"","customer_feedback":"","grafana_url":""}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE29FC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE29FC341040', 'P65 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '0.93', '2.43 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:32:55.823Z&to=2026-10-06T19:34:45.684Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}'::jsonb, '{"vin":"MD9GBUE29FC341040","nickname":"P65 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"issue_details":[{"id":"mmvc9eyarniwb","issue":"auxilary_battery_voltage","description":"Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT:\n- 06 Oct 2026: 09:57:17–09:57:23\n- 06 Oct 2026: 12:33:47–12:33:56\n- 13 Oct 2026: 17:15:42–17:15:50\n- 14 Oct 2026: 09:33:37–09:33:41\n- 14 Oct 2026: 11:14:44–11:14:58\n- 14 Oct 2026: 15:34:26–15:34:30\nPlease check these time ranges and share your findings.","period":"6th, 13th & 14th Oct","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"","responsible_team":"PTE","customer_feedback":"It is in the U.S Office(Madera)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:33:47.000Z&to=2026-10-06T19:33:56.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:32:55.823Z&to=2026-10-06T19:34:45.684Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37","distance":"0.93","duration":"2.43 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvc9eyarniwb', 'auxilary_battery_voltage', 'Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT:
- 06 Oct 2026: 09:57:17–09:57:23
- 06 Oct 2026: 12:33:47–12:33:56
- 13 Oct 2026: 17:15:42–17:15:50
- 14 Oct 2026: 09:33:37–09:33:41
- 14 Oct 2026: 11:14:44–11:14:58
- 14 Oct 2026: 15:34:26–15:34:30
Please check these time ranges and share your findings.', '6th, 13th & 14th Oct', 'Continous', 'BMS', 'BVMC', 'Medium', '', 'PTE', 'It is in the U.S Office(Madera)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:33:47.000Z&to=2026-10-06T19:33:56.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=', 0, '{"id":"mmvc9eyarniwb","issue":"auxilary_battery_voltage","description":"Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT:\n- 06 Oct 2026: 09:57:17–09:57:23\n- 06 Oct 2026: 12:33:47–12:33:56\n- 13 Oct 2026: 17:15:42–17:15:50\n- 14 Oct 2026: 09:33:37–09:33:41\n- 14 Oct 2026: 11:14:44–11:14:58\n- 14 Oct 2026: 15:34:26–15:34:30\nPlease check these time ranges and share your findings.","period":"6th, 13th & 14th Oct","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"","responsible_team":"PTE","customer_feedback":"It is in the U.S Office(Madera)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE29FC341040&from=2026-10-06T19:33:47.000Z&to=2026-10-06T19:33:56.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor="}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE29FC341040'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27FC341036', 'P61 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.21', '5.08', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE27FC341036","nickname":"P61 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.21","duration":"5.08","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE26DC341039', 'T10 Vehicle', 'FM 493, Hargill, Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '135.21', '4.96 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-06T19:22:20.000Z&to=2026-10-06T19:22:37.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","auxilary_battery_voltage"],"issue_details":[{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor="},{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT: - 2026-10-02 07:18:07\nto 07:18:10, 2026-10-02 08:47:13 to 08:47:15, 2026-10-06 10:10:20 to 10:10:23, 2026-10-06 11:07:50 to 11:07:54, etc...","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-06T19:22:20.000Z&to=2026-10-06T19:22:37.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37","distance":"135.21","duration":"4.96 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcb24ur00kk', 'High_voltage_isolation_fault', 'The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.', '2 months', 'Contionus', 'BMS', 'BVMC', 'Low', 'Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.', 'PTE', 'US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=', 0, '{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor="}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcbbpkq2v5e', 'auxilary_battery_voltage', 'Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT: - 2026-10-02 07:18:07
to 07:18:10, 2026-10-02 08:47:13 to 08:47:15, 2026-10-06 10:10:20 to 10:10:23, 2026-10-06 11:07:50 to 11:07:54, etc...', '2 months', 'Continous', 'BMS', 'BVMC', 'High', '', 'PTE', 'US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31', 1, '{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"Below are the time ranges during which auxiliary battery issues were observed. I request the PTE team to investigate these time ranges in PDT: - 2026-10-02 07:18:07\nto 07:18:10, 2026-10-02 08:47:13 to 08:47:15, 2026-10-06 10:10:20 to 10:10:23, 2026-10-06 11:07:50 to 11:07:54, etc...","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-10-01T07:00:00.000Z&to=2026-10-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, 78617, United States', 'Non-Autonomous', 'unhealthy', '75.43', '23.2 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["chrgr_highest_voltage"],"issue_details":[{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38","distance":"75.43","duration":"23.2 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcby5xlz2u7', 'chrgr_highest_voltage', 'chrgr_highest_voltage are receving the values like 950', '4 months', 'Continous', 'BMS', 'BVMC', 'Medium', 'This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the service center.', 'PTE', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc', 0, '{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27DC341003', 'US HC Fargo', 'McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States', 'Autonomous', 'unhealthy', 'nil', '10.1 hours', '', '', '', '{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}'::jsonb, '{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS data is coming"],"issue_details":[{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The version details are unavailable because the vehicle is running an older version. We are unable to verify the software versions or diagnose issues related to EPAS, the motor, and DC-DC systems. We can only monitor the BMS data, which limits our ability to perform a complete diagnosis.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"We need to contact the customer to arrange remote access and check whether the update can be performed remotely. Otherwise, a service team member needs to visit the vehicle, or the update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"nil","duration":"10.1 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvccg3jvlrr9', 'Only BMS data is coming', 'The version details are unavailable because the vehicle is running an older version. We are unable to verify the software versions or diagnose issues related to EPAS, the motor, and DC-DC systems. We can only monitor the BMS data, which limits our ability to perform a complete diagnosis.', '4 months', 'Continous', 'Other', 'BVMC', 'Medium', 'We need to contact the customer to arrange remote access and check whether the update can be performed remotely. Otherwise, a service team member needs to visit the vehicle, or the update can be completed when the customer brings the vehicle to the service center.', 'Vehicle Support and Service Engineer', '', '', 0, '{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The version details are unavailable because the vehicle is running an older version. We are unable to verify the software versions or diagnose issues related to EPAS, the motor, and DC-DC systems. We can only monitor the BMS data, which limits our ability to perform a complete diagnosis.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"We need to contact the customer to arrange remote access and check whether the update can be performed remotely. Otherwise, a service team member needs to visit the vehicle, or the update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE27DC341003'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE27DC341048', 'P1 Vehicle', 'Not Available', 'Autonomous', 'inactive', 'Nil', 'Nil', '10-03-2026', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE24DC341069', 'P12 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'healthy', '236.75', '1.13 weeks', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"236.75","duration":"1.13 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE20DC341036', 'T7 Vehicle', 'Not Available', 'Autonomous', 'mdm_issue', 'Nil', '18 hours', '', '15-10-2026', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Not Available","mode":"Autonomous","status":"mdm_issue","issues":["MDM/VT-Box is on but no data"],"issue_details":[{"id":"mmvcor8rx54o2","issue":"MDM/VT-Box is on but no data","description":"VT_Box came online on 15 October 2026, but no data was received","period":"26th sept","occurrences":"Continous","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application lunch or need to check the storage","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"15-10-2026","grafana_url":"","distance":"Nil","duration":"18 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'mmvcor8rx54o2', 'MDM/VT-Box is on but no data', 'VT_Box came online on 15 October 2026, but no data was received', '26th sept', 'Continous', 'MDM', 'BVMC', 'Medium', 'Application lunch or need to check the storage', 'Data Scouting', '', '', 0, '{"id":"mmvcor8rx54o2","issue":"MDM/VT-Box is on but no data","description":"VT_Box came online on 15 October 2026, but no data was received","period":"26th sept","occurrences":"Continous","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"Application lunch or need to check the storage","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":""}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1792260095_01-10-2026_15-10-2026' AND vin = 'MD9GBUE20DC341036'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1792260095_01-10-2026_15-10-2026', 'MD9GBUE25DC341033', 'T6 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'inactive', 'Nil', 'Nil', '02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)', '', '', '{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}'::jsonb, '{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;

-- Report: rpt_1788283003_16-09-2026_30-09-2026 (16-09-2026 to 30-09-2026)
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE28DC341009', 'Green HC(PST)', 'PST', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2024', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27DC341051', 'P2 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-10-2024', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE22DC341054', 'P3 Vehicle (P4 to P3)', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23-12-2025', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE28DC341057', 'P4 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '11-06-2024', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23DC341063', 'P6 Vehicle', 'Ivy Street, Stirling Junction, Chico, Butte County, California, U.S', 'Non-Autonomous', 'unhealthy', '0', '9.70 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341063&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&viewPanel=panel-99', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Bootloader Version":"Missing"}'::jsonb, '{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Ivy Street, Stirling Junction, Chico, Butte County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["BMS_high_voltage_isolation_fault","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341063&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&viewPanel=panel-99","distance":"0","duration":"9.70 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Bootloader Version":"Missing"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'BMS_high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23DC341063'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(PTE)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23DC341063'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE29DC341066', 'P9 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '03-08-2026(only location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)(Data Scouting Team)', '', '', '{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"03-08-2026(only location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)(Data Scouting Team)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE20DC341070', 'P13 Vehicle', 'Yolo Country, California, U.S', 'Non-Autonomous', 'healthy', '129.63', '2.50 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"129.63","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE22DC341071', 'P14 Vehicle', 'Tulare County, California, U.S', 'Non-Autonomous', 'healthy', '77.36', '1.27 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"77.36","duration":"1.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE28DC341074', 'P17 Vehicle', 'Falcon Drive, Madera, Madera County, California, U.S', 'Non-Autonomous', 'healthy', '55.30', '1.56 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Falcon Drive, Madera, Madera County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"55.30","duration":"1.56 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE2XDC341075', 'P18 Vehicle', 'Zerker Road, Shafter, Kern County, California, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '15 mins', '', '19.09.2026(Location: Zerker Road, Shafter, Kern County, California, United States)(Data Scouting Team)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"19.09.2026(Location: Zerker Road, Shafter, Kern County, California, United States)(Data Scouting Team)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23DC341077', 'P20 Vehicle', 'CA 16, Rumsey, Yolo County, California, 95679, United States', 'Non-Autonomous', 'unhealthy', '321.89', '6.06 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341077&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=High_Intres_Id&viewPanel=panel-99', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"CA 16, Rumsey, Yolo County, California, 95679, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas communication fault this may cause issue further need to monitor 16th, 17th, 18th, 22nd, 23rd. 24th & 29th","(need to check with the customer)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341077&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=High_Intres_Id&viewPanel=panel-99","distance":"321.89","duration":"6.06 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Epas communication fault this may cause issue further need to monitor 16th, 17th, 18th, 22nd, 23rd. 24th & 29th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23DC341077'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(need to check with the customer)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23DC341077'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE25DC341078', 'P21 Vehicle', 'University Avenue, University, Riverside County, California, U.S', 'Non-Autonomous', 'healthy', '11.78', '1.69 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"11.78","duration":"1.69 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27DC341079', 'P22 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '02-05-2025 21:47:54', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23DC341080', 'P23 Vehicle', 'Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '78.68', '3.30 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341080&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=High_Intres_Id&viewPanel=panel-99', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341080&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=High_Intres_Id&viewPanel=panel-99","distance":"78.68","duration":"3.30 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(PTE)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27DC341082', 'P25 Vehicle', 'Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '0s', '', 'only location updated on 24.09.2026(Data Scouting)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE27DC341082&from=2026-09-11T07:00:00.000Z&to=2026-09-27T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=auxilary_battery_voltage&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"only location updated on 24.09.2026(Data Scouting)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE27DC341082&from=2026-09-11T07:00:00.000Z&to=2026-09-27T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=auxilary_battery_voltage&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE2XFC341001', 'P26 Vehicle', 'Fresno Avenue, Shafter, Kern County, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE21FC341002', 'P27 Vehicle', 'Elk Grove High School, Fontana Court, Sacramento County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'Last updated 14-09-2026(Location: Elk Grove High School, Fontana Court, Sacramento County, California, U.S)', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"Last updated 14-09-2026(Location: Elk Grove High School, Fontana Court, Sacramento County, California, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23FC341003', 'P28 Vehicle', 'Northwestern New Mexico, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '2026-09-15 08:46:24(MDM is on but no data location: Rio Arriba County, New Mexico, U.S)(data Scouting Team)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Northwestern New Mexico, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"2026-09-15 08:46:24(MDM is on but no data location: Rio Arriba County, New Mexico, U.S)(data Scouting Team)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE25FC341004', 'P29 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '243.82', '2.78 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"243.82","duration":"2.78 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27FC341005', 'P30 Vehicle', 'Mockingbird Hill, Calaveras County, California, U.S', 'Non-Autonomous', 'healthy', '13.57', '57.7 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2","MCU 2 Firmware":"nil"}'::jsonb, '{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"13.57","duration":"57.7 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2","MCU 2 Firmware":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE29FC341006', 'P31 Vehicle', 'You Bet, Nevada County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '14-06-2026 (You Bet, Nevada County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE20FC341007', 'P32 Vehicle', 'County Road 1005B, Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '191.90', '2.40 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"191.90","duration":"2.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE22FC341008', 'P33 Vehicle', 'Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'MDM is on but no data 2026-09-09 (Location: Batesville, Zavala County, Texas, 78829, U.S)(Data Scouting Team)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-118', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"MDM is on but no data 2026-09-09 (Location: Batesville, Zavala County, Texas, 78829, U.S)(Data Scouting Team)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-118","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, California, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno County, California, United States', 'Non-Autonomous', 'healthy', '12.48', '52.7 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}'::jsonb, '{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.48","duration":"52.7 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE22FC341011', 'P36 Vehicle', 'San Francisco Peninsula, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2025 (Location: San Francisco Peninsula, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE24FC341012', 'P37 Vehicle', 'Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States', 'Non-Autonomous', 'healthy', '0.45', '2.29 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.45","duration":"2.29 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE26FC341013', 'P38 Vehicle', 'Rocky Hill School, 313 Sequoia Drive, Exeter, Tulare County, California, 93221, United States', 'Non-Autonomous', 'unhealthy', '178.28', '5.40 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-24T07:00:00.000Z&to=2026-10-03T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-85', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"Rocky Hill School, 313 Sequoia Drive, Exeter, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational on 24th","RPDO Timeout (drive inhibit) on 29th & 30","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-24T07:00:00.000Z&to=2026-10-03T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341013&var-NickName=P38%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-85","distance":"178.28","duration":"5.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Unit in preoperational on 24th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'RPDO Timeout (drive inhibit) on 29th & 30', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', '(PTE)', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE28FC341014', 'P39 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '21.58', '2.58 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"21.58","duration":"2.58 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE2XFC341015', 'P40 Vehicle', 'Lamb County, Texas, United States', 'Non-Autonomous', 'unhealthy', '675.72', '1.08 weeks', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS, anomaly''s and DCDC","(PTE & Data Scouting)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"675.72","duration":"1.08 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_faults', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'so many faults are coming BMS, EPAS, anomaly''s and DCDC', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', '(PTE & Data Scouting)', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE21FC341016', 'P41 Vehicle', 'Bonney Road, Monterey County, California, U.S', 'Non-Autonomous', 'unhealthy', '140.36', '3.32 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341016&var-NickName=P41%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-82', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 2 times(28th & 30)","DSP Control Fault on 23rd","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341016&var-NickName=P41%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-82","distance":"140.36","duration":"3.32 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'EPAS Level 2 & Level 1 Faults: 2 times(28th & 30)', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'DSP Control Fault on 23rd', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', '(PTE)', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23FC341017', 'P42 Vehicle', 'East American Avenue, Fresno County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27FC341019', 'P44 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'healthy', '14.80', '27.9 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"14.80","duration":"27.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23FC341020', 'P45 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '27.08.2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"27.08.2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, U.S', 'Non-Autonomous', 'healthy', '70.11', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"70.11","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'MDM online on 09-07-2026', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"MDM online on 09-07-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE29FC341023', 'P48 Vehicle', 'San Francisco Bay Area in California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '19-12-2025 (Location: San Francisco Bay Area in California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE2XFC341029', 'P54 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '25.45', '1.65 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"25.45","duration":"1.65 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE26FC341030', 'P55 Vehicle', 'Sacramento County, California, United States', 'Non-Autonomous', 'unhealthy', '1.99', 'nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-18T07:00:00.000Z&to=2026-09-19T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341030&var-NickName=P55%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-85', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"Sacramento County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 18th","DSP Encoder Fault","(Need to check with the customer)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-18T07:00:00.000Z&to=2026-09-19T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26FC341030&var-NickName=P55%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-85","distance":"1.99","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'SinCos Tracking Warning on 18th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'DSP Encoder Fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', '(Need to check with the customer)', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE28FC341031', 'P56 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0', '10.7 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"10.7 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE2XFC341032', 'P57 Vehicle', 'Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States', 'Non-Autonomous', 'healthy', '154.26', '3.46 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"154.26","duration":"3.46 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE21FC341033', 'P58 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '5 hours', '', 'MDM is on 23rd but no data(Data Scouting Team)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-09-25T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341033&var-NickName=P58%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7', '{"VT_BOX Version":"1.2.2","VCU Firmware":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"MDM is on 23rd but no data(Data Scouting Team)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-09-25T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341033&var-NickName=P58%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"Nil","duration":"5 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE23FC341034', 'P59 Vehicle', 'Sullivan Road, Kern County, California, United States', 'Non-Autonomous', 'unhealthy', '212.87', '5.21 days', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"Sullivan Road, Kern County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-16T07:00:00.000Z&to=2026-10-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"212.87","duration":"5.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(PTE)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE26DC341039', 'T10 Vehicle', 'Hargill, Hidalgo County, Texas, U.S', 'Non-Autonomous', 'unhealthy', '120.37', '5.62 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-21T07:00:00.000Z&to=2026-09-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}'::jsonb, '{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","epas on 21st, 23rd, 24th & 29th sept level 1 & 2 faults","(Need to Check with Customer)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-21T07:00:00.000Z&to=2026-09-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"120.37","duration":"5.62 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'epas on 21st, 23rd, 24th & 29th sept level 1 & 2 faults', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i4', '(Need to Check with Customer)', '', '', '', '', '', '', '', '', '', '', 3, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, United States', 'Non-Autonomous', 'healthy', '102.70', '4.66 days', '', '', '', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"102.70","duration":"4.66 days","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE20FC341024', 'P49 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '36.93', 'nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.93","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE22DC341006', 'US HC Yuba', 'McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States', 'Autonomous', 'unhealthy', 'NIL', '18.02 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-21T07:00:00.000Z&to=2026-09-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22DC341006&var-NickName=US%20HC%20Yuba&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-61', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming","(Need to update the firmware)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-21T07:00:00.000Z&to=2026-09-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22DC341006&var-NickName=US%20HC%20Yuba&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-61","distance":"NIL","duration":"18.02 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Only BMS Data coming', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE22DC341006'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(Need to update the firmware)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE22DC341006'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27DC341003', 'US HC Fargo', 'Not Available', 'Autonomous', 'inactive', 'Nil', 'Nil', '12-09-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE27DC341048', 'P1 Vehicle', '671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa', 'Autonomous', 'inactive', 'Nil', 'Nil', '10-03-2026', '', '', '{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE24DC341069', 'P12 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'unhealthy', '22.76', '2.10 week', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-09-26T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE24DC341069&var-NickName=P12%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"unhealthy","issues":["BMS_redundant_power_supply_fault","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-23T07:00:00.000Z&to=2026-09-26T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE24DC341069&var-NickName=P12%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-80","distance":"22.76","duration":"2.10 week","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'BMS_redundant_power_supply_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE24DC341069'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(PTE)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE24DC341069'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE25DC341033', 'T6 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, U.S', 'Autonomous', 'healthy', '1.18', '13.5 hours', '', '', '', '{"VT_BOX Version":"1.2.2-VT_BOX","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.18","duration":"13.5 hours","versions":{"VT_BOX Version":"1.2.2-VT_BOX","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE21DC341076', 'P19 Vehicle', 'Falcon Drive, Madera, Madera County, California, United States', 'Non-Autonomous', 'unhealthy', '71.87', '1.23 weeks', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-09-24T07:00:00.000Z&to=2026-09-25T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21DC341076&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1%20distance_travelled&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2&viewPanel=panel-130', '{"VT_BOX Version":"1.2.4_location_database_clean-VT_BOX","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["DSP Overvoltage & Line Contactor welded on 24th","(PTE)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-09-24T07:00:00.000Z&to=2026-09-25T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21DC341076&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1%20distance_travelled&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2&viewPanel=panel-130","distance":"71.87","duration":"1.23 weeks","versions":{"VT_BOX Version":"1.2.4_location_database_clean-VT_BOX","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'DSP Overvoltage & Line Contactor welded on 24th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE21DC341076'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', '(PTE)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE21DC341076'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE20DC341036', 'T7 Vehicle', 'Travis County, Texas, 78617, United States', 'Autonomous', 'healthy', '33.09', '4.62 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"33.09","duration":"4.62 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE22DC341037', 'T8 Vehicle', 'West Cerini Avenue, Fresno County, California, 93656, United States', 'Autonomous', 'inactive', 'Nil', 'Nil', '14-08-2026 (Location: West Cerini Avenue, Fresno County, California, 93656, United States)', '', '', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"14-08-2026 (Location: West Cerini Avenue, Fresno County, California, 93656, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE24DC341038', 'T9 Vehicle(HMI)', 'Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia', 'Autonomous', 'unhealthy', '0', 'nil', '', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"unhealthy","issues":["no data in HMI or AVC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'no data in HMI or AVC', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283003_16-09-2026_30-09-2026' AND vin = 'MD9GBUE24DC341038'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283003_16-09-2026_30-09-2026', 'MD9GBUE29FC341037', 'P62 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.69', '7.03 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.69","duration":"7.03 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;

-- Report: rpt_1788283002_01-09-2026_15-09-2026 (01-09-2026 to 15-09-2026)
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE28DC341009', 'Green HC(PST)', 'PST', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2024', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27DC341051', 'P2 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-10-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE22DC341054', 'P3 Vehicle (P4 to P3)', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23-12-2025', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE28DC341057', 'P4 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '11-06-2024', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23DC341063', 'P6 Vehicle', 'Ivy Street, Stirling Junction, Chico, Butte County, California, U.S', 'Non-Autonomous', 'healthy', '0.23', 'nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Bootloader Version":"Missing"}'::jsonb, '{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Ivy Street, Stirling Junction, Chico, Butte County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.23","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Bootloader Version":"Missing"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE29DC341066', 'P9 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '03-08-2026(only location came)', '', '', '{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"03-08-2026(only location came)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE20DC341070', 'P13 Vehicle', 'Yolo Country, California, U.S', 'Non-Autonomous', 'healthy', '124', '3.79 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"124","duration":"3.79 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE22DC341071', 'P14 Vehicle', 'Tulare County, California, U.S', 'Non-Autonomous', 'healthy', '112.91', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"112.91","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE28DC341074', 'P17 Vehicle', 'Falcon Drive, Madera, Madera County, California, U.S', 'Non-Autonomous', 'healthy', '0.32', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Falcon Drive, Madera, Madera County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.32","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE2XDC341075', 'P18 Vehicle', 'Zerker Road, Shafter, Kern County, California, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '15 mins', '', '26.08.2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"26.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23DC341077', 'P20 Vehicle', 'Harrison Street, Guinda, Yolo County, California, U.S', 'Non-Autonomous', 'healthy', '280.90', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"Harrison Street, Guinda, Yolo County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"280.90","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE25DC341078', 'P21 Vehicle', 'University Avenue, University, Riverside County, California, U.S', 'Non-Autonomous', 'healthy', '29.76', '0', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"29.76","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27DC341079', 'P22 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '02-05-2025 21:47:54', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23DC341080', 'P23 Vehicle', 'Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '84.50', '0', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341080&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-98', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE23DC341080&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-98","distance":"84.50","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27DC341082', 'P25 Vehicle', 'Near Greenville, Hunt County, Texas, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'Location on 12.08.2026 (Near Greenville, Hunt County, Texas, USA)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Near Greenville, Hunt County, Texas, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"Location on 12.08.2026 (Near Greenville, Hunt County, Texas, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE2XFC341001', 'P26 Vehicle', 'Fresno Avenue, Shafter, Kern County, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE21FC341002', 'P27 Vehicle', 'Elk Grove High School, Fontana Court, Sacramento County, California, U.S', 'Non-Autonomous', 'healthy', '30.99', '0s', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"30.99","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23FC341003', 'P28 Vehicle', 'Rio Arriba County, New Mexico, U.S', 'Non-Autonomous', 'mdm_issue', 'Nil', '13 mins', '', '2026-09-15 08:46:24', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Rio Arriba County, New Mexico, U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"2026-09-15 08:46:24","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"13 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE25FC341004', 'P29 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '67.34', '0', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"67.34","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27FC341005', 'P30 Vehicle', 'Mockingbird Hill, Calaveras County, California, U.S', 'Non-Autonomous', 'unhealthy', '20.20', '5.67 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE27FC341005&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-116', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2","MCU 2 Firmware":"nil"}'::jsonb, '{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["MCU 2 Firmware missing"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE27FC341005&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-116","distance":"20.20","duration":"5.67 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2","MCU 2 Firmware":"nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'MCU 2 Firmware missing', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE27FC341005'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE29FC341006', 'P31 Vehicle', 'You Bet, Nevada County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '14-06-2026 (You Bet, Nevada County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE20FC341007', 'P32 Vehicle', 'County Road 1005B, Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'unhealthy', '111.07', '0', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-15T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20FC341007&var-NickName=P32%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-86', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["fault enumeration level 3 on 01th, 02nd & 15th","DSP Powerframe Fault on 15th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-15T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20FC341007&var-NickName=P32%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-86","distance":"111.07","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'fault enumeration level 3 on 01th, 02nd & 15th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE20FC341007'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'DSP Powerframe Fault on 15th', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE20FC341007'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE22FC341008', 'P33 Vehicle', 'Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '20 mins', '', '2026-09-09 (Location: Batesville, Zavala County, Texas, 78829, U.S)', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-118', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"2026-09-09 (Location: Batesville, Zavala County, Texas, 78829, U.S)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-118","distance":"Nil","duration":"20 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, California, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno County, California, United States', 'Non-Autonomous', 'healthy', '34.10', '2.35 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}'::jsonb, '{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"34.10","duration":"2.35 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE22FC341011', 'P36 Vehicle', 'San Francisco Peninsula, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2025 (Location: San Francisco Peninsula, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE24FC341012', 'P37 Vehicle', 'Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States', 'Non-Autonomous', 'healthy', '0', 'Nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE24FC341012&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE24FC341012&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-37","distance":"0","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE26FC341013', 'P38 Vehicle', 'San Joaquin Valley, Central California, USA', 'Non-Autonomous', 'healthy', '145.27', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"San Joaquin Valley, Central California, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"145.27","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE28FC341014', 'P39 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '16.66', '3.65 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"16.66","duration":"3.65 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE2XFC341015', 'P40 Vehicle', 'Lamb County, Texas, United States', 'Non-Autonomous', 'unhealthy', '1398.86', '1.39 weeks', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341015&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS, anomaly''s and DCDC"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341015&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"1398.86","duration":"1.39 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_faults', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'so many faults are coming BMS, EPAS, anomaly''s and DCDC', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE21FC341016', 'P41 Vehicle', 'Bonney Road, Monterey County, California, U.S', 'Non-Autonomous', 'unhealthy', '162.78', 'nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21FC341016&from=2026-08-26T19:31:16.000Z&to=2026-08-26T19:38:16.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=12Vconv_Outputcurrent&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)","Motor in thermal cutback on 07th,","RPDO Timeout (drive inhibit) on 11th","DSP Overvoltage, High Capacitor Cut, Line Contactor welded"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21FC341016&from=2026-08-26T19:31:16.000Z&to=2026-08-26T19:38:16.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=12Vconv_Outputcurrent&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"162.78","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'Motor in thermal cutback on 07th,', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'RPDO Timeout (drive inhibit) on 11th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i4', 'DSP Overvoltage, High Capacitor Cut, Line Contactor welded', '', '', '', '', '', '', '', '', '', '', 3, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23FC341017', 'P42 Vehicle', 'East American Avenue, Fresno County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27FC341019', 'P44 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'unhealthy', '15.81', 'nil', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE27FC341019&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"15.81","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE27FC341019'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23FC341020', 'P45 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'healthy', '0.23', '0s', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.23","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, U.S', 'Non-Autonomous', 'healthy', '70.11', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"70.11","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', 'MDM online on 09-07-2026', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"MDM online on 09-07-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE29FC341023', 'P48 Vehicle', 'San Francisco Bay Area in California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '19-12-2025 (Location: San Francisco Bay Area in California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE2XFC341029', 'P54 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '159.67', '17.7 hours', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341029&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxiliary battery"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341029&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"159.67","duration":"17.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxiliary battery', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE2XFC341029'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE26FC341030', 'P55 Vehicle', '3307, Golden State Boulevard, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '1.99', 'nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"3307, Golden State Boulevard, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 3rd"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"1.99","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'SinCos Tracking Warning on 3rd', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE28FC341031', 'P56 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '1.86', 'Nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE28FC341031&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["DCDC_input_undervoltage_alarm","BMS_redundant_power_supply_fault"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE28FC341031&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"1.86","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'DCDC_input_undervoltage_alarm', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE28FC341031'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'BMS_redundant_power_supply_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE28FC341031'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE2XFC341032', 'P57 Vehicle', 'Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States', 'Non-Autonomous', 'healthy', '0.86', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"Alvarado High School, 1301, South Parkway Drive, Alvarado, Johnson County, Texas, 76009, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.86","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE21FC341033', 'P58 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '2.80', 'Nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"2.80","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.6.0","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE23FC341034', 'P59 Vehicle', '22579, Snow Road, Kern County, California, 93314, United States', 'Non-Autonomous', 'unhealthy', '152.09', '2.21 days', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"152.09","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE26DC341039', 'T10 Vehicle', 'Hargill, Hidalgo County, Texas, U.S', 'Non-Autonomous', 'unhealthy', '112.43', '2.21 days', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}'::jsonb, '{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","DSP control Fault on 5th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"112.43","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'DSP control Fault on 5th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, United States', 'Non-Autonomous', 'healthy', '62.46', 'ni', '', '', '', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"62.46","duration":"ni","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE20FC341024', 'P49 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '36.93', 'nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.93","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE22DC341006', 'US HC Yuba', 'McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States', 'Autonomous', 'unhealthy', 'NIL', '10.9 hours', '', '', '', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"NIL","duration":"10.9 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Only BMS Data coming', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE22DC341006'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27DC341003', 'US HC Fargo', 'Not Available', 'Autonomous', 'inactive', 'Nil', 'Nil', '12-09-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE27DC341048', 'P1 Vehicle', '671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa', 'Autonomous', 'inactive', 'Nil', 'Nil', '10-03-2026', '', NULL, '{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE24DC341069', 'P12 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'unhealthy', '55.23', 'nil', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE24DC341069&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"unhealthy","issues":["Motor in thermal cutback on 01 & 15th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE24DC341069&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2","distance":"55.23","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Motor in thermal cutback on 01 & 15th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE24DC341069'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE25DC341033', 'T6 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, U.S', 'Autonomous', 'healthy', '4.95', 'nil', '', '', '', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, U.S","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"4.95","duration":"nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE28FC341028', 'P53 Vehicle', 'IST', 'Autonomous', 'unhealthy', '5.21', 'Nil', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28FC341028&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341028","nickname":"P53 Vehicle","location":"IST","mode":"Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-09-01T07:00:00.000Z&to=2026-09-16T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28FC341028&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-31","distance":"5.21","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE28FC341028'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE21DC341076', 'P19 Vehicle', 'Falcon Drive, Madera, Madera County, California, United States', 'Non-Autonomous', 'healthy', '7.35', 'nil', '', '', '', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"7.35","duration":"nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE20DC341036', 'T7 Vehicle', 'Travis County, Texas, 78617, United States', 'Autonomous', 'healthy', '14.07', 'nil', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"14.07","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE22DC341037', 'T8 Vehicle', 'West Cerini Avenue, Fresno County, California, 93656, United States', 'Autonomous', 'inactive', 'Nil', 'Nil', '14-08-2026 (Location: West Cerini Avenue, Fresno County, California, 93656, United States)', '', '', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"14-08-2026 (Location: West Cerini Avenue, Fresno County, California, 93656, United States)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283002_01-09-2026_15-09-2026', 'MD9GBUE24DC341038', 'T9 Vehicle(HMI)', 'Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia', 'Autonomous', 'unhealthy', '0', 'nil', '', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"unhealthy","issues":["no data in HMI or AVC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'no data in HMI or AVC', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283002_01-09-2026_15-09-2026' AND vin = 'MD9GBUE24DC341038'
ON CONFLICT DO NOTHING;

-- Report: rpt_1788283001_01-08-2026_31-08-2026 (01-08-2026 to 31-08-2026)
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE28DC341009', 'Green HC(PST)', 'PST', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2024', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27DC341051', 'P2 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-10-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22DC341054', 'P3 Vehicle (P4 to P3)', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23-12-2025', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE28DC341057', 'P4 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '11-06-2024', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23DC341063', 'P6 Vehicle', 'Yolo–Colusa County, USA', 'Non-Autonomous', 'unhealthy', '35.99', '1.96 weeks', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Yolo–Colusa County, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["BMS_High_voltage_isolation"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"35.99","duration":"1.96 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'BMS_High_voltage_isolation', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE23DC341063'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE29DC341066', 'P9 Vehicle', 'approximately North Texas, USA', 'Non-Autonomous', 'mdm_issue', 'Nil', '2 hours gap', '', 'location data came 03.08.2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52', '{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"approximately North Texas, USA","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"location data came 03.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"2 hours gap","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22DC341068', 'P11 Vehicle(IST)', 'Zoho Corporation, Tamil Nadu, India', 'Non-Autonomous', 'healthy', '154.86', '1.48 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.1.0","Mew Bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341068","nickname":"P11 Vehicle(IST)","location":"Zoho Corporation, Tamil Nadu, India","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"154.86","duration":"1.48 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.1.0","Mew Bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE20DC341070', 'P13 Vehicle', 'Yolo Country, California, U.S', 'Non-Autonomous', 'healthy', '294.61', '3.79 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"294.61","duration":"3.79 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22DC341071', 'P14 Vehicle', 'Tulare County, California, U.S', 'Non-Autonomous', 'healthy', '168.49', '1.11 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"168.49","duration":"1.11 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE28DC341074', 'P17 Vehicle', 'Mountain View, California, USA', 'Non-Autonomous', 'healthy', '8.71', '4.10 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Mountain View, California, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"8.71","duration":"4.10 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE2XDC341075', 'P18 Vehicle', 'Zerker Road, Shafter, Kern County, California, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '15 mins', '', '26.08.2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"26.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE2XDC341075&from=2026-08-07T11:55:21.318Z&to=2026-08-07T18:13:22.206Z&timezone=browser&var-Measurement1=vehicle_location&var-Measurement2=vehicle_location&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23DC341077', 'P20 Vehicle', 'Yolo Country, California, U.S', 'Non-Autonomous', 'unhealthy', '392.32', '3.68 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-09T18:30:00.000Z&to=2026-08-10T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE23DC341077&var-NickName=P20%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-85', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["Motor 2 Error : Very Severe | Encoder Fault on 10th Aug","EPAS_fault_enumeration - 3rd(2 times), 11th(1 time), 12th(2 time), 14th(3rd time), 19th, 24th, 25th, 26th & 27th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-09T18:30:00.000Z&to=2026-08-10T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE23DC341077&var-NickName=P20%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-85","distance":"392.32","duration":"3.68 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Motor 2 Error : Very Severe | Encoder Fault on 10th Aug', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE23DC341077'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'EPAS_fault_enumeration - 3rd(2 times), 11th(1 time), 12th(2 time), 14th(3rd time), 19th, 24th, 25th, 26th & 27th', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE23DC341077'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE25DC341078', 'P21 Vehicle', 'University Avenue, University, Riverside County, California, U.S', 'Non-Autonomous', 'healthy', '169.77', '0', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"169.77","duration":"0","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27DC341079', 'P22 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '02-05-2025 21:47:54', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23DC341080', 'P23 Vehicle', 'Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '254.84', '5.21 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-2d&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-2d&to=now&timezone=browser&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"254.84","duration":"5.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27DC341082', 'P25 Vehicle', 'Near Greenville, Hunt County, Texas, USA', 'Non-Autonomous', 'mdm_issue', 'Nil', 'nil', '', 'Location on 12.08.2026', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Near Greenville, Hunt County, Texas, USA","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"Location on 12.08.2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-19T18:30:00.000Z&to=2026-08-20T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27DC341082&var-NickName=P25%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE2XFC341001', 'P26 Vehicle', 'Fresno Avenue, Shafter, Kern County, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE21FC341002', 'P27 Vehicle', 'Elk Grove High School, Fontana Court, Sacramento County, California, U.S', 'Non-Autonomous', 'healthy', '0.37', '0s', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.37","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23FC341003', 'P28 Vehicle', 'Rio Arriba County, New Mexico, U.S', 'Non-Autonomous', 'mdm_issue', 'Nil', '13 mins', '', '09-08-2026 17:24:14', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-07-09T07:00:00.000Z&to=2026-07-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Rio Arriba County, New Mexico, U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"09-08-2026 17:24:14","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-07-09T07:00:00.000Z&to=2026-07-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"13 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE25FC341004', 'P29 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'unhealthy', '133.81', '1.33 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE25FC341004&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["epas level 1 on 05th & 12th, 13th, 17th, 20th to 22nd, 24th & 27th Total 18"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE25FC341004&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id","distance":"133.81","duration":"1.33 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'epas level 1 on 05th & 12th, 13th, 17th, 20th to 22nd, 24th & 27th Total 18', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE25FC341004'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27FC341005', 'P30 Vehicle', 'Mockingbird Hill, Calaveras County, California, U.S', 'Non-Autonomous', 'unhealthy', '20.20', '5.67 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-23T18:30:00.000Z&to=2026-08-24T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27FC341005&var-NickName=P30%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas fault on 23rd"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-23T18:30:00.000Z&to=2026-08-24T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE27FC341005&var-NickName=P30%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"20.20","duration":"5.67 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Epas fault on 23rd', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE27FC341005'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE29FC341006', 'P31 Vehicle', 'You Bet, Nevada County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '14-06-2026 (You Bet, Nevada County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE20FC341007', 'P32 Vehicle', 'County Road 1005B, Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'unhealthy', '226.46', '1.17 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE20FC341007&from=2026-08-11T18:30:00.000Z&to=2026-08-14T18:29:59.000Z&timezone=browser&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["fault enumeration level 3 & 1 13th, 1&2 on 27th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE20FC341007&from=2026-08-11T18:30:00.000Z&to=2026-08-14T18:29:59.000Z&timezone=browser&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"226.46","duration":"1.17 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'fault enumeration level 3 & 1 13th, 1&2 on 27th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE20FC341007'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22FC341008', 'P33 Vehicle', 'Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '18.08.2026  (Location: Batesville, Zavala County, Texas, 78829, United States)', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&viewPanel=panel-118', '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"18.08.2026  (Location: Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE22FC341008&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&viewPanel=panel-118","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, California, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno County, California, United States', 'Non-Autonomous', 'healthy', '58.40', '2.35 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}'::jsonb, '{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"58.40","duration":"2.35 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22FC341011', 'P36 Vehicle', 'San Francisco Peninsula, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2025 (Location: San Francisco Peninsula, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE24FC341012', 'P37 Vehicle', 'Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States', 'Non-Autonomous', 'healthy', '0.98', '2.72 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.98","duration":"2.72 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE26FC341013', 'P38 Vehicle', 'San Joaquin Valley, Central California, USA', 'Non-Autonomous', 'unhealthy', '142.85', '2.75 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-08-17T21:47:00.000Z&to=2026-08-17T21:59:32.009Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=DC_DC_Conv_OutputCurrent&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=12Vconv_Outputcurrent&var-Field2=12Vconv_Outputcurrent', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"San Joaquin Valley, Central California, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 13th","Epas level 1 fault on 17th & 24th (3 times)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-08-17T21:47:00.000Z&to=2026-08-17T21:59:32.009Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=DC_DC_Conv_OutputCurrent&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-FIELD1=12Vconv_Outputcurrent&var-Field2=12Vconv_Outputcurrent","distance":"142.85","duration":"2.75 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'RPDO Timeout (drive inhibit) on 13th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'Epas level 1 fault on 17th & 24th (3 times)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE28FC341014', 'P39 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '44.11', '3.65 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"44.11","duration":"3.65 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE2XFC341015', 'P40 Vehicle', 'Lamb County, Texas, United States', 'Non-Autonomous', 'unhealthy', '1398.86', '1.39 weeks', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS and DCDC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1398.86","duration":"1.39 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_faults', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'so many faults are coming BMS, EPAS and DCDC', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE21FC341016', 'P41 Vehicle', 'Bonney Road, Monterey County, California, U.S', 'Non-Autonomous', 'unhealthy', '308.68', '4.06 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21FC341016&from=2026-08-26T19:31:16.000Z&to=2026-08-26T19:38:16.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=12Vconv_Outputcurrent&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)","Motor in thermal cutback on 07th,","RPDO Timeout (drive inhibit) on 11th","DSP Overvoltage, High Capacitor Cut, Line Contactor welded"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21FC341016&from=2026-08-26T19:31:16.000Z&to=2026-08-26T19:38:16.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=12Vconv_Outputcurrent&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=FEF9&var-mc2_checksum=70A0&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"308.68","duration":"4.06 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'Motor in thermal cutback on 07th,', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'RPDO Timeout (drive inhibit) on 11th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i4', 'DSP Overvoltage, High Capacitor Cut, Line Contactor welded', '', '', '', '', '', '', '', '', '', '', 3, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23FC341017', 'P42 Vehicle', 'East American Avenue, Fresno County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27FC341019', 'P44 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'healthy', '30.86', '59.1 mins', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"30.86","duration":"59.1 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23FC341020', 'P45 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'healthy', '0.23', '0s', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.23","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, U.S', 'Non-Autonomous', 'healthy', '172.75', '2.16 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"172.75","duration":"2.16 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', 'mdm_issue', 'Nil', '15 mins', '', 'MDM online on 09-07-2026', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"MDM online on 09-07-2026","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE29FC341023', 'P48 Vehicle', 'San Francisco Bay Area in California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '19-12-2025 (Location: San Francisco Bay Area in California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE2XFC341029', 'P54 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '42.24', '17.7 hours', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341029&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["auxiliary battery - 6, 7, 8, 10, 12 &17 dates"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XFC341029&var-max_amp_hours=210&var-bms_profile_checksum=ADE2&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"42.24","duration":"17.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxiliary battery - 6, 7, 8, 10, 12 &17 dates', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE2XFC341029'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE26FC341030', 'P55 Vehicle', '3307, Golden State Boulevard, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'unhealthy', '42.24', '9.27 hours', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-01T18:30:00.000Z&to=2026-08-02T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE26FC341030&var-NickName=P55%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-85', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"3307, Golden State Boulevard, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 2nd & 5th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-08-01T18:30:00.000Z&to=2026-08-02T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE26FC341030&var-NickName=P55%20Vehicle&var-Measurement1=version_details&var-Measurement2=bms_battery_usage&var-FIELD1=BMS_Firmware_Version&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-85","distance":"42.24","duration":"9.27 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'SinCos Tracking Warning on 2nd & 5th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE28FC341031', 'P56 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.28', '4.20 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.28","duration":"4.20 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE2XFC341032', 'P57 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.89', '4.82 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.89","duration":"4.82 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE21FC341033', 'P58 Vehicle', '2934, Falcon Drive, Madera, Madera County, California, 93637, United States', 'Non-Autonomous', 'healthy', '0.29', '12.6 hours', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.29","duration":"12.6 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE23FC341034', 'P59 Vehicle', '22579, Snow Road, Kern County, California, 93314, United States', 'Non-Autonomous', 'unhealthy', '156.98', '2.21 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&from=2026-08-04T07:00:00.000Z&to=2026-08-05T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["IO can''t init on 4th","RPDO Timeout (drive inhibit)"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&from=2026-08-04T07:00:00.000Z&to=2026-08-05T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341034&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2","distance":"156.98","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'IO can''t init on 4th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'RPDO Timeout (drive inhibit)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE26DC341039', 'T10 Vehicle', 'Hargill, Hidalgo County, Texas, U.S', 'Non-Autonomous', 'unhealthy', '289.55', '2.21 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=DC_DC_Conv_OutputCurrent&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=12Vconv_Outputcurrent&var-Field2=12Vconv_Outputcurrent', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}'::jsonb, '{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","Epas Level 2 & 1 on 4th & 11th","DSP control Fault on 1st, 7th & 20th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=DC_DC_Conv_OutputCurrent&var-Measurement2=DC_DC_Conv_OutputCurrent&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=12Vconv_Outputcurrent&var-Field2=12Vconv_Outputcurrent","distance":"289.55","duration":"2.21 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'Epas Level 2 & 1 on 4th & 11th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i4', 'DSP control Fault on 1st, 7th & 20th', '', '', '', '', '', '', '', '', '', '', 3, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, United States', 'Non-Autonomous', 'unhealthy', '223.44', '1.26 weeks', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341042&from=2026-08-11T07:00:00.000Z&to=2026-08-26T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_cell_values&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=cell_open_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas level 2 on 04th, 12th & 15th","Epas level 1 on 04th, 15th & 23rd","Epas level 3 on 04th, 06th, 07th, 12th & 15th"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341042&from=2026-08-11T07:00:00.000Z&to=2026-08-26T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_cell_values&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=cell_open_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=&var-mc2_checksum=&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28","distance":"223.44","duration":"1.26 weeks","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Epas level 2 on 04th, 12th & 15th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'Epas level 1 on 04th, 15th & 23rd', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'Epas level 3 on 04th, 06th, 07th, 12th & 15th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE20FC341024', 'P49 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '69.69', '2.90 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"69.69","duration":"2.90 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22DC341006', 'US HC Yuba', 'McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States', 'Autonomous', 'unhealthy', 'NIL', '10.9 hours', '', '', '', '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"NIL","duration":"10.9 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Only BMS Data coming', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE22DC341006'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27DC341003', 'US HC Fargo', 'Not Available', 'Autonomous', 'inactive', 'Nil', 'Nil', '12-09-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE27DC341048', 'P1 Vehicle', '671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa', 'Autonomous', 'inactive', 'Nil', 'Nil', '10-03-2026', '', NULL, '{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE24DC341069', 'P12 Vehicle', 'South Willow Street, Ravenna, Fannin County, Texas, 75476, United States', 'Autonomous', 'unhealthy', '98.27', '1.57 weeks', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE24DC341069&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"unhealthy","issues":["Motor in thermal cutback on 8th, 20th, 21th & 22nd"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE24DC341069&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id","distance":"98.27","duration":"1.57 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Motor in thermal cutback on 8th, 20th, 21th & 22nd', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE24DC341069'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE25DC341033', 'T6 Vehicle', 'Hargill, Hidalgo County, Texa, U.S', 'Autonomous', 'unhealthy', '160.30', '1.36 week', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-08-02T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"Hargill, Hidalgo County, Texa, U.S","mode":"Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 1th aug"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsAVCV2/bvmc-team-avc-data-dashboard-developer?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-08-02T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id&var-torque_or_speed_mode=Speed&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-bms_profile_checksum=0xADE2&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29","distance":"160.30","duration":"1.36 week","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'RPDO Timeout (drive inhibit) on 1th aug', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE25DC341033'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE28FC341028', 'P53 Vehicle', 'IST', 'Autonomous', 'healthy', '10.65', '4.02 days', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341028","nickname":"P53 Vehicle","location":"IST","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"10.65","duration":"4.02 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE21DC341076', 'P19 Vehicle', 'Falcon Drive, Madera, Madera County, California, United States', 'Non-Autonomous', 'unhealthy', '3.21', '3 days', '', '', 'https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21DC341076&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Many errors occurred, but they were recovered after the VCU version was changed."],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE21DC341076&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=BMS_Cell_Resistance&var-Measurement2=BMS_Cell_Resistance&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-99&var-FIELD1=High_Intres_Id&var-Field2=High_Intres_Id","distance":"3.21","duration":"3 days","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Many errors occurred, but they were recovered after the VCU version was changed.', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE21DC341076'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE20DC341036', 'T7 Vehicle', 'Travis County, Texas, 78617, United States', 'Autonomous', 'healthy', '53.88', '1.16 week', '', '', '', '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"53.88","duration":"1.16 week","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE22DC341037', 'T8 Vehicle', 'West Cerini Avenue, Fresno County, California, 93656, United States', 'Autonomous', 'unhealthy', '9.94', '9.14 hours', '', '', 'https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22DC341037&var-max_amp_hours=210&var-bms_profile_checksum=&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-27', '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"unhealthy","issues":["BMS_redundant_power_supply_fault","BMS_input_power_supply_fault","auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/6db88c67-25cb-495f-b49f-71e813aa3a22A/anamoly-finder-dashboard?orgId=1&from=2026-08-01T07:00:00.000Z&to=2026-09-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22DC341037&var-max_amp_hours=210&var-bms_profile_checksum=&var-lowest_temp=0&var-timezone=PDT%20UTC-7&viewPanel=panel-27","distance":"9.94","duration":"9.14 hours","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'BMS_redundant_power_supply_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE22DC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'BMS_input_power_supply_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE22DC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE22DC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('rpt_1788283001_01-08-2026_31-08-2026', 'MD9GBUE24DC341038', 'T9 Vehicle(HMI)', 'Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia', 'Autonomous', 'unhealthy', '0', 'nil', '', '', '', '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"unhealthy","issues":["no data in HMI or AVC"],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'no data in HMI or AVC', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'rpt_1788283001_01-08-2026_31-08-2026' AND vin = 'MD9GBUE24DC341038'
ON CONFLICT DO NOTHING;

-- Report: report_2026-08-01_2026-08-15 (01-08-2026 to 15-08-2026)
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE28DC341009', 'Green HC(PST)', 'PST', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE28DC341009","nickname":"Green HC(PST)","location":"PST","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27DC341051', 'P2 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-10-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341051","nickname":"P2 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-10-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22DC341054', 'P3 Vehicle (P4 to P3)', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23-12-2025', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE22DC341054","nickname":"P3 Vehicle (P4 to P3)","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23-12-2025","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE28DC341057', 'P4 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '11-06-2024', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"11-06-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23DC341063', 'P6 Vehicle', 'Yolo–Colusa County, USA', 'Non-Autonomous', 'unhealthy', '222.39KM', '1 week', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle","location":"Yolo–Colusa County, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["BMS_High_voltage_isolation","RPDO Timeout on 15th & 16th"],"timestamp":"","vt_box_time":"","distance":"222.39KM","duration":"1 week","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'BMS_High_voltage_isolation', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23DC341063'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'RPDO Timeout on 15th & 16th', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23DC341063'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE29DC341066', 'P9 Vehicle', 'approximately North Texas, USA', 'Non-Autonomous', 'mdm_issue', 'Nil', '2 hours gap', '', 'Location data''s only came(01, 02 & 03)', NULL, '{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"approximately North Texas, USA","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"Location data''s only came(01, 02 & 03)","distance":"Nil","duration":"2 hours gap","versions":{"VT_BOX Version":"1.1.7.1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22DC341068', 'P11 Vehicle(IST)', 'Zoho Corporation, Tamil Nadu, India', 'Non-Autonomous', 'unhealthy', '26.69', '35.2 mins', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.1.0","Mew Bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341068","nickname":"P11 Vehicle(IST)","location":"Zoho Corporation, Tamil Nadu, India","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","motorcontroller_1_distance_travelled(ANOMALIES) -176 times"],"timestamp":"","vt_box_time":"","distance":"26.69","duration":"35.2 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.1.0","Mew Bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE22DC341068'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'motorcontroller_1_distance_travelled(ANOMALIES) -176 times', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE22DC341068'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE20DC341070', 'P13 Vehicle', 'Yolo Country, California, U.S', 'Non-Autonomous', 'healthy', '118.74', '2.03 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"118.74","duration":"2.03 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22DC341071', 'P14 Vehicle', 'Tulare County, California, U.S', 'Non-Autonomous', 'healthy', '48.57', '37.4 mins', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"Tulare County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"48.57","duration":"37.4 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE28DC341074', 'P17 Vehicle', 'Mountain View, California, USA', 'Non-Autonomous', 'healthy', '0.12', '0 s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"Mountain View, California, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.12","duration":"0 s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE2XDC341075', 'P18 Vehicle', 'Zerker Road, Shafter, Kern County, California, United States', 'Non-Autonomous', 'mdm_issue', 'Nil', '15 mins', '', '07-08-2026', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"Zerker Road, Shafter, Kern County, California, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"07-08-2026","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23DC341077', 'P20 Vehicle', 'Yolo Country, California, U.S', 'Non-Autonomous', 'unhealthy', '176.10', '4.29 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"Yolo Country, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["Motor 2 Error : Very Severe | Encoder Fault on 10th Aug","EPAS_fault_enumeration - 3rd(2 times), 11th(1 time), 12th(2 time) &14th(3rd time)"],"timestamp":"","vt_box_time":"","distance":"176.10","duration":"4.29 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Motor 2 Error : Very Severe | Encoder Fault on 10th Aug', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23DC341077'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'EPAS_fault_enumeration - 3rd(2 times), 11th(1 time), 12th(2 time) &14th(3rd time)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23DC341077'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE25DC341078', 'P21 Vehicle', 'University Avenue, University, Riverside County, California, U.S', 'Non-Autonomous', 'unhealthy', '153.29', '20.4 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"University Avenue, University, Riverside County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS_fault_enumeration 03(1), 05(1), 06(1), 07(5 times), 10(1), 13(1), 15(1)"],"timestamp":"","vt_box_time":"","distance":"153.29","duration":"20.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'EPAS_fault_enumeration 03(1), 05(1), 06(1), 07(5 times), 10(1), 13(1), 15(1)', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE25DC341078'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27DC341079', 'P22 Vehicle', 'Not Available', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '02-05-2025 21:47:54', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341079","nickname":"P22 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"02-05-2025 21:47:54","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23DC341080', 'P23 Vehicle', 'Hidalgo County, Texas, 78549, United States', 'Non-Autonomous', 'unhealthy', '144.53', '6.78 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_fault"],"timestamp":"","vt_box_time":"","distance":"144.53","duration":"6.78 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23DC341080'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27DC341082', 'P25 Vehicle', 'Near Greenville, Hunt County, Texas, USA', 'Non-Autonomous', 'healthy', '0.86', 'nil', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Near Greenville, Hunt County, Texas, USA","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.86","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE2XFC341001', 'P26 Vehicle', 'Fresno Avenue, Shafter, Kern County, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}'::jsonb, '{"vin":"MD9GBUE2XFC341001","nickname":"P26 Vehicle","location":"Fresno Avenue, Shafter, Kern County, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"23.02.2026 (Location: Fresno Avenue, Shafter, Kern County, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE21FC341002', 'P27 Vehicle', 'Elk Grove High School, Fontana Court, Sacramento County, California, U.S', 'Non-Autonomous', 'healthy', '0.07', '1.10 day', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"Elk Grove High School, Fontana Court, Sacramento County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.07","duration":"1.10 day","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23FC341003', 'P28 Vehicle', 'Rio Arriba County, New Mexico, U.S', 'Non-Autonomous', 'mdm_issue', 'Nil', '13 mins', '', '09-08-2026 17:24:14', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"Rio Arriba County, New Mexico, U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"09-08-2026 17:24:14","distance":"Nil","duration":"13 mins","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE25FC341004', 'P29 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'unhealthy', '62.85', '4.83 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["epas level 1 on 05th & 12th &13th Total 8"],"timestamp":"","vt_box_time":"","distance":"62.85","duration":"4.83 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Missing","Mem Harware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'epas level 1 on 05th & 12th &13th Total 8', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE25FC341004'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27FC341005', 'P30 Vehicle', 'Mockingbird Hill, Calaveras County, California, U.S', 'Non-Autonomous', 'unhealthy', '6.39', 'nil', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"Mockingbird Hill, Calaveras County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_voltage"],"timestamp":"","vt_box_time":"","distance":"6.39","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","mew_bootloader_firmware_version":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'High_voltage_isolation_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE27FC341005'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE29FC341006', 'P31 Vehicle', 'You Bet, Nevada County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '14-06-2026 (You Bet, Nevada County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}'::jsonb, '{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"You Bet, Nevada County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"14-06-2026 (You Bet, Nevada County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8.1","VCU Firmware Version":"2.3.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE20FC341007', 'P32 Vehicle', 'County Road 1005B, Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'unhealthy', '82.95', 'nil', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"County Road 1005B, Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["fault enumeration level 3 & 1 13th"],"timestamp":"","vt_box_time":"","distance":"82.95","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VIN_Number":"Nil","Mew Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'fault enumeration level 3 & 1 13th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE20FC341007'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22FC341008', 'P33 Vehicle', 'Batesville, Zavala County, Texas, 78829, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28.04.2026 (Location: Batesville, Zavala County, Texas, 78829, United States)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28.04.2026 (Location: Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE24FC341009', 'P34 Vehicle', 'Avenue, Bakersfield, Kern County, California, United States', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, California, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew_bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE20FC341010', 'P35 Vehicle', 'East North Avenue, Fresno County, California, United States', 'Non-Autonomous', 'healthy', '26.48', '19.9 mins', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}'::jsonb, '{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"26.48","duration":"19.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","mew_bootloader":"0.1.2","VIN_Number":"missing"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22FC341011', 'P36 Vehicle', 'San Francisco Peninsula, California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '09-12-2025 (Location: San Francisco Peninsula, California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE22FC341011","nickname":"P36 Vehicle","location":"San Francisco Peninsula, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"09-12-2025 (Location: San Francisco Peninsula, California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE24FC341012', 'P37 Vehicle', 'Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States', 'Non-Autonomous', 'unhealthy', '73.25', '2.63 days', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Alvarado High School, South Parkway Drive, Alvarado, Johnson County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas Level - 2 on 17th"],"timestamp":"","vt_box_time":"","distance":"73.25","duration":"2.63 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Epas Level - 2 on 17th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE24FC341012'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE26FC341013', 'P38 Vehicle', 'San Joaquin Valley, Central California, USA', 'Non-Autonomous', 'unhealthy', '8.21', '13.4 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"San Joaquin Valley, Central California, USA","mode":"Non-Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 13th"],"timestamp":"","vt_box_time":"","distance":"8.21","duration":"13.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'RPDO Timeout (drive inhibit) on 13th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26FC341013'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE28FC341014', 'P39 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '7.20', '2 days', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"7.20","duration":"2 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE2XFC341015', 'P40 Vehicle', 'Lamb County, Texas, United States', 'Non-Autonomous', 'unhealthy', '1353.29', '2.20 weeks', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"Lamb County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["high_voltage_isolation_faults","so many faults are coming BMS, EPAS and DCDC"],"timestamp":"","vt_box_time":"","distance":"1353.29","duration":"2.20 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew boothloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'high_voltage_isolation_faults', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'so many faults are coming BMS, EPAS and DCDC', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE2XFC341015'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE21FC341016', 'P41 Vehicle', 'Bonney Road, Monterey County, California, U.S', 'Non-Autonomous', 'unhealthy', '138.12', '0s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"Bonney Road, Monterey County, California, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)","Motor in thermal cutback on 07th,","RPDO Timeout (drive inhibit) on 11th"],"timestamp":"","vt_box_time":"","distance":"138.12","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","VCU Hardware":"2.2.0","Mew_Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'EPAS Level 2 & Level 1 Faults: 4 times(05, 10, 14th 2times)', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'Motor in thermal cutback on 07th,', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'RPDO Timeout (drive inhibit) on 11th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE21FC341016'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23FC341017', 'P42 Vehicle', 'East American Avenue, Fresno County, California, U.S', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle","location":"East American Avenue, Fresno County, California, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"17-12-2025 (Location: East American Avenue, Fresno County, California, U.S)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27FC341019', 'P44 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'healthy', '14.37', '2.71 mins', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"14.37","duration":"2.71 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23FC341020', 'P45 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'unhealthy', '29.58', '1.14 days', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"unhealthy","issues":["On 22nd July, the motor entered thermal cutback. The motor temperature decreased from 64°C to 57°C."],"timestamp":"","vt_box_time":"","distance":"29.58","duration":"1.14 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'On 22nd July, the motor entered thermal cutback. The motor temperature decreased from 64°C to 57°C.', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23FC341020'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE25FC341021', 'P46 Vehicle', 'Five Corners, San Joaquin County, California, U.S', 'Non-Autonomous', 'healthy', '100.67', '0s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"100.67","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27FC341022', 'P47 Vehicle', 'Not Available', 'Non-Autonomous', 'mdm_issue', 'Nil', '15 mins', '', 'MDM online on 09-07-2026', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"MDM online on 09-07-2026","distance":"Nil","duration":"15 mins","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE29FC341023', 'P48 Vehicle', 'San Francisco Bay Area in California, USA', 'Non-Autonomous', 'inactive', 'Nil', 'Nil', '19-12-2025 (Location: San Francisco Bay Area in California, USA)', '', NULL, '{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE29FC341023","nickname":"P48 Vehicle","location":"San Francisco Bay Area in California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"timestamp":"19-12-2025 (Location: San Francisco Bay Area in California, USA)","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.2.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE2XFC341029', 'P54 Vehicle', 'Silver Creek, U.S', 'Non-Autonomous', 'healthy', '33.44', '0s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"Silver Creek, U.S","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"33.44","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Operation_mode":"Torque","Mew Hardware":"2.20","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE26FC341030', 'P55 Vehicle', 'Siilver Creek, U.S OFFICE', 'Non-Autonomous', 'unhealthy', '1.74', '0s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}'::jsonb, '{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"Siilver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"unhealthy","issues":["SinCos Tracking Warning on 2nd & 5th"],"timestamp":"","vt_box_time":"","distance":"1.74","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.20","Mew Bootloader":"2.0.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'SinCos Tracking Warning on 2nd & 5th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26FC341030'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE28FC341031', 'P56 Vehicle', 'Silver Creek, U.S OFFICE', 'Non-Autonomous', 'healthy', '0.16', '16.4 mins', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"Silver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.16","duration":"16.4 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE2XFC341032', 'P57 Vehicle', 'Silver Creek, U.S OFFICE', 'Non-Autonomous', 'healthy', '0.65', '2.13 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"Silver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.65","duration":"2.13 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"2.0.0","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE21FC341033', 'P58 Vehicle', 'Silver Creek, U.S Office', 'Non-Autonomous', 'healthy', '0.06', '0s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Silver Creek, U.S Office","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0.06","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware":"2.3.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE23FC341034', 'P59 Vehicle', 'Silver Creek, U.S OFFICE', 'Non-Autonomous', 'unhealthy', '28.64', '0s', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}'::jsonb, '{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"Silver Creek, U.S OFFICE","mode":"Non-Autonomous","status":"unhealthy","issues":["IO can''t init on 4th","RPDO Timeout (drive inhibit)"],"timestamp":"","vt_box_time":"","distance":"28.64","duration":"0s","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.1","Mew Hardware":"2.2.0","mew Bootloader":"0.1.2","Operation mode":"Torque"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'IO can''t init on 4th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'RPDO Timeout (drive inhibit)', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE23FC341034'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE26DC341039', 'T10 Vehicle', 'Hargill, Hidalgo County, Texas, U.S', 'Non-Autonomous', 'unhealthy', '148.00', '16.4 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}'::jsonb, '{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"Hargill, Hidalgo County, Texas, U.S","mode":"Non-Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage","high_voltage_isolation_fault","Epas Level 2 & 1 on 4th & 11th"],"timestamp":"","vt_box_time":"","distance":"148.00","duration":"16.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew Hardware":"2.1.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'high_voltage_isolation_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'Epas Level 2 & 1 on 4th & 11th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26DC341039'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE26DC341042', 'T11 Vehicle', 'Travis County, Texas, United States', 'Non-Autonomous', 'unhealthy', '110.59', '1.94', '', '', NULL, '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Epas level 2 on 04th, 12th & 15th","peas level 1 on 04th & 15th","Epas level 3 on 04th, 06th, 07th & 15th"],"timestamp":"","vt_box_time":"","distance":"110.59","duration":"1.94","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Epas level 2 on 04th, 12th & 15th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'peas level 1 on 04th & 15th', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'Epas level 3 on 04th, 06th, 07th & 15th', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE26DC341042'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE20FC341024', 'P49 Vehicle', 'Batesville, Zavala County, Texas, United States', 'Non-Autonomous', 'healthy', '27.97', '2 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"Batesville, Zavala County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"27.97","duration":"2 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22DC341006', 'US HC Yuba', 'McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States', 'Autonomous', 'unhealthy', 'NIL', '1.86 hours', '', '', NULL, '{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}'::jsonb, '{"vin":"MD9GBUE22DC341006","nickname":"US HC Yuba","location":"McCauley Estate Vineyards, Sunset Road, Brentwood, Contra Costa County, California, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS Data coming"],"timestamp":"","vt_box_time":"","distance":"NIL","duration":"1.86 hours","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Only BMS Data coming', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE22DC341006'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27DC341003', 'US HC Fargo', 'Not Available', 'Autonomous', 'inactive', 'Nil', 'Nil', '12-09-2024', '', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"12-09-2024","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE27DC341048', 'P1 Vehicle', '671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa', 'Autonomous', 'inactive', 'Nil', 'Nil', '10-03-2026', '', NULL, '{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"671, Island Edendale Road, Menzies Ferry, Waihopai Toetoe Community, Southland District, Southland, New Zealand / Aotearoa","mode":"Autonomous","status":"inactive","issues":[],"timestamp":"10-03-2026","vt_box_time":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"1.0.0","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE24DC341069', 'P12 Vehicle', 'Ignatius Drive, Richwoods, Frisco, Collin County, Texas, United States', 'Autonomous', 'unhealthy', '22.23', 'nil', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}'::jsonb, '{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"Ignatius Drive, Richwoods, Frisco, Collin County, Texas, United States","mode":"Autonomous","status":"unhealthy","issues":["Motor in thermal cutback on 8th"],"timestamp":"","vt_box_time":"","distance":"22.23","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0","Mew bootloader":"Nil"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'Motor in thermal cutback on 8th', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE24DC341069'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE25DC341033', 'T6 Vehicle', 'Hargill, Hidalgo County, Texa, U.S', 'Autonomous', 'unhealthy', '160.30', '1.67 days', '', '', NULL, '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"Hargill, Hidalgo County, Texa, U.S","mode":"Autonomous","status":"unhealthy","issues":["RPDO Timeout (drive inhibit) on 1th aug"],"timestamp":"","vt_box_time":"","distance":"160.30","duration":"1.67 days","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.6.1","Mew Hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'RPDO Timeout (drive inhibit) on 1th aug', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE25DC341033'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE28FC341028', 'P53 Vehicle', 'IST', 'Autonomous', 'healthy', '6.67', '13.3 hours', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}'::jsonb, '{"vin":"MD9GBUE28FC341028","nickname":"P53 Vehicle","location":"IST","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"6.67","duration":"13.3 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew hardware":"2.2.0","Mew Bootloader":"0.1.2"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE21DC341076', 'P19 Vehicle', 'Falcon Drive, Madera, Madera County, California, United States', 'Non-Autonomous', 'healthy', '0', '3 days', '', '', NULL, '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.5.10","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE21DC341076","nickname":"P19 Vehicle","location":"Falcon Drive, Madera, Madera County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"0","duration":"3 days","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.5.10","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE20DC341036', 'T7 Vehicle', 'Travis County, Texas, 78617, United States', 'Autonomous', 'healthy', '25.63', 'nil', '', '', NULL, '{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"healthy","issues":[],"timestamp":"","vt_box_time":"","distance":"25.63","duration":"nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE22DC341037', 'T8 Vehicle', 'West Cerini Avenue, Fresno County, California, 93656, United States', 'Autonomous', 'unhealthy', '9.94', 'nil', '', '', NULL, '{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}'::jsonb, '{"vin":"MD9GBUE22DC341037","nickname":"T8 Vehicle","location":"West Cerini Avenue, Fresno County, California, 93656, United States","mode":"Autonomous","status":"unhealthy","issues":["BMS_redundant_power_supply_fault","BMS_input_power_supply_fault","auxilary_battery_voltage"],"timestamp":"","vt_box_time":"","distance":"9.94","duration":"nil","versions":{"VT_BOX Version":"HMI","VCU Firmware Version":"2.3.0","Mew Hardware":"2.2.0"}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i1', 'BMS_redundant_power_supply_fault', '', '', '', '', '', '', '', '', '', '', 0, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE22DC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i2', 'BMS_input_power_supply_fault', '', '', '', '', '', '', '', '', '', '', 1, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE22DC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicle_issues (report_vehicle_id, issue_id, issue_title, description, period, occurrences, component, reported_by, severity, rca, responsible_team, customer_feedback, grafana_url, sort_order, raw_data)
SELECT id, 'i3', 'auxilary_battery_voltage', '', '', '', '', '', '', '', '', '', '', 2, '{}'::jsonb
FROM report_vehicles WHERE report_id = 'report_2026-08-01_2026-08-15' AND vin = 'MD9GBUE22DC341037'
ON CONFLICT DO NOTHING;
INSERT INTO report_vehicles (report_id, vin, nickname, location, mode, status, distance, duration, timestamp, vt_box_time, grafana_url, versions, raw_data)
VALUES ('report_2026-08-01_2026-08-15', 'MD9GBUE24DC341038', 'T9 Vehicle(HMI)', 'Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia', 'Autonomous', 'mdm_issue', 'Nil', 'nil', '', 'no data in HMI or AVC', NULL, '{"VT_BOX Version":"","VCU Firmware Version":""}'::jsonb, '{"vin":"MD9GBUE24DC341038","nickname":"T9 Vehicle(HMI)","location":"Ferries McDonald Road, Monarto South, The Rural City of Murray Bridge, South Australia, 5254, Australia","mode":"Autonomous","status":"mdm_issue","issues":[],"timestamp":"","vt_box_time":"no data in HMI or AVC","distance":"Nil","duration":"nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}}'::jsonb)
ON CONFLICT (report_id, vin) DO UPDATE SET
  nickname = EXCLUDED.nickname,
  location = EXCLUDED.location,
  mode = EXCLUDED.mode,
  status = EXCLUDED.status,
  distance = EXCLUDED.distance,
  duration = EXCLUDED.duration,
  timestamp = EXCLUDED.timestamp,
  vt_box_time = EXCLUDED.vt_box_time,
  grafana_url = EXCLUDED.grafana_url,
  versions = EXCLUDED.versions,
  raw_data = EXCLUDED.raw_data;

-- ─────────────────────────────────────────────────────────────────────────────
-- 4. Populate Active Fleet State (latest working state)
-- ─────────────────────────────────────────────────────────────────────────────
INSERT INTO fleet_state (id, global_duration, vehicles_json, updated_at)
VALUES (1, '16-10-2026 to 31-10-2026', '{"MD9GBUE23DC341063":{"vin":"MD9GBUE23DC341063","nickname":"P6 Vehicle (14-12-2025)","location":"P26H+WR, Glenn, CA 95943, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 22.09.2026(Location: P26H+WR, Glenn, CA 95943, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23DC341063&var-NickName=P6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-83","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XDC341075":{"vin":"MD9GBUE2XDC341075","nickname":"P18 Vehicle","location":"U.S","mode":"Non-Autonomous","status":"mdm_issue","issues":["MDM is on but no data"],"issue_details":[{"id":"mmv52altmj10p","issue":"MDM is on but no data","description":"The VT-Box/MDM came online on 27 October 2026, but no data was received.","period":"2 months","occurrences":"10 mins","component":"MDM","reported_by":"BVMC","severity":"Medium","rca":"application lunching issue","responsible_team":"Data Scouting","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_"}],"timestamp":"","vt_box_time":"27-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE2XDC341075&var-NickName=P18%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-110","distance":"Nil","duration":"10 mins","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE29DC341066":{"vin":"MD9GBUE29DC341066","nickname":"P9 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"2026-08-03 21:43:11(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29DC341066&var-NickName=P9%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE28DC341057":{"vin":"MD9GBUE28DC341057","nickname":"P4 Vehicle","location":"5636, Collier Canyon Road, Livermore, Alameda County, California, 94551, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-29T07:00:00.000Z&to=2026-10-30T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE28DC341057&var-NickName=P4%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=A56A&var-mc2_checksum=0000&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADD6&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"0.05","duration":"30 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.5.0"}},"MD9GBUE20DC341070":{"vin":"MD9GBUE20DC341070","nickname":"P13 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"125.83","duration":"2.10 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE22DC341071":{"vin":"MD9GBUE22DC341071","nickname":"P14 Vehicle","location":"6624, Avenue 228, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"81.88","duration":"1.61 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE28DC341074":{"vin":"MD9GBUE28DC341074","nickname":"P17 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"3.73","duration":"11.2 hours","versions":{"VT_BOX Version":"2.3.2","VCU Firmware Version":"1.2.2"}},"MD9GBUE23DC341077":{"vin":"MD9GBUE23DC341077","nickname":"P20 Vehicle","location":"16098, Road 43, Yolo County, California, 95637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"198.88","duration":"4.08 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25DC341078":{"vin":"MD9GBUE25DC341078","nickname":"P21 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"1.29","duration":"5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23DC341080":{"vin":"MD9GBUE23DC341080","nickname":"P23 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault"],"issue_details":[{"id":"mmv9d9xx21ktt","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - have not heard back (Reported by - BRYCE TELFER)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-15T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23DC341080&var-NickName=P23%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-35","distance":"69.85","duration":"2.50 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE27DC341082":{"vin":"MD9GBUE27DC341082","nickname":"P25 Vehicle","location":"Cedar Hill Circle, Milligan, Collin County, Texas, 75407, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0","duration":"0s","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}},"MD9GBUE21FC341002":{"vin":"MD9GBUE21FC341002","nickname":"P27 Vehicle","location":"C222+222 Carbondale, California, USA","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"14-09-2026(Location: C222+222 Carbondale, California, USA)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-14T07:00:00.000Z&to=2026-09-15T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE21FC341002&var-NickName=P27%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341003":{"vin":"MD9GBUE23FC341003","nickname":"P28 Vehicle","location":"County Road 379, Rio Arriba County, New Mexico, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"County Road 379, Rio Arriba County, New Mexico, United States only location data came on 11.10.2026","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=now-24h&to=now&timezone=browser&var-VIN=MD9GBUE23FC341003&var-NickName=P28%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=0x2513&var-mc2_checksum=0xAB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=0xA1ED&var-ccl_offset=-20&var-ccl_scale_factor=2&var-dcl_scale_factor=2&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.1.8_1","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341004":{"vin":"MD9GBUE25FC341004","nickname":"P29 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"332.95","duration":"4.40 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE27FC341005":{"vin":"MD9GBUE27FC341005","nickname":"P30 Vehicle","location":"1103, Mockingbird Hill, Calaveras County, California, 95252, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"4.09","duration":"53.5 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.20"}},"MD9GBUE29FC341006":{"vin":"MD9GBUE29FC341006","nickname":"P31 Vehicle","location":"17007, You Bet Road, You Bet, Nevada County, California, 95945, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"30-09-2026(Location: 17007, You Bet Road, You Bet, Nevada County, California, 95945, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-03T07:00:00.000Z&to=2026-10-08T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE29FC341006&var-NickName=P31%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE20FC341007":{"vin":"MD9GBUE20FC341007","nickname":"P32 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"194.13","duration":"1.88 days","versions":{"VT_BOX Version":"2.2.0","VCU Firmware Version":"1.2.2"}},"MD9GBUE22FC341008":{"vin":"MD9GBUE22FC341008","nickname":"P33 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"09-09-2026(Location: 774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE22FC341008&var-NickName=P33%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"Nil","VCU Firmware Version":"Nil"}},"MD9GBUE24FC341009":{"vin":"MD9GBUE24FC341009","nickname":"P34 Vehicle","location":"Avenue, Bakersfield, Kern County, U.S","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"28-04-2026 (Location: Avenue, Bakersfield, Kern County, U.S)","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE20FC341010":{"vin":"MD9GBUE20FC341010","nickname":"P35 Vehicle","location":"East North Avenue, Fresno, Fresno County, California, 93725, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"36.33","duration":"10.8 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE24FC341012":{"vin":"MD9GBUE24FC341012","nickname":"P37 Vehicle","location":"Atascosa County, Texas, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"45.85","duration":"1.14 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE26FC341013":{"vin":"MD9GBUE26FC341013","nickname":"P38 Vehicle","location":"Avenue 295, Tulare County, California, 93221, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["Unit in preoperational & RPDO Timeout (drive inhibit)"],"issue_details":[{"id":"mmvaqo8t5i0a8","issue":"Unit in preoperational & RPDO Timeout (drive inhibit)","description":"Unit in preoperational on 2026-10-16 11:47:19, 2026-10-19 08:07:12 & 2026-10-20 15:21:54 and RPDO Timeout (drive inhibit) on 2026-10-02 11:47:06 & 13:45:07","period":"multiple times","occurrences":"4 time","component":"Motor","reported_by":"BVMC","severity":"Low","rca":"The key position was observed to be in Position 2 while the vehicle was in motion. It is suspected that the driver may have changed the key position while driving, which could have resulted in a sudden change in vehicle behaviour and triggered the issue. The PTE team also observed that the throttle input was triggered during the key ON/OFF operation.","responsible_team":"PTE","customer_feedback":"Linder Equipment Co. - Troy reported no issues (Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum="}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341013&from=2026-10-16T07:00:00.000Z&to=2026-10-17T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_weather&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=auxilary_battery_voltage&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-aggregation_method=MODE%28&var-groupbycondition=GROUP%20BY%20time%28$__interval%29%20fill%28null%29&viewPanel=panel-121","distance":"145.86","duration":"1.04 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE28FC341014":{"vin":"MD9GBUE28FC341014","nickname":"P39 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"62.58","duration":"22.7 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XFC341015":{"vin":"MD9GBUE2XFC341015","nickname":"P40 Vehicle","location":"County Road 182, Lamb County, Texas, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"Last updated on 09.10.2026(so many faults are coming BMS, EPAS, anomaly''s and DCDC Medium & Location:County Road 182, Lamb County, Texas, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-09-30T18:30:00.000Z&to=2026-10-15T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE2XFC341015&var-NickName=P40%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-80","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE21FC341016":{"vin":"MD9GBUE21FC341016","nickname":"P41 Vehicle","location":"16361, Bonney Road, Monterey County, California, 95076, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"121.49","duration":"3.01 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE23FC341017":{"vin":"MD9GBUE23FC341017","nickname":"P42 Vehicle (15-12-2025)","location":"East Fantz Avenue, Fresno County, California, 93648, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"162.84","duration":"1.14 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}},"MD9GBUE27FC341019":{"vin":"MD9GBUE27FC341019","nickname":"P44 Vehicle","location":"2499, Ivy Street, Stirling Junction, Chico, Butte County, California, 95928, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.86","duration":"35.9 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE23FC341020":{"vin":"MD9GBUE23FC341020","nickname":"P45 Vehicle","location":"323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"on 09-10-2026(Location: 323, East Kern Avenue, Tulare, Tulare County, California, 93274, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE23FC341020&var-NickName=P45%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE25FC341021":{"vin":"MD9GBUE25FC341021","nickname":"P46 Vehicle","location":"Five Corners, San Joaquin County, California, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"32.69","duration":"1.41 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.2"}},"MD9GBUE27FC341022":{"vin":"MD9GBUE27FC341022","nickname":"P47 Vehicle","location":"Not Available","mode":"Non-Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"01-09-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE20FC341024":{"vin":"MD9GBUE20FC341024","nickname":"P49 Vehicle","location":"774, County Road 1005B, Batesville, Zavala County, Texas, 78829, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"240.51","duration":"1.09 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE2XFC341029":{"vin":"MD9GBUE2XFC341029","nickname":"P54 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"11.70","duration":"18.4 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE26FC341030":{"vin":"MD9GBUE26FC341030","nickname":"P55 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["3-pin connector"],"issue_details":[{"id":"mmvax8jqczxxd","issue":"3-pin connector","description":"After the gearbox was replaced, a broken locking tab was identified on the 3-pin connector attached to the ESS. The damaged connector may be causing intermittent motor power loss while the vehicle is running. A replacement connector is available from another vehicle, but guidance is required on safely removing and reconnecting the three orange cables inside the ESS.","period":"Sept 3rd","occurrences":"1st time","component":"Motor","reported_by":"BVMC","severity":"High","rca":"The 3-pin connector attached to the ESS had a broken locking tab, potentially causing an intermittent connection and motor power loss while the vehicle was running. The ESS team has been consulted for guidance on replacing the damaged connector and verifying the internal connections.","responsible_team":"Mechanical Team","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26FC341030&from=2026-09-03T16:53:32.000Z&to=2026-09-03T16:57:32.000Z&timezone=America%2FLos_Angeles&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_usage&var-FIELD1=motorcontroller_1_distance_travelled&var-Field2=battery_current&var-torque_or_speed_mode=Speed&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-bms_profile_checksum=ADE2&var-cc"}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.89","duration":"1.52 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE28FC341031":{"vin":"MD9GBUE28FC341031","nickname":"P56 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"0.22","duration":"3.96 mins","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE2XFC341032":{"vin":"MD9GBUE2XFC341032","nickname":"P57 Vehicle","location":"8798, Amen Corner, The Estates at Tour 18, Flower Mound, Denton County, Texas, 75022, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"144.67","duration":"6.85 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE21FC341033":{"vin":"MD9GBUE21FC341033","nickname":"P58 Vehicle","location":"Rivercrest Golf Club & Preserve, Oriole Lane, Upper Providence Township, Montgomery County, Pennsylvania, 19482, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"27.32","duration":"1.27 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE23FC341034":{"vin":"MD9GBUE23FC341034","nickname":"P59 Vehicle","location":"22579, Snow Road, Kern County, California, 93314, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"184.64","duration":"6.32 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE29FC341037":{"vin":"MD9GBUE29FC341037","nickname":"P62 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"107.67","duration":"5.16 hours","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE29FC341040":{"vin":"MD9GBUE29FC341040","nickname":"P65 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"27.14","duration":"3.02 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE27FC341036":{"vin":"MD9GBUE27FC341036","nickname":"P61 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"84.59","duration":"5.47 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0","mew_bootloader_firmware_version":"2.0.0"}},"MD9GBUE26DC341039":{"vin":"MD9GBUE26DC341039","nickname":"T10 Vehicle","location":"FM 493, Hargill, Hidalgo County, Texas, 78549, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["High_voltage_isolation_fault","auxilary_battery_voltage"],"issue_details":[{"id":"mmvcb24ur00kk","issue":"High_voltage_isolation_fault","description":"The BMS detects low electrical isolation between the high-voltage battery system and the vehicle chassis, potentially due to moisture, damaged cables, or an internal component fault.","period":"2 months","occurrences":"Contionus","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"Inspect the battery enclosure, contactor box, and motor controller areas for water, coolant leaks, or condensation.","responsible_team":"PTE","customer_feedback":"US Citrus/Mani Skaria - Have not heard back.(Bryce Telfer)","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-bmsHMIV2/bvmc-team-vtbox-data-dashboard-developer?orgId=1&var-VIN=MD9GBUE26DC341039&from=2026-10-16T07:00:00.000Z&to=2026-11-01T06:59:59.000Z&timezone=America%2FLos_Angeles&var-Measurement1=bms_battery_usage&var-Measurement2=controller_motor_status_1_REAR&var-FIELD1=battery_current&var-Field2=motorcontroller_1_distance_travelled&var-torque_or_speed_mode=Speed&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-bms_profile_checksum=ADE2&var-cc"},{"id":"mmvcbbpkq2v5e","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 15 October 2026. On 19 October, the auxiliary battery voltage dropped to approximately 5 V. DC-DC data resumed after the vehicle was driven recently.","period":"2 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"High","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"The U.S. team contacted the customer (US Citrus / Mani Skaria). No abnormalities were reported, and the vehicle is functioning normally. Further monitoring is required.","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offse"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-19T09:28:24.182Z&to=2026-10-21T13:03:39.985Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341039&var-NickName=T10%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-37","distance":"50.73","duration":"1.56 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.2.0"}},"MD9GBUE26DC341042":{"vin":"MD9GBUE26DC341042","nickname":"T11 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Non-Autonomous","status":"unhealthy","issues":["chrgr_highest_voltage"],"issue_details":[{"id":"mmvcby5xlz2u7","issue":"chrgr_highest_voltage","description":"chrgr_highest_voltage are receving the values like 950","period":"4 months","occurrences":"Continous","component":"BMS","reported_by":"BVMC","severity":"Low","rca":"This is due to the BMS_PROFILE_CHECKSUM retaining the old version. It should be updated when the vehicle arrives at the Boson service center.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-11T07:00:00.000Z&to=2026-10-12T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE26DC341042&var-NickName=T11%20Vehicle&var-Measurement1=controller_motor_status_1_REAR&var-Measurement2=bms_battery_weather&var-FIELD1=motorcontroller_1_distance_travelled&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&var-Field2=battery_soc&viewPanel=panel-38","distance":"150.25","duration":"4.71 days","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE27DC341003":{"vin":"MD9GBUE27DC341003","nickname":"US HC Fargo","location":"McCauley Estate Vineyards, 2525, Sunset Road, Brentwood, Contra Costa County, California, 94513, United States","mode":"Autonomous","status":"unhealthy","issues":["Only BMS data is coming"],"issue_details":[{"id":"mmvccg3jvlrr9","issue":"Only BMS data is coming","description":"The vehicle is running an older software version, so version details are unavailable. We can monitor only BMS data, limiting our ability to diagnose EPAS, motor, and DC-DC issues.","period":"4 months","occurrences":"Continous","component":"Other","reported_by":"BVMC","severity":"Medium","rca":"The update can be completed when the customer brings the vehicle to the service center.","responsible_team":"Vehicle Support and Service Engineer","customer_feedback":"","grafana_url":""}],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"nil","duration":"10.1 hours","versions":{"VT_BOX Version":"nil","VCU Firmware Version":"nil"}},"MD9GBUE27DC341048":{"vin":"MD9GBUE27DC341048","nickname":"P1 Vehicle","location":"Not Available","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"10-03-2026","vt_box_time":"","grafana_url":"","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version":"","VCU Firmware Version":""}},"MD9GBUE24DC341069":{"vin":"MD9GBUE24DC341069","nickname":"P12 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"77.45","duration":"2.14 weeks","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE20DC341036":{"vin":"MD9GBUE20DC341036","nickname":"T7 Vehicle","location":"Travis County, Texas, 78617, United States","mode":"Autonomous","status":"unhealthy","issues":["auxilary_battery_voltage"],"issue_details":[{"id":"mmw1z3rpy7xel","issue":"auxilary_battery_voltage","description":"The DC-DC converter stopped reporting data after 26th October 2026. On 26 October, the auxiliary battery voltage dropped to approximately 5 V.","period":"26 Oct","occurrences":"1 time","component":"BMS","reported_by":"BVMC","severity":"Medium","rca":"The issue is suspected to be related to LV battery ageing. However, the exact root cause is yet to be confirmed.","responsible_team":"PTE","customer_feedback":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_"}],"timestamp":"","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-26T13:38:04.765Z&to=2026-10-26T18:02:16.089Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE20DC341036y&var-NickName=&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=2513&var-mc2_checksum=AB4A&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7","distance":"32.67","duration":"Nil","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.3.0"}},"MD9GBUE25DC341033":{"vin":"MD9GBUE25DC341033","nickname":"T6 Vehicle","location":"South Willow Street, Ravenna, Fannin County, Texas, 75476, United States","mode":"Autonomous","status":"inactive","issues":[],"issue_details":[],"timestamp":"02-09-2026(Location: South Willow Street, Ravenna, Fannin County, Texas, 75476, United States)","vt_box_time":"","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-09T07:00:00.000Z&to=2026-10-10T06:59:59.000Z&timezone=America%2FLos_Angeles&var-VIN=MD9GBUE25DC341033&var-NickName=T6%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=&var-mc2_checksum=&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=PDT%20UTC-7&viewPanel=panel-52","distance":"Nil","duration":"Nil","versions":{"VT_BOX Version(HMI)":"nil","VCU Firmware Version":"2.6.1"}},"MD9GBUE25FC341035":{"vin":"MD9GBUE25FC341035","nickname":"P60 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"mdm_issue","issues":["Data missing"],"issue_details":[{"id":"mmw0rdh1vzv5l","issue":"Data missing","description":"From 22-10-2026 to 26-10-2026, the MDM was online, but no data was received. We need to check whether the vehicle was at the Madera office during this period.","period":"5 days","occurrences":"no data came","component":"MDM","reported_by":"BVMC","severity":"High","rca":"need to check the application","responsible_team":"Data Scouting","customer_feedback":"it is in the office","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_sc"}],"timestamp":"","vt_box_time":"22-10-2026 to 26-10-2026","grafana_url":"https://grafana.bosonmotors.com/d/e74b43a6-cf76-4e99-8d01-hgehehr/vehicle-support-team-developer?orgId=1&from=2026-10-21T18:30:00.000Z&to=2026-10-27T18:29:59.000Z&timezone=browser&var-VIN=MD9GBUE25FC341035&var-NickName=P60%20Vehicle&var-Measurement1=bms_battery_weather&var-Measurement2=bms_battery_usage&var-FIELD1=auxilary_battery_voltage&var-Field2=battery_current&var-mc1_checksum=6E4A&var-mc2_checksum=D85E&var-torque_or_speed_mode=Speed&var-bms_profile_checksum=ADE2&var-ccl_offset=0&var-ccl_scale_factor=1&var-dcl_scale_factor=1&var-timezone=IST%20UTC%2B5:30&viewPanel=panel-110","distance":"Nil","duration":"4 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE20FC341038":{"vin":"MD9GBUE20FC341038","nickname":"P63 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"12.36","duration":"1.87 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}},"MD9GBUE22FC341039":{"vin":"MD9GBUE22FC341039","nickname":"P64 Vehicle","location":"2934, Falcon Drive, Madera, Madera County, California, 93637, United States","mode":"Non-Autonomous","status":"healthy","issues":[],"issue_details":[],"timestamp":"","vt_box_time":"","grafana_url":"","distance":"155.34","duration":"6.07 days","versions":{"VT_BOX Version":"1.2.2","VCU Firmware Version":"2.6.0"}}}'::jsonb, now())
ON CONFLICT (id) DO UPDATE SET
  global_duration = EXCLUDED.global_duration,
  vehicles_json = EXCLUDED.vehicles_json,
  updated_at = now();

-- ─────────────────────────────────────────────────────────────────────────────
-- 5. Populate Customer Feedback (1 historical records)
-- ─────────────────────────────────────────────────────────────────────────────
INSERT INTO customer_feedback (vin, issue_id, feedback, created_at, updated_at)
VALUES ('MD9GBUE23DC341063', 'mmv3vaxcx8raw', 'its working fine', '2026-10-11T19:58:50.438237', '2026-10-11T19:58:50.438237')
ON CONFLICT (vin, issue_id) DO UPDATE SET
  feedback = EXCLUDED.feedback,
  updated_at = EXCLUDED.updated_at;

COMMIT;

-- =============================================================================
-- Historical Import Complete!
-- Summary:
--   Master Vehicles: 74
--   Reports: 6
--   Report Vehicle Snapshots: 323
--   Report Issues Logged: 149
--   Active Fleet Vehicles: 50
--   Customer Feedback Entries: 1
-- =============================================================================
