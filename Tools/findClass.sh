#!/bin/bash
# Find where class names are in a folder recursively

if [ "$#" -ne 2 ]; then
    echo "Find where class names are in a folder recursively"
    echo "To Use: "
    echo " $0 <ClassName> <Directory>"
    exit 1
fi

className="$1"
directory="$2"

find "$directory" -type f \( -name "*.java" -o -name "*.cs" -o -name "*.cpp" -o -name "*.h" \) -exec grep -i -E -l "class.*$className" {} \;
