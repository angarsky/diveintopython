> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/array/basic-operations

Arrays allow us to store and manipulate data efficiently, enabling us to perform a wide range of tasks. In this article, we will explore the essential basic most common operations associated with arrays in Python.

## Sorting and Shuffling

Sorting and shuffling are common operations in data manipulation and analysis. In Python, there are built-in functions and methods available to perform these tasks efficiently.

### How to Get a Sorted Array in Python

In Python, you can sort an array (or list) using the `sorted()` function. The `sorted()` function takes an iterable as input and returns a new sorted list containing the elements of the original iterable.

Here's an example of how to use `sorted()` for sorting an array:

```python
my_array = [5, 2, 1, 4, 3]
sorted_array = sorted(my_array)
print(sorted_array)  # Output: [1, 2, 3, 4, 5]
```

In this example, `sorted(my_array)` returns a new list that contains the elements of `my_array` in sorted order. The `sorted_array` variable stores this sorted list, and it is then printed to the console.

It's important to note that the `sorted()` function returns a new sorted list and does not modify the original array in place. If you want to sort the original array itself, you can use the `sort()` method of the array instead:

```python
my_array = [5, 2, 1, 4, 3]
my_array.sort()
print(my_array)  # Output: [1, 2, 3, 4, 5]
```

In this case, `my_array.sort()` sorts the elements of `my_array` in place, modifying the array directly. The sorted array is then printed to the console.

### How to Shuffle an Array

To shuffle an array in Python, you can use the `random.shuffle()` function from the `random` module. This function shuffles the elements of a sequence randomly, in-place. Here's an example:

```python
import random

my_array = [1, 2, 3, 4, 5]

random.shuffle(my_array)

print(my_array)
```

## Append, Push, Concatenate & Extend

Let's review the way of appending or pushing elements to an array.

### How To Append an Element to an Array

Appending an element to an existing array in Python can be done using the `append()` method provided by the list data type. Here is an example of how to add an element to an array (or list):

```python
array = ['apple', 'banana', 'orange']
array.append('grape')
print(array) # Output: ['apple', 'banana', 'orange', 'grape']
```

The `append()` method allows to insert the specified element to the end of the array (or list). It modifies the original list in place and does not return a new list.

You can append elements of any data type to a Python list, including strings, numbers, or even other lists.

As you see, the `append()` method allows you easily expand the array (or list) by adding a new elements.

> Note: The `append()` method can only add one element at a time. If you want to add multiple elements to the array, you can use the `extend()` method or concatenate lists using the `+` operator.

### How to Push an Element into an Array

In Python, the concept of "pushing" elements into an array is typically associated with mutable data structures like lists. Mutable data structures allow you to modify the elements by adding, removing, or modifying values. Therefore it is the same approach as `append()` method, you can "push" elements into an array using a list:

```python
my_list = []  # Initialize an empty list

# Pushing elements into the list
my_list.append(1)
my_list.append(2)
my_list.append(3)

print(my_list)  # Output: [1, 2, 3]
```

> Note: This approach applies specifically to lists in Python. Other data structures, such as NumPy arrays or immutable tuples, have different methods or limitations for modifying their contents.

### How to Concatenate Arrays in Python

To concatenate arrays in Python, you can use various methods, depending on the type of arrays you are working with. Here are a few examples of how to combine arrays:

1. Using the `+` operator with standard Python lists:

```python
array1 = [1, 2, 3]
array2 = [4, 5, 6]
concatenated = array1 + array2
print(concatenated) # Output: [1, 2, 3, 4, 5, 6]
```

