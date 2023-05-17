[Binary files](https://en.wikipedia.org/wiki/Binary_file) are computer files that contain data in a format that can be easily read and manipulated by machines. Binary files are important because they allow programmers to work with data in a way that is both efficient and secure. This article will discuss the basics of binary files in Python, how to read and write them, and some common use cases where they are most beneficial.  
  
## How to Read Binary File  

In Python, we can use the `open()` function to open a binary file and read the contents.

```python
### Code Example 1
# Open the binary file in read mode
file = open("example.bin", "rb")

# Read the contents of the file and store it in a variable
binary_data = file.read()

# Close the file
file.close()

# Print the contents of the file
print(binary_data)
```

In the code above:

- We open the binary file ``example.bin`` using the `open()` function, with the mode ``rb`` (read binary).
- We read the contents of the file using the `.read()` method and store it in the variable `binary_data`.
- We close the file using the `.close()` method.
- We print the contents of the file using the `print()` function.

```python
### Code Example 2
# Open the binary file in read mode using `with` statement
with open("example.bin", "rb") as file:
    binary_data = file.read()

# Print the contents of the file
print(binary_data)
```

In the code above:

- We open the binary file ``example.bin`` using the `open()` function and the mode ``rb`` (read binary) using `with` statement.
- We read the contents of the file using the `.read()` method and store it in the variable `binary_data`.
- We print the contents of the file using the `print()` function.

Using the `with` statement to open a file ensures that the file is closed automatically after reading its contents.  
  
## How to Write Binary File

To write a binary file, you need to use the built-in `open()` function with a mode parameter of `wb`. This will open the file in binary mode, allowing you to write binary data to it. Here are the steps to write a binary file:

1. Open the file in binary mode using the `open()` function with a mode parameter of `wb`.
2. Write the binary data to the file using the `write()` method of the file object.
3. Close the file using the `close()` method of the file object.

```python
##### Open file in binary mode

with open('binaryfile.bin', 'wb') as file:
    ##### Write binary data to file

    file.write(b'\x00\x01\x02\x03\x04\x05')
```

```python
##### Open file in binary mode

file = open('binaryfile.bin', 'wb')
try:
    ##### Write binary data to file

    file.write(b'\x00\x01\x02\x03\x04\x05')
finally:
    ### Close the file

    file.close()
```

In conclusion, writing binary files is a simple process that involves opening the file in binary mode and writing binary data to it using the `write()` method of the file object.  
  
## File Modes for Binary Files  

When working with binary files, you need to open them in the correct file mode to ensure the file is being read and/or written correctly. There are six file modes for binary files:

1. `rb`: Read mode (binary) - opens the file for reading in binary format.
2. `rb+`: Read and write mode (binary) - opens the file for reading and writing in binary format.
3. `wb`: Write mode (binary) - opens the file for writing in binary format. If the file already exists, it will be truncated.
4. `wb+`: Write and read mode (binary) - opens the file for reading and writing in binary format. If the file already exists, it will be truncated.
5. `ab`: Append mode (binary) - opens the file for writing in binary format. New data will be written at the end of the file.
6. `ab+`: Append and read mode (binary) - opens the file for reading and writing in binary format. New data will be written at the end of the file.

```python
with open("file.bin", "rb") as f:
    data = f.read()
    print(data)
```
This code opens a binary file named `file.bin` in read mode using the `with` statement. The `rb` mode ensures the file is read in binary format. The `read()` method is used to read the entire file and the content is then printed out to the console.

```python
with open("file.bin", "wb") as f:
    data = b"\x48\x65\x6c\x6c\x6f" # Hello in binary
    f.write(data)
```
This code creates a binary file named `file.bin` in write mode using the `with` statement. The `wb` mode ensures the file is written in binary format. The `b` prefix before the string literal indicates that the string is in binary format. The `write()` method is used to write binary data to the file. This code writes the binary data for the string `Hello` to the file.  
