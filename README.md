# Mizoram VB-G RAM G Report Portal & Worker Passbook (Aibawk RD Block)

A lightweight, automated web application and data aggregator for **Aibawk RD Block (Aizawl District, Mizoram)**, designed to provide a fast, clean, and mobile-friendly community mirror for VB-G RAM G (MGNREGA) data.

---

## Target Villages (20 Villages / Village Councils)

The application and scraper are focused on the 20 villages under Aibawk RD Block:
> **Aibawk, Chamring, Chawilung, Falkawn, Hmuifang, Hualngohmun, Kelsih, Lamchhip, Lungsei, Maubuang, Melriat, Muallungthu, Phulpui, Sailam, Samlukhai, Sateek, Sialsuk, Sumsuih, Tachhip, Thiak.**

---

## Tabs & Features

1. **Global Village Selector Bar (Controls All Tabs)**
   - Located prominently at the top in a light pink pill against the regal purple header.
   - Switch between **"All My 20 Villages (Combined)"** or any single village.
   - All tabs dynamically filter and recalculate their counters and tables based on the selected village.

2. **Active Job Cards Register**
   - Automatically filters out deleted job cards marked with an asterisk (`*`).
   - Fast client-side pagination (25, 50, 100, 250 per page) and instant search by Job Card No. or Household Head.
   - One-click access to official government dossiers and the embedded Worker Passbook.

3. **Integrated Worker Payment Passbook**
   - Click `[💳 View Passbook]` directly next to any active Job Card to launch the worker's payment history modal.
   - Tracks monthly wage disbursement status: 🟢 **Credited**, 🟡 **Pending**, or 🔴 **Rejected**.
   - Explicitly displays **`Paid in account of (in case of ABP)`** to confirm the Aadhaar-linked beneficiary receiving DBT funds.
   - Shows Bank Name, Branch, UTR Reference Number, Processed Date, and direct link to the official signed FTO.

4. **Muster Rolls (eMR)**
   - Searchable directory of official eMR slips with exact **Work Description**, **Work Code**, and **Labor Period** (`Date From` to `Date To` + `Month`).

5. **Village Demands Submission (Tab 3)**
   - Allows users to upload monthly Excel demand sheets (`.xlsx`, `.xls`, `.csv`) per village (e.g., November 2026).
   - Powered by browser storage fallback and Supabase integration.
   - Instant file viewing, metadata tracking, monthly filtering, and 1-click download.
   - Sample file included: `Aibawk_Demands_November_2026_Sample.xlsx`.

6. **Incomplete Works Tracker**
   - Tracks works started vs. completed vs. incomplete across the 20 Panchayats/Villages with progress KPIs and official drill-down links.

---

## Configuration for Live Data Scraping

To scrape fresh data for Aibawk RD Block from `vbgramgrep.dord.gov.in`:
1. Open `scraper.py`.
2. Replace the 4 placeholder URLs at the top with your official report links:
   - `URL_JOB_CARDS_AIBAWK`: Active Job Cards (`app_issue.aspx?payload=...`)
   - `URL_FINANCIAL_AIBAWK`: Financial Statement (`citizen_html/funddisreport.aspx?payload=...`)
   - `URL_INCOMPLETE_AIBAWK`: Incomplete Works (`takenup_compwrk.aspx?payload=...`)
   - `URL_FTO_AIBAWK`: Signed FTO Details (`FTO/fto_sign_detail.aspx?payload=...`)

---

## Running Locally

To test the application locally:
1. Open terminal in this folder:
   ```bash
   pip install -r requirements.txt
   python scraper.py
   ```
2. Start a local server:
   ```bash
   python -m http.server 8000
   ```
3. Open [http://localhost:8000](http://localhost:8000) in your browser.
