Developers often use the words 'Module' and 'Library' to refer to pre-written codes and functions that offer a vast range of features and functionalities that can be added to Python programs. A module is a single file containing Python code, while a library is a collection of related modules that provide more extensive functionality and solve specific problem domains. Libraries are usually distributed and installed separately, while modules can be created and used within your own codebase.
  
## Python Libraries  

Python libraries are crucial components of Python programming and are available in the Python Package Index (PyPI), which currently has over 220,000 libraries.

### Installing Python Libraries

To `install` Python libraries, you need to use the python package manager `pip`. Open the command prompt and enter the following command:

```shell
pip install <library_name>
```

### Pandas Library

The `pandas` library is primarily used for data analysis tasks.  The following code example shows how to `install` and `import` the `pandas` library:

```shell
# installing the pandas library
pip install pandas

# importing pandas 
import pandas as pd
```

### NumPy Library

The NumPy library is used for scientific computing. Here's how to `install` and `import` the NumPy library:

```shell
# installing the numpy library
pip install numpy

# importing numpy
import numpy as np
```

In conclusion, Python libraries are essential components of Python programming that provide additional features and functionalities. To use these libraries, you need to `install` them using the PIP package manager, as shown in the examples above.  
  
## Library vs Packages  

When it comes to Python programming, there are two terms that are often used interchangeably, but are not the same - Libraries and Packages. Although they both serve the same purpose of providing functionality to the user, there are some distinct differences between them.

### What is a Python Library?

A library is a collection of modules that come together to provide a particular set of functions. It is usually used to perform specific tasks, such as mathematical computations, manipulating files, or connecting to a database. One of the most popular libraries in Python is the NumPy library, which provides support for large, multi-dimensional arrays and matrices.

#### Example of Using numpy Library

```python
import numpy as np

arr = np.array([1, 2, 3, 4, 5])
print(arr)
```

### Packages

Packages, on the other hand, are a collection of libraries. They are a way of grouping multiple libraries together for easy installation and usage. One of the most commonly used packages in Python is the SciPy package, which contains a collection of libraries for scientific computing.

#### Example of Using scipy Package

```python
from scipy import constants

print(constants.pi)
```

In summary, Libraries are smaller sets of functionality that are dedicated to a particular task, while Packages are collections of libraries that have been grouped together for easy usage and installation. Both Libraries and packages are essential components of Python programming and choosing which one to use depends on the task at hand.  
  
## Python Library vs Module

In Python, a [module](https://docs.python.org/3/tutorial/modules.html) is a file containing Python code while a library is a collection of related modules. Libraries typically have a broad scope and provide functionality that is not available in built-in modules.

Python libraries are collections of modules that offer a wide range of functionalities that are built on top of the built-in modules. They are used to simplify complex tasks by providing a set of pre-written functions that can be used in the development process. Some of the popular Python libraries are NumPy, Pandas, and Matplotlib.

On the other hand, Python modules are separate files that contain Python code that can be imported into your code. They are used to separate the code into smaller and more manageable pieces. Some of the popular Python modules are os, sys, and datetime.

### An Example of Using a Module:

```python
import os

current_working_directory = os.getcwd()
print(f"The current directory is: {current_working_directory}")
```

### An Example of Using a Library:

```python
import numpy as np

### Create a two-dimensional array using numpy library

my_array = np.array([[1, 2], [3, 4]])
print(my_array)
```

In conclusion, both Python libraries and modules are important in Python programming. Modules are used to organize code, making it more manageable while libraries provide additional functionalities which make programming easier and more efficient.  
  
## How to Import Library in Python  

To import a library in Python, you need to use the `import` statement. This statement allows you to use the defined functions, classes, and variables from the external library in your program. The syntax for importing a library is:

```python
import library_name
```
Here, `library_name` is the name of the library you want to import. Once you import the library, you can access its functions and classes using the dot notation.

```python
import math

result = math.sqrt(25)
print(result) 

import requests

response = requests.get('https://www.example.com')
print(response.status_code) 

```

In the first example, we imported the built-in [math](https://docs.python.org/3/library/math.html) library and used its `sqrt` function to calculate the square root of 25. In the second example, we imported the popular `requests` library to make an HTTP request and `print` the status code of the `response`. 

By importing external libraries, you can extend the functionality of your Python code and save time by reusing the existing code.  
  
## Python GUI Library  

Python has several GUI libraries to choose from. The most commonly used are:

1. **Tkinter**: This is a [standard Python library](https://docs.python.org/3/library/tkinter.html) and comes pre-installed with Python. It is suitable for small to medium-sized GUI applications.

```python
import tkinter as tk

root = tk.Tk()

label = tk.Label(root, text="Hello World!")
label.pack()

root.mainloop()
```

2. **PyQt**: This is a [cross-platform GUI library](https://pypi.org/project/PyQt5/) that comes with a comprehensive set of widgets. It is suitable for large-scale desktop applications.

```python
from PyQt5.QtWidgets import QApplication, QLabel

app = QApplication([])
label = QLabel("Hello World!")
label.show()

app.exec_()
```

Other popular Python GUI libraries include WxPython, PyGTK, and PySide.

When choosing a GUI library, it is important to consider factors such as ease of use, the complexity of the project, and the platform on which the application will be deployed.  

## Print Libraries List  

To print a list of Python libraries, you can use the built-in `pkg_resources` module, which provides a simple way to interact with the metadata of installed packages.

### Get Libraries List with `pkg_resources`

```python
import pkg_resources
for package in pkg_resources.working_set:
    print(package.project_name)
```

### Get Libraries List with `subprocess`

```python
import subprocess
output = subprocess.check_output(['pip', 'freeze'])
for line in output.splitlines():
    print(line.decode('utf-8').split('==')[0])
```
