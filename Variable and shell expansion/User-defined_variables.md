## User defined variable

In bash, you can define your own variables using the following syntax:

```
variable_name=value
```

Here, `variable_name` is the name of the variable you want to define, and `value` is the value you want to assign to that variable. Note that there should be no spaces around the equal sign.

For example, you could define a variable called `my_variable` and assign it the value `hello` like this:

```
my_variable=hello
```

You can then use the variable in your script by enclosing it in curly braces `{}` like this:

```
echo "The value of my_variable is ${my_variable}"
```

This would output:

```
The value of my_variable is hello
```

You can also use the variable without the curly braces if it is followed by a whitespace character or if it is at the beginning of a line. For example:

```
echo $my_variable
```

This would also output:

```
hello
```

Note that variable names are case sensitive, so `my_variable` is not the same as `MY_VARIABLE`.