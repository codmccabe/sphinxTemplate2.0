#!/bin/bash

# Script to create Math 2231 Calculus I Sphinx project structure
# Run this from the project root directory

echo "Creating Math 2231 Calculus I project structure..."

# Create main doc directory if it doesn't exist
mkdir -p doc/_static

# Create chapter directories
mkdir -p doc/chapter1
mkdir -p doc/chapter2
mkdir -p doc/chapter3

# Create welcome.md
touch doc/welcome.md

# Create Chapter 1 files (Functions) - 6 files
for i in {1..6}; do
    touch "doc/chapter1/1${i}.md"
    echo "Created doc/chapter1/1${i}.md"
done

# Create Chapter 2 files (Limits and Continuity) - 6 files
for i in {1..6}; do
    touch "doc/chapter2/2${i}.md"
    echo "Created doc/chapter2/2${i}.md"
done

# Create Chapter 3 files (Derivatives) - 6 files
for i in {1..6}; do
    touch "doc/chapter3/3${i}.md"
    echo "Created doc/chapter3/3${i}.md"
done

echo ""
echo "✓ Project structure created successfully!"
echo ""
echo "Directory structure:"
echo "doc/"
echo "├── _static/"
echo "│   └── custom_accessibility.css"
echo "├── chapter1/ (11.md - 16.md)"
echo "├── chapter2/ (21.md - 26.md)"
echo "├── chapter3/ (31.md - 36.md)"
echo "├── welcome.md"
echo "├── conf.py"
echo "└── index.rst"
echo ""
echo "Next steps:"
echo "1. Place conf.py in doc/ directory"
echo "2. Place index.rst in doc/ directory"
echo "3. Place custom_accessibility.css in doc/_static/ directory"
echo "4. Run: sphinx-build -T -W --keep-going doc _build/html"
echo "5. Open: firefox _build/html/index.html"