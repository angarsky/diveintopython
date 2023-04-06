## Import of a Variable from Another File

To import a variable from another file in Python, you need to use the `import` statement. Suppose you have a Python file named `file1.py` which contains a variable named `my_variable`. Here's how you can import `my_variable` in another Python file named `file2.py`:

```python
# file2.py
from file1 import my_variable


# Now you can use the variable in this file
print(my_variable)
```

In the above code, we are importing the `my_variable` from `file1.py` using the `from ... import` syntax. After importing the variable, we can use it in `file2.py` just like any other variable.

Alternatively, you can also import the entire module `file1.py` and access the variable using the module name like this:

```python
# file2.py
import file1

# Accessing the variable using the module name
print(file1.my_variable)
```

In this case, we are importing the entire `file1.py` module using the import statement. Then we access the `my_variable` variable using the module name prefix `file1`.
