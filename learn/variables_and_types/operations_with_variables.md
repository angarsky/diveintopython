Python provides various operations and methods for working with data and performing various tasks. Let's review the most popular which relate to all vriable types.

## Type Definition

There are several ways to check the type of a variable in Python. Let's see how to check a type of a variable in Python.

### Function `type()`

This built-in `type()` function returns the data type of a variable, it is the equivalent of `typeof` in other programming languages.

Let's see how to print type of variable in Python:

```python
x = 23
print(type(x))   # Output: <class 'int'>

y = 3.14
print(type(y))   # Output: <class 'float'>

z = "Hello, friend!"
print(type(z))   # Output: <class 'str'>

w = True
print(type(w))   # Output: <class 'bool'>
```

In this example, the `type()` function is used to determine the type of variables `x`, `y`, `z`, and `w`. The output shows the class of the variable.

### Function `isinstance()`

This built-in function checks whether a variable is an instance of a specified class or not. With this function we can easily check if a variable is `string` or not.

So here we are checking type of variable in Python:

```python
x = 5
print(isinstance(x, int))  # Output: True

y = "hello"
print(isinstance(y, str))  # Output: True

z = [1, 2, 3]
print(isinstance(z, list))  # Output: True
```

### Using the `__class__` attribute

This attribute returns the class of an object.

Example:

```python
x = 17
print(x.__class__)  # Output: <class 'int'>

y = "hello"
print(y.__class__)  # Output: <class 'str'>

z = [1, 2, 3]
print(z.__class__)  # Output: <class 'list'>
```

This example shows how to print a type of a variable in Python.

### Using the `type()` function with an `assert` statement

This is a way to check the type of a variable and raise an error if the type is not as expected.

Example:

```python
x = 98
assert type(x) == int

y = "hello"
assert type(y) == str

z = [1, 2, 3]
assert type(z) == list
```

These are ways how to get a type of a variable in Python, for example, you can check if a variable is a list (see the example above).

## Deleting Variables

### Using the `del` statement

In Python, the del statement is used to delete a variable or an item from a list, dictionary or any other collection object. The syntax for using del is:

```python
del object
```

Where `object` can be a variable, a list item, a dictionary item, or any other object.

Here are a few examples:

```python
# Delete a variable
x = 5
del x

# Delete an item from a list
my_list = [1, 2, 3, 4, 5]
del my_list[2]

# Delete an item from a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}
del my_dict['b']
```

In the first example, the variable `x` is deleted using the `del` statement. After the statement is executed, the variable `x` no longer exists.

In the second example, the third item in the list `my_list` is deleted using del `my_list[2]`. After the statement is executed, `my_list` contains the items `[1, 2, 4, 5]`.

In the third example, the item with key `'b'` is deleted from the dictionary `my_dict` using `del my_dict['b']`. After the statement is executed, `my_dict` contains the items `{'a': 1, 'c': 3}`.

Note that `del` only deletes the reference to the object, not the object itself. If the object is still referenced elsewhere in the code, it will not be deleted from memory.

### Assigning `None` to the variable

One more method to clear a variable is to assign the value `None` to a variable to indicate that it has no value. The `None` value is a built-in constant that represents the absence of a value. Here's an example:

```python
x = None
print(x)  # Output: None
```

In this example, we assign the value `None` to the variable `x`. When we print the value of `x`, we see that it outputs `None`.

### Using the `locals()` or `globals()` functions

You can use the `locals()` and `globals()` functions to access the local and global namespace, respectively. These functions return a dictionary that contains all the variables and their values in the current namespace. You can use these functions to remove variables from the namespace by using the `del` statement.

Here's an example:

```python
def my_function():
    x = 5
    y = 10
    del locals()['y']
    print(x)
    print(y)  # This will raise a NameError

my_function()
```

In this example, we define a function `my_function()` that creates two variables `x` and `y`. We then use the del statement to remove the variable `y` from the local namespace by using `del locals()['y']`. After the statement is executed, `y` is no longer defined in the local namespace, so when we try to print its value, we get a `NameError`.

You can also use the `globals()` function to remove variables from the global namespace. Here's an example:

```python
x = 5
y = 10

def my_function():
    del globals()['x']

my_function()

print(x)  # This will raise a NameError
print(y)  # Output: 10
```

In this example, we define two variables `x` and `y` in the global namespace. We then define a function `my_function()` that uses `del globals()['x']` to remove the variable `x` from the global namespace. After the function is called, `x` is no longer defined in the global namespace, so when we try to print its value, we get a `NameError`. However, `y` is still defined in the global namespace, so we can print its value without any errors.

In addition, you can clear all variables from the current namespace by using the `globals()` and `locals()` functions. Here's how you can do it:

```python
# Clear all global variables
for var in globals().copy():
    if var.startswith("__"):
        continue
    del globals()[var]

# Clear all local variables
for var in locals().copy():
    if var.startswith("__"):
        continue
    del locals()[var]
```

The above code will delete all variables from the global and local namespaces except for the built-in Python variables (which start with `__`). Keep in mind that this can be dangerous as it will delete all your variables and you won't be able to access them later in your program. So, make sure you use it with caution.

### Using the `__del__()` method

The `__del__()` method is a special method that is called when an object is about to be destroyed or garbage collected. You can define this method in your class to perform any cleanup tasks that are required before the object is destroyed.

The `__del__()` method takes no arguments and has no return value. Here's an example:

```python
class MyClass:
    def __init__(self, name):
        self.name = name
    
    def __del__(self):
        print(f"{self.name} has been deleted")
        
obj1 = MyClass("Object 1")
obj2 = MyClass("Object 2")
del obj1
```

