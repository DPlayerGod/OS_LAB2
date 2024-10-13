#!/bin/bash

# Yeu cau nguoi dung nhap tuoi
read -p "Vui long nhap tuoi cua ban: " age

# Kiem tra xem dau vao co phai la mot so va nam trong khoang 0-100
if ! [[ "$age" =~ ^[0-9]+$ ]] || [ "$age" -lt 0 ] || [ "$age" -gt 100 ]; then
  echo "Vui long nhap mot so hop le tu 0 den 100."
  exit 1
fi

# Phan loai tuoi
if [ "$age" -lt 12 ]; then
  echo "Ban la mot dua tre."
elif [ "$age" -ge 12 ] && [ "$age" -le 18 ]; then
  echo "Ban la mot thieu nien."
else
  echo "Ban la nguoi lon."
fi

