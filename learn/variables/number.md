Python supports several numeric data types that are used for various mathematical operations in programming. These data types include integers, floating-point numbers, and complex numbers. Understanding these data types and their characteristics is essential for any programmer who wants to work with numeric data in Python.

## Number Types in Python

In Python, there are several number types that can be used for different purposes. The most common number types in Python are:

- Integer number (int): This is a whole number without any decimal point. For example, 1, 2, 3, etc. are integers.
- Float number: This is a decimal number. For example, 1.2, 3.14159, etc. are floats.
- Complex number: This is a number with a real and imaginary part. For example, 1 + 2j, 3.14 - 4j, etc. are complex numbers.

Here are some examples of how to define these number types in Python:

```python
# Integer
x = 5
print(type(x))  # Output: <class 'int'>

# Float
y = 3.14
print(type(y))  # Output: <class 'float'>

# Complex
z = 2 + 3j
print(type(z))  # Output: <class 'complex'>
```

## The `isinstance()` Function

To check whether a variable is a number in Python, you can use the `isinstance()` function to check if the variable belongs to the int, float or complex data type. Here's an example:

```python
x = 10
y = 3.14
z = 2 + 3j

print(isinstance(x, (int, float, complex)))  # Output: True
print(isinstance(y, (int, float, complex)))  # Output: True
print(isinstance(z, (int, float, complex)))  # Output: True
print(isinstance('hello', (int, float, complex)))  # Output: False
```

## Rounding a Number in Python

You can round a number using the built-in `round()` function. The `round()` function takes two arguments: the number to be rounded and the number of decimal places to round to.

Here's an example:

```python
x = 3.14159
rounded_x = round(x, 2)
print(rounded_x) # Output: 3.14
```

Note that if the number to be rounded ends in 5, the `round()` function will round to the nearest even number. This is known as "bankers rounding". For example:

```python
x = 2.5
rounded_x = round(x)
print(rounded_x) # Output: 2
```

## Number Formatting

In Python, there are several ways to format numbers. Here are some examples:

- Using the built-in `format()` function:

```python
x = 3.14159
print("{:.2f}".format(x))  # Output: 3.14
```
The `"{:.2f}"` string inside the `format()` function tells Python to format the number as a float with 2 decimal places.

- Using f-strings (Python 3.6 and above):

```python
x = 3.14159
print(f"{x:.2f}")  # Output: 3.14
```
The `f` before the string indicates that it is an f-string, and the `"{x:.2f}"` inside the string tells Python to format the value of `x` as a float with 2 decimal places.

- Using the % operator:

```python
x = 3.14159
print("%.2f" % x)  # Output: 3.14
```

The `%.2f` string inside the `%` operator tells Python to format the number as a float with 2 decimal places.

## Checking If a String Is a Number

You can check if a string is a number in Python using various methods. Here are a few examples:

- Using `isnumeric()` method:

```python
my_string = "123"
if my_string.isnumeric():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number

- Using `isdigit()` method:

```python
my_string = "456"
if my_string.isdigit():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
 ```

- Using try-except block to convert string to float:

```python
my_string = "789.12"
try:
    float(my_string)
    print("String is a number")
except ValueError:
    print("String is not a number") # Output: String is a number
```

Note that if the string contains a non-numeric character, the first two methods will return `False` and the third method will raise a `ValueError`.

## Check If a Number is Whole

You can use the modulo operator `%` to check if a number is whole or not. If the result of dividing the number by 1 is equal to 0, then the number is a whole number.

Here's an example:

```python
num = 5.0  # the number you want to check

if num % 1 == 0:
    print("The number is whole.")
else:
    print("The number is not whole.") # Output: "The number is whole."
 ```
 
 ## Rounding a Number
 
To round a number in Python, you can use the `round()` function. The `round()` function takes one required argument, which is the number you want to round, and an optional argument, which is the number of decimal places you want to round to.

Here's an example:

```python
number = 3.14159
rounded_number = round(number, 2)
print(rounded_number) # Output: 3.14
```

Note that if the number to be rounded is exactly halfway between two possible rounded values, `round()` will round to the nearest even number. For example, `round(2.5)` will return `2`, while `round(3.5)` will return `4`.

## Generating a Random Number

To get a random number in Python, you can use the random module. Here's an example of how to generate a random integer between 0 and 10:

```python
import random

random_number = random.randint(0, 10)
print(random_number)
```

This will print a random integer between 0 and 10 (inclusive) each time you run the script. If you want to generate a random floating-point number, you can use the `random.uniform()` function instead:

```python
import random

random_number = random.uniform(0, 1)
print(random_number)
```

## Squaring a Number in Python

Let's see how to square a number in Python.
The first method is using the exponent operator `**`. Here is an example:

```python
x = 5
squared = x ** 2
print(squared) # Output: 25
```

Alternatively, you can also use the `pow()` function to calculate the square of a number. Here is an example:

```python
x = 5
squared = pow(x, 2)
print(squared)
```

## Negating a Number

You can negate a number by using the `-` (minus) operator.

Here's an example:

```python
number = 10
negated_number = -number
print(negated_number) # Output: -10
```

## Prime Number

A prime number is a positive integer greater than 1 that has no positive integer divisors other than 1 and itself. In Python, you can check if a number is prime by testing whether it is divisible by any number other than 1 and itself.

Here's an example of a function that checks whether a number is prime or not:

```python
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True
```

This function takes a positive integer `n` as input and returns `True` if `n` is prime, and `False` otherwise.

The function first checks whether `n` is less than or equal to 1, which is not a prime number by definition. If `n` is less than or equal to 1, the function returns `False`.

If `n` is greater than 1, the function checks whether it is divisible by any number from 2 to the square root of `n`. If `n` is divisible by any number in this range, it is not prime and the function returns `False`. Otherwise, `n` is prime and the function returns `True`.

Here's an example of how to use the `is_prime` function:

```python
print(is_prime(7)) # True
print(is_prime(15)) # False
print(is_prime(23)) # True
print(is_prime(1)) # False
```

Output:

```python
True
False
True
False
```

In this example, we called the `is_prime` function with different input values and printed the output.

## Euler's Number in Python

Euler's number, also known as the mathematical constant `e`, is a mathematical constant that is approximately equal to 2.71828. In Python, you can calculate Euler's number using the `math` module.

Here's an example of how to calculate Euler's number:

```python
import math

e = math.e

print(e) # Output: 2.718281828459045
```

## Extracting Number from String

To extract a number from a string in Python, you can use regular expressions with the `re` module. Here's an example:

```python
import re

string = "The price is $12.34"

number = re.findall(r'\d+\.\d+', string)[0]

print(number) # Output: 12.34
```

In this example, we first imported the `re` module, which provides support for regular expressions. We then defined a `string` variable string that contains a sentence with a number.

To extract the number from the string, we used the `re.findall` function with a regular expression pattern `\d+\.\d+`. This pattern matches one or more digits `\d+` followed by a dot `\.` followed by one or more digits `\d+`. The resulting match is a string that represents the number in the sentence.

Since `re.findall` returns a list of matches, we accessed the first element `[0]` of the list to get the number as a string.

If you need to convert the extracted number from a string to a numerical value, you can use the float or int function:

```python
number = float(number)
print(number) # Output: 12.34
```

## Digits of a Number

To find the digits of a number in Python, you can convert the number to a string and then iterate over the string to extract each digit. Here's an example:

```python
num = 12345

# Convert number to string
num_str = str(num)

# Iterate over string and print each digit
for digit in num_str:
    print(digit)
```
