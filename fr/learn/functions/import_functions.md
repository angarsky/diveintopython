> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/import-functions

En Python, les fonctions jouent un rôle vital dans la programmation puisqu'elles aident à créer du code réutilisable. Cependant, il peut parfois être fastidieux de réécrire la même fonction encore et encore. Heureusement, Python facilite la réutilisation des fonctions en vous permettant de les importer à partir de différents fichiers. Dans cet article, nous explorerons comment importer des fonctions d'un autre fichier Python.

## La fonction `import` de Python : Comment l'utiliser pour améliorer la réutilisabilité du code

La **fonction d'importation** de Python est un outil puissant pour améliorer la réutilisabilité du code. Elle nous permet d'importer des fonctions d'autres fichiers, ce qui peut nous faire gagner beaucoup de temps et d'effort lors de la construction de projets plus importants.

Pour importer des fonctions d'un fichier, nous devons d'abord créer un module Python. Il s'agit simplement d'un fichier avec une extension `.py` qui contient les fonctions que nous souhaitons importer. Nous pouvons ensuite utiliser le mot-clé `import` pour amener ces fonctions dans notre script principal : `from my_module import my_function`

Alternativement, nous pouvons aussi importer l'ensemble du module et accéder à ses fonctions en utilisant la notation par point : `import my_module`

En utilisant la fonction `import` en Python, nous pouvons réutiliser facilement le code à travers de multiples projets et améliorer notre efficacité globale en tant que développeurs.

## Les différentes manières d'importer des fonctions à partir de fichiers en Python

Importer des fonctions en Python est une pratique courante pour réutiliser du code et améliorer l'organisation du code. Il existe différentes façons d'importer des fonctions en Python, y compris l'importation d'une fonction à partir d'un fichier ou l'importation d'une fonction en tant que module.

Pour importer une fonction à partir d'un fichier en Python, utilisez la syntaxe suivante : `from file_name import function_name`

Cela vous permet d'utiliser la fonction dans votre code sans avoir à réécrire tout le code à nouveau. Par exemple :

Alternativement, vous pouvez importer une fonction en tant que module, ce qui peut être utile si vous souhaitez importer plusieurs fonctions Python à partir du même module : `import file_name`

Dans l'ensemble, importer des fonctions en Python est une manière puissante de rendre votre code plus efficace et lisible.

## Appeler une fonction d'un autre fichier

Une des pratiques courantes en Python est de réutiliser du code en important des fonctions d'autres fichiers Python. Cela vous permet d'amener des fonctions spécifiques dans votre script actuel. Pour ce faire, utilisez la syntaxe suivante :

```python
from file_name import function_name
```

Par exemple, pour importer la fonction `add` à partir d'un fichier appelé `math_operations.py`, vous pouvez utiliser :

```python
from math_operations import add
```

Une fois que vous avez importé la fonction, vous pouvez facilement l'utiliser dans votre code. Voici un exemple :

```python
result = add(2, 3)
print(result)  # Output: 5
```

Pour importer plusieurs fonctions spécifiques, telles que `add` et `subtract`, de `math_operations.py`, vous pouvez utiliser la syntaxe suivante :

```python
from math_operations import add, subtract
```

Maintenant, les fonctions `add` et `subtract` du fichier `math_operations.py` peuvent être appelées comme suit :

```python
print(add(2, 3))
print(subtract(5, 3))
```

Ce processus est un moyen puissant d'améliorer la réutilisabilité du code en Python. En important des fonctions d'autres fichiers, vous pouvez gagner du temps et des efforts et rendre votre code plus efficace et organisé.

## Erreurs communes lors de l'importation de fonctions en Python et comment les corriger

Lors de l'importation de fonctions en Python, les erreurs communes incluent les **erreurs d'importation**, les **erreurs de syntaxe**, et les **erreurs d'attribut de module**.

Si vous rencontrez une erreur en essayant d'appeler une fonction d'un autre fichier, il y a quelques choses que vous pouvez essayer pour la corriger. D'abord, assurez-vous que le fichier que vous essayez d'importer se trouve dans le même répertoire que votre script Python. Sinon, vous devrez peut-être spécifier le chemin vers le fichier.

