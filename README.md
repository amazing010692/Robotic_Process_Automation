# 🤖 Robotic Process Automation (RPA) Portfolio

[![UiPath](https://img.shields.io/badge/UiPath-Studio-orange?style=flat-square&logo=uipath)](https://www.uipath.com/)
[![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](CONTRIBUTING.md)

---

## 👤 Author

**Prepared by:** Janielle Joy S. Gregorio  
**LinkedIn:** [linkedin.com/in/janiellejoygregorio](https://ph.linkedin.com/in/janiellejoygregorio)

---

## 📋 Project Overview

A collection of **UiPath RPA automation projects** demonstrating real-world business process automation scenarios — from web scraping and data entry to PDF extraction and desktop automation.

### Purpose

This repository showcases practical RPA skills applicable to enterprise environments, including:

- UI automation (desktop & web)
- Data extraction and transformation
- Document processing at scale
- Dynamic form handling

### Key Features

- ✅ 7 complete automation projects covering diverse use cases
- ✅ Production-ready UiPath workflows (.xaml)
- ✅ Scalable data processing (1,000+ documents)
- ✅ Web scraping, PDF parsing, Excel integration
- ✅ Clean project structure following UiPath best practices

---

## 🏗️ Architecture Overview

Each project is a self-contained UiPath process with its own `project.json` manifest and `Main.xaml` entry point.

```
┌─────────────────────────────────────────────────┐
│              Repository Root                      │
├─────────────────────────────────────────────────┤
│  Arguments/          → UiPath Arguments demo     │
│  myFirstRobot/       → Introductory automation   │
│  Robot1/             → Clothing Consultant bot    │
│  Robot2/             → Data Capturing (CRM)      │
│  Robot3/             → RPA Challenge solver       │
│  Robot4/             → Real Estate web scraper   │
│  Robot5/             → PDF invoice extractor     │
│  Robot6/             → COVID-19 data updater     │
└─────────────────────────────────────────────────┘
```

### Workflow

1. Each robot is opened in **UiPath Studio**
2. `Main.xaml` is the entry point for execution
3. Dependencies are managed via `project.json`
4. Data files (Excel, PDF) serve as input/output

---

## 🛠️ Tech Stack

| Technology | Purpose |
|---|---|
| **UiPath Studio** 20.10 / 21.4 | RPA development IDE |
| **UiPath.System.Activities** | Core automation activities |
| **UiPath.UIAutomation.Activities** | UI interaction (click, type, scrape) |
| **UiPath.Excel.Activities** | Excel read/write operations |
| **UiPath.Mail.Activities** | Email automation |
| **UiPath.PDF.Activities** | PDF data extraction |
| **VB.NET** | Expression language in workflows |

---

## 📁 Folder Structure

```
Robotic_Process_Automation/
├── Arguments/                      # Demonstrates UiPath argument passing
│   ├── Main.xaml                   # Entry workflow
│   ├── Another process.xaml        # Sub-process invoked with arguments
│   └── project.json                # Project manifest
│
├── myFirstRobot/                   # Beginner: Notepad text automation
│   ├── Main.xaml                   # Opens Notepad, writes text
│   ├── Main.xlsx                   # Input data
│   └── project.json
│
├── Robot1-ClothingConsultant/      # Decision-based clothing advisor
│   ├── Main.xaml                   # Weather-based clothing logic
│   └── project.json
│
├── Robot2-DataCapturing/           # CRM data entry from Excel
│   ├── Main.xaml                   # Orchestrates data flow
│   ├── Desktop Data Capturing.xaml # Desktop CRM automation
│   ├── Web Data Capturing.xaml     # Web CRM automation
│   ├── customers.xlsx              # Input customer data
│   └── project.json
│
├── Robot3-AutomationChallenge/     # rpachallenge.com form filler
│   ├── Main.xaml                   # Dynamic form automation
│   ├── challenge.xlsx              # Challenge input data
│   └── project.json
│
├── Robot4-RealEstateWebScraping/   # Web scraping real estate listings
│   ├── Main.xaml                   # Scrapes property data
│   ├── output.xlsx                 # Scraped results
│   └── project.json
│
├── Robot5-PDFDataScraping/         # Bulk PDF invoice extraction
│   ├── Main.xaml                   # Processes 1,000 invoices
│   ├── 1000_Invoices/              # PDF invoice files
│   ├── ScrapedInvoiceData.xlsx     # Extracted data output
│   └── project.json
│
├── Robot6-COVID19_DailyUpdates/    # COVID-19 data scraper
│   ├── Main.xaml                   # Scrapes daily COVID stats
│   └── project.json
│
├── docs/                           # Documentation
│   └── ARCHITECTURE.md            # Detailed architecture guide
├── .gitignore                      # Git ignore rules
├── CONTRIBUTING.md                 # Contribution guidelines
├── CHANGELOG.md                    # Version history
├── LICENSE                         # MIT License
└── README.md                       # This file
```

---

## ✅ Prerequisites

| Requirement | Version | Notes |
|---|---|---|
| **UiPath Studio** | 20.10+ | Community Edition is free |
| **Windows OS** | 10/11 | UiPath requires Windows |
| **.NET Framework** | 4.6.1+ | Installed with UiPath |
| **Microsoft Excel** | 2016+ | For Excel-based robots |
| **Web Browser** | Chrome/Edge | With UiPath extension |

---

## 🚀 Installation Guide

### Step 1: Install UiPath Studio

1. Go to [uipath.com/start-trial](https://www.uipath.com/start-trial)
2. Download **UiPath Studio Community Edition**
3. Install and sign in with your UiPath account

### Step 2: Install Browser Extension

1. Open UiPath Studio
2. Go to **Home → Tools → UiPath Extensions**
3. Install the extension for your browser (Chrome/Edge)

### Step 3: Clone This Repository

```bash
git clone https://github.com/janiellejoygregorio/Robotic_Process_Automation.git
cd Robotic_Process_Automation
```

### Step 4: Open a Project

1. Open UiPath Studio
2. Click **Open Project**
3. Navigate to any robot folder (e.g., `Robot3-AutomationChallenge/`)
4. Select `project.json`
5. UiPath will restore dependencies automatically

---

## ▶️ Running the Projects

1. Open the desired project in UiPath Studio
2. Click **Run** (or press `F5`) to execute `Main.xaml`
3. Observe the robot performing the automation

### Quick Reference

| Robot | What It Does | Input Required |
|---|---|---|
| Arguments | Demonstrates argument passing | None |
| myFirstRobot | Writes to Notepad | None |
| Robot1 | Clothing recommendation dialog | User input (temperature) |
| Robot2 | Enters customer data into CRM | `customers.xlsx` |
| Robot3 | Fills rpachallenge.com form | `challenge.xlsx` + Internet |
| Robot4 | Scrapes real estate website | Internet connection |
| Robot5 | Extracts data from 1,000 PDFs | `1000_Invoices/` folder |
| Robot6 | Scrapes COVID-19 statistics | Internet connection |

---

## 🧪 Testing

UiPath workflows can be tested using:

1. **UiPath Studio Debug Mode** — Step through activities with breakpoints
2. **Run File** — Execute individual `.xaml` files in isolation
3. **UiPath Test Suite** — For enterprise-level test automation

```
Debug shortcuts:
  F5        → Run
  F9        → Toggle Breakpoint
  F10       → Step Over
  F11       → Step Into
  Shift+F5  → Stop
```

---

## 🔄 CI/CD Workflow

For enterprise deployment, these projects can be integrated with:

- **UiPath Orchestrator** — Schedule, monitor, and manage robots
- **UiPath CLI** — Package and deploy via command line
- **GitHub Actions** — Automate packaging on push

Example packaging command:

```bash
uipcli package pack "Robot3-AutomationChallenge/project.json" \
  --output ./packages \
  --version 1.0.0
```

---

## 🤝 Contribution Guide

See [CONTRIBUTING.md](CONTRIBUTING.md) for detailed guidelines.

**Quick start:**

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-robot`)
3. Follow the existing project structure
4. Test your workflow in UiPath Studio
5. Submit a Pull Request

---

## 🔧 Troubleshooting

| Issue | Solution |
|---|---|
| Dependencies not restoring | Right-click project → Manage Packages → Restore |
| Browser extension not working | Reinstall from UiPath Studio → Tools → Extensions |
| Selector not found | Re-record the UI element with UiPath Recorder |
| Excel file locked | Close Excel before running the robot |
| "Activity could not be loaded" | Update package versions in Manage Packages |

---

## ❓ FAQ

**Q: Can I run these on macOS/Linux?**  
A: UiPath Studio requires Windows. Use a Windows VM or cloud instance.

**Q: Do I need a paid UiPath license?**  
A: No. UiPath Community Edition is free for individual use.

**Q: Can I modify these projects?**  
A: Yes! Fork the repo and customize for your needs.

**Q: How do I add a new robot?**  
A: Create a new folder, initialize a UiPath project, and follow the naming convention `RobotN-Description/`.

---

## 🔒 Security Notes

- No credentials or API keys are stored in this repository
- UiPath Orchestrator Assets should be used for production secrets
- The `.gitignore` excludes local settings and cache files
- Sensitive data in Excel files uses placeholder/sample data only

---

## 🚀 Future Improvements

- [ ] Add REFramework (Robotic Enterprise Framework) template project
- [ ] Implement Orchestrator queue-based processing examples
- [ ] Add attended automation examples with user forms
- [ ] Create CI/CD pipeline with GitHub Actions + UiPath CLI
- [ ] Add unit tests using UiPath Testing Activities
- [ ] Migrate projects to Windows (modern) design experience
- [ ] Add error handling and retry patterns to all workflows

---

## 📄 License

This project is licensed under the **MIT License** — see the [LICENSE](LICENSE) file for details.

---

> 💡 **Tip:** Star ⭐ this repository if you find it helpful!
