> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/list/basic-operations

Les listes Python sont des structures de données polyvalentes et couramment utilisées qui vous permettent de stocker des collections d'éléments, y compris des nombres, des chaînes de caractères, et même d'autres listes. Elles prennent en charge diverses opérations et méthodes de base qui vous permettent de manipuler et de travailler facilement avec les éléments de la liste. Certaines des opérations et méthodes utilisées couramment pour les listes comprennent l'indexation, le découpage, l'ajout, l'insertion, la suppression, le tri, et la recherche d'éléments. Revoyons les méthodes et fonctions de liste de base étape par étape.

## Définir un Index d'un Élément

Une liste est une collection ordonnée d'éléments qui peuvent être de n'importe quel type. Chaque élément dans une liste a un index unique, qui représente sa position dans la liste. Les index des listes commencent à 0, ce qui signifie que le premier élément dans une liste a un index de 0, le deuxième élément a un index de 1, et ainsi de suite.

Examinons les moyens d'obtenir l'index d'un élément dans une liste Python.

Il n'existe pas de méthode directe appelée `indexof()` pour trouver l'index d'un élément dans une liste. Cependant, vous pouvez utiliser la méthode `index()` intégrée à Python pour obtenir l'index d'un élément dans la liste.

La méthode `index()` prend un élément comme argument et retourne l'index de la première occurrence de cet élément dans la liste. Par exemple, disons que vous avez une liste de chaînes de caractères :

```python
my_list = ['apple', 'banana', 'cherry', 'banana', 'date']
```

Vous pouvez trouver l'index de la première occurrence de l'élément 'banana' en utilisant la méthode `index()` comme ceci :

```python
index_of_banana = my_list.index('banana')   # 1
```

La méthode `index()` lève une `ValueError` si l'élément n'est pas trouvé dans la liste.

## Compréhension de liste en Python

Revoyons ce qu'est la compréhension de liste en Python. La compréhension de liste est un moyen concis de créer une nouvelle liste en Python en appliquant une expression à chaque élément d'une liste existante ou itérable. La syntaxe de base d'une compréhension de liste est :

```python
new_list = [expression(item) for item in iterable if condition]
```

Où :

- `expression` est une opération qui sera appliquée à chaque élément de l'itérable.
- `item` est la variable qui représente chaque élément de l'itérable.
- `iterable` est une séquence d'éléments, comme une liste ou une plage.
- `condition` est une expression optionnelle qui filtre les éléments sur la base d'une condition.

Par exemple, pour créer une nouvelle liste avec les carrés des nombres de `1` à `5`, vous pouvez utiliser une compréhension de liste comme celle-ci :

```python3
squares = [x**2 for x in range(1, 6)]
print(squares)  # Output: [1, 4, 9, 16, 25]
```

Vous pouvez également utiliser une instruction `if` pour filtrer les éléments en fonction d'une condition. Par exemple, pour créer une nouvelle liste avec les nombres pairs de `1` à `10`, vous pouvez utiliser une compréhension de liste comme ceci :

```python3
evens = [x for x in range(1, 11) if x % 2 == 0]
print(evens)  # Output: [2, 4, 6, 8, 10]
```

## Déterminer la Longueur d'une Liste

En Python, vous pouvez obtenir la longueur d'une liste en utilisant la fonction intégrée `len()`. Pour compter le nombre d'éléments dans une liste en Python, vous pouvez également utiliser la fonction `len()`.

Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5]
length = len(my_list)
print(length)  # Output: 5
```

> Vous pouvez également utiliser la fonction `len()` pour vérifier si une liste Python est vide, car il n'y a pas de méthode `isEmpty()` en Python.

Voici un exemple utilisant la vérification :

```python3
my_list = []
if len(my_list) == 0:
    print("The list is empty")
else:
    print("The list is not empty")
