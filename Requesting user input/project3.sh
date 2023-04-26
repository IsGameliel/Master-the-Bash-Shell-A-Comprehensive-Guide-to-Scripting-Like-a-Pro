#!/bin/bash

function ask_question {
    echo "$1"
    read -t $time answer
    if [[ "$answer" == "$2" ]]; then
        echo "Correct!"
        score=$((score + 1))
    elif [[ -z "$answer" ]]; then
        echo "Time's up! The correct answer is: $2"
    else
        echo "Wrong! The correct answer is: $2"
    fi
}

questions=(
    "What is the capital of France?|Paris"
    "What is the largest planet in our solar system?|Jupiter"
    "What is the highest mountain in the world?|Mount Everest"
)

IFS="|"
score=0
time=10
for question in "${questions[@]}"; do
    ask_question
