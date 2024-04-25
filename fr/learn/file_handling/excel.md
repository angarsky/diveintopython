> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/excel

L'excellence en Python est un sujet tendance parmi les analystes de données et les professionnels, offrant une combinaison puissante de deux des outils les plus essentiels pour la manipulation et l'analyse des données. Le langage de programmation flexible de Python peut être utilisé pour automatiser des tâches répétitives [Excel](https://en.wikipedia.org/wiki/Microsoft_Excel), manipuler des ensembles de données complexes et créer des visualisations de données perspicaces. En intégrant Python avec Excel, les utilisateurs peuvent tirer parti des forces des deux applications pour améliorer la productivité, rationaliser les flux de travail et obtenir des aperçus plus profonds de leurs données. Dans cet article, nous explorerons les avantages de Excel en Python et comment cela peut améliorer vos capacités d'analyse de données.

## Comment lire un fichier Excel en Python

Python est un excellent langage pour travailler avec Excel. Avec l'aide de la bibliothèque Excel de Python, vous pouvez facilement manipuler des fichiers Excel, analyser des données et automatiser des tâches. Voici deux exemples de comment utiliser Python avec Excel :

### Lire et écrire des fichiers Excel avec `pandas`

Pour lire et écrire des fichiers Excel avec Python, vous pouvez utiliser la bibliothèque [pandas](https://pypi.org/project/pandas/). Pour installer utilisez `pip install "pandas[excel]"`. Voici un extrait de code qui lit un fichier Excel et le sauvegarde en tant que nouveau fichier :

```python
import pandas as pd

df = pd.read_excel('input_file.xlsx')
df['new_column'] = df['old_column'] * 2
df.to_excel('output_file.xlsx', index=False)
```

Dans cet exemple, nous utilisons la fonction `read_excel()` pour lire un fichier d'entrée, puis ajouter une nouvelle colonne et multiplier l'ancienne colonne par `2`, et enfin enregistrer le résultat dans un nouveau fichier de sortie avec la fonction `to_excel()`.

### Manipuler les fichiers Excel avec OpenPyXL

Si vous avez besoin de plus de contrôle sur vos fichiers Excel, vous pouvez utiliser la bibliothèque `OpenPyXL`. Pour l'installer, utilisez `pip install openpyxl`. Voici un exemple de comment ajouter une nouvelle feuille de calcul à un classeur existant :

```python
from openpyxl import load_workbook, Workbook

wb = load_workbook('existing_workbook.xlsx')
new_ws = wb.create_sheet('New Worksheet')
new_ws['A1'] = 'Hello, world!'
wb.save('existing_workbook.xlsx')
```

Dans cet exemple, nous chargeons un classeur existant avec `load_workbook()`, créons une nouvelle feuille de calcul avec `create_sheet()`, ajoutons une valeur à la cellule `A1`, et enfin enregistrons les modifications avec `save()`.

### Lire et écrire des fichiers Excel avec `xlrd`

[Xlrd](https://pypi.org/project/xlrd/1.0/) est une bibliothèque pour lire des données et des informations de formatage à partir de fichiers Excel dans le format historique `.xls`. Voici un extrait de code exemple pour lire un fichier Excel en utilisant `xlrd` :

```python
import xlrd

# specify path and filename of Excel file
file_path = 'path/to/file/excel_file.xls'

# open workbook
workbook = xlrd.open_workbook(file_path)

# get sheet by name
worksheet = workbook.sheet_by_name('Sheet1')

# read data from cells
cell_value = worksheet.cell_value(0, 0)
```

Dans l'exemple ci-dessus, la bibliothèque `xlrd` est utilisée pour ouvrir le fichier Excel. La fonction `workbook.sheet_by_name` sert à accéder à la feuille nommée 'Sheet1'. La fonction `worksheet.cell_value` est utilisée pour lire les données des cellules de la feuille. Dans l'exemple, la valeur de la cellule A1 est lue.

## Créer une nouvelle feuille Excel en Python

Si vous voulez créer une nouvelle feuille Excel en Python, vous pouvez utiliser le module `openpyxl`. Ce module vous permet de créer, lire et modifier des fichiers Excel.

### Exemple de code 1 : `openpyxl`

```python
import openpyxl

# Create a new Excel workbook
workbook = openpyxl.Workbook()

# Activate the first sheet
sheet = workbook.active

# Rename the first sheet
sheet.title = "New Sheet"

# Save the workbook
workbook.save("new_excel_sheet.xlsx")
```

### Exemple de code 2 : `xlwt`

```python
import xlwt

# Create a new workbook
workbook = xlwt.Workbook()

# Add a new sheet to the workbook
sheet = workbook.add_sheet("New Sheet")

# Save the workbook
workbook.save("new_excel_sheet.xls")
```

Ces deux exemples vont créer une nouvelle feuille Excel nommée `New Sheet` et l'enregistrer dans un fichier. Vous pouvez modifier le code pour créer des feuilles avec différents noms ou ajouter des données aux feuilles.

## Ouvrir Excel dans un Répertoire Différent avec Python

Pour ouvrir un fichier Excel depuis un répertoire différent en Python, on peut utiliser le module `os` de Python et définir le répertoire de travail sur le répertoire désiré. Ensuite, utilisez la bibliothèque `pandas` pour lire le fichier Excel.

```python
import os
import pandas as pd

### set working directory to desired directory

os.chdir('/path/to/directory')

### read Excel file using pandas

df = pd.read_excel('excel_file.xlsx')
```

```python
import pandas as pd

### read Excel file from a specific directory using pandas

df = pd.read_excel('/path/to/directory/excel_file.xlsx')
```

Dans les deux exemples, la fonction `pd.read_excel()` est utilisée pour lire le fichier Excel. Le premier exemple utilise `os.chdir()` pour changer le répertoire de travail vers le répertoire désiré avant de lire le fichier. Le deuxième exemple lit directement le fichier Excel à partir d'un répertoire spécifique.

En utilisant ces codes, on peut facilement ouvrir un fichier Excel depuis un répertoire différent en Python.
