Previously we've touched the topic of operations with variables. In this part we will dive into most common operations and methods with strings. This is not the whole list of possible string manipulations.

## String Variable Declaration

You can declare a string variable by assigning a string value to a variable name using the equals sign `=`. Here's an example:

```python
my_string = "Hello, world!"
```

In this example, we have declared a string variable called `my_string` and assigned it the value `"Hello, world!"`. Note that the string value is enclosed in quotation marks.

You can also declare an empty string variable by assigning an empty string value to a variable name, like this:

```python
my_string = ""
```

In this case, we have declared a string variable called `my_string` and assigned it an empty string value.

## String Concatenation

String concatenation is the process of combining two or more strings into a single string. In Python, you can concatenate strings using the `+` operator. One more option to append a string is using `+=` operator.

Let's look at an example of appending a string:

```python
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

In the example above, we have created two string variables `str1` and `str2` containing the strings "Hello" and "World" respectively. We then use the `+` operator to add one string to another, along with a space character, to create a single string result. Finally, we print the result of adding to the console, which outputs "Hello World".

## String Length

You can get the length of a string using the built-in function `len()`. You can also check if a string is empty using this method.

Here is an example of calculating the characters that a string contains:

```python
my_string = "Hello, world!"
print(len(my_string))  # Output: 13
```

In this example, the `len()` function returns the number of characters in the `my_string` variable, which is 13. You can also use `len()` to get the length of a string variable that is empty or contains whitespace:

```python
empty_string = ""
print(len(empty_string))  # Output: 0

whitespace_string = "   "
print(len(whitespace_string))  # Output: 3
```

In both cases, the `len()` function returns the length of the string, which is 0 for the empty string and 3 for the string containing whitespace.