```

## Inversion de liste

Pour inverser une liste en Python, vous pouvez utiliser la méthode intégrée `reverse()` ou la notation de découpage. Voici des exemples des deux :

En utilisant la méthode `reverse()` :

```python3
my_list = [1, 2, 3, 4, 5]
my_list.reverse()
print(my_list) # Output: [5, 4, 3, 2, 1]
```

En utilisant la notation de découpage :

```python3
my_list = [1, 2, 3, 4, 5]
reversed_list = my_list[::-1]
print(reversed_list) # Output: [5, 4, 3, 2, 1]
```

## Filtrage de liste en Python

En Python, vous pouvez utiliser la fonction `filter()` pour filtrer une liste, c'est-à-dire créer une nouvelle liste qui contient uniquement les éléments d'une liste existante qui satisfont à une certaine condition.

La fonction `filter()` prend deux arguments : une fonction et un itérable. La fonction doit renvoyer True ou False pour chaque élément dans l'itérable. La fonction `filter()` renvoie alors un nouvel itérable qui ne contient que les éléments pour lesquels la fonction a renvoyé True.

Voici un exemple qui filtre une liste de nombres pour n'inclure que les pairs :

```python3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def is_even(num):
    return num % 2 == 0

even_numbers = list(filter(is_even, numbers))
print(even_numbers)  # Output: [2, 4, 6, 8, 10]
```

## Concaténation ou jointure de listes

En Python, vous pouvez concaténer deux listes ou plus en utilisant l'opérateur `+`. Voici un exemple de fusion de deux listes :

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]
concatenated_list = list1 + list2
print(concatenated_list) # Output: [1, 2, 3, 4, 5, 6]
```

Une autre manière de joindre les listes est la méthode `extend()` :

```python3
list1 = [1, 2, 3]
list2 = [4, 5, 6]
list1.extend(list2)
print(list1) # Output: [1, 2, 3, 4, 5, 6]
```

## Joindre des éléments de liste

Pour joindre une liste Python dans une chaîne, vous pouvez utiliser la méthode `join()`. Voici un exemple :

```python3
my_list = ['apple', 'banana', 'orange']
my_string = ', '.join(my_list)
print(my_string) # Output: apple, banana, orange
```

Vous pouvez utiliser n'importe quelle chaîne de caractères comme séparateur dans la méthode `join()`, y compris une chaîne vide si vous souhaitez concaténer les éléments ensemble sans aucun séparateur.

## Liste de listes en Python

En Python, une liste de listes peut être créée en imbriquant une ou plusieurs listes à l'intérieur d'une autre liste. Voici un exemple de création de listes à l'intérieur d'une liste :

```python
list_of_lists = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```

Vous pouvez accéder aux éléments de la liste au sein de la liste en utilisant l'indexation imbriquée. Par exemple, pour accéder au deuxième élément de la troisième sous-liste, vous utiliseriez le code suivant :

```python
element = list_of_lists[2][1]
```

Cela définirait la variable `element` avec la valeur 8.

## Parcourir la Liste

Vous pouvez parcourir une liste en Python en utilisant une boucle `for`. Voici un exemple de comment itérer à travers une liste :

```python3
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

Vous pouvez également parcourir une liste de chaînes de caractères ou tout autre type de données. La syntaxe de la boucle `for` est la même quel que soit le type de données dans la liste.

## Imprimer une liste en Python

Pour imprimer une liste en Python, vous pouvez simplement utiliser la fonction `print` et passer la liste comme argument. Voici un exemple d'impression d'une liste :

```python
my_list = [1, 2, 3, 4, 5]
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Si vous souhaitez imprimer chaque élément de la liste sur une ligne distincte, vous pouvez utiliser une boucle pour itérer sur la liste et imprimer chaque élément un par un. Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

## Somme d'une liste en Python

Pour trouver la somme d'une liste en Python, vous pouvez utiliser la fonction intégrée `sum()`. Voici un exemple de comment résumer les éléments d'une liste :

```python
my_list = [1, 2, 3, 4, 5]
list_sum = sum(my_list)
print(list_sum) # Output: 15
```

