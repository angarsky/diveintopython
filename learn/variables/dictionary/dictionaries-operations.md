Dictionaries are a powerful and flexible data structure that allows you to store and manipulate key-value pairs. Let's review some common operations and methods you can perform on dictionaries in Python.

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

## Deleting an Element From a Dictionary

To delete an item from a dictionary in Python, you can use the `del` keyword along with the dictionary key.

Here is an example of how to remove a key from dictionary along with its value:

```python
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# delete an element with key 'b'
del my_dict['b']

# print the updated dictionary
print(my_dict) # Output: {'a': 1, 'c': 3}
```

In the example above, the `del` keyword is used to delete the key-value pair with key `'b'` from the dictionary `my_dict`. The resulting dictionary only contains the elements with keys `'a'` and `'c'`.

## Dictionary Iteration or Looping in Python

We will show you how to iterate over a dictionary in Python using a `for` loop. Here are a few ways of iterating:

- Iterate over the keys:

```python
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the keys and print them
for key in my_dict:
    print(key)
```

Output:

```python
a
b
c
```

- Iterate over the values:

```python
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the values and print them
for value in my_dict.values():
    print(value)
```

Output:

```python
1
2
3
```

- Iterate over the key-value pairs:

```python
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the key-value pairs and print them
for key, value in my_dict.items():
    print(key, value)
```

Output:

```python
a 1
b 2
c 3
```

In the third example, we use the `items()` method of the dictionary to get a list of the key-value pairs. We then use tuple unpacking to extract the key and value from each pair and print them.

We used `for` in our examples, but, of course, you can use also `while` to python loop through a dictionary in Python.

## Merging Dictionaries in Python

You can merge two dictionaries using the `update()` method which we mentioned earlier. The `update()` method adds the key-value pairs from one dictionary into another dictionary. If a key already exists in the target dictionary, the corresponding value will be updated with the new value.

Here's an example:

```python
dict1 = {'a': 1, 'b': 2}
dict2 = {'b': 3, 'c': 4}

dict1.update(dict2)

print(dict1) # Output: {'a': 1, 'b': 3, 'c': 4}
```

In this example, we have two dictionaries `dict1` and `dict2`. We use the `update()` method to merge `dict2` into `dict1`. The resulting dictionary is `{'a': 1, 'b': 3, 'c': 4}`.

> Note: when the `update()` method is called, it modifies the dictionary on which it is called. If you don't want to modify the original dictionary, you can create a new dictionary and use the `update()` method to merge the two dictionaries.

## Ordered or Sorted Dictionary

In Python 3.7 and later versions, dictionaries are guaranteed to maintain the order of their items as they were added. This means that the items in a dictionary will be iterated over in the same order as they were inserted.

Prior to Python 3.7, dictionaries did not preserve the order of their items, and iterating over a dictionary would return its items in an arbitrary order.

You can get dictionary sorted its keys or values. Dictionary ordering can be done using the built-in `sorted()` function, which returns a list of the dictionary's keys or values in sorted order. For example:

```python
my_dict = {'c': 3, 'a': 1, 'b': 2}

# sort by keys
sorted_dict_by_keys = {k: my_dict[k] for k in sorted(my_dict)}

# sort by values
sorted_dict_by_values = {k: v for k, v in sorted(my_dict.items(), key=lambda item: item[1])}
```

Note that in the above example, the original dictionary `my_dict` is not modified, and two new dictionaries `sorted_dict_by_keys` and `sorted_dict_by_values` are created instead.

## Printing a Dictionary

To print a dictionary in Python, you can use the built-in `print()` function. There are different ways to print a dictionary depending on how you want to format the output.

Here is an example of how to print a dictionary:

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print the dictionary using the print() function
print(my_dict)
```

This will output the following:

```python
{'apple': 1, 'pineapple': 2, 'orange': 3}
```

If you want to print each key-value pair of the dictionary on a separate line, you can use a `for` loop to iterate over the dictionary and print each item:

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print each key-value pair on a separate line
for key, value in my_dict.items():
    print(key, ":", value)
```

This will output the following:

```python
apple : 1
pineapple : 2
orange : 3
```
