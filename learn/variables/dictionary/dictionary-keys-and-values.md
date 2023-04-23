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

## Checking For the Key Presence

In Python, the `has_key()` method is not available for dictionaries. Instead, you can use the `in` operator to check if a key is present in a dictionary. Here's an example:

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

Note that the `in` operator checks if the key is present in the dictionary, not if the key's value is None. If you need to check for the presence of a key's value in a dictionary, you can use the `get()` method.
