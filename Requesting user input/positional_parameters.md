# Positional Parameters

In bash, positional parameters are variables that hold arguments passed to a script or a function. They are assigned to variables named $1, $2, $3, and so on, with $1 being the first argument, $2 being the second argument, and so on.

Here are some examples of how positional parameters work in bash:

Example 1: Passing arguments to a script

```
#!/bin/bash

echo "The first argument is $1"
echo "The second argument is $2"
echo "The third argument is $3"
```

If you save this script as `script.sh` and run it with the command `./script.sh arg1 arg2 arg3`, you will get the following output:

```
The first argument is arg1
The second argument is arg2
The third argument is arg3
```

Example 2: Using positional parameters in a loop

```
#!/bin/bash

for i in "$@"
do
  echo "Argument: $i"
done
```

If you save this script as `loop.sh` and run it with the command `./loop.sh arg1 arg2 arg3`, you will get the following output:

```
Argument: arg1
Argument: arg2
Argument: arg3
```

Example 3: Using positional parameters in a function

```
#!/bin/bash

function say_hello {
  echo "Hello, $1"
}

say_hello "John"
```

If you save this script as `function.sh` and run it with the command `./function.sh`, you will get the following output:

```
Hello, John
```

In this example, the argument "John" is passed to the `say_hello` function, which uses the positional parameter $1 to print "Hello, John".