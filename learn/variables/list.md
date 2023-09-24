> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/list

A list in Python is a collection of values or items that are ordered, changeable, and allow duplicates. Lists are one of the most commonly used data structures in Python.

## Creating a List

Here's an example of how to create a list in Python:

```python
my_list = [1, 2, 3, 4, 5]
```

As you can see, creation of list is a fairly simple process. To create an empty list, you can simply use the following syntax:

```python
my_list = []
```

Let's review some basic operations that can be performed on lists in Python.

## Indices of List & Items Accessing

The indices of a list are the numerical positions of the elements within the list. The index of the first element in a list is always `0`, the index of the second element is `1`, and so on. You can access the element at a specific index by using square brackets and specifying the index number.

Here's an example of indexing usage:

```python
my_list = ['apple', 'banana', 'orange']
print(my_list[0])  # output: 'apple'
print(my_list[1])  # output: 'banana'
print(my_list[2])  # output: 'orange'
```

If the list index is out of range, Python will return an error.

## Changing or Replacing an Item of a List

```python
my_list = [1, 2, 3, 4, 5]
my_list[0] = 0
print(my_list) # Output: [0, 2, 3, 4, 5]
```

## Adding Items to List in Python

There are several methods which can help you to add an item to a list

### The `insert()` Method

Here's an example which shows how to add an element to a list using `insert()` method:

```python
my_list = [1, 2, 3, 4]
my_list.insert(2, "hello")
print(my_list)  # [1, 2, 'hello', 3, 4]
```

### The `append()` Method

To insert an element to the end of a Python list, you can use the `append()` method. Here's an example:

```python
my_list = [1, 2, 3, 4]
my_list.append(5)
print(my_list)  # [1, 2, 3, 4, 5]
```

The `insert()` method can be used to append an element into a list at a specified index. The syntax for using the `insert()` method is as follows:

```python
list.insert(index, element)
```

### The `extend()` Method

The `extend()` method in Python is used to append elements from an iterable (such as a list, tuple, set, or string) to the end of an existing list.

Here's an example:

```python
# Create a list
my_list = [1, 2, 3]

# Append elements from another list to my_list using extend()
other_list = [4, 5, 6]
my_list.extend(other_list)

print(my_list)
# Output: [1, 2, 3, 4, 5, 6]
```

Note that the `extend()` method modifies the original list in place and returns `None`. It does not create a new list.

## Removing an Item from a List

To remove an item from a list in Python, you can use the `remove()` method of the list object. Here is an example:

```python
my_list = [1, 2, 3, 4, 5]
my_list.remove(3)
print(my_list) # Output: [1, 2, 4, 5]
```

There is also the `del` statement, whic can be used to remove an item from a list. Here is an example of item deleting:

```python
my_list = [1, 2, 3, 4, 5]
del my_list[2]
print(my_list)
```

In this example, we have a list `my_list` with five elements. We want to remove the element with index 2, which has the value 3. We use the `del` statement and specify the index of the item we want to remove. After removing the element, we print the updated list.

The output of this code will be:

```python
[1, 2, 4, 5]
```

So if you want to remove the first element from a list in Python, you can use the `del` statement which we reviewd before, or the `pop()` method. Here are example of pop() method:

```python
my_list = [1, 2, 3, 4, 5]
my_list.pop(0)
print(my_list) # Output: [2, 3, 4, 5]
```
Let's also see on the example how to remove `None` from list in Python useing a list comprehension:

```python
original_list = [1, None, "hello", None, 5.7, None, "world"]
new_list = [item for item in original_list if item is not None]
print(new_list) # Output: [1, 'hello', 5.7, 'world']
```

## How to Sort a List in Python

You can sort a list in Python using the `sort()` method, which sorts the elements of the list in ascending order by default. Here's an example:

```python
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort()

print(my_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

If you want to sort the list in descending order, you can pass the `reverse=True` argument to the `sort()` method:

```python
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort(reverse=True)

print(my_list) # Output: [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]
```

You can also use the built-in `sorted()` function to sort a list, which returns a new sorted list and leaves the original list unchanged:

```python
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

sorted_list = sorted(my_list)

print(sorted_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

## List Copying

To copy a list in Python, you can use the slice operator or the `copy()` method. Here's an example using both methods:

```python
# Using the slice operator
original_list = [1, 2, 3, 4, 5]
new_list = original_list[:]
print(new_list)  # Output: [1, 2, 3, 4, 5]

# Using the copy() method
original_list = [1, 2, 3, 4, 5]
new_list = original_list.copy()
print(new_list)  # Output: [1, 2, 3, 4, 5]
```

Both methods create a new list object that contains the same elements as the original list. However, it's important to note that if the original list contains mutable objects (e.g. other lists or dictionaries), the copy will only be shallow, meaning that the new list will contain references to the same mutable objects as the original list, rather than new copies of those objects. In such cases, you may need to use a deep copy to ensure that all nested objects are also copied.

## List Clearing

In Python, list.clear() is a built-in method that removes all items from a list.

Here's an example og how to clear a list:

```python
my_list = [1, 2, 3, 4]
my_list.clear()
print(my_list)  # Output: []
```

## How to Delete a List

In Python, you can delete a list using the `del` keyword. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]
del my_list
```
