# Git Cleanup Guide

## Removing Previously Tracked Files

The `.gitignore` now excludes `.local/`, `.settings/`, `.screenshots/`, and `.tmh/` directories. However, files already tracked by git need to be explicitly removed from tracking.

Run this command once to clean up the repository:

```bash
# Remove cached files that should now be ignored
git rm -r --cached **/.local/
git rm -r --cached **/.settings/
git rm -r --cached **/.screenshots/
git rm -r --cached **/.tmh/
git rm --cached **/debug.log

# Commit the cleanup
git add .gitignore
git commit -m "chore: remove cached files now covered by .gitignore"
```

This removes the files from git tracking without deleting them from your local filesystem.

## Verifying Ignore Rules

```bash
# Check if a specific file is ignored
git check-ignore -v path/to/file

# List all ignored files
git status --ignored
```
