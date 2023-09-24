> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/print

Printing refers to the process of displaying the output of a program on the console or terminal. It is an essential operation that allows you to communicate with the user or to debug your code by showing the values of variables, the results of calculations, or other information.
There is also such a thing as formatting, which is often used in printing. String formatting (also known as interpolation) is the process of inserting variables or values into a string.

## Printing

To print variable in Python, you can use the `print()` function.

The `print()` function takes one or more arguments separated by commas and displays them on the console or terminal.

Let's look at examples of how to print a variable and string in Python:

```python
# Print a string
print("Hello, Python!")

# Print an integer
print(43)

# Print a floating-point number
print(3.14)
```

Python also allows printing multiple variables:

```python
# Print multiple items
print("The answer is:", 42)
```

You can also use various options with the print() function, such as specifying the separator between items, ending the output with a newline character, and redirecting the output to a file or other stream.

## Formatting

There are several ways to format strings in Python, let's go through this one by one with examples.

- Using f-strings: This method involves using placeholders in a string, which are then replaced by values inside curly braces `{}` preceded by the letter `f`. For example:

```python
# Print using formatted strings
name = "Tom"
age = 32
print(f"My name is {name} and I am {age} years old.")
```

`f-strings` (or formatted string literals) are a feature introduced in Python 3.6 that provide a convenient way to embed expressions inside string literals, using a syntax that starts with the letter 'f'.

With `f-strings`, you can embed expressions inside string literals by enclosing them in curly braces {}. The expressions inside the curly braces are evaluated at runtime, and their values are inserted into the string. So this helps to print to help multiple variables in one string.

- Using the `format()` method and curly braces: You can use `{}` inside a string to indicate where you want to insert variable values, and then use the `format()` method to substitute the actual values. Here's an example:

```python
name = "John"
age = 30
location = "New York"

print("My name is {}, I'm {} years old, and I live in {}.".format(name, age, location))
```

This code will output: `My name is John, I'm 30 years old, and I live in New York.`

In this example, the string `"My name is {}, I'm {} years old, and I live in {}."` contains three curly brackets `{}` to indicate where the variable values should be inserted. The `format()` method is called on the string, and the variables `name`, `age`, and `location` are passed as arguments to the method.

- Using the `%` operator: This method involves using placeholders in a string, which are then replaced by values using the `%` operator. For example:

```python
name = "John"
age = 25
print("My name is %s and I'm %d years old." % (name, age)) # Output: My name is John and I'm 25 years old.
```

Here, `%s` is a placeholder for a string, and `%d` is a placeholder for an integer.

## String Template

String templates provide a way to create strings that include placeholders for values that will be filled in later. This can be useful when you want to generate dynamic strings based on some input.

To use string templates in Python, you can use the `string.Template` class. Here's an example:

```python
from string import Template

name = "Alice"
age = 30

# Create a string template with placeholders for the name and age
template_str = "My name is ${name} and I am ${age} years old."

# Create a template object from the template string
template = Template(template_str)

# Substitute the values for the placeholders
result = template.substitute(name=name, age=age)

print(result)  # Output: My name is Alice and I am 30 years old.
```

In the above example, we first create a string template with placeholders for the name and age using the `${}` syntax. We then create a `Template` object from the template string and use the `substitute` method to replace the placeholders with actual values. Finally, we print the resulting string.

Note that you need to pass the values for the placeholders as keyword arguments to the `substitute` method.
