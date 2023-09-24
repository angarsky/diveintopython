> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/dictionary/convert

In Python, dictionaries are one of the most commonly used data structures, as they allow for fast and efficient lookups of values based on keys. While dictionaries are commonly created manually in Python code, it is often useful to convert data from other formats, such as lists or JSON, into dictionaries. Let's review the examples of conversion

## Dictionary Creation using Variables

Let's look at the example of how to convert variables into a dictionary in Python:

```python
# define variables
name = "John"
age = 25
gender = "male"

# create dictionary
my_dict = {
    "name": name,
    "age": age,
    "gender": gender
}

# print dictionary
print(my_dict)
```

In this example, we define three variables: `name`, `age`, and `gender`. Then, we create a dictionary called `my_dict` and assign each variable to a key in the dictionary. Finally, we print the dictionary to verify that it contains the correct key-value pairs. The output should be:

```python
{'name': 'John', 'age': 25, 'gender': 'male'}
```

## List to Dictionary Conversion

To convert a list to a dictionary in Python, you can use the `dict()` constructor function. The list should contain tuples where each tuple contains a key-value pair. Here is an example:

```python
my_list = [('a', 1), ('b', 2), ('c', 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

In this example, the list `my_list` contains three tuples, each of which represents a key-value pair. The `dict()` constructor function is used to convert the list into a dictionary, and the resulting dictionary is stored in the variable `my_dict`. The output shows the contents of the resulting dictionary.

## String to Dictionary Conversion

You can convert a string to a dictionary in Python using the `json` module, which is built-in to Python.

Here's an example:

```python
import json

# Sample string
string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert string to dictionary
dictionary = json.loads(string)

# Print the dictionary
print(dictionary)
```

Output:

```python
{'name': 'John', 'age': 30, 'city': 'New York'}
```

In this example, the `json.loads()` method is used to convert the string to a dictionary. The resulting dictionary is stored in the `dictionary` variable and then printed.

## Tuple to Dictionary Conversion

In Python, you can convert a tuple to a dictionary using the `dict()` function which we mentioned earlier. Here's an example:

```python
# Define a tuple
my_tuple = ('apple', 'pineapple', 'cherry')

# Convert the tuple to a dictionary
my_dict = dict(zip(range(len(my_tuple)), my_tuple))

# Print the dictionary
print(my_dict)
```

Output:

```python
{0: 'apple', 1: 'pineapple', 2: 'cherry'}
```

In this example, the `zip()` function is used to combine the tuple elements with the indices of each element. Then, the `dict()` function is used to convert the zipped object into a dictionary.
