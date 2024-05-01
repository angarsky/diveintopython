> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/set

L'ensemble Python est une structure de données qui vous permet de travailler avec des collections d'éléments uniques. Les ensembles sont utiles pour des tâches telles que l'élimination des doublons d'une liste, le test d'appartenance d'un élément et l'exécution d'opérations sur les ensembles telles que l'union et l'intersection. En Python, les ensembles sont mutables et itérables, ce qui les rend polyvalents et faciles à manipuler. Explorons les bases des ensembles Python ainsi que les principales méthodes d'ensemble Python pour vous aider à tirer le meilleur parti de cette structure de données dans vos projets de programmation.

## Qu'est-ce qu'un Ensemble ?

Un ensemble est une collection d'éléments uniques, un peu comme un ensemble mathématique. Un ensemble est une collection non ordonnée et mutable d'éléments distincts encadrée par des accolades {}. Les ensembles peuvent contenir tout élément hachable tel que des entiers, des flottants, des chaînes de caractères, et même d'autres ensembles.

Par exemple, vous pouvez créer un ensemble d'entiers comme suit :

```python
my_set = {1, 2, 3, 4, 5}
```

Ou, vous pouvez créer un ensemble de chaînes de caractères comme suit :

```python
my_set = {'apple', 'banana', 'orange', 'grape'}
```

Vous pouvez effectuer diverses opérations sur les ensembles, telles que l'ajout ou la suppression d'éléments, la recherche de l'intersection ou de l'union des ensembles, ou vérifier si un élément est membre d'un ensemble.

Vous pouvez utiliser les opérations et méthodes de set de Python pour la manipulation de données. Voici certaines des plus couramment utilisées :

### Opérations sur les ensembles

- `union()` ou `|` : Renvoie un ensemble contenant tous les éléments des deux ensembles (ou autres objets itérables), avec les doublons supprimés.
Exemple : `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.union(set2); print(set3)` affichera `{1, 2, 3, 4, 5}`.
- `intersection()` ou `&` : Renvoie un ensemble contenant uniquement les éléments communs aux deux ensembles.
Exemple : `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.intersection(set2); print(set3)` affichera `{3}`.
- `difference()` ou `-` : Renvoie un ensemble contenant les éléments qui sont dans le premier ensemble mais pas dans le deuxième.
Exemple : `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.difference(set2); print(set3)` affichera `{1, 2}`.
- `symmetric_difference()` ou `^` : Renvoie un ensemble contenant les éléments qui sont dans l'un des ensembles mais pas dans les deux.
Exemple : `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.symmetric_difference(set2); print(set3)` affichera `{1, 2, 4, 5}`.
- `issubset()` : Renvoie True si tous les éléments d'un ensemble sont contenus dans l'autre ensemble.
Exemple : `set1 = {1, 2, 3}; set2 = {1, 2}; print(set2.issubset(set1))` affichera `True`.
- `issuperset()` : Renvoie True si un ensemble contient tous les éléments d'un autre ensemble.
Exemple : `set1 = {1, 2, 3}; set2 = {1, 2}; print(set1.issuperset(set2))` affichera `True`.

### Méthodes des ensembles

- `add()` : Ajoute un élément à l'ensemble. Si l'élément existe déjà dans l'ensemble, l'ensemble reste inchangé.
Exemple : `my_set = {1, 2, 3}; my_set.add(4); print(my_set)` affichera `{1, 2, 3, 4}`.
- `remove()` : Supprime l'élément spécifié de l'ensemble. Soulève une KeyError si l'élément n'est pas dans l'ensemble.
Exemple : `my_set = {1, 2, 3}; my_set.remove(2); print(my_set)` affichera `{1, 3}`.
- `discard()` : Supprime l'élément spécifié de l'ensemble. Ne soulève pas d'erreur si l'élément n'est pas dans l'ensemble.
Exemple : `my_set = {1, 2, 3}; my_set.discard(2); print(my_set)` affichera `{1, 3}`.
- `pop()` : Supprime et renvoie un élément arbitraire de l'ensemble. Soulève une KeyError si l'ensemble est vide.
Exemple : `my_set = {1, 2, 3}; x = my_set.pop(); print(my_set, x)` affichera `{2, 3}, 1`.
- `clear()` : Supprime tous les éléments de l'ensemble.
Exemple : `my_set = {1, 2, 3}; my_set.clear(); print(my_set)` affichera `set()`.