## Découper une liste en Python

En Python, vous pouvez utiliser la notation de découpage pour extraire une partie d'une liste. La syntaxe de base pour le découpage de liste est :

```python
my_list[start:end:step]
```

où `start` est l'index du premier élément à inclure, `end` est l'index du premier élément à exclure, et `step` est le nombre d'éléments à sauter entre chaque élément dans la tranche (la valeur par défaut est 1).

Voici quelques exemples pour illustrer comment utiliser le découpage de listes :

```python3
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# get first three items
print(my_list[:3])  # output: [0, 1, 2]

# get items 3-5
print(my_list[3:6])  # output: [3, 4, 5]

# get every other item starting from the second item
print(my_list[1::2])  # output: [1, 3, 5, 7, 9]

# reverse the list
print(my_list[::-1])  # output: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

Vous pouvez également remplacer plusieurs éléments en utilisant le découpage. Voici un exemple :

```python
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
my_list[3:6] = [0] # Output: [0, 1, 2, 0, 6, 7, 8, 9]
```

## Comparaison de listes

En Python, vous pouvez comparer deux listes en utilisant les opérateurs de comparaison (<, <=, >, >=, ==, !=). Voici un exemple de comparaison de deux listes :

```python3
list1 = [1, 2, 3]
list2 = [1, 2, 4]

if list1 == list2:
    print("The two lists are equal")
elif list1 < list2:
    print("list1 is less than list2")
else:
    print("list1 is greater than list2")
```

## Vérifier si une liste contient un élément

En Python, le type de données liste est un type intégré qui représente une collection d'éléments ordonnés. La méthode `contains` n'est pas une méthode intégrée pour les listes en Python, mais vous pouvez vérifier si un élément se trouve dans une liste en utilisant le mot-clé `in` ou la méthode `index`.

Le mot-clé `in` renvoie True si l'élément se trouve dans la liste et False dans le cas contraire. Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5]
if 3 in my_list:
    print("3 is in the list")
else:
    print("3 is not in the list") # Output: 3 is in the list
```

La méthode `index` renvoie l'indice de la première occurrence de l'élément dans la liste. Si l'élément n'est pas dans la liste, elle génère une `ValueError`. Voici un exemple :

```python3
my_list = ["apple", "banana", "cherry"]
index = my_list.index("banana")
print(index)  # Output: 1
```

## Mappage de Listes

En Python, `map()` est une fonction intégrée qui applique une fonction à chaque élément d'un itérable (comme une liste, un tuple ou un ensemble) et renvoie un nouvel itérable avec les valeurs transformées.

Voici un exemple de comment utiliser `map()` pour appliquer une fonction à chaque élément d'une liste :

```python3
# Define a function to apply to each element of the list
def double(x):
    return x * 2

# Define a list
my_list = [1, 2, 3, 4, 5]

# Use map() to apply the function to each element of the list
new_list = map(double, my_list)

# Convert the result to a list and print it
print(list(new_list))
# Output: [2, 4, 6, 8, 10]
```

## Fractionnement des éléments d'une liste

Vous pouvez diviser une liste en Python en utilisant la méthode `split()`, qui est disponible pour les chaînes mais pas pour les listes. Cependant, vous pouvez utiliser le découpage pour extraire une portion d'une liste et créer une nouvelle liste avec ces éléments.

Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
split_index = 5

list_a = my_list[:split_index]
list_b = my_list[split_index:]

print(list_a) # Output: [1, 2, 3, 4, 5]
print(list_b) # Output: [6, 7, 8, 9, 10]
```

## Supprimer les doublons d'une liste en Python

Pour supprimer les doublons d'une liste Python, vous pouvez utiliser la fonction intégrée `set()`. Voici un exemple :

```python3
my_list = [1, 2, 3, 3, 4, 5, 5, 5, 6]
new_list = list(set(my_list))
print(new_list) # Output: [1, 2, 3, 4, 5, 6]
```
