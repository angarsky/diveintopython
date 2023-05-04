Functions in Python play a crucial role in programming as they serve as reusable blocks of code that can perform specific tasks. Once defined, you can call a function in Python by using its name and passing arguments (optional) in parentheses. Python lets you create multiple functions, each with their specific functionality, making it easier to organize and structure your code. Function typing and function documentation are essential elements that can make your code more readable and easier to debug, especially when working with larger projects.
  
## How to define and declare a function in python  

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

In defining a function, it is good practice to specify **function typing** by adding type hints for parameters and return values. This makes it easier for other developers to understand the expected input and output of the function.

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
  
## Function typing in python: types of arguments and return values  

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
