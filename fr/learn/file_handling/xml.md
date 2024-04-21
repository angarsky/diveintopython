> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/xml

Les fichiers XML en Python permettent la manipulation et l'analyse des données XML. XML ([Extensible Markup Language](https://en.wikipedia.org/wiki/XML)) est un format d'échange de données largement utilisé.

## Ouvrir un fichier XML et lire les données avec Python

Pour lire des données à partir d'un fichier XML avec Python, vous pouvez utiliser le module analyseur XML intégré. Dans cette partie, nous apprendrons à analyser les données XML en Python en explorant les bibliothèques Python populaires.

Les bibliothèques les plus couramment utilisées pour analyser les fichiers XML sont [lxml](https://pypi.org/project/lxml/) et `ElementTree`.

### Utiliser la bibliothèque lxml

La bibliothèque `lxml` est un lecteur de fichiers XML populaire, elle est assez efficace pour l'analyse des données XML. Vous pouvez installer la bibliothèque `lxml` en utilisant la commande `pip`.

```python
from lxml import etree

root = etree.parse('file.xml')
for elem in root.iter():
    print(elem.tag, elem.text)
```

### Utilisation d'ElementTree

ElementTree est une bibliothèque intégrée qui permet d'analyser les fichiers XML. Avec ElementTree, viennent des modules intégrés qui permettent l'analyse et la création d'éléments. Pour utiliser la bibliothèque ElementTree, vous devez l'`importer`.

Voici un exemple de comment vous pouvez analyser un fichier XML en utilisant `ElementTree`:

```python
import xml.etree.ElementTree as ET

tree = ET.parse('file.xml')
root = tree.getroot()

for elem in root:
    print(elem.tag, elem.text)
```

En utilisant l'une ou l'autre de ces méthodes, vous pouvez lire les fichiers XML efficacement.

## Comment Écrire en XML

Pour écrire en XML en Python, vous pouvez utiliser la bibliothèque ElementTree XML API. Voici deux exemples de code pour démontrer comment créer et écrire en XML :

### Exemple 1 : Création et écriture en XML en Python

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

### Exemple 2 : Création et écriture de XML avec des attributs

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

Dans les deux exemples, la classe `ElementTree()` est utilisée pour créer un `tree` d'élément XML. La méthode `write()` est ensuite utilisée pour écrire le `tree` d'élément dans un fichier XML. En spécifiant `encoding` et xml_declaration dans le deuxième exemple, un fichier XML formaté personnalisé est créé avec une déclaration XML en haut.

## Comment Convertir XML en JSON

Convertir XML en JSON est une tâche courante qui peut être réalisée facilement.

Le module [xmltodict](https://pypi.org/project/xmltodict/) nous permet de convertir un document XML en dictionnaire, qui peut ensuite être facilement converti en JSON à l'aide du module intégré `json`. Voici un exemple de code qui démontre comment utiliser cette approche :

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

Le module `xml.etree.ElementTree` nous permet de parser le document XML et de créer un objet Element, qui peut être parcouru pour obtenir les données requises. Une fois que nous avons les données sous forme de dictionnaire, nous pouvons utiliser le module `json` pour les convertir en JSON. Voici un exemple de segment de code qui démontre comment utiliser cette approche :

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

## Comment Convertir XML en CSV

Pour convertir XML en CSV, vous pouvez utiliser le module `xml.etree.ElementTree` et le module [csv](https://docs.python.org/3/library/csv.html). Voici deux exemples de code pour vous aider à démarrer :

### Exemple 1 : Utilisation des modules ElementTree et CSV

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

### Exemple 2 : Utilisation de pandas

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

Dans ces deux exemples, le module `xml.etree.ElementTree` est utilisé pour analyser le fichier XML et extraire les données. Le module `csv` (dans l'Exemple 1) ou la bibliothèque [pandas](https://pypi.org/project/pandas/) (dans l'Exemple 2) est utilisé pour écrire les données dans un fichier CSV.
