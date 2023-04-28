

Arrays are used to store a collection of values in a single variable. In Bash, arrays are created using the `declare` or `local` built-in commands, followed by the array name and the values in parentheses separated by spaces. Here is an example of how to declare an array:

```
declare -a my_array=(value1 value2 value3)
```

or

```
local -a my_array=(value1 value2 value3)
```

where `-a` specifies that the variable is an array.

To access the values in an array, we use the `${array_name[index]}` syntax, where `index` is the position of the value in the array, starting from 0. For example, to access the second value in `my_array`, we use `${my_array[1]}`.

Here's an example that shows how to declare an array, access its values, and print them to the console:

```
declare -a fruits=("apple" "banana" "orange")

echo "My favorite fruit is ${fruits[0]}"    # Output: My favorite fruit is apple
echo "I also like ${fruits[1]} and ${fruits[2]}"    # Output: I also like banana and orange
```

Now, let's move on to for loops. In Bash, the syntax for a for loop is:

```
for variable in list
do
    commands
done
```

Here, `variable` is a temporary variable that takes on the value of each element in the `list`, and `commands` is the code that is executed for each iteration of the loop.

Here's an example that shows how to use a for loop to iterate through an array and print its values to the console:

```
declare -a colors=("red" "green" "blue")

for color in "${colors[@]}"
do
    echo "$color"
done
```

Output:
```
red
green
blue
```

In the above example, `"${colors[@]}"` expands to all the elements in the `colors` array. So, the `for` loop iterates through each value in the array and prints it to the console using `echo`.

We can also use a for loop to iterate through a range of values. Here's an example that shows how to use a for loop to print the numbers from 1 to 5:

```
for i in {1..5}
do
    echo "$i"
done
```

Output:
```
1
2
3
4
5
```

In this example, `{1..5}` expands to a range of values from 1 to 5. The `for` loop iterates through each value in the range and prints it to the console using `echo`.