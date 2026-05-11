# Robot2 — Data Capturing (CRM Automation)

## Description

Reads customer data from an Excel spreadsheet and enters it into a CRM application — both desktop and web versions.

## How It Works

1. `Main.xaml` reads `customers.xlsx`
2. `Desktop Data Capturing.xaml` enters data into a desktop CRM (MyCRM.exe)
3. `Web Data Capturing.xaml` enters data into a web-based CRM

## Files

| File | Purpose |
|---|---|
| Main.xaml | Orchestrator workflow |
| Desktop Data Capturing.xaml | Desktop CRM automation |
| Web Data Capturing.xaml | Web CRM automation |
| customers.xlsx | Input customer data |
| MyCRM.exe | Sample desktop CRM application |

## How to Run

1. Open `project.json` in UiPath Studio
2. Ensure `customers.xlsx` has data
3. Run `Main.xaml`
