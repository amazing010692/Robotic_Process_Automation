# Getting Started with UiPath RPA Development

A beginner-friendly guide to understanding and running the projects in this repository.

## What is RPA?

**Robotic Process Automation (RPA)** uses software robots to automate repetitive tasks that humans normally perform on computers — clicking buttons, typing text, reading data, and moving files.

## What is UiPath?

**UiPath** is the leading RPA platform. It provides:
- A visual designer (UiPath Studio) to build automations
- A robot runtime to execute them
- An orchestrator to manage and schedule them at scale

## Understanding the Project Structure

Each robot in this repository is a standalone UiPath project:

```
RobotN-Name/
├── project.json    ← Tells UiPath what packages to install
├── Main.xaml       ← The workflow that runs when you press "Play"
└── [data files]    ← Excel/PDF inputs or outputs
```

## Your First Run (5 minutes)

1. Install [UiPath Studio Community Edition](https://www.uipath.com/start-trial) (free)
2. Clone this repo: `git clone https://github.com/amazing010692/Robotic_Process_Automation.git`
3. Open UiPath Studio → **Open Project** → select `Robot1-ClothingConsultant/project.json`
4. Click **Run** (F5)
5. Watch the robot interact with dialog boxes!

## Difficulty Progression

Start with these projects in order:

| Order | Project | Difficulty | Concepts Learned |
|---|---|---|---|
| 1 | myFirstRobot | ⭐ | Basic UI automation |
| 2 | Arguments | ⭐ | Data passing between workflows |
| 3 | Robot1 | ⭐⭐ | Decision logic (If/Switch) |
| 4 | Robot2 | ⭐⭐⭐ | Excel + CRM data entry |
| 5 | Robot3 | ⭐⭐⭐ | Dynamic web forms |
| 6 | Robot4 | ⭐⭐⭐⭐ | Web scraping + pagination |
| 7 | Robot5 | ⭐⭐⭐⭐ | Bulk PDF processing |
| 8 | Robot6 | ⭐⭐⭐⭐ | Live web data extraction |

## Key UiPath Concepts

| Concept | What It Means |
|---|---|
| **Activity** | A single action (click, type, read cell) |
| **Sequence** | Activities executed one after another |
| **Flowchart** | Activities with branching logic |
| **Variable** | Stores data within a workflow |
| **Argument** | Passes data between workflows |
| **Selector** | XML path that identifies a UI element |
| **DataTable** | In-memory table (like a spreadsheet) |

## Common Issues & Fixes

| Problem | Solution |
|---|---|
| "Package restore failed" | Manage Packages → click Restore |
| "Selector not found" | The target app's UI changed — re-record it |
| "File is in use" | Close Excel/PDF before running |
| Robot runs too fast | Add Delay activities or increase timeouts |

## Next Steps

- Read the [Architecture Guide](ARCHITECTURE.md)
- Try modifying Robot1 to add more clothing options
- Create your own robot using `./scripts/new-robot.sh`
