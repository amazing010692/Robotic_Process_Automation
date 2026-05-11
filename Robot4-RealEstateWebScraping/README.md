# Robot4 — Real Estate Web Scraping

## Description

Scrapes real estate property listings from a website and exports the data to an Excel spreadsheet.

## How It Works

1. Opens a real estate listing website
2. Extracts structured data (price, location, details) using Data Scraping
3. Handles pagination to collect all listings
4. Writes results to `output.xlsx`

## Output

- `output.xlsx` — Contains scraped property data

## Key Concepts

- UiPath Data Scraping wizard
- Pagination handling
- Structured data extraction to DataTable
- Excel write operations

## Prerequisites

- Internet connection
- Chrome/Edge with UiPath extension

## How to Run

1. Open `project.json` in UiPath Studio
2. Run `Main.xaml`
3. Results saved to `output.xlsx`
