> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/array/basic-operations

Les tableaux nous permettent de stocker et de manipuler des données efficacement, nous permettant d'effectuer une large gamme de tâches. Dans cet article, nous allons explorer les opérations de base essentielles les plus courantes associées aux tableaux en Python.

## Trier et Mélanger

Trier et mélanger sont des opérations courantes dans la manipulation et l'analyse des données. En Python, il existe des fonctions et des méthodes intégrées disponibles pour effectuer ces tâches de manière efficace.

### Comment Obtenir un Tableau Trié en Python

En Python, vous pouvez trier un tableau (ou une liste) en utilisant la fonction `sorted()`. La fonction `sorted()` prend un itérable en entrée et retourne une nouvelle liste triée contenant les éléments de l'itérable original.

Voici un exemple de comment utiliser `sorted()` pour trier un tableau :

```python3
my_array = [5, 2, 1, 4, 3]
sorted_array = sorted(my_array)
print(sorted_array)  # Output: [1, 2, 3, 4, 5]
```

Dans cet exemple, `sorted(my_array)` renvoie une nouvelle liste contenant les éléments de `my_array` dans un ordre trié. La variable `sorted_array` stocke cette liste triée, et elle est ensuite affichée sur la console.

Il est important de noter que la fonction `sorted()` renvoie une nouvelle liste triée et ne modifie pas le tableau original sur place. Si vous souhaitez trier le tableau original lui-même, vous pouvez utiliser la méthode `sort()` du tableau à la place :

```python3
my_array = [5, 2, 1, 4, 3]
my_array.sort()
print(my_array)  # Output: [1, 2, 3, 4, 5]
```

Dans ce cas, `my_array.sort()` trie les éléments de `my_array` sur place, modifiant directement le tableau. Le tableau trié est ensuite affiché dans la console.

### Comment mélanger un tableau

Pour mélanger un tableau en Python, vous pouvez utiliser la fonction `random.shuffle()` du module `random`. Cette fonction mélange aléatoirement les éléments d'une séquence, sur place. Voici un exemple :

```python3
import random

my_array = [1, 2, 3, 4, 5]

random.shuffle(my_array)

print(my_array)
```

## Ajouter, Pousser, Concaténer & Étendre

Revoyons la manière d'ajouter ou de pousser des éléments dans un tableau.

### Comment Ajouter un Élément à un Tableau

Ajouter un élément à un tableau existant en Python peut se faire en utilisant la méthode `append()` fournie par le type de données liste. Voici un exemple de comment ajouter un élément à un tableau (ou liste) :

```python3
array = ['apple', 'banana', 'orange']
array.append('grape')
print(array) # Output: ['apple', 'banana', 'orange', 'grape']
```

La méthode `append()` permet d'insérer l'élément spécifié à la fin du tableau (ou de la liste). Elle modifie la liste originale sur place et ne retourne pas une nouvelle liste.

Vous pouvez ajouter des éléments de n'importe quel type de données à une liste Python, y compris des chaînes de caractères, des nombres, ou même d'autres listes.

Comme vous pouvez le voir, la méthode `append()` vous permet facilement d'élargir le tableau (ou la liste) en ajoutant de nouveaux éléments.

> Note : La méthode `append()` ne peut ajouter qu'un seul élément à la fois. Si vous souhaitez ajouter plusieurs éléments au tableau, vous pouvez utiliser la méthode `extend()` ou concaténer des listes en utilisant l'opérateur `+`.

### Comment insérer un élément dans un tableau

En Python, le concept d'"insérer" des éléments dans un tableau est généralement associé aux structures de données modifiables comme les listes. Les structures de données modifiables vous permettent de modifier les éléments en ajoutant, en supprimant ou en modifiant des valeurs. Par conséquent, c'est la même approche que la méthode `append()`, vous pouvez "insérer" des éléments dans un tableau en utilisant une liste :

```python3
my_list = []  # Initialize an empty list

# Pushing elements into the list
my_list.append(1)
my_list.append(2)
my_list.append(3)

print(my_list)  # Output: [1, 2, 3]
```

