# Robot3 — Automation Challenge (rpachallenge.com)

## Description

Solves the [RPA Challenge](https://rpachallenge.com/) — a dynamic web form where field positions change on every submission, requiring robust selector strategies.

## How It Works

1. Reads input data from `challenge.xlsx`
2. Navigates to rpachallenge.com
3. Clicks "Start"
4. Fills all form fields for each row (fields shuffle after each submit)
5. Submits and repeats for all records

## Key Concepts

- Dynamic selector handling
- Data-driven automation
- Web form interaction at speed

## Prerequisites

- Internet connection
- Chrome/Edge with UiPath extension installed

## How to Run

1. Open `project.json` in UiPath Studio
2. Ensure browser extension is active
3. Run `Main.xaml`
