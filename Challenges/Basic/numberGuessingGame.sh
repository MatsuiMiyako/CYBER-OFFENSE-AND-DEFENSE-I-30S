#!/bin/bash

read -p "Which play guessing mode you want doing? [ (f)ixed / (r)andom / (q)uit ]: " mode
echo

if [[ $mode = f ]]; then
    while true; do
        my_number=67

        read -p "Guess my whole number you think is from 1 to 100: "

        if [[ $REPLY == $my_number ]]; then
            echo "Yes correct you is did it good number!"
            exit
        else
            echo "No no wrong you be guessing bad. Fail you has did."

            if [[ $REPLY > $my_number ]]; then
                echo "HIGH is your guess."
            else
                echo "LOW is your guess."
            fi

            echo "Again you must do the guess now."
            echo
        fi
    done
elif [[ $mode = r ]]; then
    my_number=$((($RANDOM % 100)+1))

    read -p "Guess my whole number you think is from 1 to 100 with one chance: "

    if [[ $REPLY == $my_number ]]; then
        echo "Correct yes is happen finally!"
        exit
    else
        echo "Wronging happened. You guess is $REPLY but number real is $my_number why you do this."
    fi
elif [[ $mode = q ]]; then
    echo "No gamble for you! Clean you are!"
    exit
else
    echo "Good day! Mode bad you choose. Please choose (f)ixed or (r)andom or (q)uit."
fi