2. Using the `concatenate()` function from NumPy:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.concatenate((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

3. Using the `hstack()` or `vstack()` functions from NumPy for horizontal or vertical concatenation, respectively:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.hstack((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

In this example, we use the `hstack()` function to horizontally stack `array1` and `array2`, resulting in a new array `concatenated` that contains the concatenated elements in a single row.

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.vstack((array1, array2))
print(concatenated)
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

In this example, we use the `vstack()` function to vertically stack `array1` and `array2`, resulting in a new array `concatenated` that contains the concatenated elements in two rows.

### How to Extend an Array in Python

There are various methods which allow us to extend an array in Python. Here are a few approaches how to merge or combine arrays in Python:

1. List:

If you have a list, you can use the `extend()` method to add elements from another iterable to the end of the list. Here's an example:

```python
my_list = [1, 2, 3]
new_elements = [4, 5, 6]

my_list.extend(new_elements)

print(my_list)
```

2. NumPy:

If you are working with NumPy arrays, you can use the `concatenate()` function to combine two arrays along a specified axis. Here's an example:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

extended_array = np.concatenate((array1, array2))

print(extended_array)
```

3. Array module:

If you are using the built-in `array` module, you can use the `extend()` method to add elements from another iterable to the end of the array. Here's an example:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3])
new_elements = arr.array('i', [4, 5, 6])

my_array.extend(new_elements)

print(my_array)
```

## `getsizeof()` Function

In Python, there is no built-in function called `sizeof()` to directly get the size of an array or list. However, you can use the `sys` module's `getsizeof()` function to get an estimate of the memory size occupied by an object.

Here's an example:

```python
import sys

my_list = [10, 20, 30, 40, 50]
size = sys.getsizeof(my_list)

print(size)  # Output: 104 (the size in bytes)
```

In the example above, we import the `sys` module and use the `getsizeof()` function to get the size of the `my_list` object in bytes. 
> Note: The value returned by `getsizeof()` includes the overhead of the list object itself and may not provide an exact representation of the memory occupied by the array/list elements.

## Reverse and Transpose

Quite often we come across situations in Python where we need to reverse or transpose an array.

### How to Reverse an Array in Python

You can reverse or flip an array (list) in Python using various methods. Here are a few common approaches for reversing an array in Python:

1. Using the `reverse()` method:

```python
my_list = [10, 20, 30, 40, 50]
my_list.reverse()
print(my_list)  # Output: [50, 40, 30, 20, 10]
```

2. Using the slicing technique:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = my_list[::-1]
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

3. Using the `reversed()` function:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = list(reversed(my_list))
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

All three methods achieve the same result. The first method uses the `reverse()` method, which reverses the elements of the list in-place, modifying the original list.The second method utilizes slicing with a step value of -1 (`[::-1]`), which creates a new list with the elements in reverse order. The third method uses the `reversed()` function to create a reverse iterator, which is then converted to a list using the `list()` function.

### How to Transpose Array in Python

To transpose a list and a NumPy array in Python, you can follow the steps below:

Transposing a List:

1. Create a list of lists where each inner list represents a row of the original matrix.

2. Use the `zip(*list)` function to transpose the list.

Here's an example:

```python
# Create a sample list
list_of_lists = [[1, 2, 3],
                 [4, 5, 6]]

# Transpose the list
transposed_list = list(zip(*list_of_lists))

print(transposed_list) # Output: [(1, 4), (2, 5), (3, 6)]
```

Transposing a NumPy Array:

To transpose a NumPy array, you can use the `transpose()` function provided by the NumPy library, as shown in the previous example. Here's an example specific to a NumPy array:

```python
import numpy as np

# Create a sample array
array = np.array([[1, 2, 3],
                  [4, 5, 6]])

# Transpose the array
transposed_array = np.transpose(array)

print(transposed_array)
```

Output:

```python
[[1 4]
 [2 5]
 [3 6]]
```

## How to Check if an Array is Empty

To check if an array is empty in Python, you can use the `len()` function or direct comparison with an empty array. Here's how you can do it for different types of arrays:

1. List:

```python
my_list = []  # Empty list

# Using len() function
if len(my_list) == 0:
    print("Array is empty")

# Direct comparison
if my_list == []:
    print("Array is empty")
```

2. NumPy array:

```python
import numpy as np

my_array = np.array([])  # Empty NumPy array

# Using len() function
if len(my_array) == 0:
    print("Array is empty")

# Direct comparison
if np.array_equal(my_array, np.array([])):
    print("Array is empty")
```

## How to Copy an Array

You can copy an array in Python using several approaches. Here are some common methods to copy arrays:

1. List:

For a standard Python list, you can use the slicing syntax `[:]` or the `copy()` method to create a copy:

Using slicing:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list[:]
```

Using the `copy()` method:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list.copy()
```

2. NumPy array:

For a NumPy array, you can use the `copy()` function to create a copy:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
my_array_copy = np.copy(my_array)
```

## How to Filter an Array

To filter an array in Python, you can use various methods depending on the type of array you are working with. Here are a few common approaches:

1. List comprehension:

For a standard Python list, you can use list comprehension to create a new list that contains only the desired elements based on a specific condition. Here's an example:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5
filtered_list = [x for x in my_list if x > 5]

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

2. Filter function:

You can also use the `built-in filter()` function along with a lambda function or a custom function to filter elements from a list based on a given condition. Here's an example:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5 using lambda function
filtered_list = list(filter(lambda x: x > 5, my_list))

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

3. NumPy array:

For a NumPy array, you can use boolean indexing to filter elements based on a condition. Here's an example:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# Filter elements greater than 5
filtered_array = my_array[my_array > 5]

print(filtered_array)  # Output: [ 6  7  8  9 10]
```

## How to Join an Array in Python

You can join an array in Python using several different methods. Here are a few common approaches:

1. Joining List Elements:

For a standard Python list, you can use the `join()` method of strings to join the elements of the list into a single string. Here's an example:

```python
my_list = ['Hello', 'World', 'Python']

# Join the list elements with a space separator
joined_string = ' '.join(my_list)

print(joined_string)  # Output: 'Hello World Python'
```

In this example, the `join()` method is used with a space `' '` as the separator to join the elements of the list into a single string.

2. Joining NumPy Array Elements:

For a NumPy array, you can use the join() method of NumPy's char object to join the elements of the array into a single string. Here's an example:

```python
import numpy as np

my_array = np.array(['Hello', 'World', 'Python'])

# Join the array elements with a space separator
joined_string = np.char.join(' ', my_array)

print(joined_string)  # Output: ['H e l l o' 'W o r l d' 'P y t h o n']
```

In this example, the `join()` method from `np.char` is used with a space `' '` as the separator to join the elements of the array into a single string.

## The Sum of Array Calculation

You can use different methods to calculate the sum of an array elements in Python. Here are some common approaches:

1. List:

For a standard Python list, you can use the built-in `sum()` function to calculate the sum of all elements:

```python
my_list = [1, 2, 3, 4, 5]
array_sum = sum(my_list)
print(array_sum)

2. NumPy array:

For a NumPy array, you can use the sum() function from the NumPy library to compute the sum of all elements:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
array_sum = np.sum(my_array)
print(array_sum)
```

## Max Element of an Array

To find the maximum value in an array in Python, you can use the built-in `max()` function or the numpy library's `max()` function. Here's how you can use both approaches:

Using the built-in `max()` function:

```python
my_array = [5, 2, 9, 1, 7]

# Find the maximum value in the array using the max() function
max_value = max(my_array)

print(max_value)  # Output: 9
```

Using the numpy library:

```python
import numpy as np

my_array = np.array([5, 2, 9, 1, 7])

# Find the maximum value in the array using the max() function from numpy
max_value = np.max(my_array)

print(max_value)  # Output: 9
```

## Flattening, Splitting, Slicing & Converting & to 2D Array

In Python, flattening, splitting, and converting to a 2D array are common operations when dealing with multidimensional data structures. Let's review the basics.

### How to Flatten an Array

You can use various methods to flatten an array in Python. Here are a few approaches for different types of arrays:

1. Flattening a nested list:

You can use list comprehension and recursion to flatten a nested list. Here's an example:

```python
def flatten_list(nested_list):
    flattened = []
    for item in nested_list:
        if isinstance(item, list):
            flattened.extend(flatten_list(item))
        else:
            flattened.append(item)
    return flattened

nested_list = [[1, 2, 3], [4, [5, 6]], [7, 8, 9]]
flattened_list = flatten_list(nested_list)
print(flattened_list) # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

2. Flattening a NumPy array:

You can use the `flatten()` method provided by NumPy to flatten an array. Here's an example:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.flatten()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

3. Flattening a multidimensional array with NumPy:

If you have a multidimensional NumPy array and want to flatten it, you can use the ravel() method. Here's an example:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.ravel()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

### How to Convert a 1d Array to a 2d Array in Python

To convert a 1d array to a 2d array in Python, you can use the `reshape()` method provided by the NumPy library. The `reshape()` method allows you to change the shape of an array without modifying its data. Here's an example how to reshape an array:

```python
import numpy as np

# 1d array
arr_1d = np.array([1, 2, 3, 4, 5, 6])

# Convert to 2d array
arr_2d = arr_1d.reshape((2, 3))

print(arr_2d)
```

Output:

```python
[[1 2 3]
 [4 5 6]]
```

The `reshape()` method takes the desired shape of the array as its argument. In this case, we pass `(2, 3)` to reshape the array into a 2x3 matrix. The number of elements in the original 1d array must match the number of elements in the specified shape. If the number of elements is not compatible, a `ValueError` will be raised.

> Note: The `reshape()` method returns a new array with the desired shape; it does not modify the original array.

### How to Split an Array into Chunks

To split an array into chunks in Python, you can use various methods depending on the type of array or data structure you are working with. Here are a few approaches:

1. List comprehension:

If you have a list, you can use list comprehension to split it into chunks of a specific size. Here's an example:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
chunk_size = 3

chunks = [my_list[i:i+chunk_size] for i in range(0, len(my_list), chunk_size)]

print(chunks)
```

2. NumPy:

If you are working with NumPy arrays, you can use the `array_split()` function to split the array into equal-sized chunks. Here's an example:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = np.array_split(my_array, len(my_array) // chunk_size)

print(chunks)
```

3. Array module:

If you are using the built-in `array` module, you can use a loop to split the array into chunks. Here's an example:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = [my_array[i:i+chunk_size] for i in range(0, len(my_array), chunk_size)]

print(chunks)
```

### Slicing an Array in Python

To slice an array (or list) in Python, you can use the slice notation `array[start:stop:step]`, where:

- **start** is the index where the slice starts (inclusive).
- **stop** is the index where the slice ends (exclusive).
- **step** is the interval between indices (optional, default value is 1).

Here are some examples of slicing an array in Python:

```python
my_array = [10, 20, 30, 40, 50, 60, 70, 80]

# Slice from index 2 to 5 (exclusive)
slice_1 = my_array[2:5]
print(slice_1)  # Output: [30, 40, 50]

# Slice from index 1 to the end of the array
slice_2 = my_array[1:]
print(slice_2)  # Output: [20, 30, 40, 50, 60, 70, 80]

# Slice from the beginning to index 4 (exclusive)
slice_3 = my_array[:4]
print(slice_3)  # Output: [10, 20, 30, 40]

# Slice with a step of 2
slice_4 = my_array[1:7:2]
print(slice_4)  # Output: [20, 40, 60]

# Slice in reverse order
slice_5 = my_array[::-1]
print(slice_5)  # Output: [80, 70, 60, 50, 40, 30, 20, 10]
```

In the examples above, we have an array called `my_array`. By specifying the appropriate `start`, `stop`, and `step` values, we can split the array creating different slices of it.

The first example creates a slice from index 2 to 5 (exclusive), resulting in `[30, 40, 50]`. The second example creates a slice from index 1 to the end of the array, resulting in `[20, 30, 40, 50, 60, 70, 80]`. The third example creates a slice from the beginning to index 4 (exclusive), resulting in `[10, 20, 30, 40]`. The fourth example creates a slice with a step of 2, resulting in `[20, 40, 60]`. The fifth example creates a slice in reverse order by using a negative step value (`[::-1]`), resulting in `[80, 70, 60, 50, 40, 30, 20, 10]`.

## How to Plot an Array in Python

To plot an array in Python, you can use various libraries depending on the type of array and the desired plot. Here are examples using popular libraries:

1. Matplotlib (for 1D and 2D arrays):

Matplotlib is a widely used plotting library in Python. You can use it to plot 1D and 2D arrays. Here's an example:

```python
import numpy as np
import matplotlib.pyplot as plt

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
plt.plot(array_1d)
plt.show()

# Plotting a 2D array as an image
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
plt.imshow(array_2d, cmap='gray')
plt.show()
```

2. Seaborn (for statistical visualization):

Seaborn is a statistical data visualization library based on Matplotlib. It provides higher-level functions to create informative plots. Here's an example:

```python
import numpy as np
import seaborn as sns

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
sns.lineplot(x=np.arange(len(array_1d)), y=array_1d)
plt.show()

# Plotting a 2D array as a heatmap
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
sns.heatmap(array_2d, annot=True, cmap='coolwarm')
plt.show()
```

## Array Dimensions

You can determine the dimensions of an array with different libraries and data structures. Here are a few approaches:

1. NumPy:

If you are working with NumPy arrays, you can use the `shape` attribute to obtain the dimensions of the array. Here's an example:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])

# Get the dimensions of the array
dimensions = array.shape

print(dimensions)  # Output: (2, 3)
```

2. List of Lists:

If you have an array represented as a list of lists, you can use the `len()` function to determine the dimensions. Here's an example of how to determine the shape of an array:

```python
array = [[1, 2, 3], [4, 5, 6]]

# Get the dimensions of the array
rows = len(array)
columns = len(array[0])

print(rows, columns)  # Output: 2 3
```

3. Array module:

If you are using the built-in array module, you can use the len() function to determine the size of the array. Here's an example:

```python
import array as arr

array = arr.array('i', [1, 2, 3, 4, 5])

# Get the dimensions of the array
size = len(array)

print(size)  # Output: 5
```

## Does an Array Contain a Particular Element?

To check if a value is present in an array in Python, you can use different approaches depending on the type of array or data structure you are working with. Here are a few examples:

1. List:

If you have a list, you can use the `in` operator to check if a value is present. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]

# Check if the value 3 is present in the list
if 3 in my_list:
    print("Value 3 is present in the list")
```

2. NumPy array:

If you are working with a NumPy array, you can use the `np.isin()` function to check if a value is present. Here's an example:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if np.isin(3, my_array):
    print("Value 3 is present in the array")
```

3. Array module:

If you are using the built-in `array` module, you can use a loop or the `index()` method to check if a value is present. Here's an example:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if 3 in my_array:
    print("Value 3 is present in the array")
```

## Array Operations

In Python, you can perform various operations on arrays using different libraries and data structures. Here are some commonly used operations:

1. Mathematical Operations with NumPy:

NumPy provides a wide range of mathematical operations for arrays, such as element-wise operations, linear algebra, statistical operations, and more. Here are a few examples:

```python
import numpy as np

# Element-wise operations
array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

addition = array1 + array2
subtraction = array1 - array2
multiplication = array1 * array2
division = array1 / array2

# Linear algebra operations
matrix1 = np.array([[1, 2], [3, 4]])
matrix2 = np.array([[5, 6], [7, 8]])

matrix_multiplication = np.dot(matrix1, matrix2)
matrix_inverse = np.linalg.inv(matrix1)
eigenvalues, eigenvectors = np.linalg.eig(matrix1)

# Statistical operations
data = np.array([1, 2, 3, 4, 5, 6])
mean = np.mean(data)
median = np.median(data)
std_deviation = np.std(data)
```

2. List Operations:

For arrays represented as Python lists, you can perform basic operations like concatenation, slicing, appending, and more. Here are a few examples:

```python
# Concatenation
list1 = [1, 2, 3]
list2 = [4, 5, 6]

concatenated_list = list1 + list2

# Slicing
array = [1, 2, 3, 4, 5]
sliced_array = array[1:4]  # [2, 3, 4]

# Appending
array = [1, 2, 3]
array.append(4)
```

These are just a few examples of the operations you can perform on arrays in Python.

## How to Compare Arrays

Let's revew how to compare arrays in Python. Here are a few approaches:

1. NumPy:

If you are working with NumPy arrays, you can use the element-wise comparison operators provided by NumPy. Here's an example:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([1, 4, 3])

# Element-wise comparison
result = array1 == array2

print(result)
```

You can also use other element-wise comparison operators such as `<`, `>`, `<=`, `>=`, `!=`, etc., to perform different types of comparisons.

2. List:

If you have lists, you can compare them using the `==` operator. Here's an example:

```python
list1 = [1, 2, 3]
list2 = [1, 4, 3]

# Compare lists
result = list1 == list2

print(result)
```

> Note: The `==` operator compares the elements and the order of elements in the lists. If you want to check whether the lists have the same elements (ignoring the order), you can use the `set()` function to convert the lists into sets and then compare them.

3. Array module:

If you are using the built-in `array` module, you can compare arrays element-wise using a loop. Here's an example:

```python
import array as arr

array1 = arr.array('i', [1, 2, 3])
array2 = arr.array('i', [1, 4, 3])

# Element-wise comparison
result = [a == b for a, b in zip(array1, array2)]

print(result)
```

## Multiplication of Arrays

To perform element-wise multiplication of arrays in Python, you can use the `*` operator for NumPy arrays or list comprehension for regular Python lists. Here's how you can perform array multiplication using both approaches:

1. NumPy arrays:

If you are working with NumPy arrays, you can use the `*` operator to perform element-wise multiplication. Here's an example:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

result = array1 * array2

print(result) # Output will be: [ 4 10 18]
```

2. Python lists using list comprehension:

If you are working with regular Python lists, you can use list comprehension to perform element-wise multiplication. Here's an example:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

result = [a * b for a, b in zip(list1, list2)]

print(result) # Output will be: [4, 10, 18]
```

## Delete an Element or Clear an Array

Let's look at the ways of deleting elements from an array.

### How to Remove First Element from Array in Python

There are several ways to remove the first element from an array in Python. Here are a few examples:

1. Removing the first element of a standard Python list using slicing:

```python
my_list = [1, 2, 3, 4, 5]
new_list = my_list[1:]
print(new_list) # Output: [2, 3, 4, 5]
```

2. Removing the first element of a NumPy array using slicing:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = my_array[1:]
print(new_array) # Output: [2 3 4 5]
```

3. Modifying the original array in-place using NumPy's `delete()` function:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = np.delete(my_array, 0)
print(new_array) # Output: [2 3 4 5]
```

> Note: In the first two examples, we create a new list or array without modifying the original one. In the third example, the `delete()` function returns a new array, but it modifies the original array in-place.

Choose the method that suits your needs based on whether you want to create a new array without the first element or modify the original array itself.

### `pop()` Method for Array

In Python, you can use the `pop()` method to remove and return an element from an array or list. The `pop()` method removes the last element by default, but you can also specify the index of the element you want to remove. Here are a few examples:

1. List:

If you are working with a list, you can use the `pop()` method to remove and return the last element. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop()

print(popped_element)  # Output: 5
print(my_list)         # Output: [1, 2, 3, 4]
```

You can also pass an index to the `pop()` method to remove and return an element at a specific position. For example:

```python
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop(2)

print(popped_element)  # Output: 3
print(my_list)         # Output: [1, 2, 4, 5]
```

2. Array module:

If you are using the built-in `array` module, you can use the `pop()` method to remove and return the last element. Here's an example:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

popped_element = my_array.pop()

print(popped_element)  # Output: 5
print(my_array)        # Output: array('i', [1, 2, 3, 4])
```

> Note: The `pop() method is available only for lists and not for NumPy arrays.

### How to Clear an Array

To clear an array in Python, you can assign an empty array or list to the variable representing the array. Here's how you can clear an array using both approaches:

1. Clearing a NumPy array:

If you're working with a NumPy array, you can assign an empty NumPy array to the variable. Here's an example:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

my_array = np.array([])

print(my_array) # Output: []
```

2. Clearing a regular Python list:

If you're working with a regular Python list, you can assign an empty list to the variable. Here's an example:

```python
my_list = [1, 2, 3, 4, 5]

my_list = []

print(my_list) # Output: []
```

## How to Remove Duplicates from Sorted Array in Python

Let's look at how to remove duplicates from a sorted array in Python. Here's a common method using a list:

```python
sorted_array = [1, 1, 2, 2, 3, 4, 4, 5, 5, 5]

# Create a new list with unique elements
unique_array = []
for num in sorted_array:
    if num not in unique_array:
        unique_array.append(num)

print(unique_array)  # Output: [1, 2, 3, 4, 5]
```

Alternatively, if you are working with a NumPy array, you can use the `np.unique()` function to achieve the same result:

```python
import numpy as np

sorted_array = np.array([1, 1, 2, 2, 3, 4, 4, 5, 5, 5])

# Get unique elements from the sorted array
unique_array = np.unique(sorted_array)

print(unique_array)  # Output: [1 2 3 4 5]
```