> Remarque : Cette approche s'applique spécifiquement aux listes en Python. D'autres structures de données, comme les tableaux NumPy ou les tuples immuables, ont des méthodes ou des limites différentes pour modifier leur contenu.

### Comment concaténer des tableaux en Python

Pour concaténer des tableaux en Python, vous pouvez utiliser diverses méthodes, selon le type de tableaux avec lesquels vous travaillez. Voici quelques exemples de comment combiner des tableaux :

1. En utilisant l'opérateur `+` avec des listes Python standard :

```python3
array1 = [1, 2, 3]
array2 = [4, 5, 6]
concatenated = array1 + array2
print(concatenated) # Output: [1, 2, 3, 4, 5, 6]
```

2. Utilisation de la fonction `concatenate()` de NumPy :

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.concatenate((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

3. Utilisation des fonctions `hstack()` ou `vstack()` de NumPy pour une concaténation horizontale ou verticale, respectivement :

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.hstack((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

Dans cet exemple, nous utilisons la fonction `hstack()` pour empiler horizontalement `array1` et `array2`, ce qui résulte en un nouveau tableau `concatenated` qui contient les éléments concaténés dans une seule rangée.

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.vstack((array1, array2))
print(concatenated)
```

Sortie :

```python
[[1 2 3]
 [4 5 6]]
```

Dans cet exemple, nous utilisons la fonction `vstack()` pour empiler verticalement `array1` et `array2`, ce qui résulte en un nouveau tableau `concatenated` qui contient les éléments concaténés en deux rangées.

### Comment Étendre un Tableau en Python

Il existe diverses méthodes qui nous permettent d'étendre un tableau en Python. Voici quelques approches pour fusionner ou combiner des tableaux en Python :

1. Liste :

Si vous avez une liste, vous pouvez utiliser la méthode `extend()` pour ajouter des éléments d'un autre itérable à la fin de la liste. Voici un exemple :

```python
my_list = [1, 2, 3]
new_elements = [4, 5, 6]

my_list.extend(new_elements)

print(my_list)
```

2. NumPy :

Si vous travaillez avec des tableaux NumPy, vous pouvez utiliser la fonction `concatenate()` pour combiner deux tableaux le long d'un axe spécifié. Voici un exemple :

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

extended_array = np.concatenate((array1, array2))

print(extended_array)
```

3. Module Array :

Si vous utilisez le module `array` intégré, vous pouvez utiliser la méthode `extend()` pour ajouter des éléments d'un autre itérable à la fin du tableau. Voici un exemple :

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3])
new_elements = arr.array('i', [4, 5, 6])

my_array.extend(new_elements)

print(my_array)
```

## Fonction `getsizeof()`

En Python, il n'y a pas de fonction intégrée appelée `sizeof()` pour obtenir directement la taille d'un tableau ou d'une liste. Cependant, vous pouvez utiliser la fonction `getsizeof()` du module `sys` pour obtenir une estimation de la taille de la mémoire occupée par un objet.

Voici un exemple :

```python3
import sys

my_list = [10, 20, 30, 40, 50]
size = sys.getsizeof(my_list)

print(size)  # Output: 104 (the size in bytes)
```

Dans l'exemple ci-dessus, nous importons le module `sys` et utilisons la fonction `getsizeof()` pour obtenir la taille de l'objet `my_list` en octets.
> Note : La valeur retournée par `getsizeof()` inclut la surcharge de l'objet liste lui-même et peut ne pas fournir une représentation exacte de la mémoire occupée par les éléments du tableau/liste.

## Inverser et Transposer

Assez souvent, nous rencontrons des situations en Python où nous avons besoin d'inverser ou de transposer un tableau.

### Comment inverser un tableau en Python

Vous pouvez inverser ou retourner un tableau (liste) en Python en utilisant diverses méthodes. Voici quelques approches courantes pour inverser un tableau en Python :

1. En utilisant la méthode `reverse()` :

```python3
my_list = [10, 20, 30, 40, 50]
my_list.reverse()
print(my_list)  # Output: [50, 40, 30, 20, 10]
```

2. En utilisant la technique de découpage :

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = my_list[::-1]
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

3. Utilisation de la fonction `reversed()`:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = list(reversed(my_list))
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

Les trois méthodes atteignent le même résultat. La première méthode utilise la méthode `reverse()`, qui inverse les éléments de la liste sur place, modifiant la liste originale. La deuxième méthode utilise le découpage avec une valeur de pas de -1 (`[::-1]`), ce qui crée une nouvelle liste avec les éléments dans l'ordre inverse. La troisième méthode utilise la fonction `reversed()` pour créer un itérateur inverse, qui est ensuite converti en liste à l'aide de la fonction `list()`.

### Comment transposer un tableau en Python

Pour transposer une liste et un tableau NumPy en Python, vous pouvez suivre les étapes ci-dessous :

Transposer une liste :

1. Créez une liste de listes où chaque liste intérieure représente une ligne de la matrice originale.

2. Utilisez la fonction `zip(*list)` pour transposer la liste.

Voici un exemple :

```python
# Create a sample list
list_of_lists = [[1, 2, 3],
                 [4, 5, 6]]

# Transpose the list
transposed_list = list(zip(*list_of_lists))

print(transposed_list) # Output: [(1, 4), (2, 5), (3, 6)]
```

Transposer un tableau NumPy :

Pour transposer un tableau NumPy, vous pouvez utiliser la fonction `transpose()` fournie par la bibliothèque NumPy, comme montré dans l'exemple précédent. Voici un exemple spécifique à un tableau NumPy :

```python3
import numpy as np

# Create a sample array
array = np.array([[1, 2, 3],
                  [4, 5, 6]])

# Transpose the array
transposed_array = np.transpose(array)

print(transposed_array)
```

Sortie :

```python
[[1 4]
 [2 5]
 [3 6]]
```

## Comment vérifier si un tableau est vide

Pour vérifier si un tableau est vide en Python, vous pouvez utiliser la fonction `len()` ou une comparaison directe avec un tableau vide. Voici comment vous pouvez le faire pour différents types de tableaux :

1. Liste :

```python
my_list = []  # Empty list

# Using len() function
if len(my_list) == 0:
    print("Array is empty")

# Direct comparison
if my_list == []:
    print("Array is empty")
```

2. Tableau NumPy :

```python3
import numpy as np

my_array = np.array([])  # Empty NumPy array

# Using len() function
if len(my_array) == 0:
    print("Array is empty")

# Direct comparison
if np.array_equal(my_array, np.array([])):
    print("Array is empty")
```

## Comment copier un tableau

Vous pouvez copier un tableau en Python en utilisant plusieurs approches. Voici quelques méthodes courantes pour copier des tableaux :

1. Liste :

Pour une liste Python standard, vous pouvez utiliser la syntaxe de tranchage `[:]` ou la méthode `copy()` pour créer une copie :

En utilisant le tranchage :

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list[:]
```

En utilisant la méthode `copy()`:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list.copy()
```

2. Tableau NumPy :

Pour un tableau NumPy, vous pouvez utiliser la fonction `copy()` pour créer une copie :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
my_array_copy = np.copy(my_array)
```

## Comment filtrer un tableau

Pour filtrer un tableau en Python, vous pouvez utiliser diverses méthodes selon le type de tableau avec lequel vous travaillez. Voici quelques approches courantes :

1. Compréhension de liste :

Pour une liste Python standard, vous pouvez utiliser la compréhension de liste pour créer une nouvelle liste qui contient uniquement les éléments souhaités basés sur une condition spécifique. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5
filtered_list = [x for x in my_list if x > 5]

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

2. Fonction de filtrage :

Vous pouvez également utiliser la fonction intégrée `filter()` avec une fonction lambda ou une fonction personnalisée pour filtrer des éléments d'une liste basée sur une condition donnée. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5 using lambda function
filtered_list = list(filter(lambda x: x > 5, my_list))

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

3. Tableau NumPy :

Pour un tableau NumPy, vous pouvez utiliser l'indexation booléenne pour filtrer les éléments basés sur une condition. Voici un exemple :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# Filter elements greater than 5
filtered_array = my_array[my_array > 5]

print(filtered_array)  # Output: [ 6  7  8  9 10]
```

## Comment joindre un tableau en Python

Vous pouvez joindre un tableau en Python en utilisant plusieurs méthodes différentes. Voici quelques approches communes :

1. Joindre les éléments d'une liste :

Pour une liste Python standard, vous pouvez utiliser la méthode `join()` des chaînes pour joindre les éléments de la liste en une seule chaîne. Voici un exemple :

```python3
my_list = ['Hello', 'World', 'Python']

# Join the list elements with a space separator
joined_string = ' '.join(my_list)

print(joined_string)  # Output: 'Hello World Python'
```

Dans cet exemple, la méthode `join()` est utilisée avec un espace `' '` comme séparateur pour joindre les éléments de la liste en une seule chaîne.

2. Jointure des éléments d'un tableau NumPy :

Pour un tableau NumPy, vous pouvez utiliser la méthode join() de l'objet char de NumPy pour joindre les éléments du tableau en une seule chaîne. Voici un exemple :

```python3
import numpy as np

my_array = np.array(['Hello', 'World', 'Python'])

# Join the array elements with a space separator
joined_string = np.char.join(' ', my_array)

print(joined_string)  # Output: ['H e l l o' 'W o r l d' 'P y t h o n']
```

Dans cet exemple, la méthode `join()` de `np.char` est utilisée avec un espace `' '` comme séparateur pour joindre les éléments du tableau en une seule chaîne.

## Le Calcul de la Somme du Tableau

Vous pouvez utiliser différentes méthodes pour calculer la somme des éléments d'un tableau en Python. Voici quelques approches courantes :

1. Liste :

Pour une liste Python standard, vous pouvez utiliser la fonction intégrée `sum()` pour calculer la somme de tous les éléments :

```python
my_list = [1, 2, 3, 4, 5]
array_sum = sum(my_list)
print(array_sum)
```

2. Tableau NumPy :

Pour un tableau NumPy, vous pouvez utiliser la fonction `sum()` de la bibliothèque NumPy pour calculer la somme de tous les éléments :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
array_sum = np.sum(my_array)
print(array_sum)
```

## Élément maximal d'un tableau

Pour trouver la valeur maximale dans un tableau en Python, vous pouvez utiliser la fonction intégrée `max()` ou la fonction `max()` de la bibliothèque numpy. Voici comment vous pouvez utiliser les deux approches :

En utilisant la fonction intégrée `max()` :

```python
my_array = [5, 2, 9, 1, 7]

# Find the maximum value in the array using the max() function
max_value = max(my_array)

print(max_value)  # Output: 9
```

En utilisant la bibliothèque numpy :

```python
import numpy as np

my_array = np.array([5, 2, 9, 1, 7])

# Find the maximum value in the array using the max() function from numpy
max_value = np.max(my_array)

print(max_value)  # Output: 9
```

## Aplatir, Fractionner, Découper & Convertir en tableau 2D

En Python, aplatir, fractionner et convertir en tableau 2D sont des opérations courantes lorsque l'on traite des structures de données multidimensionnelles. Passons en revue les bases.

### Comment aplatir un tableau

Vous pouvez utiliser différentes méthodes pour aplatir un tableau en Python. Voici quelques approches pour différents types de tableaux :

1. Aplatir une liste imbriquée :

Vous pouvez utiliser la compréhension de liste et la récursion pour aplatir une liste imbriquée. Voici un exemple :

```python3
def flatten_list(nested_list):
    flattened = []
    for item in nested_list:
        if isinstance(item, list):
            flattened.extend(flatten_list(item))
        else:
            flattened.append(item)
    return flattened

nested_list = [[1, 2, 3], [4, [5, 6]], [7, 8, 9]]
flattened_list = flatten_list(nested_list)
print(flattened_list) # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

2. Aplatir un tableau NumPy :

Vous pouvez utiliser la méthode `flatten()` fournie par NumPy pour aplatir un tableau. Voici un exemple :

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.flatten()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

3. Aplatir un tableau multidimensionnel avec NumPy :

Si vous avez un tableau NumPy multidimensionnel et souhaitez l'aplatir, vous pouvez utiliser la méthode ravel(). Voici un exemple :

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.ravel()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

### Comment convertir un tableau 1d en tableau 2d en Python

Pour convertir un tableau 1d en tableau 2d en Python, vous pouvez utiliser la méthode `reshape()` fournie par la bibliothèque NumPy. La méthode `reshape()` vous permet de changer la forme d'un tableau sans modifier ses données. Voici un exemple de comment remodeler un tableau :

```python3
import numpy as np

# 1d array
arr_1d = np.array([1, 2, 3, 4, 5, 6])

# Convert to 2d array
arr_2d = arr_1d.reshape((2, 3))

print(arr_2d)
```

Sortie :

```python
[[1 2 3]
 [4 5 6]]
```

La méthode `reshape()` prend la forme souhaitée du tableau comme argument. Dans ce cas, nous passons `(2, 3)` pour remodeler le tableau en une matrice 2x3. Le nombre d'éléments dans le tableau 1d original doit correspondre au nombre d'éléments dans la forme spécifiée. Si le nombre d'éléments n'est pas compatible, une `ValueError` sera levée.

> Note : La méthode `reshape()` renvoie un nouveau tableau avec la forme souhaitée ; elle ne modifie pas le tableau original.

### Comment diviser un tableau en morceaux

Pour diviser un tableau en morceaux en Python, vous pouvez utiliser différentes méthodes en fonction du type de tableau ou de structure de données avec lesquels vous travaillez. Voici quelques approches :

1. Compréhension de liste :

Si vous avez une liste, vous pouvez utiliser la compréhension de liste pour la diviser en morceaux d'une taille spécifique. Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
chunk_size = 3

chunks = [my_list[i:i+chunk_size] for i in range(0, len(my_list), chunk_size)]

print(chunks)
```

2. NumPy :

Si vous travaillez avec des tableaux NumPy, vous pouvez utiliser la fonction `array_split()` pour diviser le tableau en morceaux de taille égale. Voici un exemple :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = np.array_split(my_array, len(my_array) // chunk_size)

print(chunks)
```

3. Module de tableau : 

Si vous utilisez le module `array` intégré, vous pouvez utiliser une boucle pour diviser le tableau en morceaux. Voici un exemple :

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = [my_array[i:i+chunk_size] for i in range(0, len(my_array), chunk_size)]

print(chunks)
```

### Découper un tableau en Python

Pour découper un tableau (ou une liste) en Python, vous pouvez utiliser la notation de découpe `array[start:stop:step]`, où :

- **start** est l'indice où commence la découpe (inclus).
- **stop** est l'indice où se termine la découpe (exclus).
- **step** est l'intervalle entre les indices (optionnel, la valeur par défaut est 1).

Voici quelques exemples de découpage d'un tableau en Python :

```python3
my_array = [10, 20, 30, 40, 50, 60, 70, 80]

# Slice from index 2 to 5 (exclusive)
slice_1 = my_array[2:5]
print(slice_1)  # Output: [30, 40, 50]

# Slice from index 1 to the end of the array
slice_2 = my_array[1:]
print(slice_2)  # Output: [20, 30, 40, 50, 60, 70, 80]

# Slice from the beginning to index 4 (exclusive)
slice_3 = my_array[:4]
print(slice_3)  # Output: [10, 20, 30, 40]

# Slice with a step of 2
slice_4 = my_array[1:7:2]
print(slice_4)  # Output: [20, 40, 60]

# Slice in reverse order
slice_5 = my_array[::-1]
print(slice_5)  # Output: [80, 70, 60, 50, 40, 30, 20, 10]
```

Dans les exemples ci-dessus, nous avons un tableau appelé `my_array`. En spécifiant les valeurs `start`, `stop` et `step` appropriées, nous pouvons diviser le tableau en créant différentes tranches de celui-ci.

Le premier exemple crée une tranche de l'indice 2 à 5 (exclus), résultant en `[30, 40, 50]`. Le deuxième exemple crée une tranche de l'indice 1 à la fin du tableau, résultant en `[20, 30, 40, 50, 60, 70, 80]`. Le troisième exemple crée une tranche du début à l'indice 4 (exclus), résultant en `[10, 20, 30, 40]`. Le quatrième exemple crée une tranche avec un pas de 2, résultant en `[20, 40, 60]`. Le cinquième exemple crée une tranche dans l'ordre inverse en utilisant une valeur de pas négative (`[::-1]`), résultant en `[80, 70, 60, 50, 40, 30, 20, 10]`.

## Comment tracer un tableau en Python

Pour tracer un tableau en Python, vous pouvez utiliser différentes bibliothèques en fonction du type de tableau et du tracé souhaité. Voici des exemples utilisant des bibliothèques populaires :

1. Matplotlib (pour les tableaux 1D et 2D) :

Matplotlib est une bibliothèque de tracé largement utilisée en Python. Vous pouvez l'utiliser pour tracer des tableaux 1D et 2D. Voici un exemple :

```python3
import numpy as np
import matplotlib.pyplot as plt

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
plt.plot(array_1d)
plt.show()

# Plotting a 2D array as an image
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
plt.imshow(array_2d, cmap='gray')
plt.show()
```

2. Seaborn (pour la visualisation statistique) :

Seaborn est une bibliothèque de visualisation de données statistiques basée sur Matplotlib. Elle fournit des fonctions de niveau supérieur pour créer des graphiques informatifs. Voici un exemple :

```python
import numpy as np
import seaborn as sns

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
sns.lineplot(x=np.arange(len(array_1d)), y=array_1d)
plt.show()

# Plotting a 2D array as a heatmap
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
sns.heatmap(array_2d, annot=True, cmap='coolwarm')
plt.show()
```

## Dimensions de tableau

Vous pouvez déterminer les dimensions d'un tableau avec différentes bibliothèques et structures de données. Voici quelques approches :

1. NumPy :

Si vous travaillez avec des tableaux NumPy, vous pouvez utiliser l'attribut `shape` pour obtenir les dimensions du tableau. Voici un exemple :

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])

# Get the dimensions of the array
dimensions = array.shape

print(dimensions)  # Output: (2, 3)
```

Liste de Listes :

Si vous avez un tableau représenté comme une liste de listes, vous pouvez utiliser la fonction `len()` pour déterminer les dimensions. Voici un exemple de comment déterminer la forme d'un tableau :

```python
array = [[1, 2, 3], [4, 5, 6]]

# Get the dimensions of the array
rows = len(array)
columns = len(array[0])

print(rows, columns)  # Output: 2 3
```

3. Module de tableau :

Si vous utilisez le module de tableau intégré, vous pouvez utiliser la fonction len() pour déterminer la taille du tableau. Voici un exemple :

```python
import array as arr

array = arr.array('i', [1, 2, 3, 4, 5])

# Get the dimensions of the array
size = len(array)

print(size)  # Output: 5
```

## Un tableau contient-il un élément particulier ?

Pour vérifier si une valeur est présente dans un tableau en Python, vous pouvez utiliser différentes approches en fonction du type de tableau ou de structure de données avec lequel vous travaillez. Voici quelques exemples :

1. Liste :

Si vous avez une liste, vous pouvez utiliser l'opérateur `in` pour vérifier si une valeur est présente. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5]

# Check if the value 3 is present in the list
if 3 in my_list:
    print("Value 3 is present in the list")
```

2. Tableau NumPy :

Si vous travaillez avec un tableau NumPy, vous pouvez utiliser la fonction `np.isin()` pour vérifier si une valeur est présente. Voici un exemple :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if np.isin(3, my_array):
    print("Value 3 is present in the array")
```

3. Module de tableau :

Si vous utilisez le module intégré `array`, vous pouvez utiliser une boucle ou la méthode `index()` pour vérifier si une valeur est présente. Voici un exemple :

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if 3 in my_array:
    print("Value 3 is present in the array")
```

## Opérations sur les Tableaux

En Python, vous pouvez effectuer différentes opérations sur les tableaux en utilisant différentes bibliothèques et structures de données. Voici quelques opérations couramment utilisées :

1. Opérations Mathématiques avec NumPy :

NumPy offre une large gamme d'opérations mathématiques pour les tableaux, telles que les opérations élément par élément, l'algèbre linéaire, les opérations statistiques, et plus encore. Voici quelques exemples :

```python
import numpy as np

# Element-wise operations
array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

addition = array1 + array2
subtraction = array1 - array2
multiplication = array1 * array2
division = array1 / array2

# Linear algebra operations
matrix1 = np.array([[1, 2], [3, 4]])
matrix2 = np.array([[5, 6], [7, 8]])

matrix_multiplication = np.dot(matrix1, matrix2)
matrix_inverse = np.linalg.inv(matrix1)
eigenvalues, eigenvectors = np.linalg.eig(matrix1)

# Statistical operations
data = np.array([1, 2, 3, 4, 5, 6])
mean = np.mean(data)
median = np.median(data)
std_deviation = np.std(data)
```

2. Opérations sur les listes :

Pour les tableaux représentés en tant que listes Python, vous pouvez effectuer des opérations de base telles que la concaténation, le découpage, l'ajout, et plus encore. Voici quelques exemples :

```python
# Concatenation
list1 = [1, 2, 3]
list2 = [4, 5, 6]

concatenated_list = list1 + list2

# Slicing
array = [1, 2, 3, 4, 5]
sliced_array = array[1:4]  # [2, 3, 4]

# Appending
array = [1, 2, 3]
array.append(4)
```

Ce ne sont que quelques exemples des opérations que vous pouvez effectuer sur les tableaux en Python.

## Comment comparer des tableaux

Voyons comment comparer des tableaux en Python. Voici quelques approches :

1. NumPy :

Si vous travaillez avec des tableaux NumPy, vous pouvez utiliser les opérateurs de comparaison élément par élément fournis par NumPy. Voici un exemple :

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([1, 4, 3])

# Element-wise comparison
result = array1 == array2

print(result)
```

Vous pouvez également utiliser d'autres opérateurs de comparaison élément par élément tels que `<`, `>`, `<=`, `>=`, `!=`, etc., pour effectuer différents types de comparaisons.

2. Liste :

Si vous avez des listes, vous pouvez les comparer en utilisant l'opérateur `==`. Voici un exemple :

```python3
list1 = [1, 2, 3]
list2 = [1, 4, 3]

# Compare lists
result = list1 == list2

print(result)
```

> Note : L'opérateur `==` compare les éléments et l'ordre des éléments dans les listes. Si vous souhaitez vérifier si les listes ont les mêmes éléments (en ignorant l'ordre), vous pouvez utiliser la fonction `set()` pour convertir les listes en ensembles, puis les comparer.

3. Module de tableau :

Si vous utilisez le module `array` intégré, vous pouvez comparer les tableaux élément par élément en utilisant une boucle. Voici un exemple :

```python3
import array as arr

array1 = arr.array('i', [1, 2, 3])
array2 = arr.array('i', [1, 4, 3])

# Element-wise comparison
result = [a == b for a, b in zip(array1, array2)]

print(result)
```

## Multiplication de Tableaux

Pour effectuer la multiplication élément par élément de tableaux en Python, vous pouvez utiliser l'opérateur `*` pour les tableaux NumPy ou la compréhension de liste pour les listes Python régulières. Voici comment vous pouvez effectuer une multiplication de tableaux en utilisant ces deux approches :

1. Tableaux NumPy :

Si vous travaillez avec des tableaux NumPy, vous pouvez utiliser l'opérateur `*` pour effectuer une multiplication élément par élément. Voici un exemple :

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

result = array1 * array2

print(result) # Output will be: [ 4 10 18]
```

2. Listes Python utilisant la compréhension de liste :

Si vous travaillez avec des listes Python régulières, vous pouvez utiliser la compréhension de liste pour effectuer une multiplication élément par élément. Voici un exemple :

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

result = [a * b for a, b in zip(list1, list2)]

print(result) # Output will be: [4, 10, 18]
```

## Supprimer un élément ou vider un tableau

Voyons les manières de supprimer des éléments d'un tableau.

### Comment supprimer le premier élément d'un tableau en Python

Il existe plusieurs façons de supprimer le premier élément d'un tableau en Python. Voici quelques exemples :

1. Suppression du premier élément d'une liste Python standard en utilisant le découpage :

```python
my_list = [1, 2, 3, 4, 5]
new_list = my_list[1:]
print(new_list) # Output: [2, 3, 4, 5]
```

2. Supprimer le premier élément d'un tableau NumPy en utilisant le slicing :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = my_array[1:]
print(new_array) # Output: [2 3 4 5]
```

3. Modification du tableau original sur place en utilisant la fonction `delete()` de NumPy :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = np.delete(my_array, 0)
print(new_array) # Output: [2 3 4 5]
```

> Remarque : Dans les deux premiers exemples, nous créons une nouvelle liste ou un nouveau tableau sans modifier l'original. Dans le troisième exemple, la fonction `delete()` renvoie un nouveau tableau, mais elle modifie le tableau original sur place.

Choisissez la méthode qui convient à vos besoins en fonction de si vous souhaitez créer un nouveau tableau sans le premier élément ou modifier le tableau original lui-même.

### Méthode `pop()` pour tableau

En Python, vous pouvez utiliser la méthode `pop()` pour supprimer et renvoyer un élément d'un tableau ou d'une liste. La méthode `pop()` supprime par défaut le dernier élément, mais vous pouvez également spécifier l'indice de l'élément que vous souhaitez supprimer. Voici quelques exemples :

1. Liste :

Si vous travaillez avec une liste, vous pouvez utiliser la méthode `pop()` pour supprimer et renvoyer le dernier élément. Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop()

print(popped_element)  # Output: 5
print(my_list)         # Output: [1, 2, 3, 4]
```

Vous pouvez également passer un index à la méthode `pop()` pour supprimer et retourner un élément à une position spécifique. Par exemple :

```python
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop(2)

print(popped_element)  # Output: 3
print(my_list)         # Output: [1, 2, 4, 5]
```

2. Module Array :

Si vous utilisez le module `array` intégré, vous pouvez utiliser la méthode `pop()` pour supprimer et retourner le dernier élément. Voici un exemple :

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

popped_element = my_array.pop()

print(popped_element)  # Output: 5
print(my_array)        # Output: array('i', [1, 2, 3, 4])
```

> Note : La méthode `pop()` est disponible uniquement pour les listes et non pour les tableaux NumPy.

### Comment vider un tableau

Pour vider un tableau en Python, vous pouvez assigner un tableau ou une liste vide à la variable représentant le tableau. Voici comment vous pouvez vider un tableau en utilisant ces deux approches :

1. Vider un tableau NumPy :

Si vous travaillez avec un tableau NumPy, vous pouvez assigner un tableau NumPy vide à la variable. Voici un exemple :

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

my_array = np.array([])

print(my_array) # Output: []
```

2. Effacer une liste Python régulière :

Si vous travaillez avec une liste Python régulière, vous pouvez assigner une liste vide à la variable. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5]

my_list = []

print(my_list) # Output: []
```

## Comment supprimer les doublons d'un tableau trié en Python

Voyons comment supprimer les doublons d'un tableau trié en Python. Voici une méthode courante utilisant une liste :

```python3
sorted_array = [1, 1, 2, 2, 3, 4, 4, 5, 5, 5]

# Create a new list with unique elements
unique_array = []
for num in sorted_array:
    if num not in unique_array:
        unique_array.append(num)

print(unique_array)  # Output: [1, 2, 3, 4, 5]
```

Alternativement, si vous travaillez avec un tableau NumPy, vous pouvez utiliser la fonction `np.unique()` pour obtenir le même résultat :

```python3
import numpy as np

sorted_array = np.array([1, 1, 2, 2, 3, 4, 4, 5, 5, 5])

# Get unique elements from the sorted array
unique_array = np.unique(sorted_array)

print(unique_array)  # Output: [1 2 3 4 5]
```
