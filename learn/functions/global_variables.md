> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions/global-variables

In Python, variables are used to store values that can be accessed and manipulated within a program. However, the scope of a variable can differ depending on whether it is a global variable or a local variable. Global variables can be accessed from any part of the program, while local variables are limited to the function or block in which they are defined. Understanding the differences between variable scopes is important for developing efficient and effective Python code.  
  
  
## Scope of global variables in Python  

**Global variables** are the variables that are defined outside of any function in a program. They can be accessed and modified by any function or module in the program. 

The scope of a variable in Python defines its accessibility. There are two types of scopes in Python: **Global** scope and **Local** scope. A global scope means that a variable is accessible throughout the program, while a local scope means that a variable is accessible only within the function where it is defined.

In Python, global variables can be accessed and modified from any function or module in the program. However, assigning a value to a global variable inside a function creates a new local variable within that function.

Here are some examples of how the scope of global variables works in Python:

### Example 1: Accessing a global variable inside a function

```python
x = 5    #global variable
def func():
  print(x)   #accessing a global variable inside a function

func()   #calling the function
# Output: 5
```

In this example, the function `func` is accessing the global variable `x` which is defined outside of any function.

### Example 2: Accessing the global variable outside the function

```python
x = 5   #global variable
def func():
  x = 10   #creating a new local variable
  print(x)   #accessing the local variable inside the function

func()
print(x)    #accessing the global variable outside the function
# Output: 10 5
```

In this example, the function `func` is creating a new local variable `x` by assigning it a value of `10`. So, the `print` statement inside the function is referring to the local variable and not the global variable. However, when the `print` statement is called outside the function, it refers to the global variable `x`.  
  
## How global variables work in Python  

**Global variables** are variables that can be accessed and modified throughout the code, regardless of where they are declared. The **variable scopes** in Python determine the accessibility of variables in different parts of the code. Python supports three variable scopes - **local, global, and nonlocal**. **Local variables** are variables that are declared and used within a particular function or block of code, and their scope is limited to that particular function or block of code.

### Global variable example

```python
# declaring and initializing a global variable
global_var = "I am a global variable."

def func():
    # accessing and modifying the global variable within the function
    global global_var
    global_var = "I have been modified."

# calling the function to modify the global variable
func()

# printing the modified value of the global variable
print(global_var)    # Output: "I have been modified."
```

In the above code, a **global variable** named `global_var` is declared and initialized outside the function. The `func()` function accesses and modifies the value of `global_var` using the `global` keyword. Finally, the modified value of the global variable is printed.

### Local Variable Example

```python
def func():
    # declaring and initializing a local variable
    local_var = "I am a local variable."
    print(local_var)
    
# calling the function that uses the local variable
func()

# trying to access the local variable outside the function
# Output: NameError: name 'local_var' is not defined
# print(local_var)    
```

In the above code, `local_var` is a **local variable** declared and initialized within the `func()` function. The scope of this variable is limited to the function only. When the function is called, the value of `local_var` is printed. However, when we try to access this variable outside the function, we get a `NameError` as the variable is not defined in that scope.  
  
## The role of non-local variables in Python  

Global variables are variables that can be accessed and modified from anywhere in the program, whereas local variables are only accessible within a specific function or block of code. The scope of a variable refers to the area in which it can be accessed. 

Non-local variables in Python are variables that are defined in an outer function but can be accessed in an inner function. The `nonlocal` keyword is used to declare a non-local variable in Python.

```python
count = 0  # global variable

def increment():
    global count
    count += 1
    print(count)

increment()  # output: 1
increment()  # output: 2
```

In this example, `count` is a global variable that can be accessed and modified from anywhere in the program. The `global` keyword is used inside the `increment` function to indicate that we are modifying the global variable `count`.

```python
def outer():
    x = "local"  # local variable
    
    def inner():
        nonlocal x  # non-local variable
        x = "nonlocal"
        print("inner:", x)
        
    inner()
    print("outer:", x)

outer()  # output: inner: nonlocal, outer: nonlocal
```

In this example, `x` is a local variable in the `outer` function. The `inner` function has access to this variable using the `nonlocal` keyword, so we can modify its value. When we call the `outer` function, the `inner` function is executed and the value of `x` is changed to `nonlocal`. This change is reflected in the `outer` function when we `print` the value of `x` after the `inner` function is executed.  
  
## Best practices for using global variables in function  

Global variables are variables that can be accessed and modified from any part of the program. In Python, a variable's scope determines where it can be accessed. The best practice for using global variables in Python is to minimize their usage, as too many global variables can make the program difficult to understand, debug, and maintain.

One example of a global variable is the power function in Python. We can use a loop to calculate the power of a number. Here is an example:

```python
power = 1

def calculate_power(num, exponent):
    global power
    power = 1
    for i in range(exponent):
        power *= num
    return power

print("Power of 2^3 is", calculate_power(2, 3))
print("Power of 5^4 is", calculate_power(5, 4))
```

In this example, we declare a global variable `power` outside the function `calculate_power()`. Inside the function, we use this global variable to store the power of the number. We reset the value of the `power` variable to 1 for each new calculation.

### Program to count the number of times a function is called

```python
count = 0

def my_function():
    global count
    count += 1
    print("This function has been called", count, "times.")

my_function()
my_function()
my_function()
```

In this example, we declare the global variable `count` outside the function `my_function()`. Inside the function, we increment the value of the `count` variable every time the function is called. We then print the value of `count`. 

Overall, it is generally best to avoid global variables in favor of local variables with more limited scope. However, in some cases, global variables may be necessary or useful, and we can use them carefully with the `global` keyword to access them inside functions.  
  
## Advanced tips for Python variable scopes and naming conventions  

Advanced tips for Python variable scopes include avoiding global variables as much as possible to prevent naming conflicts and unexpected behavior. It is also recommended to use descriptive variable names that follow the [PEP 8 naming conventions](https://peps.python.org/pep-0008/#naming-conventions), such as using lowercase letters and underscores to separate words.

Function naming conventions in Python follow the same [PEP 8 guidelines](https://peps.python.org/pep-0008/#function-and-variable-names), using lowercase letters and underscores to separate words. Function names should also be descriptive and convey the purpose of the function.

```python
# Local variable
def greet(name):
    message = "Hello, " + name + "!"
    return message
    
print(greet("Alice"))  # Output: Hello, Alice!
```

In this example, we declare a local variable `message` inside the `greet()` function. This variable is only accessible within the function and cannot be accessed from outside. The function takes a `name` parameter and returns a greeting message with the name included.  
