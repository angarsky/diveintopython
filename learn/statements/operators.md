> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/statements/operators

In this article, we will explore the different types of operators in Python and how they are used in programming. 
  
## The `in` Opertor  

The `in` operator in Python is used to check whether a value is present in a sequence or not. It returns a Boolean value `True` if the value is found in the sequence and `False` otherwise. 

```python
my_list = [1, 2, 3, 4, 5]
x = 3

if x in my_list:
    print("Element is present in the list")
else:
    print("Element is not present in the list")

# Output:
# 
# Element is present in the list
```

```python
my_string = "Hello World"
x = "o"

if x in my_string:
    print("Substring is present in the string")
else:
    print("Substring is not present in the string")

# Output:
# 
# Substring is present in the string
```

With the `in` operator, we can easily check the existence of elements in a list, tuple, or any other sequence data type in python. It also helps in simplifying the code and making it more readable.  
  
## How to Use `and` Operator in `if`  

The `and` operator in Python is used in `if` statements to test if multiple conditions are true. It returns `True` if both conditions are true, and `False` otherwise. Here are two examples:

```python
x = 5
y = 10
if x > 0 and y > 0:
    print("Both x and y are positive")
else:
    print("At least one of x and y is not positive")
```

In this example, the `and` operator is used to determine if both `x` and `y` are positive. Since `x` and `y` are both greater than 0, the `if` statement evaluates to `True` and `Both x and y are positive` is printed.

```python
name = "John"
age = 25
if name == "John" and age == 25:
    print("Your name is John and you are 25 years old")
else:
    print("You are not John or you are not 25 years old")
```

In this example, the `and` operator is used to check if both `name` is `John` and `age` is 25. Since both conditions are true, the `if` statement evaluates to `True` and `Your name is John and you are 25 years old` is printed. 

In summary, the `and` operator in Python is a powerful tool in `if` statements that allows you to check for multiple conditions at once. It can be very useful in complex programs that require extensive condition checking.  
  
## The `or` Operator  

The `or` operator in Python is a logical operator that returns `True` if either of the two operands are `True`, and `False` if both operands are `False`. It can be used in conditional statements or Boolean expressions.

### The `or` Operator in a Conditional Statement

```python
age = 25
if age < 18 or age > 60:
    print("You are not eligible for this job")
else:
    print("You are eligible for this job")

# Output: `You are eligible for this job`
```

In this example, the `or` operator is used to check if the `age` variable is either less than 18 or greater than 60. If either of the conditions is `True`, it prints a message saying the person is not eligible for the job. Otherwise, it prints a message saying the person is eligible for the job.

### The `or` Operator in a Boolean Expression

```python
x = 5
y = 10
result = x > 3 or y < 9
print(result)
# Output: `True`
```

In this example, the `or` operator is used in a Boolean expression to check if either `x` is greater than 3 or `y` is less than 9. Since `x` is greater than 3, the expression evaluates to `True` and the `result` is printed as `True`.

Overall, the `or` operator in Python provides a simple way to check if at least one of the conditions in a Boolean expression is `True`.  
  
## The `not` Operator  

The `not` operator in Python is used to reverse the logical state of a Boolean expression. It returns True if the expression is `False` and `False` if the expression is True. Here are two examples:

### How to Use the `not` with a Boolean Variable

```python
flag = False
print(not flag)

```

### The `not` with a Comparison Operator

```python
x = 10
y = 5
print(not x > y) ### Output

```

Overall, the `not` operator is a useful tool in Python for changing the truth value of a Boolean expression. It can be used with Boolean variables or in conjunction with comparison operators.  
  
## Not Equal Operator  

The not equal operator in Python is used to compare two values and returns `True` if they are not equal, and `False` if they are equal. The symbol used for the not equal operator is `!=`.

```python
value1 != value2
```

```python
a = 5
b = 3
if a != b:
    print("a is not equal to b")

# Output:
# 
# a is not equal to b
```

```python
name1 = "John"
name2 = "Mary"
if name1 != name2:
    print("Names are not equal")
# Output:
# 
# Names are not equal
```

By using the not equal operator in Python, you can easily compare two values and get the desired output. This operator is useful in many situations where you need to check if two values are not equal.  
  
## Division  

In Python, there are three types of division operators: the single forward slash `/` operator, the double forward slash `//` operator, and the percent `%` operator. 

