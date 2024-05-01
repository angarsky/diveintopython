> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/list

Une liste en Python est une collection de valeurs ou d'éléments qui sont ordonnés, modifiables et autorisent les doublons. Les listes sont l'une des structures de données les plus couramment utilisées en Python.

## Créer une Liste

Voici un exemple de comment créer une liste en Python :

```python
my_list = [1, 2, 3, 4, 5]
```

Comme vous pouvez le voir, la création d'une liste est un processus relativement simple. Pour créer une liste vide, vous pouvez simplement utiliser la syntaxe suivante :

```python
my_list = []
```

Revoyons certaines opérations de base qui peuvent être effectuées sur des listes en Python.

## Indices de liste et accès aux éléments

Les indices d'une liste sont les positions numériques des éléments à l'intérieur de la liste. L'index du premier élément dans une liste est toujours `0`, l'index du deuxième élément est `1`, et ainsi de suite. Vous pouvez accéder à l'élément à un indice spécifique en utilisant des crochets et en spécifiant le numéro de l'indice.

Voici un exemple d'utilisation d'indexation :

```python
my_list = ['apple', 'banana', 'orange']
print(my_list[0])  # output: 'apple'
print(my_list[1])  # output: 'banana'
print(my_list[2])  # output: 'orange'
```

Si l'indice de la liste est hors limite, Python renverra une erreur.

## Modifier ou Remplacer un Élément d'une Liste

```python3
my_list = [1, 2, 3, 4, 5]
my_list[0] = 0
print(my_list) # Output: [0, 2, 3, 4, 5]
```

## Ajout d'éléments à une liste en Python

Il existe plusieurs méthodes qui peuvent vous aider à ajouter un élément à une liste

### La méthode `insert()`

Voici un exemple qui montre comment ajouter un élément à une liste en utilisant la méthode `insert()` :

```python3
my_list = [1, 2, 3, 4]
my_list.insert(2, "hello")
print(my_list)  # [1, 2, 'hello', 3, 4]
```

### La méthode `append()`

Pour insérer un élément à la fin d'une liste Python, vous pouvez utiliser la méthode `append()`. Voici un exemple :

```python3
my_list = [1, 2, 3, 4]
my_list.append(5)
print(my_list)  # [1, 2, 3, 4, 5]
```

La méthode `insert()` peut être utilisée pour ajouter un élément dans une liste à un indice spécifié. La syntaxe pour utiliser la méthode `insert()` est la suivante :

```python
list.insert(index, element)
```

### La méthode `extend()`

La méthode `extend()` en Python est utilisée pour ajouter des éléments provenant d'un itérable (comme une liste, un tuple, un ensemble ou une chaîne) à la fin d'une liste existante.

Voici un exemple :

```python3
# Create a list
my_list = [1, 2, 3]

# Append elements from another list to my_list using extend()
other_list = [4, 5, 6]
my_list.extend(other_list)

print(my_list)
# Output: [1, 2, 3, 4, 5, 6]
```

Notez que la méthode `extend()` modifie la liste originale sur place et renvoie `None`. Elle ne crée pas une nouvelle liste.

## Supprimer un élément d'une liste

Pour supprimer un élément d'une liste en Python, vous pouvez utiliser la méthode `remove()` de l'objet liste. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5]
my_list.remove(3)
print(my_list) # Output: [1, 2, 4, 5]
```

Il y a aussi l'instruction `del`, qui peut être utilisée pour supprimer un élément d'une liste. Voici un exemple de suppression d'élément :

```python3
my_list = [1, 2, 3, 4, 5]
del my_list[2]
print(my_list)
```

Dans cet exemple, nous avons une liste `my_list` avec cinq éléments. Nous voulons supprimer l'élément avec l'indice 2, qui a la valeur 3. Nous utilisons l'instruction `del` et spécifions l'indice de l'élément que nous voulons supprimer. Après avoir retiré l'élément, nous imprimons la liste mise à jour.

Le résultat de ce code sera :

```python
[1, 2, 4, 5]
```

Donc, si vous voulez supprimer le premier élément d'une liste en Python, vous pouvez utiliser l'instruction `del` que nous avons examinée auparavant, ou la méthode `pop()`. Voici un exemple de la méthode `pop()` :

```python3
my_list = [1, 2, 3, 4, 5]
my_list.pop(0)
print(my_list) # Output: [2, 3, 4, 5]
```

Voyons également dans l'exemple comment retirer `None` d'une liste en Python en utilisant une compréhension de liste :

```python3
original_list = [1, None, "hello", None, 5.7, None, "world"]
new_list = [item for item in original_list if item is not None]
print(new_list) # Output: [1, 'hello', 5.7, 'world']
```

## Comment trier une liste en Python

Vous pouvez trier une liste en Python en utilisant la méthode `sort()`, qui trie les éléments de la liste par ordre croissant par défaut. Voici un exemple :

```python
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort()

print(my_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

Si vous souhaitez trier la liste dans l'ordre décroissant, vous pouvez passer l'argument `reverse=True` à la méthode `sort()`:

```python3
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort(reverse=True)

print(my_list) # Output: [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]
```

Vous pouvez également utiliser la fonction intégrée `sorted()` pour trier une liste, ce qui renvoie une nouvelle liste triée et laisse la liste originale inchangée :

```python3
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

sorted_list = sorted(my_list)

print(sorted_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

## Copie de Liste

Pour copier une liste en Python, vous pouvez utiliser l'opérateur de découpage ou la méthode `copy()`. Voici un exemple utilisant les deux méthodes :

```python3
# Using the slice operator
original_list = [1, 2, 3, 4, 5]
new_list = original_list[:]
print(new_list)  # Output: [1, 2, 3, 4, 5]

# Using the copy() method
original_list = [1, 2, 3, 4, 5]
new_list = original_list.copy()
print(new_list)  # Output: [1, 2, 3, 4, 5]
```

Les deux méthodes créent un nouvel objet liste qui contient les mêmes éléments que la liste originale. Cependant, il est important de noter que si la liste originale contient des objets mutables (par exemple, d'autres listes ou dictionnaires), la copie ne sera que superficielle, ce qui signifie que la nouvelle liste contiendra des références aux mêmes objets mutables que la liste originale, plutôt que de nouvelles copies de ces objets. Dans de tels cas, vous pourriez avoir besoin d'utiliser une copie profonde pour vous assurer que tous les objets imbriqués sont également copiés.

## Vidage de Liste

En Python, `list.clear()` est une méthode intégrée qui supprime tous les éléments d'une liste.

Voici un exemple de comment vider une liste :

```python3
my_list = [1, 2, 3, 4]
my_list.clear()
print(my_list)  # Output: []
```

## Comment supprimer une liste

En Python, vous pouvez supprimer une liste en utilisant le mot-clé `del`. Voici un exemple :

```python
my_list = [1, 2, 3, 4, 5]
del my_list
```
