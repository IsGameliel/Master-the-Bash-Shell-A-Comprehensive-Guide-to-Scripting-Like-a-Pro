Sure! Here are 10 examples of for loops in Bash:

1. Loop through a sequence of numbers from 1 to 5:
```
for i in {1..5}
do
  echo $i
done
```

2. Loop through the elements of an array:
```
fruits=("apple" "banana" "orange")
for fruit in "${fruits[@]}"
do
  echo $fruit
done
```

3. Loop through the files in a directory:
```
for file in /path/to/directory/*
do
  echo $file
done
```

4. Loop through the lines of a file:
```
while read line
do
  echo $line
done < /path/to/file
```

5. Loop through the arguments passed to the script:
```
for arg in "$@"
do
  echo $arg
done
```

6. Loop through a range of numbers using the `seq` command:
```
for i in $(seq 1 5)
do
  echo $i
done
```

7. Loop through the output of a command:
```
for user in $(who | awk '{print $1}')
do
  echo $user
done
```

8. Loop through the contents of a directory and skip files with a specific extension:
```
for file in /path/to/directory/*
do
  if [[ $file == *.txt ]]; then
    continue
  fi
  echo $file
done
```

9. Loop through a string and split it into words:
```
string="This is a test"
for word in $string
do
  echo $word
done
```

10. Loop through a sequence of numbers in reverse order:
```
for ((i=5;i>=1;i--))
do
  echo $i
done
```