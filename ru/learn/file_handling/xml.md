> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/xml

Файлы XML в Python позволяют манипулировать и анализировать данные XML. XML ([Расширяемый язык разметки](https://en.wikipedia.org/wiki/XML)) широко используется в качестве формата обмена данными.
  
## Открыть Файл Xml и Прочитать Данные с Помощью Python

Чтобы прочитать данные из файла XML с помощью Python, можно использовать встроенный модуль парсера XML. В этой части мы научимся анализировать данные XML в Python, изучая популярные библиотеки Python.

Наиболее часто используемые библиотеки для анализа файлов XML - это [lxml](https://pypi.org/project/lxml/) и `ElementTree`.

### Использование Библиотеки Lxml

Библиотека `lxml` является популярным средством чтения файлов XML, она достаточно эффективна для анализа данных XML. Установить библиотеку `lxml` можно с помощью команды `pip`.

```python
from lxml import etree

root = etree.parse('file.xml')
for elem in root.iter():
    print(elem.tag, elem.text)
```

### Использование Elementtree

ElementTree - это встроенная библиотека, которая позволяет анализировать XML-файлы. В ElementTree входят встроенные модули, позволяющие анализировать и создавать элементы. Чтобы использовать библиотеку ElementTree, вам нужно её `import`.

Вот пример того, как вы можете анализировать XML-файл, используя `ElementTree`:

```python
import xml.etree.ElementTree as ET

tree = ET.parse('file.xml')
root = tree.getroot()

for elem in root:
    print(elem.tag, elem.text)
```

Используя любой из этих методов, вы можете эффективно читать XML файлы.

## Как Написать Xml

Чтобы написать XML на Python, вы можете использовать библиотеку XML API ElementTree. Вот два примера кода, которые демонстрируют, как создать и записать XML:

### Пример 1: Создание и Запись Xml на Python

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

### Пример 2: Создание и Запись Xml с Атрибутами

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

## Как Конвертировать Xml в Csv

Чтобы конвертировать XML в CSV, вы можете использовать модуль `xml.etree.ElementTree` и модуль [csv](https://docs.python.org/3/library/csv.html). Вот два примера кода, чтобы помочь вам начать:

### Пример 1: Использование Модулей Elementtree и Csv

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

### Пример 2: Использование `pandas`

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

В обоих этих примерах модуль `xml.etree.ElementTree` используется для разбора XML-файла и извлечения данных. Модуль `csv` (в Примере 1) или библиотека [pandas](https://pypi.org/project/pandas/) (в Примере 2) используются для записи данных в файл CSV.
