# Security Policy

## Reporting a Vulnerability

If you discover a security vulnerability in this repository, please report it responsibly.

**Do NOT open a public GitHub issue for security vulnerabilities.**

Instead, please email the maintainer or use GitHub's private vulnerability reporting feature.

## Security Best Practices for UiPath Projects

### Credentials Management

- **Never** hardcode credentials in `.xaml` workflows
- Use **UiPath Orchestrator Assets** (Credential type) for production secrets
- Use **Windows Credential Manager** for local development
- The `.gitignore` in this repo excludes `.env` files

### Sensitive Data

- Input Excel files in this repo contain **sample/placeholder data only**
- No real PII (Personally Identifiable Information) is stored
- Output files are generated at runtime and excluded from commits

### Dependencies

- All UiPath packages are sourced from the official UiPath NuGet feed
- Review `project.json` dependencies before running any workflow

## Supported Versions

| Version | Supported |
|---|---|
| 1.0.x | ✅ Current |
