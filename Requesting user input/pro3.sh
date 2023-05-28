

# Step 1: define a function to ask a question. The function should take two arguments: the question and the correct answer. Use the echo command to display the question and the read command to take the user's input.
function ask_question {
    echo "$1"
    read -t $time answer
    if [[ "$answer" == "$2" ]]; then
        echo "Correct"
        score=$((score + 1))
    elif [[ -z "$answer" ]]; then
        echo "Time is up the correct answer is: $2"
    else
        echo "Wrong! the correct answer is: $2"
    fi
}

# Step 2: Define an array of questions and answers. Each element of the array should contain a question and its corresponding answer in the format of "question|answer". You can use the IFS (Internal Field Separator) variable to split the elements into separate variables.

questions=(
    "What is the capital of France?|Paris"
    "What is the largest planet in our solar system?|Jupiter"
    "What is the name of the highest mountain in the world?|Mount Everest"
)

IFS="|"
score=0
time=10
for question in "${questions[@]}"; do
    ask_question $question
done

echo "Your final score is: $score"

# Step 3: Add a scoring system to the game. Define a variable to keep track of the score and increment it for every correct answer. Display the final score at the end of the game.


# Step 4: Add a timer to the game using the -t option for the read command. Define a variable to keep track of the time and decrement it for every question. End the game if the time runs out.
