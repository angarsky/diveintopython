Previously we've touched the topic of operations with variables. In this part we will dive into operations and methods with strings. This is not the whole list of possible string manipulations.


## String Indices

In Python, a string is a sequence of characters and each character in the string has a unique index number starting from 0 to n-1, where n is the length of the string, so you can access individual characters of a string using indexing.

You can access a specific character in a string by referring to its index using square brackets []. For example, if you have a string `str = "Hello, World!"`, you can access the first character `"H"` by using `str[0]`, the second character `"e"` by using `str[1]`, and so on.

Here's an example:

```python
str = "Hello, World!"
print(str[0])   # Output: "H"
print(str[7])   # Output: "W"
```

## Convert to String

To convert a non-string object to a string in Python, you can use the `str()` function. Here are some examples how to cast data:

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

## String Substitution

The `replace()` method is used to replace a specific substring with a new substring in a given string. You can also use this method to remove a specific character or substring from a string. The syntax for this method is:

```python
string.replace(old, new[, count])
```

Here, `string` is the original string, `old` is the substring that needs to be replaced, `new` is the new substring that will substitute the old substring, and `count` (optional) is the number of times the replacement should be done.

The `replace()` method returns a new string with the specified replacements made.

For example, consider the following code snippet:

```python
string = "Hello World"
new_string = string.replace("Hello", "Hi")
print(new_string) # Output: Hi World
```

In this example, the `replace()` method is used for replacement the substring `"Hello"` with `"Hi"` in the `string` variable. The resulting string is then printed out using the `print()` function.

Also you can use `replace()` method for replacing a single character in a string.

Note that the original string variable is not modified by the `replace()` method; instead, a new string is created with the specified replacements made.

## The `lower()`, `upper()` and `capitalize()` Methods

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

The `capitalize()` method only capitalizes the first letter of the string, and leaves the rest of the letters in lowercase. Here's an example:

```python
string = "hello world"
capitalized_string = string.capitalize()
print(capitalized_string) # Output: Hello world
```

## The `strip()` Method

This is a built-in string method that returns a copy of the string with leading and trailing characters removed. The `strip()` method can be used to remove whitespace characters such as spaces, tabs, and newlines. In some other languages known as `trim()` method.

Here's an example of spaces removing:

```python
string = "  hello world  "
new_string = string.strip()
print(new_string) # Output: "hello world"
```

As you can see, the `strip()` method removed the leading and trailing spaces from the original string. If you want to remove only the leading or trailing spaces, you can use the `lstrip()` or `rstrip()` methods, respectively.

For example:

```python
string = "  hello world  "
new_string = string.lstrip()
print(new_string) # Output: "hello world  "
```

In this case, only the leading spaces were removed, and the trailing spaces remained. Similarly, if you use `rstrip()` instead of `lstrip()`, only the trailing spaces would be removed.

## String to List Conversion

To convert a string to a list of its individual letters in Python, you can use the built-in `list()` function. Here's an example:

```python
my_string = "hello"
letters_list = list(my_string)
print(letters_list)
```

This will output:

```python
['h', 'e', 'l', 'l', 'o']
```

Alternatively, you could use a loop to iterate over the string and append each letter to a new list:

```python
my_string = "hello"
letters_list = []
for letter in my_string:
    letters_list.append(letter)
print(letters_list)
```

This will also output:

```python
['h', 'e', 'l', 'l', 'o']
```

## String to Boolean Conversion

You can convert a string to a boolean value using the built-in `bool()` function.

By default, the following strings are considered as `True`:

- Any non-empty string
- The string "True" (case-insensitive)

On the other hand, the following strings are considered as `False`:

- An empty string
- The string "False" (case-insensitive)
- Any numeric value equal to 0 (i.e., "0" or "0.0")

Here are some examples:

```python
>>> bool("hello")
True
>>> bool("")
False
>>> bool("True")
True
>>> bool("false")
False
>>> bool("0")
False
>>> bool("1")
True
```

If you have a string that is not one of the above values and you want to treat it as a boolean, you can define your own rules for conversion using an `if` statement or a conditional expression.

## The `join()` Method

This method allows you to join elements of an iterable (such as a list, tuple, or string) into a single string using a separator string.

The syntax for using the `join()` method is as follows:

```python
separator_string.join(iterable)
```

Here, `separator_string` is the string that you want to use to separate the elements in the iterable, and `iterable` is the sequence of elements that you want to join.

For example, if you have a list of strings and you want to join them into a single string separated by commas, you could use the following code:

```python
my_list = ['mango', 'pineapple', 'banana']
separator = ', '
result = separator.join(my_list)
print(result)  # Output: "mango, pineapple, banana"
```

In this example, the `join()` method is called on the separator string, with the `my_list` list as the iterable argument. The resulting string is assigned to the result variable and printed to the console.

Note that the `join()` method can also be used with other types of iterables, such as tuples or sets. Additionally, you can use an empty string as the separator if you want to join the elements without any separation.

## Unicode to String

In Python, you can convert a Unicode string to a regular string (also known as a byte string) using the `encode` method.

Here's an example:

```python
unicode_string = "Hello, World! 🌍"
byte_string = unicode_string.encode("utf-8")
print(byte_string) # Output: b'Hello, World! \xf0\x9f\x8c\x8d'
```

In this example, the `encode` method is used to convert the `unicode_string` to a byte string encoded in UTF-8 format. The resulting `byte_string` variable contains the byte representation of the original string.

Note that the `b` prefix in the output indicates that the value is a byte string, rather than a regular string. If you want to convert the byte string back to a regular string, you can use the decode method:

```python
new_unicode_string = byte_string.decode("utf-8")
print(new_unicode_string) # Output: Hello, World! 🌍
```

In this example, the `decode` method is used to convert the byte string back to a Unicode string encoded in UTF-8 format. The resulting `new_unicode_string` variable contains the original string.

## Reading file into string

To read a file into a string in Python, you can use the built-in `open()` function to open the file and read its contents using the `read()` method. Here is an example:

```python
with open('filename.txt', 'r') as file:
    data = file.read()
```

In this example, replace `'filename.txt'` with the name of the file you want to read. The `'r'` argument specifies that the file should be opened in read mode.

The `with` statement is used to ensure that the file is closed automatically when the block inside the `with` statement is exited. This helps to prevent resource leaks.

The contents of the file are then read into the data variable using the `read()` method.

You can then use the data variable as a string in your code.

## Remove Newline Characters

You can remove newline characters from a string using the `replace()` method. Here's an example:

```python
string_with_newline = "This is a string\nwith a newline character."
string_without_newline = string_with_newline.replace("\n", "")
print(string_without_newline) # Output: This is a stringwith a newline character.
```

In the code above, we first define a string called `string_with_newline` which contains a newline character (`\n`). We then use the `replace()` method to replace all occurrences of the newline character with an empty string (`""`). The resulting string, `string_without_newline`, does not contain any newline characters. We then print the resulting string using the `print()` function.

## String to Hex

You can convert a string to its hexadecimal representation in Python using the `encode()` method and the `'hex'` encoding. Let's see how to encode with an example:

```python
string = "Hello, world!"
hex_string = string.encode('hex')

print(hex_string) # Output: 48656c6c6f2c20776f726c6421
```

In Python 3, the `hex()` method can be used to convert a string to its hexadecimal representation. Here's an example:

```python
string = "Hello, world!"
hex_string = ''.join([hex(ord(c))[2:] for c in string])

print(hex_string) #Output: 48656c6c6f2c20776f726c6421
```
