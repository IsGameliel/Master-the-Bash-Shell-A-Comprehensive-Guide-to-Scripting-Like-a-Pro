## Backup script file

```
#!/bin/bash

# Specify the source and destination directories
source_dir="/path/to/source/directory"
dest_dir="/path/to/destination/directory"

# Create the destination directory if it doesn't exist
if [ ! -d "$dest_dir" ]; then
    mkdir -p "$dest_dir"
fi

# Backup files with current date and time
backup_file="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"

# Create the backup archive
tar -czf "$dest_dir/$backup_file" "$source_dir"

# Print a success message
echo "Backup successful: $dest_dir/$backup_file"
```
**Here's a brief explanation of the script:**

1. The source_dir variable specifies the directory you want to backup, while dest_dir specifies the directory where the backup will be stored.

2. The script checks if the destination directory exists. If it doesn't, it creates it using the mkdir -p command.

3. The script creates a backup filename with the current date and time using the date command.

4. The tar command creates a compressed archive of the source directory and stores it in the destination directory.

5. The script prints a success message to the console.

You can save this script as a .sh file (e.g. backup.sh) and run it from the command line using bash backup.sh.