## Project: Word Counter

The goal of this project is to create a Bash script that counts the number of occurrences of each word in a text file and displays the results in alphabetical order.

1. Create a new Bash script file called `word_counter.sh`.
```
touch word_counter.sh
```

2. Open the file in your preferred text editor and add the following code to the beginning of the file to ensure the script is executed by Bash:
```
#!/bin/bash
```

3. Define an array to store the unique words found in the text file and initialize it to an empty array.
```
words=()
```

4. Define a for loop that reads each line of the text file and splits it into individual words. For each word, check if it already exists in the `words` array. If it does not exist, add it to the array. You can use the `tr` command to split the lines into words based on spaces and the `grep` command to filter out non-alphabetic characters.
```
for line in $(cat $1); do
  for word in $(echo $line | tr " " "\n" | grep -oE "[[:alpha:]]+"); do
    if [[ "${words[@]}" =~ "${word}" ]]; then
      continue
    else
      words+=("${word}")
    fi
  done
done
```

5. Define another for loop that iterates through each word in the `words` array and counts the number of occurrences of that word in the text file using the `grep` command. Store the word and its count in a new associative array called `word_counts`.
```
declare -A word_counts
for word in "${words[@]}"; do
  count=$(grep -c "\<${word}\>" $1)
  word_counts[$word]=$count
done
```

6. Finally, define a for loop that iterates through the keys of the `word_counts` associative array and displays the word and its count in alphabetical order. You can use the `sort` command to sort the keys in alphabetical order.
```
for word in $(echo "${!word_counts[@]}" | tr " " "\n" | sort); do
  count=${word_counts[$word]}
  echo "$word: $count"
done
```

7. Save and close the file. Make the file executable using the `chmod` command.
```
chmod +x word_counter.sh
```

8. Run the script, passing the path to the text file as an argument. The script will display the results in alphabetical order.
```
./word_counter.sh path/to/text/file.txt
```

That's it! You now have a Bash script that counts the number of occurrences of each word in a text file and displays the results in alphabetical order. You can customize the script to fit your needs or modify it to perform other tasks that require for loops and arrays.