In Bash, command-line options are parameters that modify the behavior of a script or command. They are passed to the script as arguments preceded by a hyphen (-) or double hyphen (--). Here are five examples of how to handle command-line options in Bash:

1. Basic option handling

```
#!/bin/bash

while getopts ":a" opt; do
  case ${opt} in
    a ) 
      echo "Option -a was triggered!" ;;
    \? ) 
      echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done
```

This script uses the `getopts` command to handle a single option (-a). If the option is provided, it prints a message to the console. If an invalid option is provided, it prints an error message to the console.

2. Handling options with arguments

```
#!/bin/bash

while getopts ":f:" opt; do
  case ${opt} in
    f )
      file="$OPTARG"
      echo "Option -f was triggered with argument $file"
      ;;
    \? )
      echo "Invalid option: -$OPTARG" >&2
      ;;
  esac
done
```

This script uses the `getopts` command to handle an option (-f) that requires an argument. If the option is provided with an argument, it sets the `file` variable to the argument and prints a message to the console. If an invalid option is provided, it prints an error message to the console.

3. Handling multiple options

```
#!/bin/bash

while getopts ":abc" opt; do
  case ${opt} in
    a ) 
      echo "Option -a was triggered!" ;;
    b ) 
      echo "Option -b was triggered!" ;;
    c ) 
      echo "Option -c was triggered!" ;;
    \? ) 
      echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done
```

This script uses the `getopts` command to handle multiple options (-a, -b, -c). If an option is provided, it prints a message to the console. If an invalid option is provided, it prints an error message to the console.

4. Default option handling

```
#!/bin/bash

opt_a=false
opt_b=false

while getopts ":ab" opt; do
  case ${opt} in
    a ) 
      opt_a=true ;;
    b ) 
      opt_b=true ;;
    \? ) 
      echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done

if $opt_a; then
  echo "Option -a was triggered!"
fi

if $opt_b; then
  echo "Option -b was triggered!"
fi
```

This script uses the `getopts` command to handle two options (-a, -b). If an option is provided, it sets a variable to true. After the options have been parsed, the script checks the variables to determine which options were provided and prints a message to the console.

5. Handling arguments after options

```
#!/bin/bash

opt_a=false
opt_b=false

while getopts ":ab" opt; do
  case ${opt} in
    a ) 
      opt_a=true ;;
    b ) 
      opt_b=true ;;
    \? ) 
      echo "Invalid option: -$OPTARG" >&2 ;;
  esac
done

shift $((OPTIND -1))

echo "Remaining arguments: $@"
```

This script uses the `getopts` command to handle two options (-a, -b). After the options have been parsed, the `shift` command is used to remove the parsed options from the argument list.