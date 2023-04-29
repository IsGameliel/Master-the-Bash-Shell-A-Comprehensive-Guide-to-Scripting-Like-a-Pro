

Arithmetic expansion is a feature of the bash shell that allows you to perform arithmetic operations in your shell scripts. It uses the double parentheses syntax `((...))` to enclose arithmetic expressions. 

Here are some examples of arithmetic expansion in bash:

1. Addition:
```
$((2 + 3))
```
Output: `5`

2. Subtraction:
```
$((10 - 5))
```
Output: `5`

3. Multiplication:
```
$((4 * 6))
```
Output: `24`

4. Division:
```
$((25 / 5))
```
Output: `5`

5. Modulus (remainder of division):
```
$((23 % 5))
```
Output: `3`

Arithmetic expansion can also be used with variables:
```
a=2
b=3
c=$((a + b))
echo $c
```
Output: `5`

You can use arithmetic expansion in bash for more complex expressions by using parentheses to specify order of operations:
```
$((2 + 3 * 4))
```
Output: `14` (because multiplication is performed first)

You can also use variables, input/output redirection, and command substitutions within arithmetic expressions.

## Quiz

1. What is the result of the following arithmetic expansion in bash?

```
$ echo $((2+3*4))
```
a) 20<br>
b) 14<br>
c) 18<br>
d) 32<br>

Answer: b) 14 (the multiplication takes precedence over the addition)

2. What is the result of the following arithmetic expansion in bash?

```
$ echo $((10/3))
```

a) 3.33<br>
b) 3<br>
c) 4<br>
d) 3 with remainder 1<br>

Answer: b) 3 (integer division in bash truncates the result)

3. What is the result of the following arithmetic expansion in bash?

```
$ echo $((7%3))
```

a) 3.5<br>
b) 1<br>
c) 2<br>
d) 0<br>

Answer: c) 2 (the modulus operator returns the remainder of the division)

4. What is the result of the following arithmetic expansion in bash?

```
$ echo $((3**2))
```

a) 6<br>
b) 27<br>
c) 9<br>
d) 0<br>

Answer: c) 9 (the double asterisk operator is the exponentiation operator)

5. What is the result of the following arithmetic expansion in bash?

```
$ echo $((10-2*3))
```

a) 6<br>
b) 4<br>
c) 8<br>
d) 10<br>

Answer: b) 4 (the multiplication takes precedence over the subtraction)

6. What is the result of the following arithmetic expansion in bash?

```
$ echo $((2*3+4))
```

a) 10<br>
b) 14<br>
c) 18<br>
d) 24<br>

Answer: a) 10 (the multiplication takes precedence over the addition)

Quiz 7:

What is the result of the following arithmetic expansion in bash?

```
$ echo $((10/3*3))
```

a) 10<br>
b) 9<br>
c) 12<br>
d) 8<br>

Answer: b) 9 (the integer division truncates the result to 3, which is then multiplied by 3)

8. What is the result of the following arithmetic expansion in bash?

```
$ echo $((5+2*3/2-1))
```

a) 6<br>
b) 5<br>
c) 7<br>
d) 8<br>

Answer: b) 5 (the multiplication takes precedence over the division, which takes precedence over the addition and subtraction)