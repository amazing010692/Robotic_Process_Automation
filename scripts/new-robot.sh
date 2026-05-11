#!/bin/bash
# =============================================================================
# new-robot.sh - Scaffolds a new UiPath robot project
# Usage: ./scripts/new-robot.sh <RobotNumber> <RobotName> <Description>
# Example: ./scripts/new-robot.sh 7 EmailAutomation "Automates email processing"
# =============================================================================

set -e

if [ $# -lt 3 ]; then
    echo "Usage: $0 <RobotNumber> <RobotName> <Description>"
    echo "Example: $0 7 EmailAutomation \"Automates email processing\""
    exit 1
fi

NUMBER=$1
NAME=$2
DESC=$3
FOLDER="Robot${NUMBER}-${NAME}"

if [ -d "$FOLDER" ]; then
    echo "❌ Directory $FOLDER already exists"
    exit 1
fi

echo "📁 Creating $FOLDER..."
mkdir -p "$FOLDER"

# Create project.json
cat > "$FOLDER/project.json" << EOF
{
  "name": "$FOLDER",
  "description": "$DESC",
  "main": "Main.xaml",
  "dependencies": {
    "UiPath.Excel.Activities": "[2.11.4]",
    "UiPath.System.Activities": "[21.10.2]",
    "UiPath.UIAutomation.Activities": "[21.10.3]"
  },
  "schemaVersion": "4.0",
  "projectVersion": "1.0.0",
  "runtimeOptions": {
    "autoDispose": false,
    "isPausable": true,
    "requiresUserInteraction": true,
    "supportsPersistence": false,
    "excludedLoggedData": ["Private:*", "*password*"],
    "executionType": "Workflow"
  },
  "designOptions": {
    "projectProfile": "Developement",
    "outputType": "Process"
  },
  "expressionLanguage": "VisualBasic",
  "entryPoints": [
    {
      "filePath": "Main.xaml",
      "uniqueId": "$(uuidgen 2>/dev/null || python3 -c 'import uuid; print(uuid.uuid4())')",
      "input": [],
      "output": []
    }
  ],
  "isTemplate": false
}
EOF

# Create README
cat > "$FOLDER/README.md" << EOF
# $FOLDER — $NAME

## Description

$DESC

## How It Works

1. Opens \`Main.xaml\` as entry point
2. <!-- Describe workflow steps -->

## Prerequisites

- UiPath Studio 20.10+
- <!-- Add specific requirements -->

## How to Run

1. Open \`project.json\` in UiPath Studio
2. Run \`Main.xaml\`
EOF

echo "✅ Created $FOLDER with project.json and README.md"
echo "📝 Next: Open UiPath Studio and create Main.xaml in $FOLDER/"
