#!/bin/bash

# Font Conversion Script
# Converts TTF/OTF fonts to WOFF and WOFF2 formats
# Requires: fonttools (pip install fonttools brotli)

echo "Installing fonttools if not already installed..."
pip3 install fonttools brotli --quiet 2>/dev/null || echo "fonttools already installed"

echo ""
echo "=========================================="
echo "Font Conversion Script"
echo "=========================================="
echo ""

# Function to convert a single font file
convert_font() {
    local input_file="$1"
    local output_dir="$2"
    local filename=$(basename "$input_file" | sed 's/\.[^.]*$//')
    
    echo "Converting: $input_file"
    
    # Convert to WOFF
    fonttools ttLib.woff2 compress -o "$output_dir/${filename}.woff" "$input_file" 2>/dev/null || \
    python3 -m fontTools.ttLib.woff2 compress -o "$output_dir/${filename}.woff" "$input_file"
    
    # Convert to WOFF2
    fonttools ttLib.woff2 compress -o "$output_dir/${filename}.woff2" "$input_file" 2>/dev/null || \
    python3 -m fontTools.ttLib.woff2 compress -o "$output_dir/${filename}.woff2" "$input_file"
    
    echo "  ✓ Created ${filename}.woff"
    echo "  ✓ Created ${filename}.woff2"
    echo ""
}

# Instructions
echo "INSTRUCTIONS:"
echo "1. Place your font files in a 'source-fonts' directory"
echo "2. Organize them like this:"
echo "   source-fonts/"
echo "     roobert/"
echo "       Roobert-Regular.ttf"
echo "       Roobert-Medium.ttf"
echo "       Roobert-SemiBold.ttf"
echo "       Roobert-Bold.ttf"
echo "     rebond-grotesque/"
echo "       RebondGrotesque-Regular.otf"
echo "       RebondGrotesque-Bold.otf"
echo ""
echo "3. Run this script: bash convert-fonts.sh"
echo ""
echo "=========================================="
echo ""

# Check if source-fonts directory exists
if [ ! -d "source-fonts" ]; then
    echo "ERROR: 'source-fonts' directory not found!"
    echo "Please create it and add your font files as shown above."
    exit 1
fi

# Convert Roobert fonts
if [ -d "source-fonts/roobert" ]; then
    echo "Converting Roobert fonts..."
    for font in source-fonts/roobert/*.ttf; do
        if [ -f "$font" ]; then
            convert_font "$font" "fonts/roobert"
        fi
    done
fi

# Convert Rebond Grotesque fonts
if [ -d "source-fonts/rebond-grotesque" ]; then
    echo "Converting Rebond Grotesque fonts..."
    for font in source-fonts/rebond-grotesque/*.otf; do
        if [ -f "$font" ]; then
            convert_font "$font" "fonts/rebond-grotesque"
        fi
    done
fi

echo "=========================================="
echo "Conversion complete!"
echo "Check the fonts/ directory for your converted files."
echo "=========================================="
