> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/data-science/numpy

NumPy, short for Numerical Python, is a fundamental package for high-performance scientific computing and data analysis in Python. It provides an efficient multidimensional array object called ndarray, which allows for fast array-oriented arithmetic computations. Beyond its core array object, NumPy also offers a wide range of mathematical functions to perform operations on these arrays, from basic linear algebra and statistical operations to complex Fourier transforms. By providing tools to efficiently operate on large data sets, NumPy serves as the backbone for a plethora of scientific and engineering applications, making it an indispensable tool for researchers, data scientists, and anyone involved in data-intensive computations. With its combination of power, flexibility, and speed, NumPy has become a cornerstone in the Python scientific computing ecosystem, interfacing well with other libraries and platforms to provide a robust environment for numerical computations.  
  
## What is `numpy` in Python  

Numpy, standing for Numerical Python, is an integral part of the scientific computing environment in Python. It is a library that provides support for arrays, along with a rich collection of mathematical functions to perform various operations on these arrays. The [numpy](https://pypi.org/project/numpy/) library in Python is widely used in data analysis, machine learning, and engineering for its efficiency and functionality. It is designed to handle large multi-dimensional arrays and matrices, making it an indispensable tool for developers and researchers working in data-intensive domains. 

### Importance of Numpy

The `numpy` library in Python offers several features that make it essential for numerical computations:

1. **High-performance multidimensional array object**: Numpy arrays are more compact, faster, and more convenient for mathematical operations than traditional Python lists.
2. **Broad collection of mathematical functions**: These functions allow for efficient operations on arrays without the need for explicit loops.
3. **Array broadcasting capabilities**: Numpy can process arrays of different shapes during arithmetic operations, making the code cleaner and faster.
4. **Tools for integrating C/C++ and Fortran code**: It's easy to incorporate compiled code directly into Python applications for even more speed.

> Note: Numpy's powerful data structures and computational tools are the foundation upon which libraries like Pandas, Matplotlib, SciPy, and scikit-learn are built.

## How to Start Using `numpy`  

### Installing NumPy

To begin using NumPy in your Python projects, the first step is **installing numpy**. NumPy can be installed using various package managers, but the most common and straightforward method is through `pip`, Python's package installer. Here's a step-by-step guide to **how to install `numpy` in python**:

1. Open your command line or terminal.
2. Type the following command and press Enter:

```pythonbash
pip install numpy
```

This command fetches the NumPy package from PyPI (Python Package Index) and installs it in your Python environment. 

> Note: Ensure your pip is updated to avoid any installation issues. You can update pip using `pip install --upgrade pip` command.

### How to Import NumPy in Python

Once `numpy` download and installation is complete, you'll need to `import` it into your Python script to start utilizing its functionalities. Here's how you can do it:

```python
import numpy as np
```

Using `np` as an alias for NumPy is a widely accepted convention and it helps in keeping your code clean and readable.

### Working with NumPy

After installing and importing NumPy, you can start using it to perform various numerical computations. Here are a couple of examples to get you started:

### `np.array()`

One of the fundamental operations in NumPy is creating arrays. Use `np.array()` function to create a NumPy array:

```python
import numpy as np
my_array = np.array([1, 2, 3, 4, 5])
print(my_array)
```

This code will result in a 1-dimensional array containing the numbers 1 through 5.

### `np.arange()`

Another useful function to generate arrays is `np.arange()`, which creates arrays with regularly incrementing values.

```python
import numpy as np
range_array = np.arange(0, 10, 2)
print(range_array)
```

This code snippet creates an array starting from 0 up to (but not including) `10,` with a step of 2, resulting in `[0, 2, 4, 6, 8]`.

### Essential Functions in NumPy

There are numerous functions available in NumPy; below is a brief overview of some frequently used functions and their purpose.

| Function | Description |
| ---------|-------------|
| `np.array()` | Creates an array. |
| `np.arange()` | Returns an array with evenly spaced intervals. |
| `np.zeros()` | Returns a new array of given shape and type, filled with zeros. |
| `np.ones()` | Returns a new array of given shape and type, filled with ones. |
| `np.linspace()` | Returns an array of evenly spaced numbers over a specified interval. |

These basic functions and examples provide a solid foundation for beginning your journey with NumPy. As you become more comfortable with these operations, you'll find NumPy to be an incredibly powerful tool for numerical computing in Python.  
  
## Arrays in NumPy

Arrays play a crucial role in Python, especially for numeric computation, which is made easier and more efficient by the Numpy library. A `numpy` array is a grid of values, all of the same type, and is indexed by a tuple of nonnegative integers. The number of dimensions is the rank of the array; the shape of an array is a tuple of integers giving the size of the array along each dimension.

### Understanding NumPy Arrays

Numpy arrays come with a lot of built-in properties that make it easy to perform complex computations. A few important properties are summarized in the table below:

| Property | Description |
|----------|-------------|
| dtype | The data type of the array elements |
| shape | The dimensions of the array (rows, columns) |
| size | The total number of elements in the array |
| ndim | The number of dimensions (or axes) of the array |

These properties help in understanding the structure and type of data that your Numpy array is handling, leading to more efficient and effective data manipulation and analysis.

### Creating a NumPy Array

To start working with `numpy` arrays, you first need to `import` the Numpy library. Then you could convert a python list to `numpy` array or instantiate it directly:

```python
import numpy as np

# Python list
my_list = [1, 2, 3]

# Converting Python list to numpy array
np_array = np.array(my_list)
print(np_array)
```

### Print `numpy` Array

To `print` a `numpy` array, you can simply use the Python `print` function:

```python
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Printing numpy array
print(np_array)
```

### Appending Elements with NumPy `append()`

Appending elements to an array is a common operation. With `numpy`, you can easily append elements using the `np.append()` method:

```python
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Appending an element to numpy array
new_np_array = np.append(np_array, [4])

print(new_np_array)
```

> Note: The `np.append()` method returns a new array. It does not change the original array.

### Calculating Sum with `np.sum()`

Numpy provides a convenient way to calculate the `sum` of the elements in an array using the `np.sum()` method. This is very useful for numerical computations:

```python
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3, 4])

# Calculating the sum of array elements
sum = np.sum(np_array)

print(sum)
```

> Note: `np.sum()` can be very powerful, especially when used with multi-dimensional arrays, as you can calculate sums along specific axes.

### Frequently Used NumPy Array Operations

For quick reference, here are some of the most frequently used `numpy` array operations, along with their descriptions:

| Operation | Description |
|----------------|-------------------------------------------------|
| `np.array()` | Converts a Python list to a `numpy` array. |
| `np.append()` | Adds elements to the end of an array. |
| `np.sum()` | Calculates the `sum` of array elements. |
| `print()` | Displays the `numpy` array. |

### Summarizing Key Points

Utilizing `numpy` array operations such as converting Python lists to `numpy` arrays, appending elements, and calculating sums, can greatly enhance the efficiency and performance of data manipulation and numerical computations in Python. Remember to `import` Numpy and leverage these built-in functions for more effective coding.  
  
## Numpy Matrix  

Numpy is a fundamental package for scientific computing in Python. It provides a powerful object for matrix operations, which is an essential aspect of data science and mathematical computing. Matrix multiplication is one of the critical operations that Numpy makes very efficient and easy to perform. 

### What is Numpy Matrix

A Numpy matrix is a specialized 2D array that retains its two-dimensional nature through operations. It offers various methods for matrix manipulations, including but not limited to matrix multiplication, inverse, and transpose. Using Numpy matrix for operations simplifies the syntax and improves the performance of complex calculations.

### Matrix Multiplication Python Numpy

Matrix multiplication, also known as the dot product, is a fundamental operation in linear algebra. Python with the Numpy library simplifies this process significantly. The key function for this operation is `numpy.dot()` for two-dimensional arrays, but for a Numpy matrix, you can directly use the `*` operator or the `.dot()` method.

### How to Perform Matrix Multiplication

1. **Using `numpy.dot()`**

This function is versatile and can handle both matrices and 2D arrays, delivering the dot product.

```python
import numpy as np

# Define two matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Perform matrix multiplication
C = np.dot(A, B)

print(C)
```

2. **Using the `*` Operator**

When dealing with Numpy matrices explicitly, you can directly use the `*` operator for matrix multiplication.

```python
import numpy as np

# Define two matrices
A = np.matrix([[1, 2], [3, 4]])
B = np.matrix([[5, 6], [7, 8]])

# Perform matrix multiplication
C = A * B

print(C)
```

> Note: Although you can use the `*` operator for Numpy matrices, it's recommended to use Numpy arrays with the `np.dot()` or `@` operator for consistency and to avoid potential deprecation of the matrix class in future Numpy versions.

### Comparing Methods for Matrix Multiplication

When it comes to matrix multiplication in Python using Numpy, there are several methods to achieve the same result. Choosing between these methods often boils down to preferences and specific use cases. Here is a simplified comparison:

| Method               | Usage                                                    |
|----------------------|----------------------------------------------------------|
| `numpy.dot()`        | Recommended for consistency, works for arrays and matrices |
| `*` Operator         | Simple syntax but only for Numpy matrix objects           |
| `.dot()` Method      | Another option for performing dot products                |

Understanding and performing matrix multiplication using Python and Numpy is straightforward, thanks to the well-designed functions and methods provided by the library. Whether you prefer the simplicity of the `*` operator with Numpy matrices or the versatility and recommended `np.dot()` function, Numpy makes these operations efficient and easily integrable into larger data processing or scientific computing workflows.  
