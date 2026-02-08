#!/bin/bash
echo "Enter 10 different numbers one at a time:"
# Assuming the user will enter valid numbers
for i in {1..10}; do
    if [[ $i == 1 ]]; then
        str=$i
        str+="st"
        read -p "$str number: " num$i
    elif [[ $i == 2 ]]; then
        str=$i
        str+="nd"
        read -p "$str number: " num$i
    elif [[ $i == 3 ]]; then
        str=$i
        str+="rd"
        read -p "$str number: " num$i
    else
        str=$i
        str+="th"
        read -p "$str number: " num$i
    fi
done

numbers=($num1 $num2 $num3 $num4 $num5 $num6 $num7 $num8 $num9 $num10)
read -p "How do you want to sort the numbers? [ (a)scending / (d)escending / (k)ey / (q)uit ]: " order
if [[ $order == a ]]; then

elif [[ $order == d ]]; then

elif [[ $order == k ]]; then
    read -p "Enter the key number to sort by: " key
elif [[ $order == q ]]; then
    echo "You quit the sorting. Bye bye!"
    exit
    
else
    echo "Invalid sorting order. Please choose (a)scending, (d)escending, or (k)ey or (q)uit."
    exit
fi
