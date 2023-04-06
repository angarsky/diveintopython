Previously we've touched the topic of operations with variables. In this part we will dive into operations with strings.

Python provides a wide range of built-in functions and methods for working with strings. Let's review in step by step.

## String Concatenation

String concatenation is the process of combining two or more strings into a single string. In Python, you can concatenate strings using the `+` operator.

Here's an example:

```python
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

In the example above, we have created two string variables `str1` and `str2` containing the strings "Hello" and "World" respectively. We then use the `+` operator to concatenate the two strings, along with a space character, to create a single string result. Finally, we print the value of result to the console, which outputs "Hello World".

## String Length

You can get the length of a string using the built-in function `len()`. Here's an example:

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

## String Slicing

String slicing is the process of creating a new substring from an existing string in Python. You can slice a string using the syntax `[start:end]` to extract a portion of the string that starts at the `start` index and ends at the `end` index (not inclusive). Here are some examples:

```python
my_string = "Hello, world!"

# Get the substring from index 0 to index 4 (not inclusive)
print(my_string[0:4])  # Output: "Hell"

# Get the substring from index 7 to the end of the string
print(my_string[7:])  # Output: "world!"

# Get the substring from index 2 to index 8 (not inclusive) with a step of 2
print(my_string[2:8:2])  # Output: "lo,"

# Get the substring from index 2 to the second-to-last character
print(my_string[2:-1])  # Output: "llo, world"
```

In the first example, we use slicing to extract the substring `"Hell"` from the `my_string` variable by specifying the starting index `0` and the ending index `4` (not inclusive).

In the second example, we use slicing to extract the substring `"world!"` from the `my_string` variable by specifying only the starting index `7` and leaving the ending index blank. This tells Python to extract the substring from the starting index to the end of the string.

In the third example, we use slicing to extract every other character from the substring `"lo, "`. We do this by specifying the starting index `2`, the ending index `8` (not inclusive), and a step of `2`.

In the fourth example, we use slicing to extract the substring `"llo, world"` from the `my_string` variable by specifying the starting index `2` and the ending index `-1`. The `-1` specifies the second-to-last character in the string as the ending index.

## String Formatting

String formatting is the process of inserting variables or values into a string. There are several ways to format strings in Python:

- Using the `%` operator: This method involves using placeholders in a string, which are then replaced by values using the `%` operator. For example:

```python
name = "John"
age = 25
print("My name is %s and I'm %d years old." % (name, age)) # Output: My name is John and I'm 25 years old.
```

Here, `%s` is a placeholder for a string, and `%d` is a placeholder for an integer.

- Using the `format()` method: This method involves using placeholders in a string, which are then replaced by values using the `format()` method. For example:

```python
name = "John"
age = 25
print("My name is {} and I'm {} years old.".format(name, age)) # Output: My name is John and I'm 25 years old.
```

Here, the placeholders `{}` are replaced by values in the order they appear in the `format()` method.

- Using f-strings: This method involves using placeholders in a string, which are then replaced by values inside curly braces `{}` preceded by the letter `f`. For example:

```python
name = "John"
age = 25
print(f"My name is {name} and I'm {age} years old.") # Output: My name is John and I'm 25 years old.
```

Here, the placeholders `{}` are replaced by values inside the curly braces `{}` preceded by the letter `f`.

## String Subset

To check if a Python string contains a specific substring, you can use the `in` keyword or the `find()` method.

Here's an example using the in keyword:

```python
my_string = "Hello, world!"
if "world" in my_string:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

Here's an example using the `find()` method:

```python
my_string = "Hello, world!"
if my_string.find("world") != -1:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

In both examples, we check if the substring `"world"` is present in the string `my_string`. If the substring is found, we print `"Substring found!"`, otherwise we print `"Substring not found."`.

## String Indices

In Python, a string is a sequence of characters and each character in the string has a unique index number starting from 0 to n-1, where n is the length of the string.

You can access a specific character in a string by referring to its index using square brackets []. For example, if you have a string `str = "Hello, World!"`, you can access the first character `"H"` by using `str[0]`, the second character `"e"` by using `str[1]`, and so on.

Here's an example:

```python
str = "Hello, World!"
print(str[0])   # Output: "H"
print(str[7])   # Output: "W"
```

## String Reverse

There are several ways to reverse a string in Python. Here are a few examples:

- Using slicing:

```python
string = "hello"
reversed_string = string[::-1]
print(reversed_string)  # Output: "olleh"
```

- Using a loop:

```python
string = "hello"
reversed_string = ""
for char in string:
    reversed_string = char + reversed_string