Ensuite, nous examinerons les plus couramment utilisés en détail.

## Créer des ensembles en Python

En Python, un ensemble vide peut être créé en utilisant la fonction `set()`. Voici un exemple :

```python
empty_set = set()
```

Pour initialiser un ensemble avec des valeurs, vous pouvez utiliser un littéral de type ensemble. Voici un exemple d'ensemble :

```python
my_set = {1, 2, 3}
```

Comme mentionné ci-dessus, vous pouvez créer un ensemble en Python en utilisant un littéral d'ensemble ou la fonction `set()`.

## Comment ajouter à un ensemble en Python

En Python, vous pouvez ajouter un élément à un ensemble en utilisant la méthode `add()`. Voici un exemple d'ajout à un ensemble :

```python3
my_set = {1, 2, 3}  # create a set with initial values
my_set.add(4)  # add a new value to the set
print(my_set)  # output: {1, 2, 3, 4}
```

> Remarque : les objets de type `set` n'ont pas de méthode `append()` puisqu'il s'agit de collections non ordonnées d'éléments uniques.

## Supprimer un élément d'un ensemble

En Python, le type de données `set` représente une collection d'éléments uniques. La méthode `remove` est utilisée pour supprimer un élément spécifique d'un ensemble.

Voici un exemple de comment supprimer un élément d'un ensemble :

```python3
# create a set
my_set = {1, 2, 3, 4, 5}

# remove an element from the set
my_set.remove(3)

print(my_set) # Output: {1, 2, 4, 5}
```

Il est important de noter que si l'élément à supprimer n'est pas dans l'ensemble, la méthode `remove` va lever une exception `KeyError`. Si vous souhaitez éviter cela, vous pouvez utiliser la méthode `discard` à la place, qui supprime un élément de l'ensemble s'il est présent, et ne fait rien si l'élément n'est pas dans l'ensemble.

Voici un exemple d'utilisation de la méthode discard en Python :

```python3
# create a set
my_set = {1, 2, 3, 4, 5}

# discard an element from the set
my_set.discard(3)

print(my_set) # Output: {1, 2, 4, 5}

# try to discard an element that is not in the set
my_set.discard(10)

print(my_set) # Output: {1, 2, 4, 5}
```

## Accès aux éléments d'un ensemble

Les ensembles sont des collections non ordonnées d'éléments uniques. Par conséquent, ils ne prennent pas en charge l'indexation par des valeurs entières comme les listes ou les tuples.

Si vous avez besoin d'accéder à un élément spécifique dans un ensemble, vous pouvez utiliser le mot-clé `in` pour vérifier si l'ensemble python contient un élément, ou vous pouvez utiliser la boucle `for` pour itérer sur les éléments de l'ensemble.

Voici quelques exemples :

```python3
# Creating a set
my_set = {1, 2, 3, 4, 5}

# Checking if an element exists in the set
if 3 in my_set:
    print("3 is in the set")

# Iterating over the elements of the set
for element in my_set:
    print(element)
```

Sortie :

```python
3 is in the set
1
2
3
4
5
```

## Longueur d'un ensemble en Python

En Python, vous pouvez utiliser la fonction intégrée `len()` pour obtenir le nombre d'éléments dans un ensemble.

Par exemple, considérez l'ensemble suivant :

```python3
my_set = {1, 2, 3, 4, 5}
print(len(my_set)) # Output: 5
```

## Trier un ensemble en Python

Les ensembles sont des collections non ordonnées d'éléments uniques, ce qui signifie que l'ordre des éléments n'est pas préservé dans un ensemble, donc le résultat final ne peut pas être un ensemble trié.

En Python, vous pouvez trier un ensemble en utilisant la fonction intégrée `sorted()` ou la méthode `sort()`. Ainsi, en utilisant cette méthode, nous convertissons un ensemble en liste.

En utilisant la fonction `sorted()`:

```python3
my_set = {4, 1, 3, 2, 5}
sorted_set = sorted(my_set)
print(sorted_set)   # Output: [1, 2, 3, 4, 5]
```

