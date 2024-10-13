#!/bin/bash

# Kiem tra xem so luong doi so co dung khong
if [ "$#" -ne 2 ]; then
  echo "Vui long nhap dung 2 doi so: mot chuoi va mot duong dan."
  exit 1
fi

# Luu chuoi va duong dan vao cac bien
str=$1
path=$2

# Kiem tra xem duong dan co hop le khong
if [ ! -d "$path" ]; then
  echo "Duong dan khong ton tai."
  exit 1
fi

# Tim kiem chuoi trong cac file van ban trong duong dan
found=0
for file in "$path"/*.txt; do
  if grep -q "$str" "$file"; then
    echo "Tim thay chuoi '$str' trong file: $file"
    echo "Cac dong chua chuoi:"
    grep "$str" "$file"
    found=1
  fi
done

# Neu khong tim thay chuoi trong bat ky file nao
if [ "$found" -eq 0 ]; then
  echo "Khong tim thay chuoi '$str' trong bat ky file van ban nao trong duong dan: $path"
fi
