> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/array/convert

In Python, converting between lists and arrays is a common task when dealing with numerical data. The process of converting from a list to an array allows us to take advantage of efficient numerical computations and operations provided by libraries like NumPy. On the other hand, in some cases we need to make 2d array from 1d array. So let's review most common topics on conversions related to array.

## Conversion Between Lists and NumPy Arrays

Conversions between lists and NumPy arrays provide flexibility in data manipulation and facilitate seamless integration with other numerical computing libraries in Python.

### How to Convert a NumPy Array to Python List

To convert a NumPy array to a Python list, you can use the `tolist()` method provided by the NumPy library. This method converts a NumPy array into a nested Python list. Here's an example:

```python
import numpy as np

numpy_array = np.array([1, 2, 3, 4, 5])
python_list = numpy_array.tolist()
print(python_list) # Output: [1, 2, 3, 4, 5]
```

Similarly, if you have a multidimensional NumPy array, the `tolist()` method will convert it to a nested Python list structure:

```python
import numpy as np

numpy_array = np.array([[1, 2, 3], [4, 5, 6]])
python_list = numpy_array.tolist()
print(python_list) # Output: [[1, 2, 3], [4, 5, 6]]
```

In this example, the numpy_array is a 2D NumPy array with two rows and three columns. The `tolist()` method converts it into a nested Python list with the same structure.

### List to Array Conversion in Python

To convert a Python list to an array, you can use the `array()` function provided by the NumPy library. The `array()` function creates a new NumPy array from the elements of the given list. Here is an example of converting list to array:

```python
import numpy as np

my_list = [1, 2, 3, 4, 5]
my_array = np.array(my_list)
print(my_array) # Output: [1 2 3 4 5]
```

NumPy arrays are homogeneous, meaning they can only hold elements of the same data type. If the elements of the list are of different types, NumPy will automatically upcast the elements to a common data type.

For example:

```python
import numpy as np

my_list = [1, 2.5, 'three', True]
my_array = np.array(my_list)
print(my_array) # Output: ['1' '2.5' 'three' 'True']
```

In this case, the elements of the list have different data types (int, float, str, and bool). NumPy upcasts all the elements to the common data type, which in this case is str. The resulting array contains strings representing the elements of the list.

## Conversion Between String and Array

Converting between strings and arrays in Python can be useful when working with textual data or when manipulating individual characters.

### Python String into Array Conversion

To convert a Python string into an array of individual characters, you can iterate over the string and create a list of characters. Here's an example:

```python
string = "Hello, world!"
array = [char for char in string]
print(array) # Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

In the above example, we iterate over each character in the string using a list comprehension. Each character is added to the list, resulting in an array where each element represents an individual character from the string.

If you want to split the string into an array of words instead of characters, you can use the `split()` method. By default, the `split()` method splits the string based on whitespace characters (spaces, tabs, newlines). Here's an example:

```python
string = "Hello, world! How are you?"
array = string.split()
print(array) # Output: ['Hello,', 'world!', 'How', 'are', 'you?']
```

In this example, the `split()` method splits the string into a list of substrings based on whitespace characters, resulting in an array where each element represents a word from the string.

### Array to String Conversion

To convert an array (or list) to a string in Python, you can use the `join()` method. The `join()` method concatenates the elements of an iterable into a single string, using a specified delimiter. Here's an example:

```python
array = ['Hello', 'world', 'How', 'are', 'you?']
string = ' '.join(array)
print(string) # Output: Hello world How are you?
```

By changing the delimiter passed to the `join()` method, you can modify the way the elements are separated in the resulting string. For example, using a comma (',') as the delimiter:

```python
array = ['apple', 'banana', 'orange']
string = ', '.join(array)
print(string) # Output: apple, banana, orange
```
