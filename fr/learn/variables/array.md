> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/array

La documentation officielle de Python contient des informations sur les [tableaux](https://docs.python.org/3/library/array.html). Cependant, en Python, la structure de données intégrée couramment utilisée pour représenter des tableaux est la [liste](/fr/learn/variables/list.md). La documentation officielle se concentre principalement sur les listes plutôt que sur un type de données de tableau séparé. Les listes sont ordonnées, modifiables et peuvent contenir des éléments de différents types de données. Vous pouvez accéder aux éléments d'une liste en utilisant leurs indices, et vous pouvez effectuer diverses opérations sur les listes telles que l'ajout, l'insertion ou la suppression d'éléments.
Avec ces faits à l'esprit, nous allons examiner les listes, disons, du point de vue d'un tableau.

## Le tableau en Python

Regardons ce qu'est un tableau en Python. Un tableau est une structure de données qui stocke une collection d'éléments du même type. C'est un conteneur qui détient un nombre fixe d'articles, et les éléments peuvent être accédés en utilisant leurs indices. Python fournit plusieurs manières de travailler avec des tableaux, y compris des structures de données intégrées comme les listes et le tableau ndarray de la bibliothèque NumPy.

Il y a plusieurs possibilités de comment faire un tableau en Python.
Comme nous l'avons déjà mentionné, les listes sont habituellement utilisées comme tableaux en Python. Mais si vous voulez améliorer la performance et réduire la consommation de mémoire pour certains cas d'usage, vous pouvez utiliser le module `array` en Python. Il fournit un moyen de créer des tableaux qui sont plus efficaces et compacts par rapport aux listes traditionnelles, il vous permet de définir des tableaux d'un type de données spécifique.

Pour utiliser le module `array`, vous devez d'abord l'importer :

```python
import array
```

Ensuite, vous pouvez créer un tableau en Python en précisant le code de type de données souhaité et en l'initialisant avec des valeurs. Voici un exemple de création d'un tableau d'entiers :

```python
my_array = array.array('i', [1, 2, 3, 4, 5])
```

Dans l'exemple ci-dessus, `'i'` représente le code du type de donnée pour les entiers signés. Vous pouvez choisir différents codes de type de donnée selon vos besoins spécifiques (par exemple, `'f'` pour des nombres à virgule flottante, `'d'` pour des doubles, `'b'` pour des octets, etc.).

Une fois que vous avez créé un tableau, vous pouvez accéder à ses éléments en utilisant l'indexation, tout comme avec des listes régulières. Vous pouvez également modifier les valeurs dans le tableau ou effectuer diverses opérations disponibles pour les tableaux.

> Remarque : le module `array` est particulièrement utile lorsque vous travaillez avec de grandes quantités de données numériques ou lorsque vous avez besoin d'interfacer avec des bibliothèques de bas niveau qui attendent des données dans un format spécifique. Pour des collections à usage général de éléments hétérogènes, le type de liste intégré est généralement plus flexible et couramment utilisé en Python.

## Array vs List en Python

En Python, les termes "array" et "list" sont souvent utilisés de manière interchangeable, mais ils font référence à des structures de données différentes avec certaines distinctions. Explorons les différences entre eux :

1. **Allocation de Mémoire** : Les tableaux en Python sont fournis par le module `array` et représentent une collection homogène d'éléments de taille fixe. Ils sont généralement plus efficaces en termes de mémoire par rapport aux listes car ils stockent des éléments du même type de manière contigüe en mémoire. Les listes, d'autre part, sont hétérogènes et peuvent stocker des éléments de différents types. Les listes sont implémentées comme des tableaux dynamiques qui se redimensionnent automatiquement pour accueillir de nouveaux éléments.

2. **Types de Données** : Les tableaux sont limités à un type de données spécifique. Lors de la création d'un tableau, vous devez spécifier le type d'éléments qu'il contiendra (par exemple, des entiers, des nombres à virgule flottante, des caractères). Cette contrainte permet aux tableaux de fournir un stockage et des opérations plus efficaces sur leurs éléments. Les listes, étant hétérogènes, peuvent contenir des éléments de différents types de données dans la même liste.

3. **Flexibilité** : Les listes sont plus flexibles par rapport aux tableaux. Elles peuvent croître ou diminuer dynamiquement, car des éléments peuvent être ajoutés ou retirés à n'importe quelle position. Les tableaux, une fois créés, ont une taille fixe et ne peuvent pas être changés. Si vous devez modifier la taille d'un tableau, vous devrez créer un nouveau tableau de la taille souhaitée et copier les éléments de l'ancien tableau.

4. **Opérations et Méthodes** : Les tableaux et les listes fournissent tous deux des opérations communes telles que l'indexation, le slicing et l'itération. Cependant, les tableaux disposent de méthodes supplémentaires fournies par le module `array`, telles que des opérations mathématiques efficaces sur l'ensemble du tableau (par exemple, somme, produit), qui peuvent être plus rapides par rapport aux opérations équivalentes sur les listes.
Bibliothèques externes : Certaines bibliothèques externes, comme NumPy, fournissent des tableaux multidimensionnels largement utilisés pour les calculs numériques. Les tableaux NumPy offrent un stockage efficace et des opérations vectorisées sur les tableaux, les rendant hautement optimisés pour les calculs numériques. Les listes n'ont pas de telles fonctionnalités intégrées.

En résumé, les tableaux sont des collections homogènes d'éléments de taille fixe qui sont efficaces en mémoire et fournissent des opérations spécifiques, tandis que les listes sont des collections hétérogènes et dynamiques qui offrent plus de flexibilité et de polyvalence. Le choix entre tableaux et listes dépend des exigences spécifiques de votre programme, telles que l'utilisation de la mémoire, les contraintes de type de données et le besoin de redimensionnement dynamique ou d'opérations spécialisées.

## Comment créer un tableau

En Python, les tableaux peuvent être créés en utilisant diverses méthodes et bibliothèques. Il y a aussi d'autres paramètres qui doivent être pris en compte au moment de la création du tableau.

### Tableau simple avec des entiers

Vous pouvez créer un tableau en Python en utilisant le module intégré `array` ou en initialisant simplement une liste vide. Voici deux exemples de création de tableaux :

1. Initialisation d'un tableau d'entiers en utilisant le module `array` :

```python
import array

# Create an array of integers
my_array = array.array('i', [1, 2, 3, 4, 5])
```

2. La seconde approche consiste à déclarer une liste au lieu d'un tableau :

```python
# Create a list
my_list = [1, 2, 3, 4, 5]
```

Pour créer un tableau vide, vous pouvez suivre les approches mentionnées ci-dessus. Ensuite, nous examinerons la définition d'un tableau de taille n.

### Tableau de Taille `N`

Pour créer un tableau d'une taille spécifique en Python, vous pouvez utiliser différentes méthodes, y compris l'utilisation d'une compréhension de liste ou l'utilisation de NumPy. Voici quelques exemples de déclarations de tableaux :

En utilisant une compréhension de liste :

```python3
n = 5
my_array = [0] * n
print(my_array) # Output: [0, 0, 0, 0, 0]
```

Utilisation de NumPy :

```python3
import numpy as np

n = 5
my_array = np.zeros(n)
print(my_array) # Output: [0. 0. 0. 0. 0.]
```

### Tableau Généré Aléatoirement

Pour générer un tableau aléatoire en Python, vous pouvez utiliser le `random module` de la bibliothèque standard de Python ou la bibliothèque numpy. Voici des exemples en utilisant les deux approches :

En utilisant le module random :

```python3
import random

# Generate a random array of size n
n = 5
random_array = [random.randint(0, 100) for _ in range(n)]

print(random_array)  # Output: [47, 92, 32, 12, 80]
```

Utilisation de la bibliothèque numpy :

```python3
import numpy as np

# Generate a random array of size n
n = 5
random_array = np.random.randint(0, 100, size=n)

print(random_array)  # Output: [92 76 32 48 11]
```

Les deux approches vous permettent de générer des tableaux aléatoires d'entiers. Ajustez les paramètres (`a`, `b` et `size`) selon vos besoins spécifiques pour contrôler la plage et la taille du tableau aléatoire.

### Tableau 2D en Python

Voici un exemple de comment initialiser un tableau multidimensionnel en Python en utilisant la fonction `np.array()` :

```python
import numpy as np

# Create a 2-dimensional array
arr2 = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
print(arr2)
# Output:
# [[1 2 3]
#  [4 5 6]
#  [7 8 9]]
```

Vous pouvez également créer un tableau à deux dimensions en utilisant une liste de listes, où chaque liste interne représente une ligne. Voici un exemple de la manière de créer et d'initialiser un tableau 2D en utilisant des listes imbriquées :

```python3
# Create a 2D array with 3 rows and 4 columns
array_2d = [[0, 1, 2, 3],
            [4, 5, 6, 7],
            [8, 9, 10, 11]]

# Accessing elements
print(array_2d[0][2])  # Output: 2 (element at row 0, column 2)
print(array_2d[1][3])  # Output: 7 (element at row 1, column 3)

# Modifying elements
array_2d[2][1] = 99  # Changing element at row 2, column 1 to 99
print(array_2d[2][1])  # Output: 99

# Iterating through the array
for row in array_2d:
    for element in row:
        print(element, end=' ')
    print()
```

### Comment créer un tableau NumPy en Python

Pour créer un [tableau NumPy](https://numpy.org/doc/stable/reference/generated/numpy.array.html) en Python, vous pouvez utiliser la fonction `numpy.array()`. Voici un exemple d'initialisation de tableau `np` :

```python3
import numpy as np

# Create a 1-dimensional array
arr1 = np.array([1, 2, 3, 4, 5])
print(arr1)
# Output: [1 2 3 4 5]
```

Dans le code ci-dessus, `import numpy as np` importe le module NumPy, ce qui nous permet d'utiliser ses fonctions et classes.

### Tableau de chaînes de caractères en Python

Pour créer un tableau de chaînes de caractères en Python, vous pouvez utiliser une liste où chaque élément de la liste représente une chaîne de caractères. Voici un exemple :

```python
array = ['apple', 'banana', 'orange', 'grape']
print(array) # Output: ['apple', 'banana', 'orange', 'grape']
```

Dans l'exemple ci-dessus, nous créons un tableau de chaînes de caractères appelé `array` en utilisant une liste. Chaque élément de la liste représente une chaîne de caractères. Le tableau résultant contient quatre chaînes de caractères : 'apple', 'banana', 'orange' et 'grape'.

### Tableau de Dictionnaires

En Python, vous pouvez créer un tableau (ou une liste) de dictionnaires en initialisant simplement une liste et en ajoutant des dictionnaires comme ses éléments. Chaque dictionnaire peut contenir des paires clé-valeur représentant différentes propriétés ou attributs. Voici un exemple :

```python3
# Create an array of dictionaries
array_of_dictionaries = [
    {"name": "John", "age": 25, "city": "New York"},
    {"name": "Alice", "age": 30, "city": "London"},
    {"name": "Bob", "age": 35, "city": "Paris"}
]

# Accessing values
print(array_of_dictionaries[0]["name"])  # Output: John
print(array_of_dictionaries[1]["age"])   # Output: 30
print(array_of_dictionaries[2]["city"])  # Output: Paris
```

### Tableau de Tuples en Python

En Python, vous pouvez créer un tableau de tuples en utilisant différentes structures de données. Voici quelques exemples :

1. Liste de Tuples :

Vous pouvez créer un tableau de tuples à l'aide d'une liste. Chaque tuple représente un élément dans le tableau. Voici un exemple :

```python
# List of tuples
array = [(1, 'apple'), (2, 'banana'), (3, 'orange')]

# Accessing elements in the array
for item in array:
    number, fruit = item
    print(f"Number: {number}, Fruit: {fruit}")
```

2. Tableau NumPy de Tuples :

Si vous travaillez avec des tableaux NumPy, vous pouvez créer un tableau de tuples en utilisant la fonction `np.array()`. Voici un exemple :

```python
import numpy as np

# NumPy array of tuples
array = np.array([(1, 'apple'), (2, 'banana'), (3, 'orange')])

# Accessing elements in the array
for item in array:
    number, fruit = item
    print(f"Number: {number}, Fruit: {fruit}")
```

3. Module Array :

Si vous utilisez le module `array` intégré, vous pouvez créer un tableau de tuples en utilisant le constructeur `array`. Voici un exemple :

```python
import array as arr

# Array of tuples
array = arr.array('i', [(1, 2), (3, 4), (5, 6)])

# Accessing elements in the array
for item in array:
    number1, number2 = item
    print(f"Number 1: {number1}, Number 2: {number2}")
```

### Tableau d'Octets

En Python, vous pouvez créer un tableau d'octets en utilisant les types intégrés `bytearray` ou `bytes`. Voici un exemple de création et de manipulation d'un tableau d'octets :

En utilisant `bytearray` :

```python
my_array = bytearray([0x41, 0x42, 0x43, 0x44])  # Creating a bytearray from a list of byte values
print(my_array)  # Output: bytearray(b'ABCD')

# Accessing individual bytes
print(my_array[0])  # Output: 65
print(hex(my_array[1]))  # Output: 0x42

# Modifying bytes
my_array[2] = 0x45
print(my_array)  # Output: bytearray(b'ABED')
```

En utilisant `bytes` :

```python
my_array = bytes([0x41, 0x42, 0x43, 0x44])  # Creating a bytes object from a list of byte values
print(my_array)  # Output: b'ABCD'

# Accessing individual bytes
print(my_array[0])  # Output: 65
print(hex(my_array[1]))  # Output: 0x42
```

Les `bytearray` et `bytes` représentent tous deux des séquences d'octets et peuvent être utilisés de manière interchangeable dans de nombreux contextes. Choisissez le bon en fonction de si vous avez besoin d'une séquence d'octets mutable ou immuable.

### La fonction `range()` pour les tableaux en Python

En Python, vous pouvez créer un tableau ou une liste de nombres en utilisant la fonction `range()`. La fonction `range()` génère une séquence de nombres dans une plage spécifiée.

Voici quelques exemples d'utilisation de la fonction `range()` pour créer des tableaux ou des listes de nombres :

1. Création d'une plage de nombres sous forme de liste :

```python
my_list = list(range(5))
print(my_list)
# Output: [0, 1, 2, 3, 4]
```

2. Créer une plage de nombres avec un début et une fin spécifiés :

```python
my_list = list(range(2, 10))
print(my_list)
# Output: [2, 3, 4, 5, 6, 7, 8, 9]
```

3. Création d'une plage de nombres avec un début, une fin et une taille de pas spécifiés :

```python
my_list = list(range(1, 11, 2))
print(my_list)
# Output: [1, 3, 5, 7, 9]
```

La fonction `range()` peut être utilisée pour créer des tableaux ou des listes de nombres basés sur différents valeurs de début, de fin et de taille de pas. En convertissant l'objet de portée en une liste à l'aide de la fonction `list()`, vous pouvez obtenir une représentation de liste de la plage.

### Tableau de Zéros

En Python, vous pouvez créer un tableau de zéros en utilisant différentes bibliothèques et structures de données. Voici quelques exemples :

1. NumPy :

Si vous avez NumPy installé, vous pouvez utiliser la fonction `zeros()` de la bibliothèque NumPy pour créer un tableau de zéros. Voici un exemple :

```python
import numpy as np

# Create a 1-dimensional array of 5 zeros
zeros_array = np.zeros(5)

print(zeros_array)
```

Vous pouvez également créer des tableaux multidimensionnels de zéros en spécifiant la forme sous forme de tuple. Par exemple :

```python
import numpy as np

# Create a 2-dimensional array of 3 rows and 4 columns, filled with zeros
zeros_array = np.zeros((3, 4))

print(zeros_array)
```

2. Compréhension de liste :

Si vous préférez travailler avec des listes, vous pouvez utiliser la compréhension de liste pour créer un tableau de zéros. Voici un exemple :

```python
# Create a 1-dimensional array of 5 zeros using list comprehension
zeros_array = [0] * 5

print(zeros_array)
```

Pour les tableaux multidimensionnels, vous pouvez imbriquer des compréhensions de liste. Voici un exemple :

```python
# Create a 2-dimensional array of 3 rows and 4 columns, filled with zeros using nested list comprehension
zeros_array = [[0] * 4 for _ in range(3)]

print(zeros_array)
```

## Longueur d'un tableau en Python

Vous pouvez obtenir la longueur d'un tableau (ou de toute séquence) en utilisant la fonction `len()`. La fonction `len()` renvoie le nombre d'éléments dans la séquence.

Voici un exemple de comment utiliser `len()` pour obtenir la longueur d'un tableau :

```python
my_array = [1, 2, 3, 4, 5]
length = len(my_array)
print(length)  # Output: 5
```

Dans cet exemple, `len(my_array)` compte les éléments du tableau et retourne la longueur de la liste `my_array`, qui est 5. La variable `length` stocke cette valeur, et elle est ensuite imprimée sur la console.

> Note : La fonction `len()` fonctionne non seulement avec les tableaux mais aussi avec tout objet itérable, comme les listes, tuples, chaînes de caractères ou ensembles.

## Indexation de tableau en Python

En Python, un tableau indexé est typiquement représenté en utilisant une liste. Les indices d'une liste sont utilisés pour accéder et manipuler les éléments à l'intérieur de celle-ci, donc vous pouvez accéder aux éléments individuels d'un tableau (ou liste) en utilisant l'indexation. L'indexation de tableau vous permet de récupérer un élément spécifique du tableau en vous référant à sa position ou son indice au sein du tableau.

Les index de tableau commencent à 0, donc le premier élément d'un tableau est à l'indice 0, le deuxième élément est à l'indice 1, et ainsi de suite.

Voici un exemple de comment utiliser l'indexation de tableau en Python :

```python
my_array = [10, 20, 30, 40, 50]
element = my_array[2]
print(element)  # Output: 30
```

Dans cet exemple, `my_array[2]` récupère l'élément à l'index 2 de `my_array`, qui est 30. La valeur est ensuite stockée dans la variable element et affichée dans la console.

Vous pouvez également utiliser l'indexation négative pour accéder aux éléments depuis la fin du tableau. Avec l'indexation négative, -1 fait référence au dernier élément, -2 fait référence à l'avant-dernier élément, et ainsi de suite.

```python
my_array = [10, 20, 30, 40, 50]
element = my_array[-1]
print(element)  # Output: 50
```

Dans ce cas, `my_array[-1]` récupère le dernier élément de `my_array`, qui est 50. La valeur est stockée dans la variable element et imprimée à la console.

Vous pouvez également utiliser l'indexation pour modifier la valeur d'un élément ou pour extraire un sous-ensemble d'éléments d'un tableau en utilisant le découpage.

## Itérer sur un tableau en utilisant la boucle "for"

En Python, vous pouvez utiliser une boucle "for" pour itérer sur les éléments d'un tableau et effectuer des opérations sur chaque élément. Il existe différentes manières d'itérer sur un tableau, selon le type de tableau avec lequel vous travaillez. Voici quelques exemples de boucles à travers des tableaux :

1. Utiliser une boucle for avec une liste Python standard :

```python
my_list = [1, 2, 3, 4, 5]
for element in my_list:
    print(element)
```

Sortie :

```python
1
2
3
4
5
```

Utilisation d'une boucle `for` avec un tableau NumPy :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
for element in my_array:
    print(element)
```

Sortie :

```python
1
2
3
4
5
```

3. Utilisation d'une boucle `for` avec un tableau multidimensionnel NumPy :

```python
import numpy as np

my_array = np.array([[1, 2], [3, 4], [5, 6]])
for row in my_array:
    for element in row:
        print(element)
```

Sortie:

```python
1
2
3
4
5
6
```

## Tableau Python ou DataFrame

Nous avons déjà vu ce qu'est un tableau, regardons maintenant le DataFrame.

Un DataFrame (pandas) est une structure de données tabulaire bidimensionnelle fournie par la bibliothèque pandas. Il est extrêmement polyvalent et largement utilisé pour les tâches de manipulation et d'analyse des données. Les DataFrames peuvent contenir des données de différents types (par exemple, entiers, flottants, chaînes) et offrent de puissantes fonctionnalités d'indexation, de découpage, de regroupement et d'agrégation. Les DataFrames sont particulièrement utiles lors du travail avec de grands ensembles de données, lors de l'exécution d'opérations complexes, ou lorsque vous avez besoin de travailler avec des données étiquetées ou structurées.

Voici un exemple de création d'un DataFrame :

```python
import pandas as pd

data = {'Name': ['John', 'Alice', 'Bob'],
        'Age': [25, 30, 35],
        'Country': ['USA', 'Canada', 'UK']}

df = pd.DataFrame(data)
print(df)
```

Sortie :

```python
   Name  Age Country
0  John   25     USA
1 Alice   30  Canada
2   Bob   35      UK
```

Dans cet exemple, nous créons un DataFrame `df` en utilisant un dictionnaire `data` puis nous imprimons le DataFrame résultant.

Les DataFrames offrent de nombreuses fonctionnalités, telles que l'indexation, le filtrage, la fusion, et la gestion des valeurs manquantes, ce qui en fait un choix populaire pour les tâches d'analyse et de manipulation des données.

En résumé, si vous avez besoin d'une structure de données simple pour des calculs numériques de base, un tableau Python peut être suffisant. Cependant, si vous avez besoin de manipulations de données plus avancées, d'analyses, et d'une structure tabulaire, un DataFrame (tel qu'un DataFrame pandas) serait un meilleur choix.

## Comment Imprimer un Tableau en Python

Pour imprimer un tableau en Python, vous pouvez utiliser la fonction `print()`. La syntaxe spécifique dépendra du type de tableau avec lequel vous travaillez. Voici quelques exemples :

1. Imprimer une liste Python standard :

```python
my_list = [1, 2, 3, 4, 5]
print(my_list) # Output: [1, 2, 3, 4, 5]
```

2. Imprimer un tableau NumPy :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
print(my_array) # Output: [1 2 3 4 5]
```

3. Imprimer un tableau multidimensionnel NumPy :

```python
import numpy as np

my_array = np.array([[1, 2, 3], [4, 5, 6]])
print(my_array)
```

Sortie :

```python
[[1 2 3]
 [4 5 6]]
```

## Comment trouver un élément dans un tableau

Pour trouver un élément dans un tableau en Python, vous pouvez utiliser différentes méthodes selon le type de tableau avec lequel vous travaillez. Voici quelques exemples :

1. Liste :

Si vous avez une liste Python standard, vous pouvez utiliser l'opérateur `in` ou la méthode `index()` pour trouver un élément :

```python
my_list = [1, 2, 3, 4, 5]

# Using the 'in' operator
if 3 in my_list:
    print("Element found")

# Using the 'index()' method
try:
    index = my_list.index(3)
    print("Element found at index:", index)
except ValueError:
    print("Element not found")
```

2. Tableau NumPy :

Pour un tableau NumPy, vous pouvez utiliser l'indexation booléenne ou la fonction `where()` pour trouver les indices ou valeurs qui correspondent à une condition :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

# Using boolean indexing
mask = my_array == 3
indices = np.where(mask)[0]
if indices.size > 0:
    print("Element found at indices:", indices)
else:
    print("Element not found")

# Using 'where()' function
indices = np.where(my_array == 3)[0]
if indices.size > 0:
    print("Element found at indices:", indices)
else:
    print("Element not found")
```

## La fonction `map()`

En Python, vous pouvez utiliser la fonction `map()` pour appliquer une fonction donnée à chaque élément d'un tableau ou d'un itérable. La fonction `map()` retourne un itérateur qui contient les résultats de l'application de la fonction fournie à chaque élément. Voici un exemple de comment utiliser `map()` avec un tableau :

```python
my_array = [1, 2, 3, 4, 5]

# Define a function to apply to each element
def square(x):
    return x ** 2

# Apply the square function to each element of the array using map()
result = map(square, my_array)

# Convert the result to a list
result_list = list(result)

print(result_list)  # Output: [1, 4, 9, 16, 25]
```

Dans cet exemple, la fonction `map()` est utilisée pour appliquer la fonction `square()` à chaque élément du `my_array`. La fonction `square()` élève au carré chaque nombre d'entrée, et la fonction `map()` retourne un itérateur contenant les valeurs au carré. Finalement, le résultat est converti en liste en utilisant la fonction `list()`.

Alternativement, vous pouvez utiliser une fonction lambda avec `map()` pour obtenir le même résultat de manière plus concise :

```python
my_array = [1, 2, 3, 4, 5]

# Apply the lambda function to each element of the array using map()
result = map(lambda x: x ** 2, my_array)

result_list = list(result)

print(result_list)  # Output: [1, 4, 9, 16, 25]
```

Dans ce cas, la fonction lambda `x: x ** 2` est utilisée pour élever au carré chaque élément du tableau.

La fonction `map()` est un outil utile pour appliquer une fonction à chaque élément d'un tableau ou d'un itérable en Python. Elle simplifie le processus de transformation des éléments et offre un moyen concis d'effectuer des opérations élément par élément.

## Travailler avec des tableaux JSON

En Python, vous pouvez travailler avec des tableaux JSON en utilisant le module `json`, qui fournit des fonctions pour travailler avec des données JSON. Voici un exemple de la manière de travailler avec un tableau JSON en Python :

```python
import json

# JSON array as a string
json_data = '[{"name": "John", "age": 30}, {"name": "Alice", "age": 25}, {"name": "Bob", "age": 35}]'

# Parse the JSON array string into a Python list
array = json.loads(json_data)

# Accessing elements in the array
for item in array:
    name = item['name']
    age = item['age']
    print(f"Name: {name}, Age: {age}")
```

Vous pouvez également convertir une liste Python en un tableau JSON en utilisant la fonction `json.dumps()`. Voici un exemple :

```python3
import json

# Python list
array = [
    {"name": "John", "age": 30},
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 35}
]

# Convert the Python list to a JSON array string
json_data = json.dumps(array)

print(json_data)
```

## Comment obtenir le dernier élément d'un tableau en Python

Pour obtenir le dernier élément d'un tableau en Python, vous pouvez utiliser l'indexation ou des fonctions intégrées en fonction de la structure de données avec laquelle vous travaillez. Voici quelques approches :

1. Liste :

Si vous avez une liste, vous pouvez utiliser l'indexation négative pour accéder au dernier élément. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5]

last_element = my_list[-1]

print(last_element)  # Output: 5
```

2. Tableau NumPy :

Si vous travaillez avec un tableau NumPy, vous pouvez utiliser l'indice `[-1]` pour accéder au dernier élément. Voici un exemple :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

last_element = my_array[-1]

print(last_element)  # Output: 5
```

3. Module de tableau :

Si vous utilisez le module de tableau intégré, vous pouvez utiliser l'indexation pour accéder au dernier élément. Voici un exemple :

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

last_element = my_array[-1]

print(last_element)  # Output: 5
```

## Comment sauvegarder un tableau NumPy en Python

Pour sauvegarder un tableau NumPy en Python, vous pouvez utiliser la fonction `numpy.save()` ou la fonction `numpy.savez()`. Voici comment vous pouvez utiliser chacune d'elles :

1. `numpy.save()`: Cette fonction sauvegarde un seul tableau NumPy dans un fichier binaire avec une extension `.npy`. Vous pouvez spécifier le nom de fichier ainsi que le tableau que vous souhaitez sauvegarder. Voici un exemple :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

np.save('my_array.npy', my_array)
```

2. `numpy.savez()`: Cette fonction sauvegarde plusieurs tableaux NumPy dans un seul fichier compressé `.npz`. Vous pouvez fournir un nom de fichier et passer les tableaux en arguments. Voici un exemple :

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

np.savez('my_arrays.npz', array1=array1, array2=array2)
```

## Bibliothèque `bitarray`

En Python, vous pouvez utiliser la bibliothèque `bitarray` pour travailler avec des tableaux de bits. La bibliothèque `bitarray` offre une manière flexible et efficace de manipuler des tableaux de valeurs booléennes, où chaque valeur booléenne représente un seul bit.

Pour utiliser la bibliothèque `bitarray`, vous devez d'abord l'installer. Vous pouvez l'installer en utilisant `pip` en exécutant la commande suivante :

```python
pip install bitarray
```

Une fois installé, vous pouvez commencer à travailler avec des tableaux de bits en utilisant la classe `bitarray` de la bibliothèque. Voici un exemple :

```python
import bitarray

# Create a new bit array with a specified length
my_bitarray = bitarray.bitarray(10)

# Set individual bits
my_bitarray[0] = True
my_bitarray[1] = False
my_bitarray[2] = True

# Access individual bits
print(my_bitarray[0])  # Output: True
print(my_bitarray[1])  # Output: False
print(my_bitarray[2])  # Output: True

# Set multiple bits at once
my_bitarray[3:6] = bitarray.bitarray([True, False, True])

# Access multiple bits at once
print(my_bitarray[3:6])  # Output: bitarray('101')

# Perform bitwise operations
other_bitarray = bitarray.bitarray([True, False, False, True])
result = my_bitarray & other_bitarray  # Bitwise AND operation
print(result)  # Output: bitarray('1000')

# Convert bitarray to a regular list of booleans
bit_list = my_bitarray.tolist()
print(bit_list)  # Output: [True, False, True, True, False, False, False, False, False, False]
```

## Tableaux associatifs en Python

En Python, les tableaux associatifs sont généralement implémentés à l'aide de dictionnaires. Les dictionnaires sont des collections non ordonnées de paires clé-valeur, où chaque clé est unique et associée à une valeur. Ils fournissent un moyen de stocker et de récupérer des données basées sur une clé spécifique plutôt que sur des indices numériques. Voici un exemple de comment travailler avec les dictionnaires comme tableaux associatifs en Python :

```python3
# Creating an associative array (dictionary)
student_scores = {
    "John": 85,
    "Alice": 92,
    "Bob": 78,
    "Emily": 95
}

# Accessing values using keys
print(student_scores["John"])  # Output: 85
print(student_scores["Alice"])  # Output: 92

# Modifying values
student_scores["Bob"] = 80
print(student_scores["Bob"])  # Output: 80

# Adding new key-value pairs
student_scores["David"] = 88

# Checking if a key exists
if "Emily" in student_scores:
    print("Emily's score:", student_scores["Emily"])  # Output: Emily's score: 95

# Removing a key-value pair
del student_scores["Alice"]

# Iterating over keys and values
for student, score in student_scores.items():
    print(student, "scored", score)
```

## Tableau dynamique en Python

En Python, vous pouvez utiliser la structure de données intégrée `list` pour créer un tableau dynamique. Un tableau dynamique en Python est un tableau redimensionnable qui peut croître ou se rétrécir en taille selon les besoins. La structure de données `list` fournit un redimensionnement dynamique automatiquement, vous permettant d'ajouter ou de supprimer des éléments de manière dynamique sans gérer explicitement la taille du tableau.

Voici un exemple de comment créer et utiliser un tableau dynamique en Python :

```python3
# Create an empty dynamic array
my_array = []

# Append elements dynamically
my_array.append(1)
my_array.append(2)
my_array.append(3)

print(my_array)  # Output: [1, 2, 3]

# Modify elements
my_array[1] = 4

print(my_array)  # Output: [1, 4, 3]

# Remove elements
my_array.remove(1)

print(my_array)  # Output: [4, 3]
```
