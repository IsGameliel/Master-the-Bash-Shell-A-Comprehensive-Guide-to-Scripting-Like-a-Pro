## Shell variables

In Bash, shell variables are variables that are set and maintained by the shell itself. They can be set by the user, but they are primarily used by the shell for its own purposes. Here are some common shell variables in Bash:

1. `$BASH` - The path to the Bash executable
2. `$BASH_VERSION` - The version number of Bash
3. `$HOME` - The user's home directory
4. `$PWD` - The present working directory
5. `$OLDPWD` - The previous working directory
6. `$USER` - The name of the user currently logged in
7. `$UID` - The numeric user ID of the user currently logged in
8. `$GROUPS` - A list of the groups the user belongs to
9. `$HOSTNAME` - The name of the host computer
10. `$OSTYPE` - The type of operating system (e.g. linux-gnu, darwin)
11. `$PATH` - A colon-separated list of directories where executable files are stored
12. `$PS1` - The primary prompt string, which is displayed before each command
13. `$PS2` - The secondary prompt string, which is displayed when a command spans multiple lines
14. `$IFS` - The internal field separator, which determines how Bash separates fields when processing shell commands
15. `$RANDOM` - A random number between 0 and 32767
16. `$SECONDS` - The number of seconds since the shell was started
17. `$SHELL` - The path to the user's default shell
18. `$TERM` - The type of terminal being used
19. `$EDITOR` - The user's preferred text editor
20. `$HISTSIZE` - The maximum number of commands saved in the command history.

To display the value of a shell variable, you can use the `echo` command followed by the name of the variable enclosed in `$` signs, like this: `echo $VAR`. To assign a value to a shell variable, you can use the `=` operator, like this: `VAR=value`. For example, to set the value of the variable `FOO` to "bar", you would type: `FOO=bar`.