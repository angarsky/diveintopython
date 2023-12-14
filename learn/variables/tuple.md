> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/tuple

What is a tuple in Python? A tuple in Python is an immutable sequence of values, similar to a list. However, tuples cannot be modified once they are created, which means you cannot add, remove or change elements in a tuple. 

## Creating Tuple in Python

To create a tuple, you can use parentheses `()` and separate the elements with commas `,`.

Here's an example of how to create a tuple in Python with three elements:

```python
my_tuple = (1, "hello", 3.14)
```

You can also create an empty tuple by using empty parentheses ():

```python
empty_tuple = ()
```

If you want to create a tuple with only one element, you need to add a comma after the element, because without it, Python will interpret the parentheses as just grouping operators, not as a tuple:

```python
single_tuple = (1,)
```

## Tuple Indices

You can access elements of tuple in Python using indexing, just like in lists.

As we already mentioned, the indexing in Python starts from 0. It means that the first element in a tuple has an index of 0, the second element has an index of 1, and so on. Negative indexing is also supported, which means the last element in a tuple has an index of -1, the second to last element has an index of -2, and so on.

Here is an example of accessing tuple elements using indexing:

```python
my_tuple = ('apple', 'banana', 'cherry')
print(my_tuple[0])   # Output: 'apple'
print(my_tuple[1])   # Output: 'banana'
print(my_tuple[-1])  # Output: 'cherry'
```

## How to Append to a Tuple in Python

In Python, tuples are immutable, meaning once they are created, their elements cannot be changed. However, you can create a new tuple by combining existing tuples and other elements. So to "append" or to "add" an element to a tuple, you would essentially create a new tuple that includes the existing elements along with the new element. Here are a couple of ways to achieve this:

**Using the `+` operator to create a new tuple**:

```python
existing_tuple = (1, 2, 3)
new_element = 4

# Concatenate the existing tuple with a new tuple containing the new element
new_tuple = existing_tuple + (new_element,)

print(new_tuple)
```

**Using the `+=` augmented assignment operator**:

```python
existing_tuple = (1, 2, 3)
new_element = 4

# Use the += operator to concatenate the existing tuple with a new tuple containing the new element
existing_tuple += (new_element,)

print(existing_tuple)
```

Both of these methods create a new tuple by combining the elements of the existing tuple with the new element, effectively "appending" the element to the tuple. Remember, tuples are immutable, so you're actually creating a new tuple rather than modifying the original one.

## Sorted List of Tuples

You can sort a list of tuples in Python using the sorted function, and passing a key argument that specifies how to compare the elements in each tuple. Here's an example:

```python
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the first element in each tuple
sorted_list = sorted(my_list, key=lambda x: x[0])

print(sorted_list) # Output: [(1, 2), (2, 4), (3, 1)]
```

You can also sort the list of tuples in reverse order by setting the reverse argument to True:

```python
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the second element in each tuple in reverse order
sorted_list = sorted(my_list, key=lambda x: x[1], reverse=True)

print(sorted_list) # Output: [(2, 4), (1, 2), (3, 1)]
```

## Named Tuple in Python

A named tuple is a subclass of the built-in tuple data type that allows for fields to be accessed by name as well as by index position.

Named tuples are created using the `collections.namedtuple` function. Here's an example:

```python
from collections import namedtuple

# create a named tuple with two fields: 'x' and 'y'
Point = namedtuple('Point', ['x', 'y'])

# create an instance of the named tuple
p = Point(1, 2)

# access fields by index
print(p[0])  # prints 1

# access fields by name
print(p.x)   # prints 1
print(p.y)   # prints 2
```

Named tuples are similar to regular tuples, but with the added benefit of having named fields that can make the code more readable and self-documenting. They are immutable, like regular tuples, so their fields cannot be changed once they are created.

## Tuple Inside a List in Python

In some cases we need to make a list of tuples, for example for grouping related data. So you can create a list that contains tuples using the following syntax:

```python
my_list = [(item1, item2), (item3, item4), (item5, item6)]
```

Each tuple in the list can contain multiple items, which can be of any data type, including strings, numbers, and other tuples. Here's an example of a list containing tuples with different data types:

```python
my_list = [("apple", 2), ("orange", 3), ("banana", 4.5), ("grape", ("red", "green"))]
```

You can access the items in a tuple inside a list using indexing. For example, to access the second item in the first tuple in the list above, you can use the following code:

```python
print(my_list[0][1])   # Output: 2
```

## Appending a Tuple

To append a tuple to a list in Python, you can use the `append()` method. Here's an example:

```python
my_list = [(1, 2), (3, 4)]
new_tuple = (5, 6)
my_list.append(new_tuple)
print(my_list) # Output: [(1, 2), (3, 4), (5, 6)]
```
