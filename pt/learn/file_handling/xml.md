> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/xml

Arquivos XML em Python permitem a manipulação e análise de dados XML. XML ([Extensible Markup Language](https://en.wikipedia.org/wiki/XML)) é um formato de intercâmbio de dados amplamente utilizado.

## Abrir arquivo XML e ler dados com Python

Para ler dados de um arquivo XML com Python, você pode usar o módulo analisador de XML embutido. Nesta parte, aprenderemos como analisar dados XML em Python explorando bibliotecas populares do Python.

As bibliotecas mais comumente usadas para analisar arquivos XML são [lxml](https://pypi.org/project/lxml/) e `ElementTree`.

### Usando a biblioteca lxml

A biblioteca `lxml` é uma leitora de arquivos XML popular, sendo bastante eficiente para analisar dados XML. Você pode instalar a biblioteca `lxml` usando o comando `pip`.

```python
from lxml import etree

root = etree.parse('file.xml')
for elem in root.iter():
    print(elem.tag, elem.text)
```

### Usando ElementTree

ElementTree é uma biblioteca interna que permite analisar arquivos XML. Com ElementTree, vêm módulos integrados que permitem a análise e criação de elementos. Para usar a biblioteca ElementTree, você precisa `import`á-la.

Aqui está um exemplo de como você pode analisar um arquivo XML usando `ElementTree`:

```python
import xml.etree.ElementTree as ET

tree = ET.parse('file.xml')
root = tree.getroot()

for elem in root:
    print(elem.tag, elem.text)
```

Ao usar qualquer um desses métodos, você pode ler arquivos XML de maneira eficiente.

## Como Escrever XML

Para escrever XML em Python, você pode usar a biblioteca ElementTree XML API. Aqui estão dois exemplos de código para demonstrar como criar e escrever XML:

### Exemplo 1: Criando e Escrevendo XML em Python

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

### Exemplo 2: Criando e Escrevendo XML com Atributos

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

Em ambos os exemplos, a classe `ElementTree()` é utilizada para criar um elemento XML `tree`. O método `write()` é então utilizado para escrever o elemento `tree` em um arquivo XML. Especificando `encoding` e xml_declaration no segundo exemplo, um arquivo XML com formato personalizado é criado com uma declaração XML no topo.  
  
## Como converter XML para JSON

Converter XML para JSON é uma tarefa comum que pode ser realizada facilmente.

O módulo [xmltodict](https://pypi.org/project/xmltodict/) nos permite converter um documento XML em um dicionário, que pode então ser facilmente convertido em JSON usando o módulo `json` embutido. Abaixo está um trecho de código de exemplo que demonstra como usar essa abordagem:

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

O módulo `xml.etree.ElementTree` permite-nos analisar o documento XML e criar um objeto Element, que pode ser percorrido para obter os dados necessários. Quando tivermos os dados como um dicionário, podemos usar o módulo `json` para convertê-los em JSON. Aqui está um trecho de código de exemplo que demonstra como usar essa abordagem:

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

## Como Converter XML para CSV

Para converter XML para CSV, você pode usar o módulo `xml.etree.ElementTree` e o módulo [csv](https://docs.python.org/3/library/csv.html). Aqui estão dois exemplos de código para ajudá-lo a começar:

### Exemplo 1: Usando os módulos ElementTree e CSV

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

### Exemplo 2: Usando `pandas`

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

Em ambos os exemplos, o módulo `xml.etree.ElementTree` é usado para analisar o arquivo XML e extrair os dados. O módulo `csv` (no Exemplo 1) ou a biblioteca [pandas](https://pypi.org/project/pandas/) (no Exemplo 2) são usados para escrever os dados em um arquivo CSV.
