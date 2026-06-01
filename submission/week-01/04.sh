#!/bin/bash
find "$1" -type f -name "*.txt" -print0 | while IFS= read -r -d '' file; do mv "$file" "${file%.txt}.md"; done