#!/bin/sh

# Thong tin sinh vien
ten_ban="Dang Quoc Cuong"
mssv="23520192"

# Yeu cau nguoi dung nhap thong tin
while true; do
  read -p "Nhap ten sinh vien: " ten_dang_nhap
  read -p "Nhap ma so sinh vien: " ma_so_dang_nhap

  # So sanh thong tin
  if [ "$ten_dang_nhap" = "$ten_ban" ] && [ "$ma_so_dang_nhap" = "$mssv" ]; then
    echo "Chao mung ban!"
    exit 0
  else
    echo "Access denied. Vui long thu lai!"
  fi
done
