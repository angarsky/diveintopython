> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/dictionary/key-value-operations

Quite often we face situations when we need to operate with keys or values of a dictionary. Fortunately, dictionaries offer a variety of operations for working with keys and values.

## Getting Dictionary Keys

To get dictionary keys in Python, you can use the `keys()` method. Here's an example of keyset getting:

```python
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Getting the keys of the dictionary
keys = my_dict.keys()

# Printing the keys
print(keys) # Output: dict_keys(['name', 'age', 'city'])
```

Note that `keys()` returns a view object, which is a dynamic view on the dictionary's keys. This means that if the dictionary is modified, the view object will reflect those changes. If you need to work with the keys as a list, you can convert the view object to a list.

## Converting Dictionary Keys to List

To convert dictionary keys to list in Python, you can use the `keys()` method and the `list()` function. Here's an example:

```python
my_dict = {'a': 1, 'b': 2, 'c': 3}
keys_list = list(my_dict.keys())
print(keys_list)  # Output: ['a', 'b', 'c']
```

In the code above, `my_dict.keys()` returns a `dict_keys` object containing the keys of `my_dict`. The `list()` function is used to convert this object into a list, which is assigned to the variable `keys_list`. Finally, `keys_list` is printed to the console.

## Checking For the Key Presence

In Python, the `has_key()` method is not available for dictionaries. Instead, you can use the `in` operator to check if a dictionary has a key. Let's see how to check if key exists in dictionary in Python:

```python
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Checking if a key is present in the dictionary
if "name" in my_dict:
    print("The key 'name' is present in the dictionary")
else:
    print("The key 'name' is not present in the dictionary")

if "country" in my_dict:
    print("The key 'country' is present in the dictionary")
else:
    print("The key 'country' is not present in the dictionary")
```

This will output:

```python
The key 'name' is present in the dictionary
The key 'country' is not present in the dictionary
```

Note that the `in` operator checks if the key is present in the dictionary, not if the key's value is `None`. If you need to check for the presence of a key's value in a dictionary, you can use the `get()` method.

## Deleting a Key from Dictionary

In Python, you can delete a key from a dictionary using the del statement or the pop() method.

Here is an example using the del statement to delete a key from a dictionary:

```python
Copy code
my_dict = {"a": 1, "b": 2, "c": 3}

del my_dict["b"]

print(my_dict)  # Output: {"a": 1, "c": 3}
```

In the above example, the key `"b"` is deleted from the `my_dict` dictionary using the `del` statement.

Here is an example using the `pop()` method to delete a key from a dictionary:

```python
Copy code
my_dict = {"a": 1, "b": 2, "c": 3}

my_dict.pop("b")

print(my_dict)  # Output: {"a": 1, "c": 3}
```

In the above example, the key `"b"` is deleted from the `my_dict` dictionary using the `pop()` method. The `pop()` method also returns the value associated with the deleted key, which can be useful if you need to perform some additional processing based on that value.

## Conversion of Dictionary Values to List

You can use the `values()` method of a Python dictionary to get a list of its values.

Here's an example:

```python
my_dict = {'a': 1, 'b': 2, 'c': 3}
values_list = list(my_dict.values())
print(values_list) # Output: [1, 2, 3]
```

In the above code, we create a dictionary `my_dict` with three key-value pairs. We then call the `values()` method on the dictionary to get a view object of its values, and convert it into a list using the `list()` constructor. Finally, we print the resulting list of values.

> Note that the order of the values in the list is not guaranteed to be the same as the order of the keys in the dictionary, since dictionaries are unordered in Python.
