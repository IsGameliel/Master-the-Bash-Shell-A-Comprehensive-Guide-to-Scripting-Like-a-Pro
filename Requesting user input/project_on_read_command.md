# Project 3

Sure, here is a project idea based on the `read` command in bash:

Project: Create a Quiz Game Using Bash Scripting

In this project, you will create a quiz game using bash scripting and the `read` command. The game will ask the user multiple-choice questions and provide feedback on their answers. Here are the steps you can follow to create this project:

1. Create a bash script file and define a function to ask a question. The function should take two arguments: the question and the correct answer. Use the `echo` command to display the question and the `read` command to take the user's input.

```
#!/bin/bash

function ask_question {
    echo "$1"
    read answer
    if [[ "$answer" == "$2" ]]; then
        echo "Correct!"
    else
        echo "Wrong! The correct answer is: $2"
    fi
}
```

2. Define an array of questions and answers. Each element of the array should contain a question and its corresponding answer in the format of "question|answer". You can use the `IFS` (Internal Field Separator) variable to split the elements into separate variables.

```
#!/bin/bash

function ask_question {
    echo "$1"
    read answer
    if [[ "$answer" == "$2" ]]; then
        echo "Correct!"
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
for question in "${questions[@]}"; do
    ask_question $question
done
```

3. Add a scoring system to the game. Define a variable to keep track of the score and increment it for every correct answer. Display the final score at the end of the game.

```
#!/bin/bash

function ask_question {
    echo "$1"
    read answer
    if [[ "$answer" == "$2" ]]; then
        echo "Correct!"
        score=$((score + 1))
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
for question in "${questions[@]}"; do
    ask_question $question
done

echo "Your final score is: $score"
```

4. Add a timer to the game using the `-t` option for the `read` command. Define a variable to keep track of the time and decrement it for every question. End the game if the time runs out.

```
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
    ask_question $question
done

echo "Your final score is: $score"