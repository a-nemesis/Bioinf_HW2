#!/bin/zsh
if [ $# -eq 0 ]; then
    echo "No project name provided"
    exit 1
fi

PROJECT_NAME="$1"

mkdir -p "$PROJECT_NAME"/{data,scripts,results}

touch "$PROJECT_NAME/data/raw_data.txt"
chmod 600 "$PROJECT_NAME/data/raw_data.txt"

cat > "$PROJECT_NAME/scripts/run_analysis.sh" << EOF
#!/bin/zsh
echo "Hello from $1"
EOF

chmod +x "$PROJECT_NAME/scripts/run_analysis.sh"


