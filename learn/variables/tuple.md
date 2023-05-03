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

## Tuple Addition in Python

It is not possible to add elements to an existing tuple directly.

However, you can create a new tuple by concatenating or adding two or more tuples using the `+` operator. Here's an example how to add one tuple to another:

```python
tuple1 = (1, 2, 3)
tuple2 = (4, 5, 6)
tuple3 = tuple1 + tuple2
print(tuple3) # Output: (1, 2, 3, 4, 5, 6)
```

You can also use the `*` operator to create a new tuple that contains multiple copies of an existing tuple. Here's an example:

```python
tuple1 = (1, 2, 3)
tuple2 = tuple1 * 2
print(tuple2) # Output: (1, 2, 3, 1, 2, 3)
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
