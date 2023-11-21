> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/file-handling/json

JSON files have gained immense popularity due to their seamless compatibility with web-based systems. JSON, short for [JavaScript Object Notation](https://en.wikipedia.org/wiki/JSON), serves as a lightweight format for data exchange, making it a favored choice for web applications. Python, equipped with robust tools, stands as an excellent platform for handling JSON files. This article aims to delve into reading, manipulating JSON files, and their practical applications using Python.  
  
## Importing JSON Module

To initiate operations with JSON files in Python, one must first import the `json` module. This module equips Python with functionalities specifically tailored for handling JSON data.

Example of importing the JSON Module:

```python
import json
```

## How to Read JSON File in Python

Reading JSON files in Python involves using the load() function from the json module. By employing this function, Python can effortlessly read and load JSON data from a file into its program.

Example: Reading a JSON File

python
Copy code
with open('data.json') as file:
    data = json.load(file)
    print(data)


## Functions of JSON Module

The `json` module in Python offers various functions to handle JSON data efficiently.

- **json.load()**: This function loads JSON data from a file-like object and converts it into a Python object.
- **json.loads()**: json.loads() is used to parse a JSON string and convert it into a Python object.
- **json.dump()**: The json.dump() function writes Python data into a JSON file.
- **json.dumps()**: json.dumps() is used to convert a Python object (like a dictionary) into a JSON formatted string.

## How to Load JSON from File in Python Using `json.load()`

The `json.load()` function facilitates the loading of JSON data from a file into a Python object. It directly translates JSON-formatted data from a file into a compatible Python data structure, enabling easy access and manipulation.

Example - Loading JSON Data:

```python
import json

# Reading JSON data from a file and loading it into Python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

## Parsing JSON Strings with `json.loads()`

`json.loads()` parses a JSON-formatted string and converts it into a Python object. This function accepts a JSON string as input and generates the corresponding Python data structure, facilitating seamless data extraction and manipulation.

Example - Parsing JSON String:

```python
import json

# Parsing a JSON string into a Python object
json_string = '{"name": "John", "age": 30, "city": "New York"}'
parsed_data = json.loads(json_string)
print(parsed_data)
```

## Writing JSON Files using `json.dump()`

The `json.dump()` function writes Python data into a JSON file. It takes a Python object and directly writes it to a specified file in JSON format, suitable for storage or transmission.

Example - Writing to a JSON File:

```python
import json

# Writing Python data to a JSON file
data = {"name": "John", "age": 30, "city": "New York"}
with open('output.json', 'w') as file:
    json.dump(data, file)
```

## Converting Python Objects to JSON Strings with `json.dumps()`

`json.dumps()` converts a Python object (like a dictionary or list) into a JSON-formatted string. This function accepts a Python object as input and returns a JSON string representing the object, allowing efficient data interchange and serialization.

Example - Converting Python Object to JSON String:

```python
import json

# Converting a Python object to a JSON-formatted string
data = {'name': 'John', 'age': 30, 'city': 'New York'}
json_string = json.dumps(data)
print(json_string)
```

## Python Objects and Equivalent JSON Representations

The table illustrates the mapping between Python data types and their corresponding representations in JSON format. When converting Python objects to JSON, dictionaries and lists map directly to JSON objects and arrays, respectively. Similarly, other Python data types like strings, integers, floats, boolean values, and None map to their respective JSON equivalents.

| Python Object  | Equivalent JSON Representation |
| ------------- | ------------- |
| Dictionary | Object  |
| List  | Array  |
| Tuple  | Array  |
| String  | String  |
| Integer  | Number  |
| Float  | Number  |
| True  | true  |
| False  | false  |
| None  | null  |

## How to Write a JSON Pretty Object to a File  

To print JSON in a more readable and organized format, you need to use the `pretty_print` flag. This flag will format the JSON by adding indentation, line breaks, and spaces between the elements. Below are two ways to write JSON pretty to a file.

```python
import json

data = {'name': 'John', 'age': 30, 'city': 'New York'}

with open('data.json', 'w') as file:
    json.dump(data, file, indent=4, sort_keys=True)
```

In this example, we have used the `json.dump()` method to convert the dictionary object `data` to JSON and saved it to a file `data.json`. We have set the `indent` parameter to 4 to add indentation, and `sort_keys` parameter to True to sort the keys alphabetically.
  
## Common Errors with JSON Files

When working with JSON files in Python, you may encounter common errors that can affect the loading, parsing, and processing of JSON data. One such error is the `ValueError: Extra data error`. This error occurs when there is additional data present in the JSON file that is not compatible with the expected JSON structure.

### Example 1: A Loading of JSON with Extra Data

```python
import json

data = '{"name": "John", "age": 25} {"name": "Alice", "age": 30}'

try:
    json_data = json.loads(data)
    print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

In this example, the `data` variable contains two JSON objects separated by a space. When we try to load this data using `json.loads()`, it raises a `ValueError` with the message `Extra data` because multiple JSON objects are not valid in a single JSON file.

### Example 2: Read a JSON File with Extra Data

```python
import json

try:
    with open("data.json", "r") as file:
        json_data = json.load(file)
        print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

In this example, we are reading JSON data from a file called `data.json`. If the file contains extra data that does not conform to the expected JSON structure, the `json.load()` method will raise a `ValueError`.

To handle the `ValueError: Extra data error`, you can catch the exception using a try-except block, as shown in the examples. This allows you to gracefully handle the error and provide appropriate feedback or take alternative actions.

When encountering this error, it's important to carefully examine the JSON file to ensure its validity. Verify that the JSON structure is correct and there are no additional or unexpected data present.
