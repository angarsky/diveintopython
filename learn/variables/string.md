> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/string

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

```python3
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

In the example above, we have created two string variables `str1` and `str2` containing the strings "Hello" and "World" respectively. We then use the `+` operator to add one string to another, along with a space character, to create a single string result. Finally, we print the result of adding to the console, which outputs "Hello World".

## A Variable in a String

In Python, you can include variables within strings using different methods. Here are a few commonly used ways to achieve this:

**String Concatenation**: you can concatenate strings and variables using the `+` operator:

```python3
name = "Alice"
age = 30
message = "Hello, my name is " + name + " and I am " + str(age) + " years old."
print(message)
```

**Using the `str.format()` Method**: this method allows you to embed variables in a string using placeholders `{}`:

```python3
name = "Bob"
age = 25
message = "Hello, my name is {} and I am {} years old.".format(name, age)
print(message)
```

**Using f-strings (formatted string literals)**: introduced in Python 3.6, f-strings provide a concise way to embed variables directly within strings by prefixing the string with `f` and using `{}` to enclose variables:

```python
name = "Charlie"
age = 35
message = f"Hello, my name is {name} and I am {age} years old."
print(message)
```

All of these methods achieve the same result, but f-strings are often preferred due to their readability and ease of use. They allow you to directly reference variables within the string, making the code cleaner and more understandable.

## String Length

You can get the length of a string using the built-in function `len()`. You can also check if a string is empty using this method.

Here is an example of calculating the characters that a string contains:

```python3
my_string = "Hello, world!"
print(len(my_string))  # Output: 13
```

In this example, the `len()` function returns the number of characters in the `my_string` variable, which is 13. You can also use `len()` to get the length of a string variable that is empty or contains whitespace:

```python3
empty_string = ""
print(len(empty_string))  # Output: 0

whitespace_string = "   "
print(len(whitespace_string))  # Output: 3
```

In both cases, the `len()` function returns the length of the string, which is 0 for the empty string and 3 for the string containing whitespace.

## String Comparison

In Python, you can use various comparison operators to compare strings. Here are some examples:

The `==` operator: checks if two strings are equal.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 == str2:
    print("The two strings are equal.")
else:
    print("The two strings are not equal.")
# Output: The two strings are not equal.
```

The `!=` operator: checks if two strings are not equal.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 != str2:
    print("The two strings are not equal.")
else:
    print("The two strings are equal.")
# Output: The two strings are not equal.
```

The `<` operator: checks if the first string is less than the second string in lexicographical order.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 < str2:
    print("The first string comes before the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before the second string.
```

The `>` operator: checks if the first string is greater than the second string in lexicographical order.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 > str2:
    print("The first string comes after the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

The `<=` operator: checks if the first string is less than or equal to the second string in lexicographical order.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 <= str2:
    print("The first string comes before or is equal to the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before or is equal to the second string.
```

The `>=` operator: checks if the first string is greater than or equal to the second string in lexicographical order.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 >= str2:
    print("The first string comes after or is equal to the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

Note that when comparing strings in Python, the comparison is done in lexicographical order, which means that the comparison is based on the ASCII values of the characters in the strings.

## Multiline String

You can create a multiline string by enclosing the text in triple quotes, either triple single quotes (''') or triple double quotes (""").

For example:

```python3
multiline_string = '''
This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
'''

print(multiline_string)
```

```python
# Output:

This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
```

Note that any whitespace, including newlines, in the triple-quoted string will be included in the string. If you want to exclude the whitespace at the beginning or end of a line, you can use string methods like strip() or rstrip().

## Binary String

A binary string can be represented using the prefix `0b` followed by a sequence of `0` and `1` digits. For example, the binary string `1101` can be represented as `0b1101`. Here are some examples of how to create and manipulate binary strings in Python:

- Creating a binary string:

```python
binary_str = '0b1101'
```

- Converting a decimal integer to a binary string:

```python
decimal_num = 13
binary_str = bin(decimal_num)
```

- Converting a binary string to a decimal integer:

```python
binary_str = '0b1101'
decimal_num = int(binary_str, 2)
```

- Bitwise operations on binary strings:

```python3
binary_str1 = '0b1101'
binary_str2 = '0b1010'

# Bitwise AND
result = int(binary_str1, 2) & int(binary_str2, 2)
print(bin(result))  # Output: 0b1000

# Bitwise OR
result = int(binary_str1, 2) | int(binary_str2, 2)
print(bin(result))  # Output: 0b1111

# Bitwise XOR
result = int(binary_str1, 2) ^ int(binary_str2, 2)
print(bin(result))  # Output: 0b0111
```

Note that when performing bitwise operations, we need to convert the binary strings to decimal integers using the `int()` function with a second argument specifying the base (`2` in this case), and then convert the result back to a binary string using the `bin()` function.

## Iterate on Chars

There are several ways of iterating over the characters in a string in Python. Here are a few examples:

- Using a `for` loop:

```python3
my_string = "Hello, world!"
for char in my_string:
    print(char)
```

- Using a `while` loop:

```python3
my_string = "Hello, world!"
i = 0
while i < len(my_string):
    print(my_string[i])
    i += 1
```

- Using a list comprehension:

```python3
my_string = "Hello, world!"
char_list = [char for char in my_string]
print(char_list)
```

- Using the `map()` function:

```python3
my_string = "Hello, world!"
char_list = list(map(str, my_string))
print(char_list)
```

- Using the `enumerate()` function:

```python3
my_string = "Hello, world!"
for index, char in enumerate(my_string):
    print(f"Character at index {index}: {char}")
```

All of these methods will allow you to iterate over the characters in a string and perform operations on them. Choose the one that suits your needs best!
