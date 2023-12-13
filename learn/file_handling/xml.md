> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/file-handling/xml

XML files in Python allow for the manipulation and parsing of XML data. XML ([Extensible Markup Language](https://en.wikipedia.org/wiki/XML)) is a widely used data interchange format. 
  
## Open XML File and Read Data with Python  

To read data from an XML file with Python, you can use in-built XML parser module. In this part we will learn how to parse XML data in Python by exploring popular Python libraries.

The most commonly used libraries for parsing XML files are [lxml](https://pypi.org/project/lxml/) and `ElementTree`.

### Using lxml library

The `lxml` library is a popular XML files reader, it is quite efficient for parsing XML data. You can install the `lxml` library by using the `pip` command.

```python
from lxml import etree

root = etree.parse('file.xml')
for elem in root.iter():
    print(elem.tag, elem.text)
```

### Using ElementTree

ElementTree is an in-built library that allows to parse XML files. With ElementTree, come built-in modules that allow parsing and creating of elements. To use the ElementTree library, you need to `import` it.

Here's an example of how you can parse an XML file using `ElementTree`:

```python
import xml.etree.ElementTree as ET

tree = ET.parse('file.xml')
root = tree.getroot()

for elem in root:
    print(elem.tag, elem.text)
```

By using either of these methods, you can read XML files efficiently.  
  
## How to Write XML  

To write XML in Python, you can use the ElementTree XML API library. Here are two code examples to demonstrate how to create and write XML:

### Example 1: Creating and Writing XML in Python

```python
import xml.etree.cElementTree as ET

### Create XML element tree

root = ET.Element("Person")
name = ET.SubElement(root, "Name")
name.text = "John"
age = ET.SubElement(root, "Age")
age.text = "30"

### Write XML element tree to file

tree = ET.ElementTree(root)
tree.write("person.xml")
```

### Example 2: Creating and Writing XML with Attributes

```python
import xml.etree.cElementTree as ET

### Create XML element tree with attributes
 
root = ET.Element("Person", {"id": "123"})
name = ET.SubElement(root, "Name")
name.text = "Jane"
age = ET.SubElement(root, "Age")
age.text = "25"

### Write XML element tree to file  with custom formatting

tree = ET.ElementTree(root)
tree.write("person.xml", encoding="utf-8", xml_declaration=True)
```

In both examples, the `ElementTree()` class is used to create an XML element `tree`. The `write()` method is then used to write the element `tree` to an XML file. By specifying `encoding` and xml_declaration in the second example, a custom-formatted XML file is created with an XML declaration at the top.  
  
## How to Convert XML to JSON  

Converting XML to JSON is a common task that can be achieved easily. 

The [xmltodict](https://pypi.org/project/xmltodict/) module allows us to convert an XML document into a dictionary, which can then be easily converted into JSON using the built-in `json` module. Below is an example code snippet that demonstrates how to use this approach:

```python
import xmltodict
import json

# Load XML file
with open('data.xml') as xml_file:
    xml_data = xml_file.read()

# Convert XML to Python dictionary
dict_data = xmltodict.parse(xml_data)

# Convert dictionary to JSON
json_data = json.dumps(dict_data)

# Output JSON data
print(json_data)
```

The `xml.etree.ElementTree` module allows us to parse the XML document and create an Element object, which can be traversed to get the required data. Once we have the data as a dictionary, we can use the `json` module to convert it to JSON. Here is an example code snippet that demonstrates how to use this approach:

```python
import xml.etree.ElementTree as ET
import json

# Load XML file
tree = ET.parse('data.xml')
root = tree.getroot()

# Traverse the Element object to get required data
xml_dict = {}
for child in root:
    xml_dict[child.tag] = child.text

# Convert dictionary to JSON
json_data = json.dumps(xml_dict)

# Output JSON data
print(json_data)
```

## How to Convert XML to CSV   

To convert XML to CSV, you can use the `xml.etree.ElementTree` module and the [csv](https://docs.python.org/3/library/csv.html) module. Here are two code examples to help you get started:

### Example 1: Using ElementTree and CSV modules

```python
import csv
import xml.etree.ElementTree as ET

### Open the XML file

tree = ET.parse('example.xml')
root = tree.getroot()

### Open the CSV file

csv_file = open('example.csv', 'w')
csvwriter = csv.writer(csv_file)

### Write the column headers

header = []
for child in root[0]:
    header.append(child.tag)
csvwriter.writerow(header)

### Write the data rows

for item in root.findall('.//item'):
    row = []
    for child in item:
        row.append(child.text)
    csvwriter.writerow(row)

### Close the CSV file

csv_file.close()
```

### Example 2: Using pandas

```python
import pandas as pd
import xml.etree.ElementTree as ET

### Load the XML file into a dataframe

tree = ET.parse('example.xml')
root = tree.getroot()
dfcols = ['name', 'email', 'phone']
df = pd.DataFrame(columns=dfcols)

for node in root: 
    name = node.find('name').text
    email = node.find('email').text
    phone = node.find('phone').text

    df = df.append(
        pd.Series([name, email, phone], index=dfcols),
        ignore_index=True)

### Save the dataframe to a CSV file

df.to_csv('example.csv', index=False)
```

In both of these examples, the `xml.etree.ElementTree` module is used to parse the XML file and extract the data. The `csv` module (in Example 1) or the [pandas](https://pypi.org/project/pandas/) library (in Example 2) is used to write the data to a CSV file.  
