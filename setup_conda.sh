#!/bin/bash

# Conda environment setup script for Sphinx Math Textbook
# Run this from the project root directory

echo "Setting up Conda environment for Sphinx Math Textbook..."
echo ""

# Check if conda is installed
if ! command -v conda &> /dev/null; then
    echo "❌ Conda is not installed or not in PATH"
    echo "Please install Miniconda or Anaconda first"
    exit 1
fi

# Create conda environment
echo "Creating conda environment: sphinx-textbook"
conda create -n sphinx-textbook python=3.11 -y

# Activate the environment
echo ""
echo "Activating environment..."
source activate sphinx-textbook

# Install dependencies from requirements.txt
echo ""
echo "Installing Python dependencies from requirements.txt..."
pip install -r requirements.txt

echo ""
echo "✓ Conda environment setup complete!"
echo ""
echo "To activate the environment in the future, run:"
echo "  conda activate sphinx-textbook"
echo ""
echo "To deactivate, run:"
echo "  conda deactivate"
echo ""
echo "To build the documentation, run:"
echo "  sphinx-build -T -W --keep-going doc _build/html"
echo ""
echo "To view in Firefox, run:"
echo "  firefox _build/html/index.html"