## Adding sripts to path

Adding scripts to your PATH allows you to run them from anywhere in the terminal, without specifying their full path. Here's how to add a directory containing scripts to your PATH:

1. Open your terminal and navigate to your home directory by running the command cd ~.

2. Create a new directory to store your scripts. You can name it whatever you like, but for the purpose of this example, let's call it scripts. Run the command mkdir scripts to create the directory.

3. Add your scripts to the scripts directory. For example, you can create a script called myscript.sh and save it to the scripts directory.

4. Add the scripts directory to your PATH by editing the .bashrc file in your home directory. You can do this by running the command nano ~/.bashrc.

4. Scroll to the bottom of the file and add the following line: export PATH="$PATH:/home/your_username/scripts". Make sure to replace your_username with your actual username.

5. Save the file by pressing Ctrl+X, then Y, then Enter.

6. Reload your .bashrc file by running the command source ~/.bashrc.

Now, you can run your script from anywhere in the terminal by simply typing its name, like this: myscript.sh. Note that you don't need to include the full path to the script because the scripts directory is now in your PATH.



