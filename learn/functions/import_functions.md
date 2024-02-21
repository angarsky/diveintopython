> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions/import-functions

In Python, functions play a vital role in programming as they help in creating reusable code. However, sometimes it can be tedious to rewrite the same function over and over again. Luckily, Python makes it easy to reuse functions by allowing you to import them from different files. In this article, we will explore how to import functions from another Python's file.  
  
## Python's `import` Function: How to Use It for Enhanced Code Reusability  

Python's **import function** is a powerful tool for enhanced code reusability. It allows us to import functions from other files, which can save us a lot of time and effort when building larger projects. 

To import functions from a file, we first need to create a Python module. This is simply a file with a `.py` extension that contains the functions we want to import. We can then use the `import` keyword to bring those functions into our main script: `from my_module import my_function`

Alternatively, we can also import the entire module and access its functions using dot notation: `import my_module`

By using the `import` function in Python, we can easily reuse code across multiple projects and improve our overall efficiency as developers.  
  
## The Different Ways to Import Functions from Files in Python

Importing functions in Python is a common practice to reuse code and improve code organization. There are different ways to import functions in Python, including importing a function from a file or importing a function as a module.

To import a function from a file in Python, use the following syntax: `from file_name import function_name`

This allows you to use the function in your code without having to write the entire code again. For example:

Alternatively, you can import a function as a module, which can be useful if you want to import multiple Python's functions from the same module: `import file_name`

Overall, importing functions in Python is a powerful way to make your code more efficient and readable.  
  
## Call a Function from Another File

One of the common practices in Python is to reuse code by importing functions from other Python files. This allows you to bring specific functions into your current script. To do this, use the following syntax:

```python
from file_name import function_name
```

For instance, to import the `add` function from a file called `math_operations.py`, you can use:

```python
from math_operations import add
```

Once you've imported the function, you can easily use it in your code. Here's an example:

```python
result = add(2, 3)
print(result)  # Output: 5
```
To import multiple specific functions, such as `add` and `subtract`, from `math_operations.py`, you can use the following syntax:

```python
from math_operations import add, subtract
```

Now both the `add` and `subtract` functions from the `math_operations.py` file can be called as follows:

```python
print(add(2, 3))
print(subtract(5, 3))
```

This process is a powerful way to enhance code reusability in Python. By importing functions from other files, you can save time and effort and make your code more efficient and organized.
  
## Common Errors When Importing Functions in Python and How to Fix Them  

When importing functions in Python, common errors include **import errors**, **syntax errors**, and **module attribute errors**. 

If you encounter an error when trying to call a function from another file, there are a few things you can try to fix it. First, make sure that the file you're trying to import from is located in the same directory as your Python script. If not, you may need to specify the path to the file.

Next, check the syntax of the import statement to make sure it's correct. If you're using the `from` keyword, make sure you've included the correct function name. If you're using the `import` keyword, make sure you're referring to the correct module name.

Finally, double-check the function name to make sure it's spelled correctly and that it's defined in the file you're trying to import from.

For example, let's say you want to import the `runsqlscript` function from the `sqlideutils` module. Here's how you could do it using the `from` keyword: `from sqlideutils import runsqlscript`

And here's how you could do it using the `import` keyword: `import sqlideutils` with `runsqlscript = sqlideutils.runsqlscript`
  
## Organizing Your Python Code: How to Create a Custom Module with Importable Functions  

Organizing your Python code is crucial to make it readable, maintainable, and reusable. One way of achieving this is by creating a custom module containing **importable functions**.

To create a custom module with importable functions, follow these steps:

1. **Create** a new Python file with the `.py` extension and give it a descriptive name (e.g., `myfunctions.py`).
2. **Define** one or more functions in the file using the `def` keyword and a function name (e.g., `mod_function`).
3. **Save** the file.
4. **Import** the function(s) from the file into another Python script using the `import` keyword and the file name without the `.py` extension (e.g. `import myfunctions`).
5. **Call** the imported function(s) in the script using the function name as defined in the file (e.g., `myfunctions.mod_function()`).
  
## Advanced Python Techniques: How to Build and Import External Packages with Multiple Functions

**Import functions** is an advanced Python technique that allows us to build and import external packages with **multiple functions**. It is a powerful feature that enhances code reusability and organization.

There are several ways to import multiple functions in Python. One way is to define functions in a separate file and then import them into the main script using the `import function from file` syntax. Another way is to use the `map` function with multiple arguments to apply a function to multiple iterables simultaneously.

Here are two examples of how to use import functions in Python:

### Example 1: Importing Functions from a Separate File

```python
# Suppose we have a file named `my_functions.py` that contains the following functions:
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
# To import these functions into a main script, we can use the following syntax:
# from my_functions import add, subtract

result1 = add(10, 5)
result2 = subtract(10, 5)

print(result1)  # Output: 15
print(result2)  # Output: 5
```

Here, we import the `add` and `subtract` functions from the `my_functions.py` file and use them in the main script.

### Example 2: Using the Map Function with Multiple Arguments

Suppose we have two lists, `numbers1` and `numbers2`, and we want to add them element-wise. We can use the **map function with multiple arguments** to achieve this:

```python
numbers1 = [1, 2, 3, 4, 5]
numbers2 = [5, 4, 3, 2, 1]

def add(a, b):
    return a + b

result = list(map(add, numbers1, numbers2))

print(result)  # Output: [6, 6, 6, 6, 6]
```

Here, we define the `add` function and use the map function to apply it to the `numbers1` and `numbers2` lists element-wise. The `result` is a new list containing the element-wise sum of the two lists.  
