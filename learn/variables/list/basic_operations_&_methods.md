Python lists are versatile and commonly used data structures that allow you to store collections of elements, including numbers, strings, and even other lists. They support various basic operations and methods that enable you to manipulate and work with the list elements easily. Some of the commonly used operations and methods for lists include indexing, slicing, appending, inserting, deleting, sorting, and searching for elements. Let's review the basic list methods and functions step by step.

## Defining an Index of an Element

A list is an ordered collection of elements that can be of any type. Each element in a list has a unique index, which represents its position in the list. List indexes start at 0, which means that the first element in a list has an index of 0, the second element has an index of 1, and so on.

Let's look at ways of getting index of item in Python list.

There is no direct method called `indexof()` for finding the index of an element in a list. However, you can use the `index()` method that is built into Python to get index of item in list.

The `index()` method takes an element as an argument and returns the index of the first occurrence of that element in the list. For example, let's say you have a list of strings:

```python
my_list = ['apple', 'banana', 'cherry', 'banana', 'date']
```

You can find the index of the first occurrence of the element 'banana' using the `index()` method like this:

```python
index_of_banana = my_list.index('banana')   # 1
```

The `index()` method raises a `ValueError` if the element is not found in the list.

## List Comprehension in Python

Let's review what is list comprehension in Python.
List comprehension is a concise way to create a new list in Python by applying an expression to each element of an existing list or iterable. The basic syntax of a list comprehension is:

```python
new_list = [expression(item) for item in iterable if condition]
```

Where:

- `expression` is an operation that will be applied to each element of the iterable.
- `item` is the variable that represents each element of the iterable.
- `iterable` is a sequence of elements, such as a list or a range.
- `condition` is an optional expression that filters the elements based on a condition.

For example, to create a new list with the squares of the numbers from 1 to 5, you can use a list comprehension like this:

```python
squares = [x**2 for x in range(1, 6)]
print(squares)  # Output: [1, 4, 9, 16, 25]
```

You can also use an `if` statement to filter the elements based on a condition. For example, to create a new list with the even numbers from 1 to 10, you can use a list comprehension like this:

```python
evens = [x for x in range(1, 11) if x % 2 == 0]
print(evens)  # Output: [2, 4, 6, 8, 10]
```

## Determining the Length of a List

In Python, you can get the length of a list by using the built-in `len()` function.

Here's an example:

```python
my_list = [1, 2, 3, 4, 5]
length = len(my_list)
print(length)  # Output: 5
```

## List Reversing

To reverse a list in Python, you can use the built-in `reverse()` method or slicing notation. Here are examples of both:

Using the `reverse()` method:

```python
my_list = [1, 2, 3, 4, 5]
my_list.reverse()
print(my_list) # Output: [5, 4, 3, 2, 1]
```

Using slicing notation:

```python
my_list = [1, 2, 3, 4, 5]
reversed_list = my_list[::-1]
print(reversed_list) # Output: [5, 4, 3, 2, 1]
```

## Counting the Elements of a List

To count the number of elements in a list in Python, you can use the `len()` function. Here's an example of list size definition:

```python
my_list = [1, 2, 3, 4, 5]
count = len(my_list)
print(count) # Output: 5
```

You can also use the `len()` function to check if a Python list is empty, as there is no `isEmpty()` method in Python.

Here's an example using checking:

```python
my_list = []
if len(my_list) == 0:
    print("The list is empty")
else:
    print("The list is not empty")
```

## List Filtering in Python

In Python, you can use the `filter()` function to filter a list, i.e. to create a new list that contains only the elements from an existing list that satisfy a certain condition.

The `filter()` function takes two arguments: a function and an iterable. The function should return True or False for each element in the iterable. The `filter()` function then returns a new iterable that contains only the elements for which the function returned True.

Here's an example that filters a list of numbers to only include the even ones:

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def is_even(num):
    return num % 2 == 0

even_numbers = list(filter(is_even, numbers))
print(even_numbers)  # Output: [2, 4, 6, 8, 10]
```

## List Concatenation or Joining

In Python, you can concatenate two or more lists using the `+` operator. Here's an example of merging two lists:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]
concatenated_list = list1 + list2
print(concatenated_list) # Output: [1, 2, 3, 4, 5, 6]
```

