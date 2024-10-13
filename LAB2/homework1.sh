#!/bin/bash

read -p "Please enter StudentID : " idFind 
found=0

# Dat Internal Field Separator la dau cham phay
IFS=';'

# Doc file CSV
while read -r id name grade; do
  # Kiem tra xem co phai tieu de hay khong ?
  if [[ "$id" == "StudentID" ]]; then
    continue
  fi

  # Neu id khop voi 
  if [[ "$idFind" == "$id" ]]; then
    echo "ID: $id"
    echo "Name: $name"
    echo "Grade: $grade"
    # Xep loai sinh vien
    grade=$(echo "$grade" | tr -d '[:space:]' | tr -d '\r') # Loai bo nhung ki tu an
    if [ "$grade" -ge 900 ]; then
    	echo "Your letter grade is A+"
    elif [ "$grade" -ge 800 ]; then 
    	echo "Your letter grade is A"
    elif [ "$grade" -ge 700 ]; then
    	echo "Your letter grade is B+"
    elif [ "$grade" -ge 600 ]; then
    	echo "Your letter grade is B"
    elif [ "$grade" -ge 500 ]; then
     	 echo "Your letter grade is C"
    else 
    	echo "Your letter grade is D/F"
    fi

    found=1
    break
  fi
done < gradebook.csv

# Neu khong tim thay sinh vien
if [[ "$found" -eq 0 ]]; then
  echo "Can't find student with StudentID :  $idFind"
fi
