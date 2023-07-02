To read a file into a string in Python, you can use the built-in `open()` function to open the file and read its contents using the `read()` method. 

## Example of Code to Read a Text File

```python
with open('filename.txt', 'r') as file:
    data = file.read()
```

In this example, replace `'filename.txt'` with the name of the file you want to read. The `'r'` argument specifies that the file should be opened in read mode.

The `with` statement is used to ensure that the file is closed automatically when the block inside the `with` statement is exited. This helps to prevent resource leaks.

The contents of the file are then read into the data variable using the `read()` method.

You can then use the data variable as a string in your code.
