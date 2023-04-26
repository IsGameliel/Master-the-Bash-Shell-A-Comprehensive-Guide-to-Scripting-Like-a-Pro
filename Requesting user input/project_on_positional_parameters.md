# Project 1

here's a sample project on positional parameters in bash.

Project Title: Command Line Calculator

Project Description: The command-line calculator is a bash script that takes two arguments and performs simple arithmetic operations on them. The script uses positional parameters to accept input from the user and performs the requested operation.

Project Goals:

1. Accept two command-line arguments from the user, a number, and an arithmetic operator.
2. Perform the requested arithmetic operation on the two numbers.
3. Display the result to the user.

Project Steps:

1. Create a new bash script and name it "calculator.sh".
2. Define the script's header by adding the following line to the top of the script:

   ```
   #!/bin/bash
   ```
   
3. Define the positional parameters for the script by adding the following lines:

   ```
   num1=$1
   op=$2
   num2=$3
   ```
   
   This will assign the first argument to `num1`, the second argument to `op`, and the third argument to `num2`.
   
4. Use a switch case statement to perform the requested arithmetic operation on the two numbers. The following arithmetic operators will be supported: addition (+), subtraction (-), multiplication (*), and division (/). Add the following code to the script:

   ```
   case $op in
     "+")
       result=$(($num1 + $num2))
       ;;
     "-")
       result=$(($num1 - $num2))
       ;;
     "*")
       result=$(($num1 * $num2))
       ;;
     "/")
       result=$(($num1 / $num2))
       ;;
     *)
       echo "Invalid operator"
       exit 1
   esac
   ```
   
   This will perform the requested arithmetic operation and store the result in the `result` variable. If an invalid operator is entered, the script will print an error message and exit with an error code of 1.
   
5. Display the result to the user by adding the following line to the script:

   ```
   echo "Result: $result"
   ```
   
6. Save the script and make it executable by running the following command in the terminal:

   ```
   chmod +x calculator.sh
   ```
   
7. Test the script by running it with different arguments in the terminal. For example:

   ```
   ./calculator.sh 10 + 5
   Result: 15
   ```
   
   This will add 10 and 5 and display the result to the user.
   
   ```
   ./calculator.sh 10 / 2
   Result: 5
   ```
   
   This will divide 10 by 2 and display the result to the user.
   
Congratulations! You have now created a command-line calculator using positional parameters in bash.