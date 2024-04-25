> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/modules/libraries

Les développeurs utilisent souvent les mots 'Module' et 'Bibliothèque' pour se référer à des codes et fonctions pré-écrits qui offrent une vaste gamme de fonctionnalités pouvant être ajoutées à des programmes Python. Un module est un fichier unique contenant du code Python, tandis qu'une bibliothèque est une collection de modules reliés qui fournissent une fonctionnalité plus étendue et résolvent des domaines de problèmes spécifiques. Les bibliothèques sont généralement distribuées et installées séparément, tandis que les modules peuvent être créés et utilisés au sein de votre propre base de code.

## Comment Installer les Bibliothèques Python

Pour `installer` des bibliothèques Python, vous devez utiliser le gestionnaire de paquets python `pip`. Ouvrez l'invite de commande et entrez la commande suivante :

```shell
pip install <library_name>
```

## Exemples de bibliothèques en Python

Les bibliothèques Python sont des composants cruciaux de la programmation Python et sont disponibles dans l'Index des Paquets Python (PyPI), qui compte actuellement plus de 220 000 bibliothèques.

### Bibliothèque Pandas

La bibliothèque `pandas` est principalement utilisée pour les tâches d'analyse de données. L'exemple de code suivant montre comment `installer` et `importer` la bibliothèque `pandas` :

```shell
# installing the pandas library
pip install pandas

# importing pandas 
import pandas as pd
```

### Bibliothèque NumPy

La bibliothèque NumPy est utilisée pour le calcul scientifique. Voici comment `installer` et `importer` la bibliothèque NumPy :

```shell
# installing the numpy library
pip install numpy

# importing numpy
import numpy as np
```

En conclusion, les bibliothèques Python sont des composants essentiels de la programmation Python qui fournissent des fonctionnalités supplémentaires. Pour utiliser ces bibliothèques, vous devez les `installer` à l'aide du gestionnaire de paquets PIP, comme montré dans les exemples ci-dessus.

## Bibliothèque vs Paquets

En ce qui concerne la programmation Python, il y a deux termes qui sont souvent utilisés de façon interchangeable, mais qui ne sont pas identiques - les Bibliothèques et les Paquets. Bien qu'ils servent tous les deux le même but de fournir de la fonctionnalité à l'utilisateur, il y a quelques différences distinctes entre eux.

### Qu'est-ce qu'une Bibliothèque Python ?

Une bibliothèque est une collection de modules qui se rassemblent pour fournir un ensemble particulier de fonctions. Elle est généralement utilisée pour effectuer des tâches spécifiques, comme des calculs mathématiques, manipuler des fichiers, ou se connecter à une base de données. L'une des bibliothèques les plus populaires en Python est la bibliothèque NumPy, qui fournit un support pour des tableaux et matrices multi-dimensionnels de grande taille.

#### Exemple d'utilisation de la bibliothèque `numpy`

```python3
import numpy as np

arr = np.array([1, 2, 3, 4, 5])
print(arr)
```

### Paquets

Les paquets, d'autre part, sont une collection de bibliothèques. Ils constituent un moyen de regrouper plusieurs bibliothèques ensemble pour une installation et une utilisation faciles. L'un des paquets les plus couramment utilisés en Python est le paquet SciPy, qui contient une collection de bibliothèques pour le calcul scientifique.

#### Exemple d'utilisation du paquet `scipy`

```python3
from scipy import constants

print(constants.pi)
```

En résumé, les bibliothèques sont de petits ensembles de fonctionnalités qui sont dédiées à une tâche particulière, tandis que les packages sont des collections de bibliothèques qui ont été regroupées pour une utilisation et une installation faciles. Les bibliothèques et les packages sont des composants essentiels de la programmation Python et le choix entre l'un ou l'autre dépend de la tâche à accomplir.

## Bibliothèque Python vs Module