One more way of joining the lists is `extend()` method:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]
list1.extend(list2)
print(list1) # Output: [1, 2, 3, 4, 5, 6]
```

## Joining List Items

To join a Python list into a string, you can use the `join()` method. Here's an example:

```python
my_list = ['apple', 'banana', 'orange']
my_string = ', '.join(my_list)
print(my_string) # Output: apple, banana, orange
```

You can use any separator string you like in the `join()` method, including an empty string if you want to concatenate the elements together without any separator.

## List of Lists in Python

In Python, a list of lists can be created by nesting one or more lists inside another list. Here is an example of creating lists inside a list:

```python
list_of_lists = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```

You can access elements of the list within list using nested indexing. For example, to access the second element of the third sub-list, you would use the following code:

```python
element = list_of_lists[2][1]
```

This would set the variable `element` to the value 8.

## Looping Through the List

You can loop through a list in Python using a `for` loop. Here's an example of how to iterate through a list:

```python
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

You can also loop through a list of strings or any other type of data. The syntax for the `for` loop is the same regardless of the type of data in the list.

## Printing a List in Python

To print a list in Python, you can simply use the `print` function and pass the list as an argument. Here's an example of printing a list:

```python
my_list = [1, 2, 3, 4, 5]
print(my_list) # Output: [1, 2, 3, 4, 5]
```

If you want to print each item in the list on a separate line, you can use a loop to iterate over the list and print each item one by one. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

## Python List Summation

To find the sum of a list in Python, you can use the built-in `sum()` function. Here's an example of how to summarize the elements of a list :

```python
my_list = [1, 2, 3, 4, 5]
list_sum = sum(my_list)
print(list_sum) # Output: 15
```

## Slicing a List in Python

In Python, you can use slice notation to extract a portion of a list. The basic syntax for list slicing is:

```python
my_list[start:end:step]
```

where `start` is the index of the first item to include, `end` is the index of the first item to exclude, and `step` is the number of items to skip between each item in the slice (the default is 1).

Here are some examples to illustrate how to use list slicing:

```python
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# get first three items
print(my_list[:3])  # output: [0, 1, 2]

# get items 3-5
print(my_list[3:6])  # output: [3, 4, 5]

# get every other item starting from the second item
print(my_list[1::2])  # output: [1, 3, 5, 7, 9]

# reverse the list
print(my_list[::-1])  # output: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

You can also replace multiple elements using slicing. Here's an example:

```python
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
my_list[3:6] = [0] # Output: [0, 1, 2, 0, 6, 7, 8, 9]
```

## Lists Comparison

In Python, you can compare two lists using the comparison operators (<, <=, >, >=, ==, !=). Here's an example of two lists comparing:

```python
list1 = [1, 2, 3]
list2 = [1, 2, 4]

if list1 == list2:
    print("The two lists are equal")
elif list1 < list2:
    print("list1 is less than list2")
else:
    print("list1 is greater than list2")
```

## Checking If a List Contains an Element

In Python, the list data type is a built-in type that represents a collection of ordered items. The `contains` method is not a built-in method for Python lists, but you can check whether an item is in a list using the `in` keyword or the `index` method.

The `in` keyword returns True if the item is in the list and False otherwise. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]
if 3 in my_list:
    print("3 is in the list")
else:
    print("3 is not in the list") # Output: 3 is in the list
```

The index method returns the index of the first occurrence of the item in the list. If the item is not in the list, it raises a `ValueError`. Here's an example:

```python
my_list = ["apple", "banana", "cherry"]
index = my_list.index("banana")
print(index)  # Output: 1
```

## List Mapping

In Python, `map()` is a built-in function that applies a function to each element of an iterable (like a list, tuple, or set) and returns a new iterable with the transformed values.

Here's an example of how to use `map()` to apply a function to every element of a list:

```python
# Define a function to apply to each element of the list
def double(x):
    return x * 2

# Define a list
my_list = [1, 2, 3, 4, 5]

# Use map() to apply the function to each element of the list
new_list = map(double, my_list)

# Convert the result to a list and print it
print(list(new_list))
# Output: [2, 4, 6, 8, 10]
```
