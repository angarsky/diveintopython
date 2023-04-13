Variables play a crucial role in Python, as they provide a way to store and manipulate data throughout a program. By assigning values to variables, we can easily refer to and update data as needed, making our code more efficient and readable. Overall, variables are a fundamental concept in Python programming and are essential for any kind of data manipulation and analysis. Let's review this topic in details.

## Variable Definition

Let's define what a variable is in Python. It is a named location in the computer's memory that stores a value. It is like a container that can hold different types of data, such as numbers, strings or booleans.

To create a variable in Python, you need to give it a name and assign a value to it using the assignment operator `=`.

## Variable Naming Convention

In Python, variable names are case sensitive and can be any combination of letters, numbers, and underscores. However, there are guidelines and variable naming conventions in Python  that make your code more readable and maintainable:

- Use lowercase letters for variable names. In Python, it is customary to use lowercase letters for variable names.
- Use underscores to separate words in variable names. If a variable name consists of more than one word, use underscores to separate them. For example, `first_name` is a better variable name than `firstname`
- Avoid using reserved keywords. Python has reserved keywords that have special meaning in the language, such as `if`, `else`, `while`, and `for`. Avoid using these keywords as variable names.
- Use descriptive names for variables. Choose descriptive names that reflect the purpose of the variable. For example, `count` is a better variable name than `c`
- Use singular nouns for variable names. For example, `student` is a better variable name than `students`.
- Be consistent with naming conventions within your code and across your team.

Here are some examples of good variable names in Python:

```python
first_name
last_name
age
is_student
num_of_courses
```

Remember that good variable naming conventions not only help you set a valid variable name, but also make your code more readable, maintainable, and reduce the risk of bugs.

## Variable Declaration

In Python, you don't need to explicitly declare a variable before using it. You can create a variable simply by assigning a value to it.

However, it is important to note that variables in Python are dynamically typed, which means that the data type of a variable is determined at runtime based on the type of the value assigned to it. This means that the same variable can hold different types of values at different times. For example:

```python
y = 5
y = "hello"

print(y) # Output: hello
```

In this example, we first created a variable named `y` and assigned it the value `5`. We then changed the value of `y` to a string `hello`. The program printed the value of `y`, which is the string `hello`.

## Data Types

There are nine data types in Python:

- Integers
- Floating-point numbers
- Complex
- Strings
- Booleans
- Lists
- Tuples
- Sets
- Dictionaries

The first three types can conditionally be combined into numeric group.

### Numeric Types

Numeric types are used to represent numbers in Python. There are three types of numeric data types in Python:

- **Integer**: Integers are whole numbers without any decimal point. Example: 5, 10, -3.
- **Float**: Floats are numbers with decimal points. Example: 2.5, -0.1, 3.14.
- **Complex**: Complex numbers are numbers with a real and imaginary part. They are denoted by adding a `j` at the end of the imaginary part. Example: 2 + 3j, -4j.

```python
# integer
a = 5
# float
b = 3.14
# complex
c = 2 + 3j
```

### Boolean Type

Boolean type is a data type that can have only two values - `True` or `False`.

```python
a = True
b = False
```

### String Type

Strings (also known as string literal) are used to represent text data in Python. They are enclosed in quotes (single or double) and can contain letters, numbers, and special characters. Let's see what a string is with an example:

```python
a = "Hello, World!"
b = 'Python is cool'
```

### List Type

Lists are used to store a collection of items. They can contain any type of data and are denoted by square brackets.

```python
a = [1, 2, 3, 4, 5]
b = ['mango', 'pineapple', 'orange']
```

### Tuple Type

Tuples are similar to lists, but they are immutable, meaning their contents cannot be changed. They are denoted by parentheses.

```python
a = (1, 2, 3)
b = ('red', 'green', 'blue')
```

### Set Type

Sets are used to store unique values. They are denoted by curly braces.

```python
a = {1, 2, 3, 4, 5}
b = {'mango', 'pineapple', 'orange'}
```

### Dictionary Type

Dictionaries are used to store key-value pairs. Each key is associated with a value, and they are denoted by curly braces with key-value pairs separated by colons.

