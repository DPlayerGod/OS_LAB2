#!/bin/bash

# a) Nhap thong tin nguoi nhap
read -p "Please enter your full name: " fullname

# Thay the khoang trang bang underscore
dir_name=$(echo $fullname | tr ' ' '_')

# Tao thu muc theo ten cua nguoi dung
mkdir -p "$dir_name"
echo "Directory '$dir_name' created."

# b) Doc danh sach khoa hoc tu tep subject.txt va tao thu muc cho moi
# ma khoa hoc
if [ -f "subject.txt" ]; then
    # Di chuyen subject.txt vao thu muc da tao
    mv subject.txt "$dir_name/"

    # Doc tung dong subject.txt va tao thu muc tuong ung
    while IFS= read -r subject_code; do
        # Tao thu muc ten la ma khoa hoc
        mkdir -p "$dir_name/$subject_code"
        echo "Directory for course '$subject_code' created in '$dir_name'."
    done < "$dir_name/subject.txt"
else
    echo "Error: subject.txt not found!"
fi
