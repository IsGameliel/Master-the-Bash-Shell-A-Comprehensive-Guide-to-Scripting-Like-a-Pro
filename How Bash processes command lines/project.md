# Project

## Project Description
In this project, you will create a Bash script that reads input from a file, tokenizes it, and then redirects the output to another file. The script should take two arguments: the input file and the output file.

The input file will contain a list of commands, with each command on a separate line. The script should tokenize each command into individual arguments, using whitespace as the delimiter.

After tokenizing each command, the script should redirect the output of each command to the output file. If a command fails to execute, the script should print an error message to the console and continue executing the remaining commands.

## Project Requirements
1. The script should take two arguments: the input file and the output file.
2. The input file should contain a list of commands, with each command on a separate line.
3. The script should tokenize each command into individual arguments, using whitespace as the delimiter.
4. The script should redirect the output of each command to the output file.
5. If a command fails to execute, the script should print an error message to the console and continue executing the remaining commands.

## Project Steps
1. Create a new Bash script file.
2. Add the shebang at the beginning of the file: `#!/bin/bash`
3. Parse the input arguments using the `"$@"` variable.
4. Check if both input and output files were provided as arguments, and if not, print an error message and exit the script.
5. Loop through each line of the input file.
6. Tokenize each line using the `read` command with a loop.
7. Execute the command using `eval`, redirecting the output to the output file using the `>` symbol.
8. If the command fails to execute, print an error message to the console.
9. Test the script with some sample input and output files.

## Project Example

Here's an example implementation of the script:

```bash
#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Usage: $0 <input-file> <output-file>"
  exit 1
fi

input_file=$1
output_file=$2

while read line; do
  args=()
  while read -r arg; do
    args+=("$arg")
  done <<< "$line"
  eval "${args[@]}" > "$output_file" 2>&1
  if [ $? -ne 0 ]; then
    echo "Error executing command: $line"
  fi
done < "$input_file"
```

Assuming that you have an input file named `input.txt` with the following commands:

```bash
echo "Hello, world!"
ls -l
```

You can run the script with the following command:

```bash
./script.sh input.txt output.txt
```

The output file `output.txt` will contain the output of each command, and the console will print any error messages that occurred while executing the commands.