1. Basic example iterating over a simple array:
```bash
#!/bin/bash

# Define an array
fruits=("apple" "banana" "orange" "grape")

# Get the length of the array
len=${#fruits[@]}

# Initialize a counter variable
i=0

# Loop through the array elements
while [ $i -lt $len ]; do
  # Print each element
  echo ${fruits[$i]}

  # Increment the counter
  i=$((i+1))
done
```

2. Using the `read` command to iterate over an array:
```bash
#!/bin/bash

# Define an array
colors=("red" "green" "blue" "yellow")

# Initialize a counter variable
i=0

# Loop through the array elements
while read -r color; do
  # Print each element
  echo $color

  # Increment the counter
  i=$((i+1))
done <<< "${colors[@]}"
```

3. Using a while loop to filter array elements:
```bash
#!/bin/bash

# Define an array
numbers=(1 2 3 4 5 6 7 8 9 10)

# Initialize a counter variable
i=0

# Loop through the array elements
while [ $i -lt ${#numbers[@]} ]; do
  # Check if the element is even
  if [ $(( ${numbers[$i]} % 2 )) -eq 0 ]; then
    # Print the even number
    echo ${numbers[$i]}
  fi

  # Increment the counter
  i=$((i+1))
done
```

4. Using a while loop to search for an element in an array:
```bash
#!/bin/bash

# Define an array
names=("Alice" "Bob" "Charlie" "David" "Eve")

# Initialize a counter variable
i=0

# Initialize a variable to store the index of the element we're searching for
index=-1

# Loop through the array elements
while [ $i -lt ${#names[@]} ]; do
  # Check if the current element is the one we're searching for
  if [ ${names[$i]} == "Charlie" ]; then
    # Store the index of the element
    index=$i

    # Exit the loop
    break
  fi

  # Increment the counter
  i=$((i+1))
done

# Print the index of the element
echo "Charlie is at index $index"
```

5. Using a while loop to modify array elements:
```bash
#!/bin/bash

# Define an array
names=("Alice" "Bob" "Charlie" "David" "Eve")

# Initialize a counter variable
i=0

# Loop through the array elements
while [ $i -lt ${#names[@]} ]; do
  # Modify each element by adding "Smith" to the end
  names[$i]="${names[$i]} Smith"

  # Increment the counter
  i=$((i+1))
done

# Print the modified array
echo "${names[@]}"
```

Note that in all of these examples, the `while` loop condition checks whether the counter variable (`i`) is less than the length of the array (`${#array[@]}`), which ensures that the loop iterates over all the elements in the array.