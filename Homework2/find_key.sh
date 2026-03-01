#!/bin/zsh
if [ -f "super_secret_key.txt" ]; then
    echo "Found it!" > found.log
else
    cat super_secret_key.txt 2>/dev/null
    echo "I did my best"
fi
