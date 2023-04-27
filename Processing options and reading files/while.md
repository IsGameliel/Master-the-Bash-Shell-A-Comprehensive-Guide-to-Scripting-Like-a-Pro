Sure, here are 9 examples of while loops in Bash:

1. Simple while loop that prints numbers from 1 to 5:

```
#!/bin/bash

count=1

while [ $count -le 5 ]
do
  echo $count
  ((count++))
done
```

2. While loop that reads user input and exits when the input is "quit":

```
#!/bin/bash

while true
do
  read -p "Enter a command (or 'quit' to exit): " command
  if [ "$command" = "quit" ]
  then
    break
  else
    echo "Executing command: $command"
  fi
done
```

3. While loop that reads lines from a file and prints them:

```
#!/bin/bash

while read line
do
  echo $line
done < myfile.txt
```

4. While loop that iterates over an array:

```
#!/bin/bash

myarray=("apple" "banana" "cherry" "date" "elderberry")

index=0

while [ $index -lt ${#myarray[@]} ]
do
  echo ${myarray[$index]}
  ((index++))
done
```

5. While loop that waits for a file to exist:

```
#!/bin/bash

while [ ! -f myfile.txt ]
do
  sleep 1
done

echo "File exists!"
```

6. While loop that runs a command until it succeeds:

```
#!/bin/bash

while ! somecommand
do
  sleep 1
done

echo "Command succeeded!"
```

7. While loop that performs an action until a condition is met:

```
#!/bin/bash

count=1

while true
do
  echo $count
  ((count++))
  
  if [ $count -eq 10 ]
  then
    break
  fi
done
```

8. While loop that waits for a process to finish:

```
#!/bin/bash

pid=1234

while ps -p $pid > /dev/null
do
  sleep 1
done

echo "Process finished!"
```

9. While loop that reads from a named pipe:

```
#!/bin/bash

mkfifo mypipe

while read line < mypipe
do
  echo $line
done

rm mypipe
```

Note: These examples are just a few of the many ways you can use while loops in Bash. The possibilities are endless!