Quand `sorted()` est appliqué à un ensemble, cela renvoie une nouvelle liste triée contenant tous les éléments de l'ensemble original.

En utilisant la méthode `sort()` :

```python3
my_set = {4, 1, 3, 2, 5}
sorted_list = list(my_set)
sorted_list.sort()
sorted_set = set(sorted_list)
print(sorted_set)   # Output: {1, 2, 3, 4, 5}
```

> Note : la méthode `sort()` est uniquement disponible pour les listes et ne peut pas être utilisée directement avec un ensemble. Ainsi, vous devez d'abord convertir l'ensemble en liste, puis utiliser la méthode `sort()`, et ensuite le reconvertir en ensemble.

Dans les deux cas, l'ensemble résultant sera trié par ordre croissant. Si vous souhaitez trier un ensemble en ordre décroissant, vous pouvez utiliser l'argument `reverse=True` dans la fonction `sorted()` ou le paramètre reverse de la méthode `sort()`.

```python3
my_set = {4, 1, 3, 2, 5}
sorted_set_desc = sorted(my_set, reverse=True)
print(sorted_set_desc)   # Output: [5, 4, 3, 2, 1]

my_set = {4, 1, 3, 2, 5}
sorted_list_desc = list(my_set)
sorted_list_desc.sort(reverse=True)
sorted_set_desc = set(sorted_list_desc)
print(sorted_set_desc)   # Output: {5, 4, 3, 2, 1}
```

## La méthode `update` pour Set en Python

La méthode `update` d'un ensemble vous permet d'ajouter plusieurs éléments à un ensemble en une seule fois.

Voici la syntaxe pour utiliser la méthode update :

```python
set.update(iterable)
```

L'argument `iterable` peut être n'importe quel objet itérable, comme une liste, un tuple, un ensemble, ou même une chaîne de caractères. La méthode `update` ajoute tous les éléments dans l'`iterable` à l'ensemble, tout en supprimant les doublons.

Voici un exemple qui montre la méthode de mise à jour :

```python
>>> s1 = {1, 2, 3}
>>> s2 = {3, 4, 5}
>>> s1.update(s2)
>>> print(s1)
{1, 2, 3, 4, 5}
```

## Intersection d'ensembles en Python

En Python, l'intersection d'ensembles peut se trouver en utilisant la méthode `intersection()`.

Voyons comment obtenir l'intersection de deux ensembles en Python :

```python3
set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}
set3 = {4, 5, 6, 7}

intersection_set = set1.intersection(set2, set3)

print(intersection_set)  # Output: {4}
```

## Différence de ensembles en Python

La différence des ensembles en Python peut se trouver en utilisant l'opérateur "-" ou la méthode `difference()`. Voici un exemple :

```python3
set1 = {1, 2, 3, 4, 5}
set2 = {3, 4, 5, 6, 7}

# Using the "-" operator
diff = set1 - set2
print(diff) # Output: {1, 2}

# Using the `difference()` method
diff = set1.difference(set2)
print(diff) # Output: {1, 2}
```

## Union de ensembles en Python

L'union des ensembles en Python peut être obtenue en utilisant la méthode `union()` ou l'opérateur pipe (`|`).

Voici un exemple d'utilisation de la méthode `union()`:

```python3
set1 = {1, 2, 3}
set2 = {2, 3, 4}
set3 = {3, 4, 5}

union_set = set1.union(set2, set3)
print(union_set)  # Output: {1, 2, 3, 4, 5}
```

Alternativement, nous pouvons utiliser l'opérateur pipe (`|`) pour obtenir le même résultat :

```python3
set1 = {1, 2, 3}
set2 = {2, 3, 4}
set3 = {3, 4, 5}

union_set = set1 | set2 | set3
print(union_set)  # Output: {1, 2, 3, 4, 5}
```

## La méthode `pop()`

La méthode `pop()` dans le type de données set de Python supprime et retourne un élément arbitraire du set. Si le set est vide, une `KeyError` est levée.

Voici un exemple d'utilisation :

```python3
my_set = {1, 2, 3, 4}
popped_element = my_set.pop()
print(popped_element)  # output: an arbitrary element from the set, e.g. 1
print(my_set)  # output: the remaining elements in the set, e.g. {2, 3, 4}
```
