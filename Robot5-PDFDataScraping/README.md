# Robot5 — PDF Data Scraping (1,000 Invoices)

## Description

Extracts structured data from **1,000 PDF invoices** and consolidates it into a single Excel spreadsheet. Demonstrates batch document processing at scale.

## How It Works

1. Iterates through all PDF files in `1000_Invoices/`
2. Reads text content from each invoice using PDF activities
3. Parses relevant fields (invoice number, date, amount, etc.)
4. Appends extracted data to `ScrapedInvoiceData.xlsx`

## Files

| File | Purpose |
|---|---|
| Main.xaml | Main processing workflow |
| 1000_Invoices/ | Directory containing 1,000 PDF invoices |
| ScrapedInvoiceData.xlsx | Output file with extracted data |

## Key Concepts

- Bulk file processing with For Each
- PDF text extraction
- String manipulation and regex parsing
- Excel append operations
- Scalable document processing

## How to Run

1. Open `project.json` in UiPath Studio
2. Ensure `1000_Invoices/` folder contains the PDF files
3. Run `Main.xaml`
4. Results saved to `ScrapedInvoiceData.xlsx`
