> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/string/substring

A substring is a sequence of characters that is part of a larger string. It is a contiguous sequence of characters within a string, which can be extracted or manipulated independently.

For example, in the string "Hello, World!", the substrings "Hello", "World", and "!" are all substrings of the original string.

Let's review the most common operations and methods related to substring.

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

To split a string on a delimiter, you can also use the `split()` method. This method takes one argument, which is the delimiter character or string that you want to use to split the string. Here's an example:

```python
my_string = "Hello,world"
my_list = my_string.split(",")
print(my_list) # Output: ['Hello', 'world']

You can remove the first character from a string in Python using string slicing. Here's an example:

```python
string = "hello"
new_string = string[1:]
print(new_string) # Output: ello
```

String slicing also can be used to remove the last character from a string. Here is an example:

```python
my_string = "Hello World!"
new_string = my_string[:-1]
print(new_string)  # Output: "Hello World"
```

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

## String Reverse

There are several ways of reversing a string in Python. 

Let's see how to reverse a string in python with examples::

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

## The `split()` Method

It is also a built-in method in Python that is used for splitting and parsing a string into a list of substrings based on a specified separator. By default, the separator used is whitespace.

Here's an example:

```python
s = "Hello World! How are you?"

words = s.split()

print(words)   # Output: ['Hello', 'World!', 'How', 'are', 'you?']
```

In the above example, the `split()` method is called on the string `s`, which contains whitespace-separated words. The resulting list words contains all the words in the original string as separate elements.

You can also specify a different separator using the `split()` method. For example:

```python
s = "mango,pineapple,banana"

fruits = s.split(",")

print(fruits)   # Output: ['mango', 'pineapple', 'banana']
```

In this example, the `split()` method is called on the string `s`, which contains comma-separated fruit names. The resulting list fruits contains all the fruit names as separate elements, with the comma used as the separator.

## The `string.find()` Function

This is built-in Python function that returns the index of the first occurrence of a substring within a given string. If the substring is not found, it returns `-1`. The syntax for using `string.find()` is as follows:

```python
string.find(substring, start=0, end=len(string))
```

where `string` is the string to search in, `substring` is the string to search for, `start` is the starting index of the search (default is 0), and `end` is the ending index of the search (default is the length of the string).

Here is an example:

```python
sentence = "The quick brown fox jumps over the lazy dog"
print(sentence.find("fox"))   # Output: 16
print(sentence.find("cat"))   # Output: -1
```

In the first line, we define a string sentence. Then we use the `find()` function to search for the substring `"fox"` in the `sentence` string. Since `"fox"` is found at index 16 in the `sentence` string, the `find()` function returns `16`. In the second line, we search for the substring `"cat"`, which is not found in the `sentence` string, so the `find()` function returns `-1`.

## The `replace()` Method

In Python, strings are immutable, which means that you cannot change a string once it has been created. However, you can create a new string that contains a modified version of the original string.

To remove a specific character or a substring from a string in Python, you can use the `replace()` method or string slicing.

Here is an example of using the replace() method to remove a specific character:

```python
my_string = "Hello, World!"
new_string = my_string.replace("o", "")
print(new_string) # Output: Hell, Wrld!
```

Here, we replaced the character `"o"` with an empty string, effectively removing it from the original string.

## String Truncation

You can truncate a string by specifying the maximum length of the string you want to keep.

Here's an example:

```python
text = "This is a long text that needs to be truncated."
max_length = 20
truncated_text = text[:max_length] + "..." if len(text) > max_length else text
print(truncated_text) # Output: This is a long text...
```

In this example, we first define a string `text` that we want to truncate. We also specify the maximum length of the truncated string using the `max_length` variable.

We then use slicing to get the first `max_length` characters of the string. If the length of the original string is greater than `max_length`, we append an ellipsis to the end of the truncated string using string concatenation. If the length of the original string is less than or equal to `max_length`, we simply assign the original string to the `truncated_text` variable.

Finally, we print the truncated string using the `print()` function.

## The `count()` Method

You can use the built-in `count` method to count the number of occurrences of a substring within a string.

Here's a counter of substring `"is"`:

```python
string = "Hello, world! This is a sample string."
substring = "is"

count = string.count(substring)

print(count) # Output: 2
```

In this example, we have a string `"Hello, world! This is a sample string."` and we want to count the number of occurrences of the substring `"is"`. We use the count method to count the number of times the substring appears in the string.

The output of this program will be `2`, because the substring `"is"` appears twice in the string.
