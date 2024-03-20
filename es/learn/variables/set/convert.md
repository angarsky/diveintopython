> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/set/convert

Sets conversion in Python is the process of transforming one type of set into another, such as converting a list to a set or vice versa. Understanding how to perform set conversions can be helpful in various scenarios, including data analysis, filtering, and sorting. 

## List vs Set in Python

In Python, both lists and sets are used to store collections of elements, but they have different characteristics that make them useful for different situations.

A list is an ordered collection of elements that can be accessed by their index. Lists allow duplicate elements, and elements can be added, removed, and modified at any position. Lists are defined using square brackets [].

Example:

```python
my_list = [1, 2, 3, 4, 5]
```

A set, on the other hand, is an unordered collection of unique elements. Sets do not allow duplicate elements, and elements can be added and removed, but not modified. Sets are defined using curly braces {}.

Example:

```python
my_set = {1, 2, 3, 4, 5}
```

Sets are useful when you need to quickly check whether an element is in the collection or not. They are also useful when you need to perform set operations like union, intersection, and difference.

Lists, on the other hand, are useful when you need to maintain the order of the elements, and when you need to access elements by their index.

In summary, use a list when you need to maintain the order of the elements and allow duplicates, and use a set when you need to store unique elements and quickly check whether an element is in the collection or not.

## Set to List Conversion in Python

Converting a set to a list can help preserve the order of the elements and make them accessible by index.

In Python a set to a list conversion can be done using the built-in `list()` function. Here's an example of getting list from set:

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list
my_list = list(my_set)

# Print the list
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Note that the order of elements in the original set is preserved in the resulting list. If the order of the elements is not important, you can also convert a set to a list using the `list()` function directly on the set itself, like so:

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list directly
my_list = list({1, 2, 3, 4, 5})

# Print the list
print(my_list)
```

This will produce the same output as the previous example.

## List to Set Conversion in Python

In Python list to set convertion can be performed using the built-in `set()` function. Here's an example of getting set from list:

```python
my_list = [1, 2, 3, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

As you see, it is quite east to convert a list to a set in Python.

## Set of Lists in Python

In Python, you can create a set of lists using the built-in `set()` function. However, keep in mind that sets are unordered collections of unique elements, so the order of the lists within the set cannot be guaranteed.

Here is an example of how to create a set of lists:

```python3
set_of_lists = set()

list1 = [1, 2, 3]
list2 = [4, 5, 6]
list3 = [1, 2, 3] # a duplicate of list1

set_of_lists.add(tuple(list1))
set_of_lists.add(tuple(list2))
set_of_lists.add(tuple(list3)) # won't add to set since it's a duplicate of list1

print(set_of_lists) # {(1, 2, 3), (4, 5, 6)}
```

## List to Set Addition

To add a list to a set in Python, you can use the `update()` method or the `|` operator.

Here's an example using the `update()` method:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set.update(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```

And here's an example using the `|` operator:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set |= set(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```
