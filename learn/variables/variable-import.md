> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/variable-import

This article focuses on the pivotal aspect of import in Python. Mastering the `import` statement is essential for seamlessly incorporating variables from one file to another. In other words you can easily import variables in Python with this statement. Let's explore the efficiency and modularity gained by leveraging import to access variables in Python files.

## How to Import a Variable from Another File in Python

To import a variable in Python, you need to use the `import` statement. Suppose you have a Python file named `file1.py` which contains a variable named `my_variable`.

```python
# file2.py
from file1 import my_variable


# Now you can use the variable in this file
print(my_variable)
```

In the above code, we are importing the `my_variable` from `file1.py` using the `from ... import` syntax. After importing the variable, we can use it in `file2.py` just like any other variable. This method allows you to export variables from one file and utilize them in other Python files, promoting code reusability and organization.

## Importing Variables from Another File via Module Import

Alternatively, you can load variables from another file by importing the entire module  - simply import `file1.py` and access the variable using the module name like this:

```python
# file2.py
import file1

# Accessing the variable using the module name
print(file1.my_variable)
```

In this case, we are importing the entire `file1.py` module using the import statement. Then we access the `my_variable` variable using the module name prefix `file1`.

## Importing Multiple Variables from Another File

Python allows importing multiple variables from a file using the `from ... import` syntax. Consider a scenario where `file1.py` contains multiple variables: `var1`, `var2`, and `var3`.

```python
# file2.py
from file1 import var1, var2, var3

# Using the imported variables in this file
print(var1)
print(var2)
print(var3)
```

By specifying multiple variables separated by commas after the `from ... import` statement, you can directly import and use those variables within `file2.py`. This method enhances code readability by explicitly importing only the necessary variables.

## Importing with Alias for Clarity

Sometimes, variable names might clash or be ambiguous when imported from different files. To mitigate this, Python allows you to import variables with aliases.

```python
# file2.py
from file1 import my_variable as alias_variable

# Utilizing the imported variable with an alias
print(alias_variable)
```

By assigning an alias during import (as `alias_variable`), you can provide a clearer name within the current file context, improving code understanding.

## Importing Modules from Different Directories

Python supports importing modules from different directories using absolute or relative paths. Suppose `file1.py` resides in a separate folder named `module_folder`.

```python
# file2.py
import sys
sys.path.append('path_to_module_folder')  # Include the path to module_folder

import file1

# Accessing the variable from the module in a different directory
print(file1.my_variable)
```

By appending the path to the directory containing the module to `sys.path`, Python can locate and import the module, enabling access to its variables from within `file2.py`.

## Dynamic Imports Using `importlib`

Python's `importlib` library allows dynamic imports, enabling you to import modules or variables based on runtime conditions.

```python
# file2.py
import importlib

module_name = 'file1'
module = importlib.import_module(module_name)

# Accessing the variable dynamically
print(module.my_variable)
```

Here, `importlib.import_module()` enables importing a module specified by a string (`module_name`), granting flexibility when determining imports during runtime.
