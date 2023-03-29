In Python, a data type is a classification of values that determine the possible operations on those values and how they are stored in memory. Variables, on the other hand, are containers that hold values of defined data types.

Here are some commonly used data types in Python:

### `Integer` (int)
`Integers` are whole numbers, either `positive` or `negative`, without decimals. Examples include:

```python
x = 42
y = -13
z = 0
```

## `Floating-point` (float)
`Floating-point` numbers are real `numbers` with `decimal points`. Examples include:

```python
a = 3.14
b = -0.5
c = 2e3 # 2000.0
```

## `String` (str)
`Strings` are `sequences` of `characters` enclosed in quotation marks (single or double). Examples include:

```python
name = "Alice"
address = '123 Main St'
greeting = "Hello, I'm a chatbot.”
```

## `Boolean` (bool)
`Boolean` values are either `True` or `False`. Examples include:

```python
is_raining = True
is_sunny = False
```

## Global variables
In addition to it every variable can be either `global` or `local`. A `global variable` in Python is a variable that is defined `outside a function` and can be accessed by any part of the code, including any function or class defined in the module.

A `local variable` is a variable that is defined `inside a function` and is only accessible within that function's scope.

When a variable is defined within a function, it is only available for use within that function, and once the function exits, the variable is destroyed. This means that the variable cannot be accessed or modified from outside of the function.

`Declaring a variable` in Python is performed by assigning a value to it using the `assignment operator` "=". Here's an example:

```python
x = 5
```

You can also declare multiple variables at once by separating the variable names and values with commas. For example:

```python
a, b, c = 1, 2, 3
```

In this example, we declare three variables a, b, and c, and assign them the values 1, 2, and 3, respectively.

There is important note concerning `declaring a variable` in python - variable names are `case-sensitive` and cannot start with a number. Additionally, Python is `dynamically typed`, meaning that you do not need to specify the type of a variable when you declare it. The `type of the variable` will be inferred based on the value you assign to it.
