> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions

Functions in Python play a crucial role in programming as they serve as reusable blocks of code that can perform specific tasks. Once defined, you can call a function in Python by using its name and passing arguments (optional) in parentheses. You can lets you create multiple functions, each with their specific functionality, making it easier to organize and structure your code. Function typing and function documentation are essential elements that can make your code more readable and easier to debug, especially when working with larger projects. From this article we will learn what is a function in Python and how to call a function.

## Functional Programming  

Python supports multiple programming paradigms, one of which is functional programming. Functional programming is a programming paradigm that focuses on the use of pure functions, avoiding shared state, mutable data, and side-effects. In Python, this paradigm is typically used through the use of higher-order functions and `lambda` expressions.

### Higher-order Function Example

```python
def apply_twice(f):
    def wrapper(x):
        return f(f(x))
    return wrapper
 
def add_two(x):
    return x + 2
 
### Using apply_twice to add two to a number four times

applied_four_times = apply_twice(apply_twice(add_two))
result = applied_four_times(10) ### Result will be 18

```

### Lambda Expression Example

```python
numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x**2, numbers))
### squared_numbers will be [1, 4, 9, 16, 25]

```

In summary, Python supports functional programming paradigms through higher-order functions and `lambda` expressions. 

## How to Write a Function in Python

In Python, a function is defined using the `def` keyword, followed by the name of the function, and a set of parentheses that may contain parameters. The code block that performs the task is indented under the `def` statement.

To call a function in Python, simply use the name of the function, followed by the parentheses containing any necessary arguments.

### Basic Function Example

```python
def greet(name):
    print("Hello, " + name)

greet("John") # Output: Hello, John
```

### Function with a Return Value Example

```python
def square(number):
    return number * number

result = square(4)
print(result) # Output: 16
```

When a function has a `return` statement, it can return a single value, or multiple values separated by commas. These values can then be assigned to a variable or used directly.

When you create a function in Python, it is good practice to specify **function typing** by adding type hints for parameters and return values. This makes it easier for other developers to understand the expected input and output of the function.

```python
def sum_numbers(num1: int, num2: int) -> int:
    return num1 + num2

print(sum_numbers(2, 3)) # Output: 5
```

Function **documentation** can be added using docstrings, which describe what the function does, its parameters, and its return value. This information can be accessed using a `help` function.

```python
def greet(name):
    """Print a greeting message to the person with the given name."""
    print("Hello, " + name)

help(greet)
```

In Python, **function parameters** can have default values that are used if no value is provided when the function is called.

```python
def greet(name="there"):
    print("Hello, " + name)

greet() # Output: Hello, there
greet("John") # Output: Hello, John
```

The **main function** is a convention in Python, where code to be executed directly is placed within a `if __name__ == '__main__':` block, ensuring it is only executed when the file is run directly, and not imported as a module.

```python
def main():
    print("Hello World")

if __name__ == "__main__":
    main()
```  
  
## Function Typing in Python: Types of Arguments and Return Values  

Function typing specifies the types of arguments and the expected return value of a function. Python supports positional, keyword, default and variable-length arguments for a function. Function arguments refer to the values passed to a function, and return values are the results of the executed code. 

Here are some examples of functions in Python: 

```python
# Example of a function that returns a value

def calculate_area(width, height):
    area = width * height
    return area

# Example of a function that returns multiple values 

def get_student_details(name, age, student_id):
    return name, age, student_id
```

In Python, variable-length function arguments are denoted using the `*` symbol. Here's an example of a Python function that takes variable-length arguments:

```python
def calculate_sum(*numbers):
    total = 0
    for num in numbers:
        total += num
    return total
# Here's how you can call the calculate_sum function with different numbers of arguments:
sum1 = calculate_sum(1, 2, 3)   # sum1 is 6
sum2 = calculate_sum(10, 20)    # sum2 is 30
sum3 = calculate_sum(5)         # sum3 is 5
```

In this example, the `*` numbers syntax in the function definition tells Python to allow any number of arguments to be passed to the function. The function then uses a loop to iterate over all of the arguments and calculate their sum.

As you can see, you can pass any number of arguments to the `calculate_sum` function, and it will work correctly.

## How to Properly Name a Function in Python

1. Function names must **start with a letter or underscore** `_`, followed by any combination of letters, numbers, or underscores.
Example: `def my_function():`

2. Function names should be **descriptive** and convey the purpose of the function.
Example: `def calculate_total():`

3. Function names are **case-sensitive**, meaning `my_function` and `My_Function` are different names.
Example: `def my_function():` and `def My_Function():` are two different functions.

4. Function names should not be the same as a **Python keyword**, such as `print` or `if`.
Example: `def print():` is not a valid function name.

5. Function names should follow the **"snake_case"** naming convention, where words are separated by underscores. This convention makes function names more readable and easier to understand.
Example: `def calculate_total_with_discount():`

Overall, it is recommended to choose a function name that is **descriptive**, **easy to understand**, and follows the naming conventions for Python functions.

## How to Return Multiple Values from a Function

In Python, a function can only directly return a single value. However, you can return multiple values by packaging them into a data structure like a tuple, list, or dictionary. Here's an example of a function that returns multiple values using a tuple:

```python
def get_user_info():
    name = "John Doe"
    age = 30
    email = "johndoe@example.com"
    return name, age, email

# Call the function and unpack the returned values
user_name, user_age, user_email = get_user_info()

print("Name:", user_name)
print("Age:", user_age)
print("Email:", user_email)

# Output:
# Name: John Doe
# Age: 30
# Email: johndoe@example.com
```

This function `get_user_info()` returns the `name`, `age`, and `email` of a user. By separating the variables with commas in the return statement, Python automatically creates a tuple containing these values. We can then unpack the tuple into separate variables during the function call.
