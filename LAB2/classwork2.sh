#!/bin/sh

read -p "Please input your VN's grade: " grade

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

