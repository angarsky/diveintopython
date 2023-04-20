Python provides several built-in collection types to store and manipulate data. Some of the commonly used collection types in Python are:

- Lists
- Tuples
- Sets
- Dictionaries
- Arrays
- Deques

There are also other less commonly used collection types in Python, such as namedtuples, default dictionaries, and heaps, which are specialized versions of the basic collection types listed above.

## Dictionaries

A dictionary in Python is a collection of key-value pairs, where each key is associated with a value. It is an unordered data structure, and each key in the dictionary must be unique.

## Creating a Dictionary

You can create a dictionary in Python using curly braces `{}` or by using the `dict()` function. Here are some examples:

- Using curly braces:

```python
# Create an empty dictionary
empty_dict = {}

# Create a dictionary with key-value pairs
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# Create a dictionary with mixed data types
mixed_dict = {'name': 'John', 'age': 30, 'scores': [85, 90, 95]}
```

- Using the `dict()` function:

```python
# Create an empty dictionary
empty_dict = dict()

# Create a dictionary with key-value pairs
my_dict = dict(name='John', age=30, city='New York')

# Create a dictionary with mixed data types
mixed_dict = dict(name='John', age=30, scores=[85, 90, 95])
```

In both cases, the dictionary is created with a set of key-value pairs. The keys must be unique and immutable data types (such as strings, numbers, or tuples), while the values can be any data type, including lists, dictionaries, and other objects.

