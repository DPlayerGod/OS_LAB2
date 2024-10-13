#!/bin/bash

# Kiem tra va tao thu muc PNG va JPG neu chua co
[ ! -d "PNG" ] && mkdir PNG
[ ! -d "JPG" ] && mkdir JPG

# Di chuyen cac file PNG vao thu muc PNG
png_count=$(find OS_LAB2_IMG -type f -name "*.png" | wc -l)
if [ $png_count -gt 0 ]; then
  find OS_LAB2_IMG -type f -name "*.png" -exec mv {} PNG/ \;
  echo "$png_count PNG files moved to PNG folder."
else
  echo "No PNG files found."
fi

# Tuong tu, di chuyen cac file JPG vao thu muc JPG
jpg_count=$(find OS_LAB2_IMG -type f -name "*.jpg" | wc -l)
if [ $jpg_count -gt 0 ]; then
  find OS_LAB2_IMG -type f -name "*.jpg" -exec mv {} JPG/ \;
  echo "$jpg_count JPG files moved to JPG folder."
else
  echo "No JPG files found."
fi
