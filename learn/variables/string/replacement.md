> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/string/replacement

Quite often we need to replace one or more occurrences of a particular substring or character within a string with a different substring or character. This is a commonly used operation in computer programming and text processing, as it allows for the manipulation of text data in a flexible and efficient way. Here are some methods which can help with it.

## String Substitution

In most programming languages, string substitution is typically performed using a combination of string manipulation functions and regular expressions. For example, in Python, the replace() method can be used to replace all occurrences of a particular substring within a string:

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

## Remove Newline Characters

You can remove newline characters from a string using the `replace()` method. Here's an example:

```python
string_with_newline = "This is a string
with a newline character."
string_without_newline = string_with_newline.replace("
", "")
print(string_without_newline) # Output: This is a stringwith a newline character.
```

In the code above, we first define a string called `string_with_newline` which contains a newline character (`
`). We then use the `replace()` method to replace all occurrences of the newline character with an empty string (`""`). The resulting string, `string_without_newline`, does not contain any newline characters. We then print the resulting string using the `print()` function.
