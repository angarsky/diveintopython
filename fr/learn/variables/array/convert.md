> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/array/convert

En Python, la conversion entre listes et tableaux est une tâche courante lorsqu'il s'agit de données numériques. Le processus de conversion d'une liste à un tableau nous permet de tirer parti de calculs et opérations numériques efficaces fournis par des bibliothèques telles que NumPy. D'autre part, dans certains cas, nous avons besoin de créer un tableau 2d à partir d'un tableau 1d. Revisons donc les sujets les plus courants concernant les conversions liées au tableau.

## Conversion Entre Listes et Tableaux NumPy

Les conversions entre listes et tableaux NumPy offrent une flexibilité dans la manipulation des données et facilitent l'intégration transparente avec d'autres bibliothèques de calcul numérique en Python.

### Comment Convertir un Tableau NumPy en Liste Python

Pour convertir un tableau NumPy en liste Python, vous pouvez utiliser la méthode `tolist()` fournie par la bibliothèque NumPy. Cette méthode convertit un tableau NumPy en une liste Python imbriquée. Voici un exemple :

```python3
import numpy as np

numpy_array = np.array([1, 2, 3, 4, 5])
python_list = numpy_array.tolist()
print(python_list) # Output: [1, 2, 3, 4, 5]
```

De même, si vous avez un tableau NumPy multidimensionnel, la méthode `tolist()` le convertira en une structure de liste Python imbriquée :

```python3
import numpy as np

numpy_array = np.array([[1, 2, 3], [4, 5, 6]])
python_list = numpy_array.tolist()
print(python_list) # Output: [[1, 2, 3], [4, 5, 6]]
```

Dans cet exemple, le `numpy_array` est un tableau NumPy 2D avec deux lignes et trois colonnes. La méthode `tolist()` le convertit en une liste Python imbriquée ayant la même structure.

### Conversion de Liste en Tableau en Python

Pour convertir une liste Python en tableau, vous pouvez utiliser la fonction `array()` fournie par la bibliothèque NumPy. La fonction `array()` crée un nouveau tableau NumPy à partir des éléments de la liste donnée. Voici un exemple de conversion de liste en tableau :

```python3
import numpy as np

my_list = [1, 2, 3, 4, 5]
my_array = np.array(my_list)
print(my_array) # Output: [1 2 3 4 5]
```

Les tableaux NumPy sont homogènes, ce qui signifie qu'ils ne peuvent contenir que des éléments du même type de données. Si les éléments de la liste sont de types différents, NumPy effectuera automatiquement une conversion ascendante des éléments vers un type de données commun.

Par exemple :

```python3
import numpy as np

my_list = [1, 2.5, 'three', True]
my_array = np.array(my_list)
print(my_array) # Output: ['1' '2.5' 'three' 'True']
```

Dans ce cas, les éléments de la liste ont des types de données différents (`int`, `float`, `str`, et `bool`). NumPy convertit tous les éléments vers le type de données commun, qui dans ce cas est `str`. Le tableau résultant contient des chaînes de caractères représentant les éléments de la liste.

## Conversion entre Chaîne et Tableau

Convertir entre des chaînes et des tableaux en Python peut être utile lorsqu'on travaille avec des données textuelles ou lors de la manipulation de caractères individuels.

### Conversion de Chaîne Python en Tableau

Pour convertir une chaîne Python en un tableau de caractères individuels, vous pouvez itérer sur la chaîne et créer une liste de caractères. Voici un exemple :

```python3
string = "Hello, world!"
array = [char for char in string]
print(array) # Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

Dans l'exemple ci-dessus, nous itérons sur chaque caractère de la chaîne en utilisant une compréhension de liste. Chaque caractère est ajouté à la liste, aboutissant à un tableau où chaque élément représente un caractère individuel de la chaîne.

Si vous souhaitez diviser la chaîne en un tableau de mots au lieu de caractères, vous pouvez utiliser la méthode `split()`. Par défaut, la méthode `split()` divise la chaîne en se basant sur les caractères d'espacement (espaces, tabulations, sauts de ligne). Voici un exemple :

```python
string = "Hello, world! How are you?"
array = string.split()
print(array) # Output: ['Hello,', 'world!', 'How', 'are', 'you?']
```

Dans cet exemple, la méthode `split()` divise la chaîne en une liste de sous-chaînes basée sur les caractères d'espacement, résultant en un tableau où chaque élément représente un mot de la chaîne.

### Conversion de Tableau en Chaîne

Pour convertir un tableau (ou liste) en chaîne dans Python, vous pouvez utiliser la méthode `join()`. La méthode `join()` concatène les éléments d'un itérable en une seule chaîne, en utilisant un délimiteur spécifié. Voici un exemple :

```python3
array = ['Hello', 'world', 'How', 'are', 'you?']
string = ' '.join(array)
print(string) # Output: Hello world How are you?
```

En changeant le délimiteur passé à la méthode `join()`, vous pouvez modifier la façon dont les éléments sont séparés dans la chaîne de caractères résultante. Par exemple, en utilisant une virgule (',') comme délimiteur :

```python3
array = ['apple', 'banana', 'orange']
string = ', '.join(array)
print(string) # Output: apple, banana, orange
```
