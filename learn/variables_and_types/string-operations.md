Previously we've touched the topic of operations with variables. In this part we will dive into operations and methods with strings. This is not the whole list of possible string manipulations.


## String Indices

In Python, a string is a sequence of characters and each character in the string has a unique index number starting from 0 to n-1, where n is the length of the string, so you can access individual characters of a string using indexing.

You can access a specific character in a string by referring to its index using square brackets []. For example, if you have a string `str = "Hello, World!"`, you can access the first character `"H"` by using `str[0]`, the second character `"e"` by using `str[1]`, and so on.

Here's an example:

```python
str = "Hello, World!"
print(str[0])   # Output: "H"
print(str[7])   # Output: "W"
```

## The `join()` Method

This method allows you to join elements of an iterable (such as a list, tuple, or string) into a single string using a separator string.

The syntax for using the `join()` method is as follows:

```python
separator_string.join(iterable)
```

Here, `separator_string` is the string that you want to use to separate the elements in the iterable, and `iterable` is the sequence of elements that you want to join.

For example, if you have a list of strings and you want to join them into a single string separated by commas, you could use the following code:

```python
my_list = ['mango', 'pineapple', 'banana']
separator = ', '
result = separator.join(my_list)
print(result)  # Output: "mango, pineapple, banana"
```

In this example, the `join()` method is called on the separator string, with the `my_list` list as the iterable argument. The resulting string is assigned to the result variable and printed to the console.

Note that the `join()` method can also be used with other types of iterables, such as tuples or sets. Additionally, you can use an empty string as the separator if you want to join the elements without any separation.

## Reading file into string

To read a file into a string in Python, you can use the built-in `open()` function to open the file and read its contents using the `read()` method. Here is an example:

```python
with open('filename.txt', 'r') as file:
    data = file.read()
```

In this example, replace `'filename.txt'` with the name of the file you want to read. The `'r'` argument specifies that the file should be opened in read mode.

The `with` statement is used to ensure that the file is closed automatically when the block inside the `with` statement is exited. This helps to prevent resource leaks.

The contents of the file are then read into the data variable using the `read()` method.

You can then use the data variable as a string in your code.