In this example, we define a class `MyClass` with an `__init__()` method that initializes an instance variable name. We also define an `__del__()` method that prints a message when the object is deleted. We create two instances of the class `MyClass` and then delete one of them using the `del` statement.

When we run this code, we get the following output:

```python
Object 1 has been deleted
```

This output indicates that the `__del__()` method was called when the object `obj1` was deleted.

Note that the `__del__()` method is not guaranteed to be called in all cases. For example, if the program terminates abruptly, the method may not be called. Therefore, it's generally not a good idea to rely on this method for critical cleanup tasks. Instead, it's better to use other cleanup mechanisms, such as `with` statements or context managers, where possible.

## Operations with Variables

We have already covered the assignment of variables earlier. But let's also see what else we can do with variables.

### Copying a variable

To copy variable in Python you can use assignment operator `=` or the `copy()` method. However, it is important to note that the behavior of these methods can be different depending on the type of the variable.

- Shallow copy: When you use the assignment operator to copy a list, dictionary, or other mutable objects, you create a shallow copy. This means that the new variable refers to the same object in memory as the original variable. Any changes made to the original variable will be reflected in the copy, and vice versa. For example:

```python
original_list = [1, 2, 3]
copy_list = original_list  # Shallow copy
original_list[0] = 4
print(copy_list)  # Output: [4, 2, 3]
```

- Deep copy: If you want to create a new object in memory that is a copy of the original variable, you can use the `copy()` method. This creates a deep copy, which means that any changes made to the original variable will not be reflected in the copy, and vice versa. For example:

```python
import copy

original_list = [1, 2, 3]
copy_list = copy.deepcopy(original_list)  # Deep copy
original_list[0] = 4
print(copy_list)  # Output: [1, 2, 3]
```

It is important to use the appropriate method for copying variables in order to avoid unexpected behavior in your code.

### Check if a variable is defined or not

You can use the in operator to check if a variable has been defined or not.

Here's an example:

```python
if 'my_variable' in locals() or 'my_variable' in globals():
    print('my_variable is defined')
else:
    print('my_variable is not defined')
```

This code checks if the variable `my_variable` is defined in either the local or global namespace. If it is defined, the code will print `'my_variable is defined'`, otherwise it will print `'my_variable is not defined'`.

Note that if the variable has been defined but has a value of `None`, this method will still consider it as defined. If you want to check specifically for a non-`None` value, you can modify the code like this:

```python
if 'my_variable' in locals() and locals()['my_variable'] is not None or 'my_variable' in globals() and globals()['my_variable'] is not None:
    print('my_variable is defined and has a non-None value')
else:
    print('my_variable is not defined or has a value of None')
 ```
 
This code checks both that the variable is defined and that it has a non-`None` value. If both conditions are met, it will print `'my_variable is defined and has a non-None value'`, otherwise it will print `'my_variable is not defined or has a value of None'`.

### Check if a variable is empty

In Python, there are several ways to check if a variable is empty:

- Using the `if` statement with the variable name:

```python
if my_variable:
    # do something
else:
    # the variable is empty
```

If `my_variable` is empty or evaluates to `False`, the `else` block will be executed.

- Using the `not` operator with the variable name:

```python
if not my_variable:
    # the variable is empty
else:
    # do something
```

If `my_variable` is empty or evaluates to `False`, the if block will be executed.

- Using the built-in `len()` function:

```python
if len(my_variable) == 0:
    # the variable is empty
else:
    # do something
```

If `my_variable` has a length of 0, it is considered empty.

- Using the `is` operator with `None`:

```python
if my_variable is None:
    # the variable is empty
else:
    # do something
```

If `my_variable` is equal to `None`, it is considered empty. However, it's important to note that `None` is a specific value in Python and is not the same as an empty string, list, or other data types.

### Getting the name of a variable

Variables are simply names that refer to objects in memory. In Python you can get the name of a variable using the `locals()` or `globals()` functions, depending on whether the variable is in the local or global namespace.

Here's an example:

```python
x = 42
var_name = [k for k,v in locals().items() if v is x][0]
print(var_name)
```

This code assigns the value `42` to the variable `x`. Then it uses a list comprehension to iterate over all the items in the local namespace, and find the variable name that refers to the object with the value of `x`. Finally, it prints out that variable name, which in this case is `x`.

Note that this approach assumes that the variable has a unique value in the namespace, which may not always be the case. Also, it's generally not recommended to rely on variable names in your code logic, as it can make your code more brittle and harder to refactor.

### Check if a variable exists

You can check if a variable exists in Python by using the `in` keyword along with the `locals()` or `globals()` function. Here is an example:

```python
if 'my_variable' in locals():
    print("my_variable exists in the local scope.")

if 'my_variable' in globals():
    print("my_variable exists in the global scope.")
```

In the above example, we check if a variable named `my_variable` exists in either the local or global scope using the `in` keyword with the `locals()` or `globals()` function, respectively. If the variable exists, we print a message indicating that it exists in the specified scope.

Note that checking for the existence of a variable using the `in` keyword and `locals()` or `globals()` function will only work for variables that have already been defined in the program. If you are unsure if a variable has been defined or not, you can use a `try`-`except` block to catch a `NameError` exception that would be raised if the variable does not exist. Here is an example:

```python
try:
    my_variable
    print("my_variable exists.")
except NameError:
    print("my_variable does not exist.")
```

In this example, we try to access the `my_variable` variable, and if it does not exist, a `NameError` exception is raised. We catch the exception using the except block and print a message indicating that the variable does not exist.