```python
a = {'name': 'John', 'age': 30, 'city': 'New York'}
b = {'mango': 1.99, 'pineapple': 0.99, 'orange': 2.99}
```

### None Type

None is a special data type in Python that represents the absence of a value.

```python
a = None
```

> Note: In Python, you can declare a variable without assigning it a value by simply using the variable name followed by an equal sign (=).

Let's see how to define a variable in Python without assigning it a value:

```python
variable_name =
```

## Character Variable

In Python, a character variable is a single character stored in a variable. Unlike some other programming languages, Python does not have a separate data type for characters. Instead, a character is simply a string of length 1 in Python.

To declare a character variable in Python, you can assign a single character to a variable using single quotes, double quotes, or triple quotes. Here are some examples:

```python
char1 = 'a'
char2 = "b"
char3 = '''c'''
```

In the examples above, `char1`, `char2`, and `char3` are all character variables that store the characters `a`, `b`, and `c`, respectively.

You can also use indexing to extract a single character from a string variable. For example:

```python
string = "hello"
char = string[0]   # Output: 'h'
```

In the example above, `char` is a character variable that stores the first character of the string `hello`.

## Declaring Variables’ Types

As it was mentioned above, Python is a dynamically typed language, which means that you do not need to declare the type of a variable explicitly. Instead, the type of a variable is determined at runtime based on the value it is assigned.

However, starting from Python 3.5, the language includes a syntax for type annotations, which allow you to specify the expected type of a variable. This can be useful for improving code readability, documentation, and type checking.

Here's an example of how you can use type annotations in Python:

```python
# declare a variable with an integer type annotation
my_number: int = 42

# declare a variable with a string type annotation
my_string: str = "Hello, world!"

# declare a function with type annotations for parameters and return value
def add_numbers(a: int, b: int) -> int:
    return a + b
```

Note that type annotations are optional, and Python will still work even if you do not use them. However, using type annotations can help catch certain types of errors at compile time, rather than at runtime.

## Variables and Constants

In Python, variables are used to store data or values that can be changed or updated during the course of the program. On the other hand, constant variables, as the name suggests, are variables that cannot be changed once they are assigned a value.

In Python, there is no specific way to declare a variable or a constant variable, as variables are dynamically typed and their type can change during the program execution. However, a common convention to differentiate between variables and constant variables is to use all capital letters for the latter.

For example, let's say we want to declare a variable to store the age of a person and a constant variable to store the value of pi. We can declare them as follows:

```python
# variable to store age
age = 30

# constant variable to store pi value
PI = 3.14159
```

In the above example, `age` is a variable that can be changed, while `PI` is a constant variable that cannot be changed once assigned a value.

It is important to note that this convention does not actually make the variable constant, and it is still possible to modify the value of a constant variable in Python. However, following this convention helps in distinguishing between variables that are intended to be changed during the program execution and those that are intended to be constant.

## Global and Local Variables Defining

There are two types of variables in Python: **global** and **local**.

A global variable in Python is a variable that is defined outside a function and can be accessed by any part of the program, including functions. Global variables in Python have a global scope, which means they are accessible from anywhere in the code.

Here's an example how to set a global variable in Python:

```python
x = 10

def my_function():
    print(x)

my_function() # output: 10
```

In the example above, `x` is a global variable that can be accessed by the `my_function` function. When the function is called, it prints the value of `x`.

Now let's see what a local variable is in Python.

A local variable is a variable that is defined inside a function and can only be accessed within that function. Local variables have a local scope, which means they are only accessible within the block of code where they are defined.

Here's an example of defining a local variable in Python:

```python
def my_function():
    y = 5
    print(y)

my_function() # output: 5
```

In the example above, `y` is a local variable that can only be accessed within the `my_function` function. When the function is called, it prints the value of `y`.

It's important to note that if you define a local variable with the same name as a global variable, the local variable will take precedence within the function. Here's an example:

```python
x = 10

def my_function():
    x = 5
    print(x)

my_function() # output: 5
print(x) # output: 10
```

In the example above, `my_function` defines a local variable `x` with a value of `5`. When the function is called, it prints the value of the local variable, which is `5`. However, the global variable `x` still has a value of `10`, which is printed when it is called outside of the function.
