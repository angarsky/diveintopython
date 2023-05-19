JSON files have become increasingly popular in recent years due to their compatibility with web-based systems. JSON, or [JavaScript Object Notation](https://en.wikipedia.org/wiki/JSON), is a lightweight format for data exchange, making it a popular choice for web applications. Python has powerful tools for working with JSON files. In this article, we will explore how to read and manipulate JSON files, and how to use JSON files in practical applications.  
  
## Use JSON with Python   

To read, parse, and write JSON files, you can use Python's built-in `json` module. Here are some examples:

### Reading JSON file

To read a JSON file, you can use the `load()` function from the `json` module. Here's an example that reads a JSON file called `data.json`:

```python
import json

with open('data.json') as f:
    data = json.load(f)

print(data)
```

### Parsing JSON

If you have a JSON string and want to parse json in Python, you can use the `loads()` function from the `json` module. Here's an example:

```python
import json

json_string = '{"name": "John", "age": 30, "city": "New York"}'
data = json.loads(json_string)

print(data)
```

### Writing JSON to file

To write JSON data to a file, you can use the `json.dump()` function from the `json` module. Here's an example:

```python
import json

data = {"name": "John", "age": 30, "city": "New York"}

with open('data.json', 'w') as f:
    json.dump(data, f)
```  
  
## How to Load JSON File  

JSON format is a widely used standard for data exchange. Python provides a built-in module called `json` to work with JSON data.

The `json.loads()` method is used to load JSON data from a string. We can use this method to load JSON data from a file by first reading the file contents into a string and then using `json.loads()` like this:

```python
import json

# Read the file contents into a string
with open('file.json') as f:
    json_str = f.read()

# Load the data from the string
data = json.loads(json_str)

# Access the data
print(data)
```

In the above code, we first read the contents of the JSON file `file.json` into the `json_str` variable using `f.read()`. We then loaded the JSON data from the string using `json.loads(json_str)`. The JSON data is now stored in the `data` variable, which we can access as needed.

## How to Write JSON Pretty to File  

To print JSON in a more readable and organized format, you need to use the `pretty_print` flag. This flag will format the JSON by adding indentation, line breaks, and spaces between the elements. Below are two ways to write JSON pretty to a file.

```python
import json

data = {'name': 'John', 'age': 30, 'city': 'New York'}

with open('data.json', 'w') as file:
    json.dump(data, file, indent=4, sort_keys=True)
```

In this example, we have used the `json.dump()` method to convert the dictionary object `data` to JSON and saved it to a file `data.json`. We have set the `indent` parameter to 4 to add indentation, and `sort_keys` parameter to True to sort the keys alphabetically.
  
## Common Errors Working with JSON Files

When working with JSON files in Python, you may encounter common errors that can affect the loading, parsing, and processing of JSON data. One such error is the `ValueError: Extra data error`. This error occurs when there is additional data present in the JSON file that is not compatible with the expected JSON structure.

### Example 1: Loading JSON with Extra Data

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

### Example 2: Reading JSON from a File with Extra Data

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

