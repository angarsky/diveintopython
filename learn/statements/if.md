> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/statements/if

In Python, the `if` statement is used for conditional execution of code. It allows you to specify a condition and execute a block of code only if that condition evaluates to `True`.  
  
## How to Use the `if` Statement in Python  

The `if` statements in Python are conditional statements used to execute a block of code based on certain conditions. The basic syntax of an `if` statement is:

```python
if 1 > 2:
   ##### Execute block of code if the condition is true
    pass

```

An if statement can also be combined with an `else` statement to execute different blocks of code based on whether the `condition` is true or false. The syntax for an if-else statement is:

```python
if 2 > 1:
   ##### Execute block of code if the condition is true
    print('True')
else:
   ### Execute block of code if the condition is false
    print('False')

```

### Even numbers

```python
num = 4
if num % 2 == 0:
    print("Even")
else:
    print("Odd")
```

### Maximum of Two Numbers

```python
num1 = 10
num2 = 20
if num1 > num2:
    print("num1 is greater than num2")
else:
    print("num2 is greater than num1")

```

Use if statements in Python to control your program’s flow and make decisions based on specific conditions.  
  
## Ternary Operator

Ternary statements provide a concise way to write one line if statement. It is an inline if statement that consists of three operands: a condition, an expression to execute if the condition is true, and an expression to execute if the condition is false. 

### Ternary `if` Statement Syntax

```python
<expression_if_true> if <condition> else <expression_if_false>
```

### Check if a number is odd or even

```python


num = 7
result = "Even" if num % 2 == 0 else "Odd"
print(result)  # Output: Odd
```

In the example above, the ternary statement checks if the number is even or odd with **ternary operator** `if`. If the number is divisible by 2 (i.e., the remainder of the division is zero), the `result` variable will be assigned the string `'Even'`, and if it's not divisible by 2 (i.e., the remainder is one), the `result` variable will be assigned the string `'Odd'`.

### Check if a list is empty or not

```python
my_list = [1, 2, 3]
result = "Not Empty" if my_list else "Empty"
print(result)  # Output: Not Empty
```

In the example above, the ternary statement checks if the `my_list` variable is empty or not. If `my_list` is not empty, the `result` variable will be assigned the string `Not Empty`, and if it's empty, the `result` variable will be assigned the string `Empty`.

Overall, ternary statements provide a clean and efficient way to write conditional statements in Python.  
  
## The `if` Statement Between Two Numbers  

To check if a number is between two numbers in Python, you can use an `if` statement with logical operators. Here are two examples:

```python
x = 5
if 2 <= x <= 8:
    print("x is between 2 and 8")
else:
    print("x is not between 2 and 8")
```

In this example, the `if` statement checks if `x` is between `2` and `8` (inclusive). If `x` is between `2` and `8`, the statement `print(`x is between 2 and 8`)` will be executed, otherwise, `print(`x is not between 2 and 8`)` will be executed.

```python
y = 10
if not (y < 2 or y > 8):
    print("y is between 2 and 8")
else:
    print("y is not between 2 and 8")
```

In this example, the `if` statement checks if `y` is **not** less than `2` or **not** greater than `8`. If `y` is between `2` and `8`, the statement `print(y is between 2 and 8)` will be executed, otherwise, `print(y is not between 2 and 8)` will be executed.

Use these examples to check if your number is between two numbers in Python.  
  
## The `if` Statement in a List Comprehension  

In Python, an `if` statement can be used in list comprehension to filter out only the values that meet a specific condition. This is extremely useful for creating a new list that contains only the desired values without needing to write a loop. 

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
even_numbers = [num for num in numbers if num % 2 == 0]
print(even_numbers)
```

This code creates a new list called `even_numbers` containing only the even numbers from the original list `numbers`. 

```python
words = ["apple", "banana", "cherry", "date"]
short_words = [word for word in words if len(word) < 6]
print(short_words)
```

This example uses list comprehension to create a new list called `short_words` that only contains words with less than six characters from the original list `words`.

By using `if` statement in list comprehension, we can drastically reduce the amount of code needed to create a new filtered list. This can result in more readable and concise code that is easier to maintain.  
  
## Nested `if` Statements  

Nested If statements are used in Python programming when two or more conditions need to be checked simultaneously. It is a conditional statement inside another, creating a hierarchical structure of decision-making.

```python
age = 18
if age >= 18:
    print("You are legally an adult")
    if age == 18:
        print("Congratulations on turning 18!")
