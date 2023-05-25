The official Python documentation contains information about [arrays](https://docs.python.org/3/library/array.html). However, in Python, the built-in data structure commonly used to represent arrays is the [list](https://github.com/almargit/diveintopython/blob/main/learn/variables/list.md). The official documentation primarily focuses on lists rather than a separate array data type. Lists are ordered, mutable, and can contain elements of different data types. You can access elements in a list using their indices, and you can perform various operations on lists such as appending, inserting, or removing elements.
With these facts in mind, we'll look at lists from, say, an array's point of view. 

## Python's Array

As we already mentioned, lists are usually used as arrays in Python. But if you want to improve performance and reduce memory consumption for certain use cases, you can use the `array` module in Python. It provides a way to create arrays that are more efficient and compact compared to traditional lists, it allows you to define arrays of a specific data type.

To use the `array` module, you first need to import it:

```python
import array
```

Next, you can create an array by specifying the desired data type code and initializing it with values. Here's an example of creating an array of integers:

```python
my_array = array.array('i', [1, 2, 3, 4, 5])
```

In the above example, `'i'` represents the data type code for signed integers. You can choose different data type codes based on your specific needs (e.g., `'f'` for floats, `'d'` for doubles, `'b'` for bytes, etc.).

Once you have created an array, you can access its elements using indexing, just like with regular lists. You can also modify the values in the array or perform various operations available for arrays.

> Note: the `array` module is particularly useful when you are working with large amounts of numerical data or when you need to interface with low-level libraries that expect data in a specific format. For general-purpose collections of heterogeneous elements, the built-in list type is usually more flexible and commonly used in Python.