Ensuite, vérifiez la syntaxe de l'instruction d'importation pour vous assurer qu'elle est correcte. Si vous utilisez le mot-clé `from`, assurez-vous d'avoir inclus le nom de fonction correct. Si vous utilisez le mot-clé `import`, assurez-vous de faire référence au nom de module correct.

Enfin, vérifiez à nouveau le nom de la fonction pour vous assurer qu'il est correctement orthographié et qu'il est défini dans le fichier que vous essayez d'importer.

Par exemple, disons que vous voulez importer la fonction `runsqlscript` du module `sqlideutils`. Voici comment vous pourriez le faire en utilisant le mot-clé `from`: `from sqlideutils import runsqlscript`

Et voici comment vous pourriez le faire en utilisant le mot-clé `import`: `import sqlideutils` avec `runsqlscript = sqlideutils.runsqlscript`

## Organiser votre code Python : Comment créer un module personnalisé avec des fonctions importables

Organiser votre code Python est crucial pour le rendre lisible, maintenable, et réutilisable. Une manière d'atteindre cet objectif est de créer un module personnalisé contenant des **fonctions importables**.

Pour créer un module personnalisé avec des fonctions importables, suivez ces étapes :

1. **Créez** un nouveau fichier Python avec l'extension `.py` et donnez-lui un nom descriptif (p. ex., `myfunctions.py`).
2. **Définissez** une ou plusieurs fonctions dans le fichier en utilisant le mot-clé `def` et un nom de fonction (p. ex., `mod_function`).
3. **Enregistrez** le fichier.
4. **Importez** la ou les fonctions du fichier dans un autre script Python en utilisant le mot-clé `import` et le nom du fichier sans l'extension `.py` (p. ex., `import myfunctions`).
5. **Appelez** la ou les fonctions importées dans le script en utilisant le nom de la fonction tel qu'il est défini dans le fichier (p. ex., `myfunctions.mod_function()`).

## Techniques avancées de Python : Comment construire et importer des paquets externes avec plusieurs fonctions

**Importer des fonctions** est une technique avancée de Python qui nous permet de construire et d'importer des paquets externes avec **plusieurs fonctions**. C'est une fonctionnalité puissante qui améliore la réutilisabilité et l'organisation du code.

Il existe plusieurs manières d'importer plusieurs fonctions en Python. Une façon est de définir des fonctions dans un fichier séparé, puis de les importer dans le script principal en utilisant la syntaxe `import function from file`. Une autre manière est d'utiliser la fonction `map` avec plusieurs arguments pour appliquer une fonction à plusieurs itérables simultanément.

Voici deux exemples de comment utiliser les fonctions d'import en Python :

### Exemple 1 : Importation de fonctions à partir d'un fichier séparé

```python3
# Suppose we have a file named `my_functions.py` that contains the following functions:
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
# To import these functions into a main script, we can use the following syntax:
# from my_functions import add, subtract

result1 = add(10, 5)
result2 = subtract(10, 5)

print(result1)  # Output: 15
print(result2)  # Output: 5
```

Ici, nous importons les fonctions `add` et `subtract` à partir du fichier `my_functions.py` et nous les utilisons dans le script principal.

### Exemple 2 : Utiliser la fonction Map avec plusieurs arguments

Supposons que nous ayons deux listes, `numbers1` et `numbers2`, et que nous voulions les additionner élément par élément. Nous pouvons utiliser la **fonction map avec plusieurs arguments** pour y parvenir :

```python3
numbers1 = [1, 2, 3, 4, 5]
numbers2 = [5, 4, 3, 2, 1]

def add(a, b):
    return a + b

result = list(map(add, numbers1, numbers2))

print(result)  # Output: [6, 6, 6, 6, 6]
```

Ici, nous définissons la fonction `add` et utilisons la fonction map pour l'appliquer aux listes `numbers1` et `numbers2` élément par élément. Le `result` est une nouvelle liste contenant la somme élément par élément des deux listes.
