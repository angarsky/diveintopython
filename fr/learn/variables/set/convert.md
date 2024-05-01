> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/set/convert

La conversion de sets en Python est le processus de transformation d'un type de set en un autre, comme convertir une liste en un set ou vice versa. Comprendre comment réaliser des conversions de sets peut être utile dans divers scénarios, y compris l'analyse de données, le filtrage et le tri.

## Liste vs Set en Python

En Python, les listes et les sets sont utilisés pour stocker des collections d'éléments, mais ils ont des caractéristiques différentes qui les rendent utiles pour différentes situations.

Une liste est une collection ordonnée d'éléments qui peuvent être accédés par leur index. Les listes autorisent les éléments en double, et les éléments peuvent être ajoutés, supprimés et modifiés à n'importe quelle position. Les listes sont définies en utilisant des crochets []. 

Exemple :

```python
my_list = [1, 2, 3, 4, 5]
```

Un ensemble, d'autre part, est une collection non ordonnée d'éléments uniques. Les ensembles ne permettent pas les éléments en double, et les éléments peuvent être ajoutés et supprimés, mais non modifiés. Les ensembles sont définis à l'aide d'accolades {}.

Exemple :

```python
my_set = {1, 2, 3, 4, 5}
```

Les ensembles sont utiles lorsque vous avez besoin de vérifier rapidement si un élément est dans la collection ou non. Ils sont également utiles lorsque vous avez besoin d'effectuer des opérations d'ensemble comme l'union, l'intersection et la différence.

Les listes, en revanche, sont utiles lorsque vous avez besoin de maintenir l'ordre des éléments, et lorsque vous avez besoin d'accéder aux éléments par leur indice.

En résumé, utilisez une liste lorsque vous avez besoin de maintenir l'ordre des éléments et autoriser les doublons, et utilisez un ensemble lorsque vous avez besoin de stocker des éléments uniques et vérifier rapidement si un élément est dans la collection ou non.

## Conversion d'un ensemble en liste en Python

Convertir un ensemble en liste peut aider à préserver l'ordre des éléments et les rendre accessibles par indice.

En Python, une conversion d'ensemble en liste peut être réalisée en utilisant la fonction intégrée `list()`. Voici un exemple de comment obtenir une liste à partir d'un ensemble :

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list
my_list = list(my_set)

# Print the list
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Veuillez noter que l'ordre des éléments dans l'ensemble d'origine est préservé dans la liste résultante. Si l'ordre des éléments n'est pas important, vous pouvez également convertir un ensemble en liste en utilisant directement la fonction `list()` sur l'ensemble lui-même, ainsi :

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list directly
my_list = list({1, 2, 3, 4, 5})

# Print the list
print(my_list)
```

Cela produira la même sortie que l'exemple précédent.

## Conversion de Liste en Ensemble en Python

En Python, la conversion de liste en ensemble peut être effectuée en utilisant la fonction intégrée `set()`. Voici un exemple de l'obtention d'un ensemble à partir d'une liste :

```python
my_list = [1, 2, 3, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

Comme vous pouvez le voir, il est assez simple de convertir une liste en ensemble (`set`) en Python.

## Ensemble de Listes en Python

En Python, vous pouvez créer un ensemble de listes en utilisant la fonction intégrée `set()`. Cependant, gardez à l'esprit que les ensembles sont des collections non ordonnées d'éléments uniques, donc l'ordre des listes à l'intérieur de l'ensemble ne peut pas être garanti.

Voici un exemple de comment créer un ensemble de listes :

```python3
set_of_lists = set()

list1 = [1, 2, 3]
list2 = [4, 5, 6]
list3 = [1, 2, 3] # a duplicate of list1

set_of_lists.add(tuple(list1))
set_of_lists.add(tuple(list2))
set_of_lists.add(tuple(list3)) # won't add to set since it's a duplicate of list1

print(set_of_lists) # {(1, 2, 3), (4, 5, 6)}
```

## Ajout de Liste à Ensemble

Pour ajouter une liste à un ensemble en Python, vous pouvez utiliser la méthode `update()` ou l'opérateur `|`.

Voici un exemple utilisant la méthode `update()`:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set.update(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```

Et voici un exemple utilisant l'opérateur `|`:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set |= set(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```
