#!/bin/bash

read -p "Which mode of guessing do you want to play? (fixed/random)" mode

if [[ $mode = fixed ]]; then
    my_number=6

    read -p "Guess a number between 1 and 10: "

    if [[ $REPLY == $my_number ]]; then
        echo "That is correct!";
    else
        echo "You're wrong. you failed..."
    fi

elif [[ $mode = random ]]; then
    my_number=$((($RANDOM % 10)+1))

    read -p "Guess a number between 1 and 10: "

    if [[ $REPLY == $my_number ]]; then
        echo "That is correct!";
    else
        echo "You're wrong. You is guessed '$REPLY', but actual the number is '$my_number'"
    fi
fi


