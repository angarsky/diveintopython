> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/statements

In Python, statements are instructions or commands that you write to perform specific actions or tasks. They are the building blocks of a Python program. 
  
## What is a Statement in Python?  

A [statement](https://en.wikipedia.org/wiki/Statement_(computer_science)) is a line of code that performs a specific action. It is the smallest unit of code that can be executed by the Python interpreter. 

### Assignment Statement

```python
x = 10
```

In this example, the value `10` is assigned to the variable `x` using the assignment statement. 

### Conditional Statement

```python
x = 3
if x < 5:
    print("x is less than 5")
else:
    print("x is greater than or equal to 5")
```

In this example, the if-else statement is used to check the value of `x` and `print` a corresponding message. 

By using statements, programmers can instruct the computer to perform a variety of tasks, from simple arithmetic operations to complex decision-making processes. Proper use of statements is crucial to writing efficient and effective Python code.  

## Statement Set  

Here's a table summarizing various types of statements in Python:

| Statement                | Description                                                       |
|--------------------------|-------------------------------------------------------------------|
| Multi-Line Statements    | Statements spanning multiple lines using line continuation or braces.|
| Compound Statements      | Statements that contain other statements (e.g., [if](/learn/statements/if.md), while, for).   |
| Simple Statements        | Basic standalone statements that perform a single action.          |
| Expression Statements    | Statements that evaluate and produce a value.                      |
| `pass` Statement           | A placeholder statement that does nothing.                        |
| `del` Statement            | Used to delete references to objects.                              |
| `return` Statement         | Terminates a function and returns a value (optional).              |
| `import` Statement         | Imports modules or specific objects from modules.                  |
| `continue` and `break` Statements | Control flow statements used in loops (`continue` skips to the next iteration, `break` exits the loop). |

Please note that this table provides a brief overview of each statement type, and there may be additional details and variations for each statement.

## Multi-Line Statements  

Multi-line statements are a convenient way to write long code in Python without making it cluttered. They allow you to write several lines of code as a single statement, making it easier for developers to read and understand the code. Here are two examples of multi-line statements in Python:

1. Using backslash:

```python
total = 10 + \
        20 + \
        30
print(total) ### Output

```

2. Using parentheses:

```python
fruit_list = ('Apple',
              'Mango',
              'Banana',
              'Orange')
print(fruit_list) ### Output

```

## Simple Statements  

Simple statements are the smallest unit of execution in Python programming language and they do not contain any logical or conditional expressions. They are usually composed of a single line of code and can perform basic operations such as assigning values to variables, printing out values, or calling functions.

Examples of simple statements in Python:

```python
### Assigning a value to a variable

x = 5

### Printing out a value

print(x)
```

Simple statements are essential to programming in Python and are often used in combination with more complex statements to create robust programs and applications.

  
## Expression statements  

Expression statements in Python are lines of code that evaluate and produce a value. They are used to assign values to variables, call functions, and perform other operations that produce a result.

```python
x = 5
y = x + 3
print(y)
```

In this example, we assign the value `5` to the variable `x`, then add `3` to `x` and assign the result (`8`) to the variable `y`. Finally, we `print` the value of `y`.

```python
def square(x):
    return x * x

result = square(5)
print(result)
```

In this example, we define a function `square` that takes one argument (`x`) and returns its square. We then call the function with the argument `5` and assign the result (`25`) to the variable `result`. Finally, we `print` the value of `result`.

Overall, expression statements are an essential part of Python programming and allow for the execution of mathematical and computational operations.

## The `assert` Statement  

The `assert` statement in Python is used to test conditions and trigger an error if the condition is not met. It is often used for debugging and testing purposes.

```python
assert condition, message
```

Where `condition` is the expression that is tested, and `message` is the optional error message that is displayed when the condition is not met.

```python
x = 5
assert x == 5, "x should be 5"
```

In this example, the `assert` statement tests whether `x` is equal to `5`. If the condition is met, the statement has no effect. If the condition is not met, an error will be raised with the message `x should be 5`.

```python
def divide(x, y):
    assert y != 0, "Cannot divide by zero"
    return x / y
```

In this example, the `assert` statement tests whether `y` is not equal to `0` before performing the division. If the condition is met, the division proceeds as normal. If the condition is not met, an error will be raised with the message `Cannot divide by zero`.

Overall, `assert` statements are a useful tool in Python for debugging and testing, as they can help catch errors early on. They are also easily disabled in production code to avoid any unnecessary overhead.  
  
## The `try` Statement  

The `try` statement in Python is used to catch exceptions that may occur during the execution of a block of code. It ensures that even when an error occurs, the code does not stop running.

```python
try:
    # Block of code to be attempted
except ExceptionType:
    # Block of code to be executed if the try block throws an exception
else:
    # Block of code to be executed if no exception was thrown in the try block
finally:
    # Block of code that is always executed regardless of whether an exception was thrown or not
```

### Examples of Error Processing

```python
try:
    x = 1/0
except ZeroDivisionError:
    print("Division by zero is not allowed")

# Output:

# Division by zero is not allowed
```

```python
try:
    f = open("myfile.txt")
    f.write("This is a test file")
except IOError:
    print("Error: File not found or could not be written")
else:
    print("File written successfully")
finally:
    f.close()
# Output:

# Error: File not found or could not be written
```  
  