print(reversed_string)  # Output: "olleh"
```

- Using the reversed() function:

```python
string = "hello"
reversed_string = "".join(reversed(string))
print(reversed_string)  # Output: "olleh"
```

All of these methods will produce the same result, which is the reversed version of the original string.

## Convert to string

To convert a non-string object to a string in Python, you can use the `str()` function. Here are some examples:

```python
# convert an integer to a string
num = 42
str_num = str(num)
print(str_num)  # outputs "42"
print(type(str_num))  # outputs "<class 'str'>"

# convert a float to a string
pi = 3.14159
str_pi = str(pi)
print(str_pi)  # outputs "3.14159"
print(type(str_pi))  # outputs "<class 'str'>"

# convert a boolean to a string
flag = True
str_flag = str(flag)
print(str_flag)  # outputs "True"
print(type(str_flag))  # outputs "<class 'str'>"
```

Note that if you try to convert an object that doesn't have a defined string representation, you may get a `TypeError` exception.

## The `startswith()` and `endswith()` Methods

In Python, `startswith()` and `endswith()` are two string methods that are used to check whether a string starts or ends with a specific prefix or suffix, respectively. Here is an overview of these methods:

The `startswith()` method is used to check whether a string starts with a specific prefix. The method takes one or more prefixes as an argument and returns `True` if the string starts with any of them, and `False` otherwise. Here's the syntax for the `startswith()` method:

```python
string.startswith(prefix, start=0, end=len(string))
```

where:

- `prefix` is the prefix to check.
- `start` is an optional parameter that specifies the starting index of the string to search. By default, `start` is set to 0, which means the entire string will be searched.
- `end` is an optional parameter that specifies the ending index of the string to search. By default, `end` is set to the length of the string.

Here's an example of using the startswith() method:

```python
s = "Python is a great programming language"
print(s.startswith("Python"))  # True
print(s.startswith("Java"))    # False
print(s.startswith(("Java", "Python")))  # True (checking multiple prefixes)
```

`The endswith()` method is used to check whether a string ends with a specific suffix. The method takes one or more suffixes as an argument and returns `True` if the string ends with any of them, and `False` otherwise. Here's the syntax for the `endswith()` method:

```python
string.endswith(suffix, start=0, end=len(string))
```

where:

- `suffix` is the suffix to check.
- `start` and `end` parameters have the same meaning as in the `startswith()` method.

Here's an example of using the endswith() method:

```python
s = "Python is a great programming language"
print(s.endswith("language"))  # True
print(s.endswith("Python"))    # False
print(s.endswith(("Python", "language")))  # True (checking multiple suffixes)
```

In both methods, you can pass a tuple of prefixes or suffixes to check multiple possibilities. The `start` and `end` parameters are optional and can be used to search only a part of the string.

## Method `isnumeric()`

This is a built-in method in Python that returns `True` if all characters in a string are numeric characters, and `False` otherwise.

Here's an example:

```python
s1 = "12345"    # All characters are numeric
s2 = "12345a"   # Last character is not numeric

print(s1.isnumeric())    # Output: True
print(s2.isnumeric())    # Output: False
```

In the above example, the `isnumeric()` method is called on two different strings `s1` and `s2`. `s1` contains only numeric characters, so `isnumeric()` returns `True`. However, `s2` contains a non-numeric character `a`, so `isnumeric()` returns `False`.

## The `split()` method

It is also a built-in method in Python that is used to split a string into a list of substrings based on a specified separator. By default, the separator used is whitespace.

Here's an example:

```python
s = "Hello World! How are you?"

words = s.split()

print(words)   # Output: ['Hello', 'World!', 'How', 'are', 'you?']
```

In the above example, the `split()` method is called on the string `s`, which contains whitespace-separated words. The resulting list words contains all the words in the original string as separate elements.

You can also specify a different separator using the `split()` method. For example:

```python
s = "mango,ananas,banana"

fruits = s.split(",")

print(fruits)   # Output: ['mango', 'ananas', 'banana']
```

In this example, the `split()` method is called on the string `s`, which contains comma-separated fruit names. The resulting list fruits contains all the fruit names as separate elements, with the comma used as the separator.

## String Substitution

The `replace()` method is used to replace a specific substring with a new substring in a given string. The syntax for this method is:

```python
string.replace(old, new[, count])
```

Here, `string` is the original string, `old` is the substring that needs to be replaced, `new` is the new substring that will replace the old substring, and `count` (optional) is the number of times the replacement should be done.

The `replace()` method returns a new string with the specified replacements made.

For example, consider the following code snippet:

```python
string = "Hello World"
new_string = string.replace("Hello", "Hi")
print(new_string) # Output: Hi World
```

In this example, the `replace()` method is used to replace the substring `"Hello"` with `"Hi"` in the `string` variable. The resulting string is then printed out using the `print()` function.

Note that the original string variable is not modified by the `replace()` method; instead, a new string is created with the specified replacements made.
