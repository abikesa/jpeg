#!/bin/bash

# Convert all HEIC images in ~/Desktop to JPEG format and save them in a subfolder.

SOURCE_DIR=~/Desktop
OUTPUT_DIR="$SOURCE_DIR/converted_jpegs"

mkdir -p "$OUTPUT_DIR"

shopt -s nullglob
for file in "$SOURCE_DIR"/*.HEIC "$SOURCE_DIR"/*.heic; do
    if [[ -f "$file" ]]; then
        filename=$(basename "$file")
        output_filename="${filename%.*}.jpeg"
        output_path="$OUTPUT_DIR/$output_filename"

        echo "📷 Converting: $filename → $output_filename"
        convert "$file" "$output_path" || echo "❌ Failed: $filename"
    fi
done

echo "✅ All available HEIC files processed."