The `/` operator performs regular division and returns a float answer, while the `//` operator performs floor division and returns the integer value of the quotient. The `%` operator returns the remainder of the division. The another name of the `%` is **modulo operator**

```python
x = 10
y = 3
result = x / y
print(result)
```

Output: `3.3333333333333335`

```python
x = 10
y = 3
floor_division = x // y 
# Use modulo operator
remainder = x % y 
print(floor_division)
print(remainder)

# Output: 
# 
# 3
# 1
```

Overall, understanding these operators and their differences is important in Python programming when dealing with mathematical operations.  
  
## The `:` Operator  

The `:` operator in Python is used for slicing sequences such as lists, tuples, and strings. It allows you to extract a portion of a sequence by specifying a start and end index separated by a colon. You can also specify a step size. This operator is very useful when working with data in Python.

```python
### create a list

my_list = [0, 1, 2, 3, 4, 5]

### slice the list from index 2 to index 4

sliced_list = my_list[2:5]

### print the sliced list

print(sliced_list)

# Output:
# 
# [2, 3, 4]
```

```python
### create a string

my_string = "Hello world!"

### slice the string to get characters from index 1 to index 4

sliced_string = my_string[1:5]

### print the sliced string

print(sliced_string)

# Output:
# 
# ello
```

The `:` operator is an essential tool in Python for working with sequences. Its flexible syntax makes slicing and dicing data a breeze! 

## Boolean Operator in Python  

Boolean operators in Python are used to evaluate true or false conditions. These operators include `and`, `or` and `not`. In Python, boolean operations are created with the keywords `and`, `or` and `not`.

```python
x = 5
y = 10
z = 15

if x < y and z > y:
    print("Both conditions are true")
# Output: `Both conditions are true`
```

```python
x = 5
y = 10
z = 15

if x < y or z < y:
    print("At least one condition is true")

# Output: `At least one condition is true`
```


Using boolean operators in Python provides flexibility in evaluating multiple conditions and making decisions. By using boolean operations, complex statements can be simplified and coded in fewer lines of code.  
  
## Operator Overloading  

In Python, Operator Overloading enables us to define the behavior of operators in a custom manner for a specific class or object. This helps to enhance the clarity and readability of the code. Python supports operator overloading for most of the built-in operators such as `+`, `-`, `/`, `//`, `%`, `&`, `|`, `^`, `>>`, `<<`, `<`, `>`, `<=`, `>=`, `==`, `!=`, and more.

Here are two code examples that demonstrate operator overloading in Python:

```python
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def __str__(self):
        return f"Rectangle({self.length}, {self.width})"

    def __add__(self, other):
        return Rectangle(self.length + other.length, self.width + other.width)

r1 = Rectangle(4, 3)
r2 = Rectangle(2, 5)
print(r1 + r2)  ### Output

```

In the above code, we have defined a custom behavior for the '+' operator for the `Rectangle` class. When we add two `Rectangle` objects using '+' operator, it will create a new `Rectangle` object with the sum of the `length` and `width` of both rectangles.

```python
class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def __lt__(self, other):
        return self.pages < other.pages

b1 = Book("Python for Beginners", "John Smith", 300)
b2 = Book("Advanced Python", "David Johnson", 500)
print(b1 < b2)  ### Output

```

In this code, we have defined a custom behavior for the '<' operator for the `Book` class. It compares two books based on the number of `pages` they have. If the number of `pages` in the `self` object is less than the number of `pages` in the `other` object, it will `return` `True`.
 
Overall, operator overloading in Python helps you to write more readable and expressive code. It makes your code look cleaner and easier to understand.  
  
## Math Operators in Python  

Python provides a variety of math operators that can be used to perform mathematical operations in Python. These operators include addition, subtraction, multiplication, division, and modulo. 

### Addition Operator

The addition operator in Python is represented by a `+`. It is used to add two or more numbers, as shown below:

```python
# Adding two numbers
num1 = 10
num2 = 20
result = num1 + num2 
print(result)  # Output: 30

# Adding more than two numbers
result = num1 + num2 + 5
print(result)  # Output: 35
```

### Division Operator

The division operator in Python is represented by a `/`. It is used to divide one number by another number and returns a floating-point value as the result:

```python
# Division of two numbers
num1 = 10
num2 = 2
result = num1 / num2 
print(result)  # Output: 5.0  (float)

# Division with remainder
num1 = 7
num2 = 3
result = num1 / num2 
remainder = num1 % num2
print(result)  # Output: 2.3333333333333335 (float)
print(remainder) # Output: 1 (int)
```