else:
    print("You are not yet an adult")
```

In this example, the first `if` statement checks if the `age` is greater than or equal to 18. If `True`, the second `if` statement checks if `age` is equal to 18. If both conditions are `True`, it prints the congratulations message. If not, it only prints the message of being a legally adult.

```python
x = 5
y = 10
z = 15
if x > y:
    if x > z:
        print("x is the largest")
    else:
        print("z is the largest")
else:
    if y > z:
        print("y is the largest")
    else:
        print("z is the largest")
```

In this example, there are three variables, and the nested `if` statements checks which one of them is the largest. If `x` is greater than `y`, then it checks if `x` is greater than `z`. If it's `True`, it prints `x is the largest`. If the first condition is `False`, then it checks if `z` is greater than `y`. If it's `True`, it prints `z is the largest`. If none of these conditions are `True`, then `y` must be the largest, and it prints `y is the largest`.

These are just simple examples to illustrate the concept of nested If statements in Python and how they can be used in programming.  
  
## The `elif` Statement in Python  

Elif `statement` in Python is a conditional `statement` that helps you to check multiple conditions in a program. It is used in conjunction with the `if` and `else` statements. 

### Syntax

```python
if condition:
    statement(s)
elif condition:
    statement(s)
else:
    statement(s)
```

Here, `condition` is a boolean expression that evaluates to `True` or `False`. If `condition` is `True`, then the statements inside the `if` block are executed. If `condition` is `False`, then the statements inside the `elif` block are executed. If none of the conditions are `True`, then the statements inside the `else` block are executed.

```python
age = 25

if age < 18:
    print("You are a minor")
elif age >= 18 and age <= 65:
    print("You are an adult")
else:
    print("You are a senior citizen")
```

In this example, we are checking the `age` of a person. If the `age` is less than 18, it prints `You are a minor`. If the `age` is between 18 and 65, it prints `You are an adult`. If the `age` is greater than 65, it prints `You are a senior citizen`.

```python
score = 80

if score >= 90:
    print("You have secured an A grade")
elif score >= 80 and score < 90:
    print("You have secured a B grade")
elif score >= 70 and score < 80:
    print("You have secured a C grade")
elif score >= 60 and score < 70:
    print("You have secured a D grade")
else:
    print("You have failed the exam")
```

In this example, we are checking the `score` of a student. Depending on the `score`, it prints different messages. If the `score` is greater than or equal to 90, it prints `You have secured an A grade`. If the `score` is between 80 and 89, it prints `You have secured a B grade`. If the `score` is between 70 and 79, it prints `You have secured a C grade`. If the `score` is between 60 and 69, it prints `You have secured a D grade`. If the `score` is less than 60, it prints `You have failed the exam`.  

## Multiple `if` Statements  

In Python, multiple `if` statements can be used to check multiple conditions in a single execution block. There are two ways of writing multiple `if` statements in Python - using multiple `if` statements and using a multiline `if` statement.

### Example of Multiple `if` Statements

The syntax for using multiple `if` statements is as follows:

```python
if condition1:
    # do something
if condition2:
    # do something else
if condition3:
    # do something else again
```

Here, each `if` statement checks a separate condition and executes the corresponding block of code if the condition is true.

```python
x = 5
y = 8

if x > 0:
    print("x is a positive number")

if y < 10:
    print("y is less than 10")

# Output:
# 
# x is a positive number
# y is less than 10
```

### Another example of Multiline `if` Statement

The syntax for using a multiline `if` statement is as follows:

```python
if condition1 and \
   condition2 and \
   condition3:
   # do something
```

Here, the backslashes (`\`) indicate that the `if` statement is continued on the next line.

```python
x = 5
y = 8

if x > 0 and \
   y < 10:
    print("x is a positive number and y is less than 10")

# Output:
# 
# x is a positive number and y is less than 10
```

Overall, both methods are useful for checking multiple conditions in Python, but multiline `if` statements can make the code more readable and easier to manage.  
