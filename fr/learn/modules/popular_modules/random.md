> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/modules/popular-modules/random

Le module Random en Python est une bibliothèque largement utilisée qui permet aux développeurs de générer des nombres aléatoires, de mélanger des listes et de faire d'autres sélections aléatoires pour leurs applications. Il offre une gamme de fonctions qui peuvent être utilisées pour créer des données aléatoires et peut être utile dans diverses applications telles que les jeux, les simulations, la cryptographie et d'autres domaines où il y a un besoin de hasard. Avec ce module, les développeurs ont la liberté de créer de la diversité dans la sortie de leur application, rendant ainsi les applications plus intrigantes.

## Exemples d'utilisation du Module Random

Le module [random](https://docs.python.org/3/library/random.html) (`random` library) en Python est utilisé pour générer des nombres pseudo-aléatoires.

### Obtenir un Nombre Aléatoire

```python3
import random

# Generate a random number between 1 and 10 (inclusive)
random_number = random.randint(1, 10)
print(random_number)

# Output:
# 5 (this number will be different each time the code is run)
```

Dans l'exemple ci-dessus, la fonction `random.randint(a, b)` est utilisée pour générer un entier aléatoire entre les valeurs de `a` et `b`, incluant les deux extrémités. Dans ce cas, le nombre aléatoire généré sera entre `1` et `10`.

### Sélection aléatoire dans une liste

```python3
import random

# Generate a random choice from a list of options
options = ["rock", "paper", "scissors"]
random_option = random.choice(options)
print(random_option)

# Output:
# "paper" (this option will be different each time the code is run)
```

Dans cet exemple, la fonction `random.choice(seq)` est utilisée pour générer un choix aléatoire à partir d'une liste d'options. Dans ce cas, le choix aléatoire généré sera l'une des trois options de la liste `options` - `rock`, `paper` ou `scissors`.

## Graine Aléatoire

La Graine Aléatoire joue un rôle crucial dans la génération de nombres aléatoires en Python. Elle est utilisée pour initialiser le générateur de nombres pseudo-aléatoires, qui est une fonction qui génère une séquence de nombres qui semblent être aléatoires, mais qui sont en fait déterministes.

```python
import random

# Setting the random seed value to 123
random.seed(123)

# Generating 5 random numbers
for i in range(5):
    print(random.random())
```

Dans cet exemple, nous fixons la valeur de la graine aléatoire à `123`, ce qui garantit que la même séquence de nombres aléatoires est générée chaque fois que le code est exécuté.

```python3
import random

# Setting different random seed values
random.seed(123)
list_1 = [random.randint(1,10) for i in range(5)]

random.seed(456)
list_2 = [random.randint(1,10) for i in range(5)]

# Printing the lists
print(list_1)
print(list_2)
```

Dans cet exemple, nous définissons différentes valeurs de graines aléatoires pour générer deux listes différentes. En faisant cela, nous nous assurons que les listes sont reproductibles et peuvent être générées à nouveau avec les mêmes valeurs de graine `random`.

Globalement, la graine `random` est une fonctionnalité essentielle pour générer et reproduire des nombres `random` en Python. En définissant la graine, nous pouvons assurer que nos résultats sont cohérents et reproductibles.

## Comment générer une chaîne aléatoire

Si vous cherchez à générer une chaîne aléatoire en Python, il existe quelques méthodes différentes que vous pouvez utiliser selon vos besoins. Voici deux exemples :

```python3
import random
import string

def random_string(length):
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(length))

# Example usage
print(random_string(10))  # Output: 'gjwstqyeqh'
```

Dans cet exemple, nous utilisons les modules intégrés de Python `random` et `string` pour générer une chaîne de caractères d'une longueur donnée. Nous commençons par définir une **fonction aléatoire** appelée `random_string` qui prend un paramètre `length` qui spécifie le nombre de caractères dans la chaîne résultante. Nous utilisons ensuite la constante `string.ascii_lowercase` pour obtenir toutes les `lettres` minuscules de l'alphabet, et `random.choice` pour sélectionner aléatoirement des caractères de cette chaîne pour la longueur de notre chaîne spécifiée.

```python
import random

# random function

def random_string(chars, length):
    return ''.join(random.choice(chars) for i in range(length))

# Example usage
print(random_string('ABC123', 8))  # Output: '31C1C1CA'
```

Si vous voulez plus de contrôle sur les caractères dans la chaîne résultante, vous pouvez spécifier un ensemble de caractères parmi lesquels choisir. Dans cet exemple, nous définissons notre propre ensemble de caractères parmi lesquels choisir en passant une chaîne de caractères possibles à la **fonction aléatoire** `random_string`. Nous utilisons ensuite `random.choice` pour sélectionner aléatoirement des caractères de cet ensemble pour la longueur de notre chaîne spécifiée.

Avec ces deux exemples, vous devriez être capable de générer facilement des chaînes aléatoires en Python pour tout besoin que vous avez. N'oubliez pas d'`importer` les modules nécessaires et de choisir la méthode appropriée en fonction de vos besoins spécifiques.

## Échantillonnage Aléatoire

L'échantillonnage aléatoire est une technique statistique importante utilisée par les analystes de données et les programmeurs pour sélectionner un sous-ensemble de données d'une population plus large de manière [aléatoire](https://docs.python.org/3/library/random.html). En Python, l'échantillonnage `random` peut être réalisé à l'aide du module intégré `random`. Cet article discutera brièvement comment générer des échantillons `random` en Python.

### Échantillonnage Aléatoire en Python

En Python, le module `random` fournit plusieurs fonctions pour générer des données `random`. Pour générer un échantillon aléatoire à partir d'une liste, nous pouvons utiliser la fonction `random.sample()`. Cette fonction prend deux arguments : la liste à partir de laquelle nous voulons générer un échantillon aléatoire et le nombre d'échantillons que nous voulons générer.

```python3
import random

mylist = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Generate a random sample of size 4 from the list
random.sample(mylist, 4)

# Output: [9, 1, 5, 4]
```

```python
import random

# Generate a random floating-point number between 0 and 1
random.random()
# Output: `0.42323281409391506`
```

L'échantillonnage aléatoire est une technique puissante qui peut être utilisée pour sélectionner des sous-ensembles de données pour l'analyse et la modélisation. En Python, le module `random` facilite la génération d'échantillons aléatoires à partir de listes et d'autres sources de données. En utilisant la fonction `random.sample()`, nous pouvons rapidement générer une liste mélangée aléatoirement d'une taille spécifiée.

## Aléatoire avec la méthode `randint()`

La méthode `randint()` de Random Python est utilisée pour générer un entier aléatoire entre la plage de valeurs données. La fonction `randint()` fait partie du module `random` en Python.

Voici un exemple de comment utiliser `randint()` pour générer un `nombre` aléatoire entre 0 et 9 :

```python
import random

number = random.randint(0, 9)
print(number)
```

Ce code générera un entier aléatoire entre 0 et 9 (inclus).

Vous pouvez également utiliser `randint()` pour générer un `number` aléatoire dans une plage plus grande. Par exemple, pour générer un `number` aléatoire entre 100 et `200` (inclus), vous utiliseriez le code suivant :

```python
import random

number = random.randint(100, 200)
print(number)
```

En résumé, `random.randint()` de Python est un moyen simple et efficace de générer des entiers aléatoires, et c'est un outil utile dans de nombreux projets de programmation.

## Aléatoire avec la fonction `uniform()`

La fonction `random.uniform()` est une fonction Python qui génère des nombres à virgule flottante aléatoires dans une plage spécifiée. Elle fait partie du module `random`, qui est utilisé pour générer des données aléatoires.

Utiliser la fonction `random.uniform()` en Python est relativement facile.

### Générer un Flottant Aléatoire

```python
import random

x = random.uniform(0, 1)
print(x)
```

La fonction `random.uniform()` génère un nombre à virgule flottante aléatoire dans l'intervalle spécifié. L'intervalle est compris entre 0 et 1.

Utiliser la fonction `random.uniform()` est particulièrement utile lorsqu'on a besoin de générer des nombres à virgule flottante aléatoires qui ne sont pas des entiers. Lorsqu'elle est combinée avec d'autres fonctions et modules, elle peut être utilisée pour simuler des scénarios du monde réel tels que la modélisation financière, les simulations physiques et la modélisation des systèmes biologiques en biologie computationnelle.