Python offers many other math operators such as subtraction, multiplication, modulo, and more. By using these operators, you can perform complex mathematical operations in your Python programs.  
  
## Bitwise Operators in Python  

Bit operators are used in Python to perform bitwise operations on integers. These operations work by manipulating individual bits of binary representation of integers. This is useful in low-level programming, such as optimizing code or working with hardware.

### How to use bit operators in Python

There are six bitwise operators available in Python. These are:

- `&` (bitwise AND): This operator returns a new integer whose bits are set to 1 only if both corresponding bits of the operands are 1.
- `|` (bitwise OR): This operator returns a new integer whose bits are set to 1 if any corresponding bits of the operands are 1.
- `^` (bitwise XOR): This operator returns a new integer whose bits are set to 1 if only one of the corresponding bits of the operands is 1.
- `~` (bitwise NOT): This operator returns the complement of the operand, i.e., it flips all the bits of the operand.
- `<<` (left shift): This operator shifts the bits of the operand to the left by the specified number of bits. The shifted bits are filled with 0.
- `>>` (right shift): This operator shifts the bits of the operand to the right by the specified number of bits. The shifted bits are filled with 0 for positive numbers and 1 for negative numbers.

### The `&` Operator

```python
x = 5      

y = 3      

z = x & y  ### in binary

print(z)   ### Output

```

In this example, we use the bitwise AND operator to find the common bits between `x` and `y`. The result is `1`, which is the only bit that is set to 1 in both `x` and `y`.

### The `<<` Operator

```python
x = 7      

y = 2     

z = x << 1 ### in binary

print(z)   ### Output 
```

In this example, we use the left shift operator to shift the bits of `x` to the left by one position. The result is `14`, which is `1110` in binary. The shifted bit on the left is filled with `0`.

Overall, bit operations in Python can be useful for optimizing code and working with numbers at a low level.  
  
## Operator Order  

In Python, just like in math, there is a specific order in which operators are evaluated. This is known as the order of operations. The operator precedence in Python is as follows:

1. Parentheses
2. Exponentiation
3. Multiplication, Division, and Modulus (left to right)
4. Addition and Subtraction (left to right)

It is important to keep this order in mind while writing expressions in Python.

```python

result = 5 + 3 * 2 # first 3*2 will be evaluated, then 5 will be added to the result
print(result) # output: 11

result = (5 + 3) * 2 # first 5+3 will be evaluated in the parentheses, then the result will be multiplied by 2
print(result) # output: 16
```

In the first example, the multiplication operation is evaluated before the addition operation, as per the order of operations. In the second example, the addition operation inside the parentheses is evaluated first, again as per the order of operations. Understanding the operator order in Python can help avoid errors and produce more accurate results.  
  
## Walrus Operator  

The Walrus Operator is a new feature available in Python 3.8 and later versions. It provides a concise and efficient way of assigning values to variables in certain scenarios.

### Understanding the Walrus Operator

The Walrus Operator is denoted by the := symbol and is used to assign values to variables in a single expression. It is particularly useful in scenarios where repeated calls to functions or methods are resource-intensive, as it can help reduce these calls.

### Walrus Operator with 'if' Statement

```python

if (a:=2+3) > 4:
    print(f"{a} is greater than 4")
else:
    print(f"{a} is less than or equal to 4")
```

### Walrus Operator with 'while' Loop

```python
import random

while (num:=random.randint(1,10)) != 3:
     print(num)
```

In both examples above, the Walrus Operator is used to assign values to the variable in the same expression as the conditional statement. This makes the code more concise and easier to read.

## Exponent Operator  

The exponentiation operator in Python is represented by `**` and is used to raise a number to a power. It is a binary operator that takes two operands; the first being the base and the second being the exponent. 

Here are two code examples to demonstrate the usage of the exponentiation operator in Python:

```python
num = 2
exp = 3
result = num ** exp
print(result)  

```

```python
num = 2
exp = 3
num **= exp
print(num)  

```

In both examples, the `**` operator is used to calculate the `result` of raising a number to a power. In the second example, the `result` is assigned to the variable `num` using the assignment operator `**=` for more concise code. By using the exponentiation operator, you can easily perform exponentiation operations in your Python code.  
