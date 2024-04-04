> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/xml

Los archivos XML en Python permiten la manipulación y el análisis de datos XML. XML ([Lenguaje de Marcado Extensible](https://en.wikipedia.org/wiki/XML)) es un formato de intercambio de datos ampliamente utilizado.

## Abrir archivo XML y leer datos con Python

Para leer datos de un archivo XML con Python, puedes usar el módulo analizador XML incorporado. En esta parte aprenderemos cómo analizar datos XML en Python explorando librerías populares de Python.

Las librerías más comúnmente usadas para analizar archivos XML son [lxml](https://pypi.org/project/lxml/) y `ElementTree`.

### Usando la librería lxml

La librería `lxml` es un lector popular de archivos XML, es bastante eficiente para analizar datos XML. Puedes instalar la librería `lxml` usando el comando `pip`.

```python
from lxml import etree

root = etree.parse('file.xml')
for elem in root.iter():
    print(elem.tag, elem.text)
```

### Usando ElementTree

ElementTree es una biblioteca integrada que permite parsear archivos XML. Con ElementTree, vienen módulos integrados que permiten el parseo y creación de elementos. Para usar la biblioteca ElementTree, necesitas `importarla`.

Aquí tienes un ejemplo de cómo puedes parsear un archivo XML usando `ElementTree`:

```python
import xml.etree.ElementTree as ET

tree = ET.parse('file.xml')
root = tree.getroot()

for elem in root:
    print(elem.tag, elem.text)
```

Al utilizar cualquiera de estos métodos, puedes leer archivos XML de manera eficiente.

## Cómo escribir XML

Para escribir XML en Python, puedes utilizar la biblioteca ElementTree XML API. Aquí hay dos ejemplos de código para demostrar cómo crear y escribir XML:

### Ejemplo 1: Creando y escribiendo XML en Python

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

### Ejemplo 2: Creando y Escribiendo XML con Atributos

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

En ambos ejemplos, se utiliza la clase `ElementTree()` para crear un elemento XML `árbol`. A continuación, se utiliza el método `write()` para escribir el elemento `tree` en un archivo XML. Especificando `encoding` y xml_declaration en el segundo ejemplo, se crea un archivo XML con un formato personalizado y una declaración XML en la parte superior.  
  
## Cómo convertir XML a JSON

Convertir XML a JSON es una tarea común que se puede lograr fácilmente.

El módulo [xmltodict](https://pypi.org/project/xmltodict/) nos permite convertir un documento XML en un diccionario, que luego puede convertirse fácilmente en JSON utilizando el módulo `json` incorporado. A continuación se muestra un fragmento de código de ejemplo que demuestra cómo utilizar este enfoque:

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

El módulo `xml.etree.ElementTree` nos permite analizar el documento XML y crear un objeto Element, que puede ser recorrido para obtener los datos requeridos. Una vez que tenemos los datos en forma de diccionario, podemos utilizar el módulo `json` para convertirlos a JSON. A continuación se muestra un fragmento de código de ejemplo que demuestra cómo utilizar este enfoque:

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

## Cómo convertir XML a CSV

Para convertir XML a CSV, puedes usar el módulo `xml.etree.ElementTree` y el módulo [csv](https://docs.python.org/3/library/csv.html). Aquí tienes dos ejemplos de código para ayudarte a comenzar:

### Ejemplo 1: Usando los módulos ElementTree y CSV

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

### Ejemplo 2: Usando `pandas`

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

En ambos ejemplos, el módulo `xml.etree.ElementTree` se utiliza para analizar el archivo XML y extraer los datos. El módulo `csv` (en el Ejemplo 1) o la biblioteca [pandas](https://pypi.org/project/pandas/) (en el Ejemplo 2) se utilizan para escribir los datos en un archivo CSV.
