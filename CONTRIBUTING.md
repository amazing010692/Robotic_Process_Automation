# Contributing to Robotic Process Automation

Thank you for your interest in contributing! This guide will help you get started.

## Getting Started

1. Fork the repository
2. Clone your fork locally
3. Create a new branch for your feature or fix

## Project Structure Convention

When adding a new robot, follow this naming pattern:

```
RobotN-DescriptiveName/
├── Main.xaml           # Entry point (required)
├── project.json        # UiPath project manifest (required)
├── *.xaml              # Additional workflows
└── data/              # Input/output data files
```

## Development Guidelines

### Naming Conventions

- **Folders:** `RobotN-PascalCaseDescription`
- **Workflows:** `PascalCase.xaml` (e.g., `DataProcessing.xaml`)
- **Variables:** `camelCase` (e.g., `customerName`)
- **Arguments:** `in_PascalCase`, `out_PascalCase`, `io_PascalCase`

### Best Practices

- Always include a meaningful `description` in `project.json`
- Use Try-Catch for error handling in production workflows
- Add Log Message activities for debugging
- Keep workflows under 30 activities — split into sub-workflows
- Use relative paths for file references

### Commit Messages

Use clear, descriptive commit messages:

```
feat: Add Robot7 - Email automation workflow
fix: Correct selector in Robot3 form submission
docs: Update README with new robot description
```

## Pull Request Process

1. Ensure your workflow runs successfully in UiPath Studio
2. Update the README if adding a new robot
3. Remove any `.local/` or `.settings/` folders from your commit
4. Submit a PR with a clear description of what the robot does

## Code of Conduct

- Be respectful and constructive
- Help others learn RPA concepts
- Report issues with clear reproduction steps

## Questions?

Open an issue with the `question` label.
