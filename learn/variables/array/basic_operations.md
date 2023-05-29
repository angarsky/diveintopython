Arrays allow us to store and manipulate data efficiently, enabling us to perform a wide range of tasks. In this article, we will explore the essential basic most common operations associated with arrays in Python.

## How to Get a Sorted Array in Python

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

## `getsizeof()` Function

In Python, there is no built-in function called `sizeof()` to directly get the size of an array or list. However, you can use the `sys` module's `getsizeof()` function to get an estimate of the memory size occupied by an object.

Here's an example:

```python
import sys

my_list = [10, 20, 30, 40, 50]
size = sys.getsizeof(my_list)

print(size)  # Output: 104 (the size in bytes)
```

In the example above, we import the `sys` module and use the `getsizeof()` function to get the size of the `my_list` object in bytes. Note that the value returned by `getsizeof()` includes the overhead of the list object itself and may not provide an exact representation of the memory occupied by the array/list elements.

