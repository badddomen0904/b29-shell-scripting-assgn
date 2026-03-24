#!/bin/bash

if [ -z "$1" ] || [ ! -f "$1" ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

if [ ! -s "$1" ]; then
    echo "Error: File is empty."
    exit 1
fi
STOP_WORDS="the|is|and|a|an|in|to|of|it|that|with|for|on|was|as|at"

echo "--- Top 5 Most Frequent Words ---"

cat "$1" | \
    tr -d '[:punct:]' | \
    tr '[:upper:]' '[:lower:]' | \
    tr -s ' ' '\n' | \
    grep -Ev "^($STOP_WORDS)$" | \
    sort | \
    uniq -c | \
    sort -rn | \
    head -n 5
