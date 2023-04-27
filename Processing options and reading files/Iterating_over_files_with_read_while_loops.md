

## iterating over files with read-while loops in bash:

1. Iterating over lines in a file:

```
#!/bin/bash

while read line; do
  echo "$line"
done < myfile.txt
```

In this example, we're iterating over the lines in the `myfile.txt` file. The `read` command reads a line from the file and assigns it to the `line` variable. The loop continues until there are no more lines to read from the file.

2. Iterating over files in a directory:

```
#!/bin/bash

for file in /path/to/directory/*; do
  if [[ -f $file ]]; then
    echo "$file"
  fi
done
```

In this example, we're iterating over all the files in the `/path/to/directory/` directory. The `for` loop iterates over all the files in the directory and assigns the file path to the `file` variable. We then check if the file is a regular file using the `-f` test, and if so, we print the file path.

3. Iterating over CSV files and processing each line:

```
#!/bin/bash

while IFS=',' read -r col1 col2 col3; do
  echo "$col1, $col2, $col3"
done < myfile.csv
```

In this example, we're iterating over the lines in a CSV file (`myfile.csv`) and processing each line. The `IFS=','` sets the input field separator to a comma, so the `read` command will read the values separated by commas in each line and assign them to the `col1`, `col2`, and `col3` variables. We then print out the values in a formatted string.