En Python, un [module](https://docs.python.org/3/tutorial/modules.html) est un fichier contenant du code Python tandis qu'une bibliothèque est une collection de modules liés. Les bibliothèques ont généralement une portée large et fournissent des fonctionnalités qui ne sont pas disponibles dans les modules intégrés.

Les bibliothèques Python sont des collections de modules qui offrent une large gamme de fonctionnalités construites sur les modules intégrés. Elles sont utilisées pour simplifier des tâches complexes en fournissant un ensemble de fonctions pré-écrites qui peuvent être utilisées dans le processus de développement. Certaines des bibliothèques Python populaires sont NumPy, Pandas et Matplotlib.

D'autre part, les modules Python sont des fichiers séparés contenant du code Python qui peuvent être importés dans votre code. Ils sont utilisés pour séparer le code en parties plus petites et plus gérables. Certains des modules Python populaires sont os, sys et datetime.

```python
import os

current_working_directory = os.getcwd()
print(f"The current directory is: {current_working_directory}")
```

### Un Exemple d'Utilisation d'une Bibliothèque

```python3
import numpy as np

### Create a two-dimensional array using numpy library

my_array = np.array([[1, 2], [3, 4]])
print(my_array)
```

En conclusion, les bibliothèques et les modules Python sont importants en programmation Python. Les modules sont utilisés pour organiser le code, le rendant ainsi plus gérable tandis que les bibliothèques fournissent des fonctionnalités supplémentaires qui rendent la programmation plus facile et plus efficace.

## Comment importer une bibliothèque en Python

Pour importer une bibliothèque en Python, vous devez utiliser l'instruction `import`. Cette instruction vous permet d'utiliser les fonctions, classes, et variables définies de la bibliothèque externe dans votre programme. La syntaxe pour importer une bibliothèque est :

```python
import library_name
```

Ici, `library_name` est le nom de la bibliothèque que vous souhaitez importer. Une fois que vous importez la bibliothèque, vous pouvez accéder à ses fonctions et classes en utilisant la notation point.

```python3
import math

result = math.sqrt(25)
print(result) 

import requests

response = requests.get('https://www.example.com')
print(response.status_code) 

```

Dans le premier exemple, nous avons importé la bibliothèque intégrée [math](https://docs.python.org/3/library/math.html) et utilisé sa fonction `sqrt` pour calculer la racine carrée de 25. Dans le second exemple, nous avons importé la bibliothèque populaire `requests` pour faire une requête HTTP et `print` le code de statut de la `response`.

En important des bibliothèques externes, vous pouvez étendre la fonctionnalité de votre code Python et gagner du temps en réutilisant le code existant.

## Bibliothèques GUI Python

Python dispose de plusieurs bibliothèques GUI parmi lesquelles choisir. Les plus couramment utilisées sont :

1. **Tkinter** : C'est une [bibliothèque standard Python](https://docs.python.org/3/library/tkinter.html) et elle est pré-installée avec Python. Elle convient aux applications GUI de petite à moyenne taille.

```python
import tkinter as tk

root = tk.Tk()

label = tk.Label(root, text="Hello World!")
label.pack()

root.mainloop()
```

2. **PyQt** : Il s'agit d'une [bibliothèque GUI multiplateforme](https://pypi.org/project/PyQt5/) qui dispose d'un ensemble complet de widgets. Elle convient aux applications de bureau à grande échelle.

```python
from PyQt5.QtWidgets import QApplication, QLabel

app = QApplication([])
label = QLabel("Hello World!")
label.show()

app.exec_()
```

D'autres bibliothèques GUI Python populaires incluent WxPython, PyGTK, et PySide.

Lors du choix d'une bibliothèque GUI, il est important de prendre en considération des facteurs tels que la facilité d'utilisation, la complexité du projet, et la plateforme sur laquelle l'application sera déployée.

## Comment Imprimer une Liste de Bibliothèques

Pour imprimer une liste de bibliothèques Python, vous pouvez utiliser le module intégré `pkg_resources`, qui fournit un moyen simple d'interagir avec les métadonnées des paquets installés.

### Obtenir la Liste des Bibliothèques avec `pkg_resources`

```python
import pkg_resources
for package in pkg_resources.working_set:
    print(package.project_name)
```

### Obtenir la liste des bibliothèques avec `subprocess`

```python3
import subprocess
output = subprocess.check_output(['pip', 'freeze'])
for line in output.splitlines():
    print(line.decode('utf-8').split('==')[0])
```
