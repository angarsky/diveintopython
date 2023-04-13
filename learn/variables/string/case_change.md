There are some methods in Python which are commonly used to normalize string inputs, to convert strings to uppercase or lowercase, and to capitalize the first letter of a sentence or word. These methods can be particularly useful when dealing with user input or when working with text data that needs to be standardized or formatted consistently.

## String to lowercase

The `lower()` and `upper()` methods are used to convert all the characters in a string to lowercase and uppercase, respectively.

The `lower()` method converts all uppercase characters in the string to their lowercase equivalents, while leaving any existing lowercase characters unchanged. The method has the following syntax:

```python
string.lower()
```

Here, `string` is the original string to be converted to lowercase. The method returns a new string with all the uppercase characters converted to lowercase.

For example, consider the following code snippet:

```python
string = "Hello World"
new_string = string.lower()
print(new_string) # Output: hello world
```

In this example, the `lower()` method is used to convert all the uppercase characters in the string variable to lowercase. The resulting lowercase string is then printed out using the `print()` function.

## String to uppercase

Similarly, the `upper()` method converts all lowercase characters in the string to their uppercase equivalents, while leaving any existing uppercase characters unchanged. The method has the following syntax:

```python
string.upper()
```

Here, `string` is the original string to be converted to uppercase. The method returns a new string with all the lowercase characters converted to uppercase.

For example, consider the following code snippet:

```python
string = "Hello World"
new_string = string.upper()
print(new_string) # Output: HELLO WORLD
```

In this example, the `upper()` method is used to convert all the lowercase characters in the `string` variable to uppercase. The resulting uppercase string is then printed out using the print() function.

## Capitalize a string in Python

The `capitalize()` method only capitalizes the first letter of the string, and leaves the rest of the letters in lowercase. Here's an example:

```python
string = "hello world"
capitalized_string = string.capitalize()
print(capitalized_string) # Output: Hello world
```
