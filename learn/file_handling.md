Python has a variety of built-in functions and libraries that make working with files a breeze, and in this article, we'll explore the different techniques and best practices for handling files in Python.   
  
## Opening Files  

With Python, you can easily read and write files to the system. To read a file in Python, you can use the `open()` function.

### Reading a File in Python

In Python, you can read a file using the `open()` function. The following code example demonstrates how to read a file in Python:

```python
file = open('example.txt', 'r')
data = file.read()
print(data)
```

### Reading a File Line-By-Line in Python

Sometimes, you may want to read a file line-by-line. To do that, you can use a `for` loop to loop through the file line-by-line. The following code demonstrates how to read a file line-by-line in Python:

```python
file = open('example.txt', 'r')
for line in file:
    print(line)
```

### Handling a `No Such File or Directory` Error

It's not uncommon to encounter a `No such file or directory` error when working with files in Python. To handle this error, you can use a `try` and `except` block to catch the error and handle it accordingly. The following code demonstrates how to handle a `No such file or directory` error in Python:

```python
try:
    file = open('example.txt', 'r')
except FileNotFoundError:
    print("File not found!")
```

## Different Modes for File Handling in Python  

In Python, there are several modes for file handling including:

- **Read mode ('r')**: This mode is used to read an existing file. 

- **Write mode ('w')**: This mode is used to write to a file. It will create a new file if the file does not exist, and overwrite the file if it does exist.

- **Append mode ('a')**: This mode is used to add new data to the end of an existing file (append to a file). If the file does not exist, a new file will be created.

- **Binary mode ('b')**: This mode is used to read or write binary data, like images or audio files.

Here are two examples of how to use the read and write modes in Python:

```python
### Example 1
# Open a file in write mode
file = open('example.txt', 'w')

# Write to the file
file.write('Hello, World!')

# Close the file
file.close()
```

In this example, we first open a file named `example.txt` in write mode. We write the string `'Hello, World!'` to the file and then close it.

```python
### Example 2
# Open a file in read mode
file = open('example.txt', 'r')

# Read the file contents
content = file.read()

# Print the contents
print(content)

# Close the file
file.close()
```

In this example, we open the same file, `example.txt`, but this time in read mode. We read the contents of the file using the `read()` method, save it to a variable named `content`, and then print the contents to the console. Finally, we `close()` the file.

## File operations  

Python provides important modules like `os` and `shutil` to perform file operations such as deleting, renaming, copying, and moving files. 

### Deleting Files in Python

You can use the `os.remove()` method to delete a file in Python. The following code snippet shows how to delete the file named `example.txt`.

```python
import os

os.remove("example.txt")
```

### Renaming Files in Python

You can use the `os.rename()` method to rename a file in Python. The following code snippet shows how to rename the file named `example.txt` to `new_example.txt`.

```python
import os

os.rename("example.txt", "new_example.txt")
```

### Copying Files in Python

You can use the `shutil.copy()` method to copy a file in Python. The following code snippet shows how to copy the file named `example.txt` to a new file named `new_example.txt`.

```python
import shutil

shutil.copy("example.txt", "new_example.txt")
```

### Moving Files in Python

You can use the `shutil.move()` method to move a file in Python. The following code snippet shows how to move the file named `example.txt` to a new location named `new_folder`.

```python
import shutil

shutil.move("example.txt", "/path/to/new_folder/example.txt")
```  
  
## Python File Methods  

When working with files in Python, there are several built-in methods that enable you to read, write, and manipulate file contents. These methods provide flexible options for file handling. Here's a guide to some commonly used Python file methods:

### How to Read a File or File Importing

The `read()` method reads the entire contents of a file and returns them as a string. On the other hand, the `readline()` method reads a single line from the file. It returns the line as a string and moves the file pointer to the next line.

```python

file = open("example.txt", "w")
content = file.read()
line = file.readline()
file.close()
```

### Write to file 

The `write()` method is used to write data to a file. It takes a string as an argument and writes it to the file. Alternatively, the `writelines()` method allows you to write multiple lines to a file by providing a list of strings.

```python

file = open("example.txt", "w")
file.write("Hello, World!")
lines = ["Line 1", "Line 2", "Line 3"]
file.writelines(lines)
file.close()
```

### How to Close a File in Python

The `close()` method is essential for proper file handling. It closes the file and releases any system resources associated with it. It is crucial to close the file after performing operations on it to avoid potential issues.

```python
file = open("example.txt", "w")
# Perform operations on the file
file.close()
```

These are just a few examples of Python file methods that enable you to read, write, and manipulate files. It's important to handle exceptions and close files properly to ensure efficient file management and resource utilization. By utilizing these file methods effectively, you can handle file operations with ease in your Python programs.

## How to Get File Size

To get the size of a file in Python, you can use various methods provided by the Python standard library. Here are two examples that demonstrate how to retrieve the size of a file using different approaches.

### Example 1: Using os.path Module

The `os.path` module provides a convenient method, `getsize()`, to retrieve the size of a file in bytes.

```python
import os

file_path = "example.txt"

try:
    file_size = os.path.getsize(file_path)
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

In this example, we use the `getsize()` function from the `os.path` module to obtain the size of the file specified by `file_path`. If the file is found, the size is printed in bytes. If the file is not found, a `FileNotFoundError` is raised.

### Example 2: Using os.stat() Function

Another way to retrieve the size of a file is by using the `os.stat()` function, which returns a named tuple containing file attributes, including the file size.

```python
import os

file_path = "example.txt"

try:
    file_stats = os.stat(file_path)
    file_size = file_stats.st_size
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

In this example, we call `os.stat()` to obtain the file attributes, including the size, which is accessed using the `st_size` attribute of the returned named tuple.

By using these approaches, you can easily retrieve the size of a file in Python. Remember to handle exceptions, such as `FileNotFoundError`, to account for cases where the file does not exist.
