> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/variable-import

Cet article se concentre sur l'aspect crucial de l'importation en Python. Maîtriser l'instruction `import` est essentiel pour incorporer sans problème des variables d'un fichier à un autre. En d'autres termes, vous pouvez facilement importer des variables en Python avec cette instruction. Explorons l'efficacité et la modularité obtenues en utilisant l'import pour accéder aux variables dans les fichiers Python.

## Comment importer une variable d'un autre fichier en Python

Pour importer une variable en Python, vous devez utiliser l'instruction `import`. Supposons que vous avez un fichier Python nommé `file1.py` qui contient une variable nommée `my_variable`.

```python
# file2.py
from file1 import my_variable

# Now you can use the variable in this file
print(my_variable)
```

Dans le code ci-dessus, nous importons la `my_variable` de `file1.py` en utilisant la syntaxe `from ... import`. Après avoir importé la variable, nous pouvons l'utiliser dans `file2.py` comme n'importe quelle autre variable. Cette méthode vous permet d'exporter des variables d'un fichier et de les utiliser dans d'autres fichiers Python, favorisant la réutilisabilité et l'organisation du code.

## Importation de Variables depuis un Autre Fichier via Import de Module

Alternativement, vous pouvez charger des variables depuis un autre fichier en important le module entier - il suffit d'importer `file1.py` et d'accéder à la variable en utilisant le nom du module comme ceci :

```python
# file2.py
import file1

# Accessing the variable using the module name
print(file1.my_variable)
```

Dans ce cas, nous importons le module entier `file1.py` en utilisant l'instruction import. Ensuite, nous accédons à la variable `my_variable` en utilisant le préfixe du nom du module `file1`.

## Importation de Plusieurs Variables d'un Autre Fichier

Python permet d'importer plusieurs variables d'un fichier en utilisant la syntaxe `from ... import`. Considérez un scénario dans lequel `file1.py` contient plusieurs variables : `var1`, `var2`, et `var3`.

```python
# file2.py
from file1 import var1, var2, var3

# Using the imported variables in this file
print(var1)
print(var2)
print(var3)
```

En spécifiant plusieurs variables séparées par des virgules après l'instruction `from ... import`, vous pouvez directement importer et utiliser ces variables à l'intérieur de `file2.py`. Cette méthode améliore la lisibilité du code en important explicitement uniquement les variables nécessaires.

## Importation avec Alias pour Plus de Clarté

Parfois, les noms de variables peuvent entrer en conflit ou être ambigus lorsqu'ils sont importés de différents fichiers. Pour atténuer cela, Python vous permet d'importer des variables avec des alias.

```python
# file2.py
from file1 import my_variable as alias_variable

# Utilizing the imported variable with an alias
print(alias_variable)
```

En attribuant un alias lors de l'importation (comme `alias_variable`), vous pouvez fournir un nom plus clair dans le contexte du fichier actuel, améliorant ainsi la compréhension du code.

## Importation de modules depuis différents répertoires

Python prend en charge l'importation de modules depuis différents répertoires en utilisant des chemins absolus ou relatifs. Supposons que `file1.py` réside dans un dossier séparé nommé `module_folder`.

```python
# file2.py
import sys
sys.path.append('path_to_module_folder')  # Include the path to module_folder

import file1

# Accessing the variable from the module in a different directory
print(file1.my_variable)
```

En ajoutant le chemin vers le répertoire contenant le module à `sys.path`, Python peut localiser et importer le module, permettant ainsi l'accès à ses variables depuis `file2.py`.

## Imports Dynamiques Utilisant `importlib`

La bibliothèque `importlib` de Python permet des imports dynamiques, vous permettant d'importer des modules ou des variables basés sur des conditions d'exécution.

```python
# file2.py
import importlib

module_name = 'file1'
module = importlib.import_module(module_name)

# Accessing the variable dynamically
print(module.my_variable)
```

Ici, `importlib.import_module()` permet d'importer un module spécifié par une chaîne (`module_name`), offrant de la flexibilité lors de la détermination des imports au moment de l'exécution.
