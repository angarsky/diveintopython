Python provides several built-in collection types to store and manipulate data. Some of the commonly used collection types in Python are Lists, Tuples, Sets, Dictionaries, Arrays, Deques

There are also other less commonly used collection types in Python, such as namedtuples, default dictionaries, and heaps, which are specialized versions of the basic collection types listed above.

## Definition of Dictionary

A dictionary in Python is a collection of key-value pairs, where each key is associated with a value. It is an unordered data structure, and each key in the dictionary must be unique.

Here is a dictionary example in Python:

```python
# Define a dictionary with key-value pairs
student = {
    "name": "Alice",
    "id": 12345,
    "courses": ["Math", "Physics", "Chemistry"],
    "grades": {"Math": 90, "Physics": 85, "Chemistry": 95}
}
```

## Creating a Dictionary

Let's take a look at how to create or initialize a dictionary in Python. You can do it using curly braces `{}` or by using the `dict()` function. Here are some examples:

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

## Deleting a Dictionary

In Python, you can delete a dictionary using the `del` keyword followed by the dictionary variable name. Here's an example:

```python
my_dict = {'key1': 'value1', 'key2': 'value2'}
del my_dict
```

In the above example, we created a dictionary `my_dict` with two key-value pairs. The `del` keyword is used to delete the dictionary by specifying the variable name `my_dict`.

After executing the `del` statement, the dictionary `my_dict` will be completely removed from memory, and any attempts to access it will result in a `NameError` because the variable no longer exists.

## Dictionary Access in Python

You can access a dictionary using its keys to retrieve the corresponding values. Here's an example:

```python
# Creating a dictionary
my_dict = {'apple': 3, 'banana': 5, 'orange': 2}

# Accessing a value using its key
print(my_dict['apple'])  # Output: 3
print(my_dict['banana']) # Output: 5
```

## Dictionary of Dictionaries

You can nest a dictionary into a dictionary by simply using a dictionary as a value in another dictionary. Here's an example:

```python
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# accessing values in the dictionary of dictionaries
print(my_dict['person1']['name']) # output: 'John'
print(my_dict['person2']['age']) # output: 32
```

To access the values in the nested dictionaries, we use two sets of square brackets. The first set of brackets is used to access the outer dictionary, and the second set of brackets is used to access the inner dictionary.

You can also add new dictionaries to the nested dictionary, like this:

```python
# adding a new person to the dictionary of dictionaries
my_dict['person3'] = {'name': 'Alex', 'age': 25}

# accessing the new person's information
print(my_dict['person3']['name']) # output: 'Alex'
```

Similarly, you can update values in the nested dictionaries:

```python
# updating a person's age in the dictionary of dictionaries
my_dict['person1']['age'] = 30

# accessing the updated age
print(my_dict['person1']['age']) # output: 30
```

Overall, combining dictionaries in Python is a simple and powerful way to store and access hierarchical data structures.

## Dictionary of Objects in Python

This topic is quite similar to nested dictionaries - you can create a dictionary of objects by using the object instances as values and using unique keys to access the objects. Here's an example:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# create objects
person1 = Person("Alice", 25)
person2 = Person("Bob", 30)
person3 = Person("Charlie", 35)

# create dictionary of objects
people = {
    "person1": person1,
    "person2": person2,
    "person3": person3
}

# access objects using keys
print(people["person1"].name)   # outputs "Alice"
print(people["person2"].age)    # outputs 30
```
