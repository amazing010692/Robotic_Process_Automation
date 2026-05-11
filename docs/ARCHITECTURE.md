# Architecture Documentation

## Overview

This repository contains a collection of UiPath RPA (Robotic Process Automation) projects. Each project is an independent automation workflow designed to solve a specific business process challenge.

## Technology Foundation

All projects are built on the **UiPath Platform** using:

- **UiPath Studio** — Visual workflow designer
- **XAML** — Workflow definition format (eXtensible Application Markup Language)
- **VB.NET** — Expression language for logic and data manipulation
- **NuGet** — Package management for UiPath activity libraries

## Project Architecture Pattern

Each robot follows UiPath's standard project structure:

```
RobotN-Name/
├── project.json          # Manifest: name, dependencies, entry points
├── Main.xaml             # Entry workflow (orchestrator)
├── [SubWorkflow].xaml    # Modular sub-processes (if applicable)
└── [data files]          # Input/output data (Excel, PDF, etc.)
```

### Entry Point

Every project uses `Main.xaml` as the single entry point, which:
1. Initializes variables and configuration
2. Orchestrates sub-workflows (if any)
3. Handles top-level exceptions
4. Produces output/results

### Dependency Management

Dependencies are declared in `project.json` under the `dependencies` key:

| Package | Purpose |
|---|---|
| UiPath.System.Activities | Core activities (assign, if, loops) |
| UiPath.UIAutomation.Activities | UI interaction (click, type, scrape) |
| UiPath.Excel.Activities | Excel read/write operations |
| UiPath.Mail.Activities | Email send/receive |
| UiPath.PDF.Activities | PDF text extraction |

## Data Flow Patterns

### Pattern 1: File-to-Application (Robot2, Robot3)
```
Excel File → Read Data → Loop Rows → Fill Application Form → Submit
```

### Pattern 2: Application-to-File (Robot4, Robot5, Robot6)
```
Web/PDF Source → Extract Data → Transform → Write to Excel
```

### Pattern 3: Interactive (Robot1, myFirstRobot)
```
User Input → Process Logic → Display Output
```

## Scalability Considerations

- **Robot5** demonstrates batch processing (1,000 documents)
- Sub-workflows enable reuse across projects
- Each project is independently deployable to UiPath Orchestrator
- Projects can be scheduled, triggered, or run on-demand

## Deployment Architecture

```
┌──────────────┐     ┌──────────────────┐     ┌─────────────┐
│  UiPath      │────▶│   Orchestrator   │────▶│   Robot     │
│  Studio      │     │   (Scheduler)    │     │   (Runtime) │
│  (Dev)       │     │                  │     │             │
└──────────────┘     └──────────────────┘     └─────────────┘
       │                      │                       │
       ▼                      ▼                       ▼
   .nupkg              Queue/Triggers           Execute .xaml
   (Package)           Assets/Creds             Log Results
```

## Error Handling Strategy

Recommended pattern for production workflows:

1. **Try-Catch** around main logic blocks
2. **Retry Scope** for transient failures (network, UI timing)
3. **Log Message** at key checkpoints
4. **Throw** for unrecoverable errors with meaningful messages
