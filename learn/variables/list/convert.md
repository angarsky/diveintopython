> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/list/convert

In Python, it's common to convert data to and from lists, as lists are a versatile data structure that can hold multiple items of varying data types. In some cases we need to change the type of data stored in a list. Let's review the most common cases of conversion.

## List to String Conversion in Python

To convert a list to a string in Python, you can use the `join()` method. Here's an example:

```python
my_list = ["apple", "pineapple", "cherry"]
my_string = ", ".join(my_list)
print(my_string) # Output: apple, pineapple, cherry
```

## String to List Conversion

To convert a Python string to a list, you can use the `split()` method. The `split()` method splits a string into a list of substrings based on a specified delimiter.

Here's an example of how to get list from string:

```python
my_string = "Hello, World!"
my_list = my_string.split(", ")
print(my_list) Output: ['Hello', 'World!']
```

To convert a Python string into a list of characters, you can use the `list()` function, which takes a sequence (e.g., a string) as an argument and returns a list containing the elements of the sequence:

Here's an example of string into list of characters convertion:

```python
my_string = "Hello, world!"
my_list = list(my_string)
print(my_list) Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

## List to Dictionary Conversion

You can convert a list to a dictionary in Python using the `dict()` constructor. The list should contain key-value pairs as tuples, where the first element of each tuple is the key and the second element is the value. Here's an example:

```python
my_list = [("a", 1), ("b", 2), ("c", 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## List to Set Conversion

To convert a list to a set in Python, you can use the built-in `set()` function. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```
You can also get a list of unique values using the `set()` function, by converting a list to a set, and then convert it back to a list.

## Set to List Conversion

To convert a set to a list in Python, you can use the `list()` function. Here's an example:

```python
my_set = {1, 2, 3, 4, 5}
my_list = list(my_set)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Splitting String into List

You can use the `split()` method in Python to split a string into a list.

Here's an example:

```python
string = "Hello World"
list = string.split()
print(list) # Output: ['Hello', 'World']
```

By default, the s`plit()` method splits the string on whitespace characters (spaces, tabs, and newlines). You can also specify a different delimiter by passing it as an argument to the `split()` method. For example, if you want to split a string on commas, you can do:

```python
string = "apple,banana,orange"
list = string.split(",")
print(list) # Output: ['apple', 'banana', 'orange']
```

## List to Tuple Conversion

In Python, you can easily convert a list to a tuple using the built-in `tuple()` function. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]
my_tuple = tuple(my_list)
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Tuple to List Conversion

In Python, you can convert a tuple to a list using the built-in `list()` function. Here's an example:

```python
my_tuple = (1, 2, 3, 4, 5)
my_list = list(my_tuple)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Character List to Int List Conversion in Python

To convert a list of characters to a list of integers in Python, you can use a list comprehension along with the built-in `ord()` function, which returns the Unicode code point of a character.

Here's an example code:

```python
char_list = ['a', 'b', 'c', 'd']
int_list = [ord(char) for char in char_list]
print(int_list) # Output: [97, 98, 99, 100]
```
