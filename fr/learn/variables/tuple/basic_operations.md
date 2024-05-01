> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/tuple/basic-operations

Même si les tuples sont immuables, ils prennent en charge diverses opérations telles que l'indexation, le découpage et la concaténation qui peuvent être effectuées sur eux. Dans cet article, nous explorerons les différentes opérations qui peuvent être effectuées sur les tuples en Python et leur syntaxe.

## Tri de liste de tuples en Python

Les tuples peuvent être triés en utilisant la fonction intégrée `sorted()` ou la méthode `sort()`. Voici un exemple de tri de tuples basé sur le premier élément :

```python3
tuples = [(3, 'apple'), (1, 'orange'), (2, 'banana')]
sorted_tuples = sorted(tuples, key=lambda x: x[0])
print(sorted_tuples)  # Output: [(1, 'orange'), (2, 'banana'), (3, 'apple')]
```

Alternativement, vous pouvez utiliser la méthode `sort()` sur la liste des tuples, comme ceci :

```python3
tuples = [(3, 'apple'), (1, 'orange'), (2, 'banana')]
tuples.sort(key=lambda x: x[0])
print(tuples)  # Output: [(1, 'orange'), (2, 'banana'), (3, 'apple')]
```

La méthode `sort()` fonctionne de manière similaire à `sorted()`, mais trie la liste sur place plutôt que de renvoyer une nouvelle liste triée.

## Comparaison de Tuplets

Pour comparer des tuplets en Python, vous pouvez comparer leurs éléments un par un de manière paire jusqu'à ce qu'une différence soit trouvée, ou jusqu'à ce que tous les éléments aient été comparés avec succès.

Voici un exemple de code qui compare deux tuplets :

```python3
tuple1 = (1, 2, 3)
tuple2 = (1, 2, 4)

if tuple1 == tuple2:
    print("The two tuples are equal")
else:
    print("The two tuples are not equal")
```

## Indexation des tuples en Python

Les tuples peuvent être indexés en utilisant des crochets [] et un numéro d'index. Le numéro d'index commence à partir de 0 pour le premier élément et augmente de 1 pour chaque élément subséquent. Par exemple, considérez le tuple suivant :

```python
my_tuple = (10, 20, 30, 40, 50)
```

Pour accéder au premier élément du tuple, vous utiliserez l'indice 0 comme ceci :

```python
print(my_tuple[0])   # Output: 10
```

Pour accéder au troisième élément du tuple, vous utiliseriez l'indice 2 comme ceci :

```python
print(my_tuple[2])   # Output: 30
```

## Découpage de Tuple

Un tuple est une collection ordonnée et immuable d'éléments, et vous pouvez utiliser le découpage pour extraire une portion du tuple.

Le découpage de tuple utilise la syntaxe `tuple[start:end:step]` pour spécifier une plage d'éléments à extraire du tuple. Le paramètre start est l'indice du premier élément à inclure dans la découpe (inclusif), end est l'indice du dernier élément à inclure dans la découpe (exclusif), et step est l'incrément entre les indices.

Voici un exemple :

```python3
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[1:4])  # Output: (2, 3, 4)
```

Vous pouvez également utiliser l'indexation négative pour découper un tuple depuis la fin. Par exemple :

```python
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[-3:-1])  # Output: (3, 4)
```

Si vous ne spécifiez aucun des paramètres, Python utilise les valeurs par défaut : `start=0`, `end=len(tuple)`, et `step=1`. Par exemple :

```python
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[:3])  # Output: (1, 2, 3)
```

## Renvoyer un Tuple

Vous pouvez utiliser un tuple pour renvoyer plusieurs valeurs d'une fonction.

Voici un exemple d'une fonction qui renvoie un tuple :

```python
def calculate_statistics(numbers):
    total = sum(numbers)
    count = len(numbers)
    average = total / count
    return total, count, average
```

## Compréhension de tuples en Python

La compréhension de tuples est une fonctionnalité en Python qui vous permet de créer un nouveau tuple à partir d'un itérable existant en appliquant une transformation à chaque élément de l'itérable.

La syntaxe pour la compréhension de tuples est similaire à celle de la compréhension de listes, sauf que le résultat est enfermé dans des parenthèses au lieu de crochets. Voici un exemple :

```python3
numbers = (1, 2, 3, 4, 5)
squares = tuple(x ** 2 for x in numbers)
print(squares)  # Output: (1, 4, 9, 16, 25)
```

La compréhension de tuple peut également inclure des expressions conditionnelles, ce qui vous permet de filtrer les éléments en fonction de certaines conditions. Voici un exemple :

```python3
numbers = (1, 2, 3, 4, 5)
even_squares = tuple(x ** 2 for x in numbers if x % 2 == 0)
print(even_squares)  # Output: (4, 16)
```

## Longueur d'un tuple en Python

Vous pouvez trouver la longueur d'un tuple en utilisant la fonction intégrée `len()`.

Par exemple, supposons que vous avez un tuple nommé `my_tuple` :

```python
my_tuple = (1, 2, 3, 4, 5)
print(len(my_tuple)) # Output: 5
```

## Parcourir un Tuple

Pour parcourir un tuple en Python, vous pouvez utiliser une boucle `for`. Voici un exemple :

```python
my_tuple = (1, 2, 3, 4, 5)
for item in my_tuple:
    print(item)
```

Si vous avez également besoin de l'index de chaque élément dans le tuple, vous pouvez utiliser la fonction `enumerate()`:

```python3
my_tuple = (1, 2, 3, 4, 5)
for index, item in enumerate(my_tuple):
    print(index, item)
```
