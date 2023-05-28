

Here are five examples of working with indexed arrays in bash:

1. Initializing an array:

```
my_array=(apple banana orange)
```

2. Accessing elements of an array:

```
echo ${my_array[0]}   # outputs "apple"
echo ${my_array[1]}   # outputs "banana"
echo ${my_array[2]}   # outputs "orange"
```

3. Adding an element to the end of an array:

```
my_array+=(grape)
```

4. Looping over an array:

```
for fruit in "${my_array[@]}"; do
    echo $fruit
done
```

## Quizes 
Sure, here are 7 quiz questions related to indexed arrays in bash:

1. How do you declare an indexed array in bash?<br>
A) `my_array={apple, banana, orange}`<br>
B) `my_array=("apple", "banana", "orange")`<br>
C) `my_array=(apple banana orange)`<br>
D) `my_array="apple banana orange"`<br>

Answer: C) `my_array=(apple banana orange)`

2. How do you access the first element of an indexed array in bash?<br>
A) `${my_array[1]}`<br>
B) `${my_array[0]}`<br>
C) `${my_array[2]}`<br>
D) `${my_array[-1]}`<br>

Answer: B) `${my_array[0]}`

3. How do you add an element to the end of an indexed array in bash?<br>
A) `my_array[-1]="new element"`<br>
B) `my_array+=(new element)`<br>
C) `my_array=(new element)`<br>
D) `my_array{new element}`<br>

Answer: B) `my_array+=(new element)`

4. How do you remove the last element from an indexed array in bash?<br>
A) `unset my_array[-1]`<br>
B) `my_array[-1]=`<br>
C) `my_array[-1]=null`<br>
D) `my_array[-1]=undefined`<br>

Answer: A) `unset my_array[-1]`

5. How do you iterate over all elements of an indexed array in bash?<br>
A) `for i in "${my_array}"; do echo $i; done`<br>
B) `for i in "${my_array[@]}"; do echo $i; done`<br>
C) `for i in "${my_array[*]}"; do echo $i; done`<br>
D) `for i in ${my_array[@]}; do echo $i; done`<br>

Answer: B) `for i in "${my_array[@]}"; do echo $i; done`

6. How do you get the number of elements in an indexed array in bash?<br>
A) `${#my_array[*]}`<br>
B) `${#my_array[@]}`<br>
C) `${my_array[*]}`<br>
D) `${my_array[@]}`<br>

Answer: B) `${#my_array[@]}`

7. How do you check if an element is present in an indexed array in bash?<br>
A) `if [ $element in my_array ]; then echo "Found"; fi`<br>
B) `if [ ${my_array[$element]} ]; then echo "Found"; fi`<br>
C) `if [ "${my_array[@]}" =~ $element ]; then echo "Found"; fi`<br>
D) `if [[ " ${my_array[@]} " =~ " ${element} " ]]; then echo "Found"; fi`<br>

Answer: D) `if [[ " ${my_array[@]} " =~ " ${element} " ]]; then echo "Found"; fi`