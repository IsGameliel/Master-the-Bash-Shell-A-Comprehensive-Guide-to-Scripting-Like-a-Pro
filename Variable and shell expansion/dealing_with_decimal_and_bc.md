## Decimals with bc

In bash, the `bc` command can be used to perform calculations with decimal numbers. It stands for "Basic Calculator" and is a command line utility that provides arbitrary precision arithmetic.

Here's how you can use `bc` in your bash scripts:

1. Simple calculation
```
$ echo "5.5 + 3.2" | bc
```
Output: `8.7`

2. Using variables
```
a=5.5
b=3.2
echo "$a + $b" | bc
```
Output: `8.7`

3. Specifying the number of decimal places
```
echo "scale=2; 5.5 / 3.2" | bc
```
Output: `1.72` (the `scale` variable sets the number of decimal places)

4. Using mathematical functions
```
echo "scale=2; sqrt(2)" | bc -l
```
Output: `1.41` (the `-l` option specifies the math library for the `bc` command)

5. Reading input from a file
```
echo "scale=2; $(cat input.txt)" | bc
```
Where `input.txt` contains a mathematical expression, such as `4.2 * 5.7`.

Note that `bc` can be used for more complex mathematical operations and functions, making it a powerful tool for shell scripting. However, it may require some learning to use it effectively, especially for more advanced calculations.