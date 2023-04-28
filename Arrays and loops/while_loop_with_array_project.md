## Project: Word Guessing Game

In this project, we will create a word guessing game where the user has to guess a random word from an array of words. The user will have a limited number of guesses and will receive feedback on their guesses.

### Step 1: Create the array of words

First, let's create an array of words that the user will have to guess from. We can do this by assigning a list of words to a variable:

```
words=("banana" "apple" "orange" "kiwi" "pear")
```

### Step 2: Generate a random word

Next, let's generate a random word from the array. We can do this by getting the length of the array and using the `RANDOM` variable in bash to generate a random index:

```
# get the length of the array
len=${#words[@]}

# generate a random index
rand_index=$((RANDOM % len))

# get the word at the random index
word=${words[$rand_index]}
```

### Step 3: Set up the game

Now that we have a random word, let's set up the game. We will give the user a limited number of guesses and keep track of their guesses in an array:

```
# set the number of guesses
max_guesses=5

# create an empty array to store the user's guesses
guesses=()
```

### Step 4: Start the game loop

Now let's start the game loop. We will use a while loop to keep the game running until the user either guesses the word or runs out of guesses:

```
# set up a variable to track the number of guesses
num_guesses=0

# start the game loop
while [ $num_guesses -lt $max_guesses ]; do
    # get the user's guess
    read -p "Guess a fruit: " guess

    # add the guess to the guesses array
    guesses+=("$guess")

    # increment the number of guesses
    num_guesses=$((num_guesses+1))

    # check if the guess is correct
    if [ "$guess" = "$word" ]; then
        echo "Congratulations! You guessed the word!"
        break
    else
        echo "Sorry, that's not the word."
    fi
done
```

### Step 5: Display the results

Finally, let's display the results of the game. We will show the word that the user was trying to guess, the user's guesses, and whether they won or lost:

```
# show the results
echo "The word was $word"
echo "Your guesses: ${guesses[@]}"
if [ "$guess" != "$word" ]; then
    echo "Sorry, you ran out of guesses."
fi
```

And that's it! You now have a basic word guessing game in bash using while loops and arrays. You can customize the game by changing the words array, the number of guesses, and the feedback messages.