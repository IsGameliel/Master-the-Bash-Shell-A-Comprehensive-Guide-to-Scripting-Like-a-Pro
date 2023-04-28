Sure! Here are five examples of iterating over arrays with for loops in Bash:

Example 1: Iterating over an array of strings

```
#!/bin/bash

fruits=("apple" "banana" "cherry" "date")

for fruit in "${fruits[@]}"
do
    echo $fruit
done
```

This script defines an array of four strings, and then uses a for loop to iterate over each element of the array and print it to the console.

Example 2: Iterating over an array of integers

```
#!/bin/bash

numbers=(1 2 3 4 5)

for number in "${numbers[@]}"
do
    echo $number
done
```

This script defines an array of five integers, and then uses a for loop to iterate over each element of the array and print it to the console.

Example 3: Iterating over an array with a specified range

```
#!/bin/bash

animals=("dog" "cat" "bird" "fish" "hamster")

for i in {0..2}
do
    echo ${animals[$i]}
done
```

This script defines an array of five strings, and then uses a for loop with a specified range to iterate over the first three elements of the array and print them to the console.

Example 4: Iterating over an array with a conditional statement

```
#!/bin/bash

colors=("red" "green" "blue" "yellow" "orange")

for color in "${colors[@]}"
do
    if [[ $color == "blue" || $color == "green" ]]
    then
        echo $color
    fi
done
```

This script defines an array of five strings, and then uses a for loop with a conditional statement to iterate over each element of the array and print it to the console if it matches one of the specified colors.

Example 5: Iterating over an array with an index counter

```
#!/bin/bash

names=("Alice" "Bob" "Charlie" "Dave")

for i in "${!names[@]}"
do
    echo "Index $i: ${names[$i]}"
done
```

This script defines an array of four strings, and then uses a for loop with an index counter to iterate over each element of the array and print its index and value to the console.