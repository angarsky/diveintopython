> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/csv

Les fichiers CSV (Comma Separated Values) sont l'un des formats de données les plus courants utilisés dans la science des données, l'apprentissage automatique et l'analytique. Python est un langage de programmation puissant qui fournit plusieurs outils et bibliothèques pour travailler avec des fichiers [CSV](https://en.wikipedia.org/wiki/Comma-separated_values). Dans cet article, nous explorerons les bases du travail avec les fichiers CSV en Python, y compris la lecture, l'écriture et la manipulation des données. Nous aborderons également quelques sujets avancés, tels que la gestion des grands fichiers CSV, la gestion des données manquantes et l'exécution d'opérations sur les données CSV en utilisant les bibliothèques NumPy et Pandas.

## Ouvrir un fichier CSV et lire les données avec Python

Pour ouvrir et lire un fichier CSV en Python, vous pouvez utiliser le module intégré [csv](https://docs.python.org/3/library/csv.html).

```python
import csv

with open('example.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)
```

Dans cet exemple, nous utilisons la fonction `csv.reader()` pour lire le contenu du fichier CSV nommé `example.csv`. Nous parcourons ensuite les lignes du fichier à l'aide d'une boucle `for` et nous `print` chaque `row` à la console.

```python
import csv

with open('example.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Name', 'Age', 'Gender'])
    writer.writerow(['John', '25', 'Male'])
    writer.writerow(['Jane', '30', 'Female'])
```

Dans cet exemple, nous utilisons la fonction `csv.writer()` pour écrire des `data` dans un fichier CSV nommé `example.csv`. Nous créons un nouveau fichier avec le mode `w` et spécifions `newline=''` pour éviter les sauts de ligne supplémentaires. Nous utilisons ensuite la fonction `writerow()` pour écrire chaque `row` de `data` dans le fichier.

En utilisant ces exemples de code, vous pouvez facilement fournir une **lecture CSV** ou un **chargement CSV**.

## Comment sauvegarder dans un fichier CSV en Python

Sauvegarder des données dans un fichier CSV est une tâche commune en Python. Les fichiers CSV sont faciles à lire et peuvent être facilement ouverts dans n'importe quel logiciel de tableur. En Python, nous pouvons utiliser le module `csv` pour écrire dans un fichier CSV. Voici quelques exemples sur comment sauvegarder dans un fichier CSV en Python.

Cet exemple démontre comment écrire une simple liste de valeurs dans un fichier CSV.

```python
import csv

# Example data
data = [['Name', 'Age', 'Gender'], ['Alice', '25', 'Female'], ['Bob', '30', 'Male'], ['Charlie', '35', 'Male']]

# Open csv file in write mode
with open('example.csv', mode='w') as file:
    writer = csv.writer(file)
    # Write data to csv file
    writer.writerows(data)
```

Dans le code ci-dessus :

1. Nous `importons` le module `csv`.
2. Nous créons une liste simple de valeurs appelée `data`.
3. Nous ouvrons le fichier CSV en mode écriture en utilisant la fonction `open()` et spécifions le `mode` comme `'w'`.
4. Nous créons un objet `csv.writer` et passons l'objet fichier au writer.
5. Nous utilisons la méthode `writerows()` pour écrire les données dans le fichier CSV.

Cet exemple montre comment écrire un dictionnaire de valeurs dans un fichier CSV.

```python
import csv

# Example data
data = [{'Name': 'Alice', 'Age': '25', 'Gender': 'Female'},
        {'Name': 'Bob', 'Age': '30', 'Gender': 'Male'},
        {'Name': 'Charlie', 'Age': '35', 'Gender': 'Male'}]

# Open csv file in write mode
with open('example.csv', mode='w', newline='') as file:
    fieldnames = ['Name', 'Age', 'Gender']
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    # Write data to csv file
    for item in data:
        writer.writerow(item)
```

Dans le code ci-dessus :

1. Nous `importons` le module `csv`.
2. Nous créons une liste de dictionnaires appelée `data`.
3. Nous ouvrons le fichier CSV en mode écriture en utilisant la fonction `open()` et spécifions le `mode` comme `'w'`. Nous définissons également `newline` à `''` pour éviter que des lignes vides ne soient insérées entre chaque ligne.
4. Nous créons un objet `csv.DictWriter` et passons l'objet fichier au `writer`. Nous fournissons également les `fieldnames` sous forme de liste.
5. Nous utilisons la méthode `writeheader()` pour écrire les `fieldnames` dans le fichier CSV.
6. Nous utilisons la méthode `writerow()` pour écrire chaque `row` de données dans le fichier CSV.

En utilisant le module `csv` en Python, vous pouvez facilement enregistrer vos données dans un fichier CSV. Ces exemples peuvent être modifiés pour répondre à vos besoins spécifiques.

## Comment Convertir JSON en CSV avec Python

Convertir des `data` [json](https://docs.python.org/3/library/json.html) en format CSV est une tâche courante dans le traitement des `data`. Python offre une manière simple et efficace de convertir des `data` JSON en format CSV en utilisant des modules intégrés tels que `json` et `csv`.

### Utilisant les modules JSON et CSV

```python
import json
import csv

# Load JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Open CSV file for writing
with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)

    # Write header row
    writer.writerow(data[0].keys())

    # Write data rows
    for item in data:
        writer.writerow(item.values())
```

### Utilisation de la bibliothèque Pandas

```python
import pandas as pd

# Load JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Convert to dataframe
df = pd.DataFrame(data)

# Write to CSV file
df.to_csv('data.csv', index=False)
```

Dans ces deux exemples, nous chargeons les données JSON depuis un fichier, les convertissons en un objet Python, puis les écrivons dans un fichier CSV en utilisant le module `csv` ou la bibliothèque [pandas](https://pypi.org/project/pandas/). Avec ces méthodes, vous pouvez facilement convertir des données JSON au format CSV en Python.

## Lire un CSV avec Pandas

Pandas est une puissante bibliothèque d'analyse de données open source pour Python qui propose des structures de données faciles à utiliser pour la manipulation et l'analyse de données. Avec `pandas`, lire et manipuler des fichiers CSV est simple et efficace.

### Charger un CSV avec Pandas

Pour charger un fichier CSV avec Pandas, nous utilisons `read_csv()`. Voyons comment nous pouvons charger un fichier CSV en utilisant Pandas :

```python
import pandas as pd
df = pd.read_csv('filename.csv')
print(df.head())
```

### Analyser un fichier CSV avec Pandas

Après avoir chargé le fichier CSV, nous devons analyser les données pour extraire les informations requises. Pandas offre de nombreuses opérations pour analyser et manipuler les données CSV. Voici un exemple de comment analyser des données en utilisant Pandas :

```python
import pandas as pd
df = pd.read_csv('filename.csv')
df = df[df['column_name'] == 'required_value']
print(df.head())
```

### Écrire DataFrame dans CSV en utilisant Pandas

Après avoir traité les données CSV, nous pouvons souhaiter écrire le nouveau DataFrame dans un nouveau fichier CSV. Pandas offre un moyen facile d'écrire le DataFrame dans des fichiers CSV en utilisant `to_csv()`. Voici un exemple :

```python
import pandas as pd
df = pd.read_csv('filename.csv')
# Perform operations to extract the required data
new_df = df[df['column_name'] == 'required_value']
# Write the new DataFrame to a new CSV file
new_df.to_csv('new_file.csv', index=False)
```

## Exporter en CSV

Exporter des `data` en CSV (Comma Separated Values ou Valeurs Séparées par des Virgules) est une tâche courante dans le traitement des `data`. Voici deux manières d'exporter des `data` en CSV en Python :

### En utilisant le module csv

Le module csv est un module intégré en Python qui permet la lecture et l'écriture de fichiers CSV. Voici un exemple d'exportation d'un dictionnaire vers un fichier CSV en utilisant le module `csv` :

```python
import csv

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}

with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(data.keys())
    writer.writerows(zip(*data.values()))

# This code creates a CSV file with the following format:
# 
# 
# name,age
# John,20
# Jane,25
# Adam,30
```

### Utilisation du module pandas

Voici un exemple d'exportation d'un DataFrame pandas vers un fichier CSV.

```python
import pandas as pd

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}
df = pd.DataFrame(data)

df.to_csv('data.csv', index=False)
```

Ce code crée un fichier CSV avec le même format que l'exemple précédent. Le paramètre `index=False` est utilisé pour supprimer la colonne d'index de ligne par défaut du fichier CSV.

## Lire un fichier CSV ligne par ligne

Pour lire un fichier CSV ligne par ligne en Python, nous pouvons utiliser le module intégré `csv`.

### Lire un fichier CSV ligne par ligne

```python
import csv

with open('example.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        print(row)
```

Dans l'exemple ci-dessus, nous ouvrons le fichier CSV `example.csv` et l'assignons à la variable `csvfile`. Ensuite, nous créons un objet `csv.reader`, sur lequel nous pouvons itérer ligne par ligne en utilisant une boucle `for`. Chaque `row` dans la boucle est représentée comme une liste de valeurs.

### Écrire sur Nouvelle Ligne dans CSV

```python
import csv

with open('example.csv', mode='a', newline='') as csvfile:
    writer = csv.writer(csvfile)
    row = ['value1', 'value2', 'value3']
    writer.writerow(row)
```

Dans l'exemple ci-dessus, nous ouvrons le fichier CSV `example.csv` en mode `'append'` et l'attribuons à la variable `csvfile`. Ensuite, nous créons un objet `csv.writer`, que nous pouvons utiliser pour écrire une nouvelle ligne dans le fichier CSV en utilisant la méthode `writerow()`. La variable `row` est une liste de valeurs à écrire dans la nouvelle ligne du fichier CSV.

En utilisant ces exemples simples, nous pouvons facilement lire et écrire dans des fichiers CSV ligne par ligne en Python.

## Comment lire une colonne CSV en Python

Pour lire une colonne CSV en Python, vous pouvez utiliser la fonction `csv.DictReader()` pour lire les fichiers CSV comme des dictionnaires. Voici deux exemples :

```python
import csv

with open('example.csv') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row['column_name'])
```

Dans cet exemple de code, nous `import`ons d'abord le module `csv`. Nous utilisons ensuite l'instruction `with` pour ouvrir le fichier CSV `example.csv`. Nous créons un objet `DictReader` appelé `reader` en utilisant le fichier CSV `file`. Nous itérons ensuite à travers chaque `row` dans `reader` et `print`ons la valeur de `column_name` dans chaque ligne.

```python
import pandas as pd

data = pd.read_csv('example.csv')
column_data = data['column_name']
print(column_data)
```

Dans cet exemple de code, nous commençons par `importer` le module `pandas` et créer un `DataFrame` appelé `data` en utilisant la fonction `read_csv()` et en passant le nom du fichier CSV `example.csv`. Nous assignons ensuite les données dans `column_name` à une nouvelle variable `column_data`. Enfin, nous `imprimons` `column_data`.
