Python is a popular programming language that provides various operations and methods for working with data and performing various tasks. Let's review the most popular which relate to all vriable types.

## Type Definition

There are several ways to check the type of a variable in Python. Let's see how to check a type of a variable in Python.

### Function `type()`

This built-in `type()` function returns the data type of a variable, it is the equivalent of `typeof` in other programming languages.

Let's see how to print type of variable in Python:

```python
x = 23
print(type(x))   # Output: <class 'int'>

y = 3.14
print(type(y))   # Output: <class 'float'>

z = "Hello, friend!"
print(type(z))   # Output: <class 'str'>

w = True
print(type(w))   # Output: <class 'bool'>
```

In this example, the `type()` function is used to determine the type of variables `x`, `y`, `z`, and `w`. The output shows the class of the variable.

### Function `isinstance()`

This built-in function checks whether a variable is an instance of a specified class or not. With this function we can easily check if a variable is `string` or not.

So here we are checking type of variable in Python:

```python
x = 5
print(isinstance(x, int))  # Output: True

y = "hello"
print(isinstance(y, str))  # Output: True

z = [1, 2, 3]
print(isinstance(z, list))  # Output: True
```

### Using the `__class__` attribute

This attribute returns the class of an object.

Example:

```python
x = 17
print(x.__class__)  # Output: <class 'int'>

y = "hello"
print(y.__class__)  # Output: <class 'str'>

z = [1, 2, 3]
print(z.__class__)  # Output: <class 'list'>
```

This example shows how to print a type of a variable in Python.

### Using the `type()` function with an `assert` statement

This is a way to check the type of a variable and raise an error if the type is not as expected.

Example:

```python
x = 98
assert type(x) == int

y = "hello"
assert type(y) == str

z = [1, 2, 3]
assert type(z) == list
```

These are ways how to get a type of a variable in Python.
