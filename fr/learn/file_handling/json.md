> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/json

Les fichiers JSON ont gagné une immense popularité en raison de leur compatibilité transparente avec les systèmes basés sur le web. JSON, abréviation de [JavaScript Object Notation](https://en.wikipedia.org/wiki/JSON), sert de format léger pour l'échange de données, ce qui en fait un choix privilégié pour les applications web. Python, équipé d'outils robustes, se présente comme une excellente plateforme pour manipuler les fichiers JSON. Cet article vise à explorer la lecture, la manipulation des fichiers JSON, et leurs applications pratiques en utilisant Python. Comprendre comment utiliser JSON en Python est crucial pour le développement web moderne, l'analyse de données, et l'intégration de systèmes.

## Importation du module JSON

Python offre des instruments flexibles qui permettent de travailler avec JSON.
Pour initier les opérations avec les fichiers JSON en Python, il faut d'abord importer le module `json`. Ce module dote Python de fonctionnalités spécifiquement adaptées pour la manipulation des données JSON.

Exemple d'importation du module JSON :

```python
import json
```

Cette fonction est utilisée pour importer des fichiers JSON dans l'environnement Python pour un traitement et une manipulation ultérieurs.

## Comment lire un fichier JSON en Python

La lecture de fichiers JSON en Python implique l'utilisation de la fonction `load()` du module json. En employant cette fonction, Python peut lire et charger sans effort les données JSON d'un fichier dans son programme.

Exemple de lecture d'un fichier JSON :

```python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

Cet exemple montre comment ouvrir un fichier JSON en Python et travailler avec.

## Fonctions du Module JSON

Le module `json` en Python offre diverses fonctions pour gérer efficacement les données JSON.

- **json.load()** : Cette fonction charge les données JSON à partir d'un objet de type fichier et les convertit en un objet Python. Cette fonction est particulièrement utile lorsque vous avez besoin d'analyser un fichier JSON en Python et de le manipuler au sein de votre programme
- **json.loads()** : json.loads() est utilisé pour analyser une chaîne JSON et la convertir en un objet Python.
- **json.dump()** : La fonction json.dump() écrit des données Python dans un fichier JSON.
- **json.dumps()** : json.dumps() est utilisé pour convertir un objet Python (comme un dictionnaire) en une chaîne formatée en JSON.

## Comment Charger du JSON depuis un Fichier en Python Utilisant `json.load()`

La fonction `json.load()` facilite le chargement de données JSON à partir d'un fichier dans un objet Python. Elle traduit directement les données formatées en JSON d'un fichier vers une structure de données Python compatible, permettant un accès et une manipulation faciles.

Exemple - comment charger un fichier JSON en Python :

```python
import json

# Reading JSON data from a file and loading it into Python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

## Analyse de chaînes JSON avec `json.loads()`

`json.loads()` analyse une chaîne formatée en JSON et la convertit en un objet Python. Cette fonction accepte une chaîne JSON en entrée et génère la structure de données Python correspondante, facilitant ainsi l'extraction et la manipulation des données sans heurts.

Exemple - comment analyser une chaîne JSON en Python :

```python
import json

# Parsing a JSON string into a Python object
json_string = '{"name": "John", "age": 30, "city": "New York"}'
parsed_data = json.loads(json_string)
print(parsed_data)
```

## Comment écrire dans JSON en Python en utilisant `json.dump()`

La fonction `json.dump()` écrit des données Python dans un fichier JSON. Elle prend un objet Python et l'écrit directement dans un fichier spécifié au format JSON, ce qui convient pour le stockage ou la transmission.

Exemple d'écriture dans un fichier JSON :

```python
import json

# Writing Python data to a JSON file
data = {"name": "John", "age": 30, "city": "New York"}
with open('output.json', 'w') as file:
    json.dump(data, file)
```

## Convertir des objets Python en chaînes JSON avec `json.dumps()`

`json.dumps()` convertit un objet Python (comme un dictionnaire ou une liste) en une chaîne formatée JSON. Cette fonction accepte un objet Python en entrée et retourne une chaîne JSON représentant l'objet, permettant ainsi un échange de données efficace et une sérialisation.

Exemple de conversion d'objet Python en chaîne JSON :

```python
import json

# Converting a Python object to a JSON-formatted string
data = {'name': 'John', 'age': 30, 'city': 'New York'}
json_string = json.dumps(data)
print(json_string)
```

## Objets Python et équivalents de représentations JSON

Le tableau illustre la correspondance entre les types de données Python et leurs représentations correspondantes en format JSON. Lors de la conversion d'objets Python en JSON, les dictionnaires et les listes se mappent directement aux objets et aux tableaux JSON, respectivement. De même, d'autres types de données Python comme les chaînes de caractères, les entiers, les flottants, les valeurs booléennes et None se mappent à leurs équivalents JSON respectifs.

| Objet Python  | Représentation JSON Équivalente |
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

## Comment écrire un objet JSON joli dans un fichier

Pour imprimer JSON dans un format plus lisible et organisé, vous devez utiliser le drapeau `pretty_print`. Ce drapeau formatera le JSON en ajoutant des indentations, des sauts de ligne et des espaces entre les éléments. Ci-dessous, deux manières d'écrire joliment JSON dans un fichier.

```python
import json

data = {'name': 'John', 'age': 30, 'city': 'New York'}

with open('data.json', 'w') as file:
    json.dump(data, file, indent=4, sort_keys=True)
```

Dans cet exemple, nous avons utilisé la méthode `json.dump()` pour convertir l'objet dictionnaire `data` en JSON et l'avons enregistré dans un fichier `data.json`. Nous avons réglé le paramètre `indent` sur 4 pour ajouter de l'indentation, et le paramètre `sort_keys` sur True pour trier les clés alphabétiquement.

## Erreurs courantes avec les fichiers JSON

Lors du travail avec des fichiers JSON en Python, vous pouvez rencontrer des erreurs courantes qui peuvent affecter le chargement, l'analyse et le traitement des données JSON. Une telle erreur est l'`ValueError: Extra data error`. Cette erreur se produit lorsqu'il y a des données supplémentaires présentes dans le fichier JSON qui ne sont pas compatibles avec la structure JSON attendue.

Premier exemple - un chargement de JSON avec des données supplémentaires :

```python
import json

data = '{"name": "John", "age": 25} {"name": "Alice", "age": 30}'

try:
    json_data = json.loads(data)
    print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

Dans cet exemple, la variable `data` contient deux objets JSON séparés par un espace. Lorsque nous essayons de charger ces données en utilisant `json.loads()`, cela provoque une `ValueError` avec le message `Extra data` car plusieurs objets JSON ne sont pas valides dans un seul fichier JSON.

Deuxième exemple de lecture d'un fichier JSON avec des données supplémentaires :

```python
import json

try:
    with open("data.json", "r") as file:
        json_data = json.load(file)
        print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

Dans cet exemple, nous lisons des données JSON à partir d'un fichier appelé `data.json`. Si le fichier contient des données supplémentaires qui ne correspondent pas à la structure JSON attendue, la méthode `json.load()` lèvera une `ValueError`.

Pour gérer l'`ValueError: Extra data error`, vous pouvez attraper l'exception en utilisant un bloc try-except, comme montré dans les exemples. Cela vous permet de gérer l'erreur de manière élégante et de fournir un retour approprié ou de prendre des actions alternatives.

Lorsque vous rencontrez cette erreur, il est important d'examiner attentivement le fichier JSON pour en assurer la validité. Vérifiez que la structure JSON est correcte et qu'il n'y a pas de données supplémentaires ou inattendues présentes.
