> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/variable-import

This article focuses on the pivotal aspect of import in Python. Mastering the `import` statement is essential for seamlessly incorporating variables from one file to another. In other words you can easily import variables in Python with this statement. Let's explore the efficiency and modularity gained by leveraging import to access variables in Python files.

## Example of a Variable Import from a File

To import a variable in Python, you need to use the `import` statement. Suppose you have a Python file named `file1.py` which contains a variable named `my_variable`.

```python
# file2.py
from file1 import my_variable


# Now you can use the variable in this file
print(my_variable)
```

In the above code, we are importing the `my_variable` from `file1.py` using the `from ... import` syntax. After importing the variable, we can use it in `file2.py` just like any other variable.

## Example of a Module Import

Alternatively, you can also import the entire module `file1.py` and access the variable using the module name like this:

```python
# file2.py
import file1

# Accessing the variable using the module name
print(file1.my_variable)
```

In this case, we are importing the entire `file1.py` module using the import statement. Then we access the `my_variable` variable using the module name prefix `file1`.

## Export a String to a File

To write a string to a file in Python, you can use the built-in `open()` function in combination with the `write()` method. Here's an example:

```python
# Open the file for writing
with open('myfile.txt', 'w') as f:
    # Write the string to the file
    f.write('Hello, world!')
```

In this example, the `open()` function is used to open the file named `myfile.txt` in write mode (`'w'`). The `with` statement is used to ensure that the file is properly closed after the write operation is complete.

The `write()` method is then used to write the string `'Hello, world!'` to the file.

You can also use the `writelines()` method to write a list of strings to a file, one string per line. Here's an example:

```python
# Open the file for writing
with open('myfile.txt', 'w') as f:
    # Write a list of strings to the file
    f.writelines(['Hello\n', 'World\n', 'Python\n'])
```

In this example, the `writelines()` method is used to write a list of three strings to the file. The strings are separated by newlines (`'\n'`) to ensure that each string is written on a separate line.
