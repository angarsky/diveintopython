Dictionaries are a powerful and flexible data structure that allows you to store and manipulate key-value pairs. Let's revew some common operations you can perform on dictionaries in Python.

## Adding an Element to a Dictionary

There are several ways of item adding to a dictionary.

### Value Assignment

To add a key-value pair to a Python dictionary, you can use the following syntax:

```python
my_dict[key] = value
```

Here, `my_dict` is the dictionary you want to add an element to, `key` is the key for the new element, and `value` is the value for the new element.

For example, if you have an empty dictionary and you want to add a new item to it with the key `"name"` and the value `"John"`, you can do the following:

```python
my_dict = {}
my_dict["name"] = "John"
print(my_dict) # Output: {'name': 'John'}.
```

If the key already exists in the dictionary, its value will be updated to the new value. If the key does not exist, a new key-value pair will be added to the dictionary.

### The `update()` Method

The `update()` method takes another dictionary as an argument and adds its key-value pairs to the original dictionary. If a key already exists in the original dictionary, its value will be updated to the value from the new dictionary.

Here's an example:

```python
my_dict = {'a': 1, 'b': 2}
new_dict = {'c': 3, 'd': 4}

my_dict.update(new_dict)

print(my_dict)  # Output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}
```

> Note: There is no built-in `append()` method for dictionaries, as dictionaries do not have an inherent order. So you can not append an element using `append()` method.
