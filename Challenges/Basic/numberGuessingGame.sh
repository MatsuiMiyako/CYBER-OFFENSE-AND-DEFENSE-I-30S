#!/bin/bash

read -p "Which play guessing mode you want doing? (fixed/random): " mode

if [[ $mode = fixed ]]; then
    while true; do
        my_number=67

        read -p "Guess number you think is from 1 to 100: "

        if [[ $REPLY == $my_number ]]; then
            echo "Yes correct you is did it good number!"
            exit
        else
            echo "No no wrong you be guessing bad."
            echo "Fail you has did."
            echo "Again you must do the guess now."
            echo
        fi
    done
elif [[ $mode = random ]]; then
    my_number=$((($RANDOM % 10)+1))

    read -p "Guess number you think is from 1 to 100:"

    if [[ $REPLY == $my_number ]]; then
        echo "Correct yes is happen finally!"
        exit
    else
        echo "Wronging happened. You guess is '$REPLY' but number real is '$my_number' why you do this."
    fi
else
    echo "Invalid mode"

fi
