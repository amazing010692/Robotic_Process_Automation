#!/bin/bash
# =============================================================================
# validate.sh - Validates UiPath project structure
# Usage: ./scripts/validate.sh
# =============================================================================

set -e

GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m'

echo "🔍 Validating UiPath project structure..."
echo "==========================================="

errors=0
projects=0

for dir in */; do
    if [ -f "$dir/project.json" ]; then
        projects=$((projects + 1))

        # Check Main.xaml exists
        if [ ! -f "$dir/Main.xaml" ]; then
            echo -e "${RED}❌ $dir — Missing Main.xaml${NC}"
            errors=$((errors + 1))
        fi

        # Check project.json is valid JSON
        if ! python3 -c "import json; json.load(open('${dir}project.json'))" 2>/dev/null; then
            echo -e "${RED}❌ $dir — Invalid project.json${NC}"
            errors=$((errors + 1))
        fi

        # Check for meaningful description
        desc=$(python3 -c "import json; print(json.load(open('${dir}project.json')).get('description',''))" 2>/dev/null)
        if [ "$desc" = "Blank Process" ] || [ -z "$desc" ]; then
            echo -e "${RED}⚠️  $dir — Missing meaningful description in project.json${NC}"
        fi

        # Check for README
        if [ ! -f "$dir/README.md" ]; then
            echo -e "${RED}⚠️  $dir — Missing README.md${NC}"
        fi

        echo -e "${GREEN}✅ $dir — Valid${NC}"
    fi
done

echo "==========================================="
echo "📊 Results: $projects projects scanned, $errors error(s)"

if [ $errors -gt 0 ]; then
    echo -e "${RED}❌ Validation FAILED${NC}"
    exit 1
fi

echo -e "${GREEN}✅ All projects validated successfully${NC}"
