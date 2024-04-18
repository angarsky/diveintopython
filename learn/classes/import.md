> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/import

In Python, you can import a class from another file, providing a wealth of benefits in terms of code organization, maintainability, and collaboration. This feature allows programmers to leverage pre-existing code modules, making their programs more efficient and concise. By importing classes, developers can access and utilize the functionality provided by these classes without the need to rewrite the entire code from scratch. In this article, we will explore how to import a class from another file in Python.
  
## Imports and Attributes  

The import statement in Python allows us to use external modules and packages that provide additional functionality. Attributes in Python refer to the properties or values associated with an object that we can access and modify.

### Importing Modules in Python Using The `import` Command

We can use the `import` statement in Python to import external modules and packages that provide additional functionality. For instance, to use the `math` module in Python, we can write:

```python3
import math
print(math.pi)
```

Once we import the module, we can use its functions and attributes.

### Using Attributes in Python

In Python, we can access the attributes of an object using the `.` notation. For instance, given an object `obj`, we can access its attributes using `obj.attribute`. For example, consider the following class definition:

```python3
import math
class Circle:
    def __init__(self, radius):
        self.radius = radius
        self.area = math.pi * radius ** 2
c = Circle(2)
print(c.radius)  # Output: 2
print(c.area)  # Output: 12.566370614359172
```

Here, we define a class `Circle` that represents a circle with a given `radius`. We use the `math` module to calculate the area of the circle using the formula `pi * radius ** 2`.
 
> Note that we assign the value of the area to an attribute `area` of the object. Here, we create an instance `c` of the `Circle` class with `radius` `2`. We then access its attributes using the `.` notation. We print the values of the `radius` and `area` attributes, which are `2` and `12.57` (approx.), respectively. 

## Importing a Single Class Using the `from` Statement

Let's explore how to import a single class from another Python file using the `from` keyword.

You can achieve this by specifying the file name and the class you want to import, like this: `from my_module import MyClass`.

In this example, we import the `MyClass` class from a file called `my_module`. We can then create an instance of `MyClass` and use its methods as desired.

For example: `from path.to.my_module import MyClass`. We import the `MyClass` class from a file located at a specific path (`path/to/my_module`). This is useful when the file you wish to import from is located in a subdirectory of your project.

In Python, importing a class from another file is a straightforward process that allows us to harness the advantages offered by imported files.

## Importing Multiple Classes  

In Python, it's possible to import multiple classes from a module by listing the class names and separating them with commas.

For example, you can import `class1`, `class2`, and `class3` from the module named `module_name` as follows: `from module_name import class1, class2, class3`.

Alternatively, you can use the `from module_name import *` syntax to import all classes from module_name. However, it's worth noting that this approach is discouraged because it can lead to naming conflicts, especially when multiple classes with the same name exist in different modules.

## Importing All Classes from a Module Using the `From` Command

To import all classes from a module in Python, you can use the `*` notation. This allows you to avoid having to specify each individual class name when importing from another file in a different directory.

Assuming we have a module named `my_module.py` containing the classes `Class1` and `Class2`.

```python
# my_module.py

class Class1:
    pass
    
class Class2:
    pass
```

To import all classes from `my_module.py` into another script, you can use the following syntax:

```python
# script.py

from my_module import *
```

This will import both `Class1` and `Class2` into `script.py`.

If you only need to use one class from a module, it is generally better to be more specific about what you import to avoid any potential naming conflicts or performance issues.

Assuming we have a module named `my_module.py` containing the classes `Class1` and `Class2`.

```python
# my_module.py

class Class1:
    pass

class Class2:
    pass
```

To import only `Class1` into another script, you can use the following syntax:

```python
# script.py

from my_module import Class1
```

This will only import `Class1` into `script.py`.  
  
## Importing Classes with Aliases  

In Python, we can import classes with aliases to make our code more readable and concise. Aliases allow us to use a shorter, more convenient name for a class, without having to type out its full name every time we use it. 

```python3
# Importing the math module and aliasing it as m
import math as m

# Calculating the square root of 4 using the math.sqrt() method
print(m.sqrt(4))  # Output: 2.0
```

In this example, we're importing the `math` module and aliasing it as `m`. This allows us to use `m` as a shorthand for `math` throughout our code. We then use the `m.sqrt()` method to calculate the square root of 4 and print the result.

```python3
# Importing the square and cube functions from the math module and aliasing them as sq and cu
from math import sqrt as sq, pow as cu

# Calculating the square root of 4 using the sq() function
print(sq(4))  # Output: 2.0

# Calculating the cube of 3 using the cu() function
print(cu(3, 3))  # Output: 27.0
```

In this example, we're importing the `sqrt` and `pow` functions from the `math` module and aliasing them as `sq` and `cu`, respectively. This allows us to use `sq` and `cu` as shorthands for `sqrt` and `pow` throughout our code. We then use the `sq()` function to calculate the square root of 4 and the `cu()` function to calculate the cube of 3 and print the results.

Overall, using aliases can make our Python code more succinct and easier to read, especially when dealing with complicated classes or modules.  
  
## Importing Classes from a Submodule or Package  

To import a class from another file/module in Python, we can use the `import` keyword followed by the name of the module or file where the class is defined, and then access the class using the dot syntax.

Suppose we have a module `my_module.py` with a class `MyClass` defined inside it. To import that class into another file, we can do `from my_module import MyClass`.

Suppose we have a package called `example` that contains a submodule `utils` with a class `MyUtils` defined inside it. To import that class into another file, we can do:

```python
# we are importing the class MyUtils from the utils submodule inside the example package
# from example.utils import MyUtils

# creating an instance of MyUtils
# obj = MyUtils()
```

After importing the class, we can create an instance of it by calling the constructor with parentheses.

## Importing Classes from a Parent Directory with `sys.path`

The `sys` module in Python provides access to various system-specific parameters and functions. The `sys.path` list is one of the attributes in this module and contains the directories where Python searches for modules. To import classes or modules from a directory outside the default search path, you can manipulate this list.

Here's a step-by-step guide to importing all classes from another folder in the parent directory:

1. **Identify the Target Directory**: First, you need to identify the directory from which you want to import classes. This directory should be in the parent directory of your current script.
2. **Update `sys.path`**: To add the target directory to `sys.path`, you can use the `sys.path.append()` method. For example:

```python
import sys
sys.path.append('/path/to/your/directory')
```

Replace `'/path/to/your/directory'` with the actual path to your target directory.

3. **Import Modules**: Once the target directory is added to `sys.path`, you can import modules and classes from that directory as if they were in the current directory. For example:

```python
from target_directory import module_name
```

Replace `target_directory` with the name of the folder you want to import from and `module_name` with the name of the module or class you want to use.

If you want to import all classes or modules from the target directory, you can use a wildcard import:

```python
from target_directory import *
```

Be cautious when using wildcard imports, as they can lead to naming conflicts and make your code harder to understand.

4. **Import and Use**: With the modules and classes imported, you can use them in your code as needed. Remember that the target directory should contain an `__init__.py` file to be recognized as a package.

Python's `import sys` command can be a powerful tool when you need to import classes or modules from directories located outside the default search path. By manipulating the `sys.path` variable, you can extend Python's capabilities to include additional directories, allowing you to organize your code more effectively and maintain a clean project structure. 
