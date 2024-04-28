> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/tuple

Qu'est-ce qu'un tuple en Python ? Un tuple en Python est une séquence immuable de valeurs, similaire à une liste. Cependant, les tuples ne peuvent pas être modifiés une fois qu'ils sont créés, ce qui signifie que vous ne pouvez ni ajouter, ni retirer, ni changer des éléments dans un tuple.

## Création d'un Tuple en Python

Pour créer un tuple, vous pouvez utiliser les parenthèses `()` et séparer les éléments avec des virgules `,`.

Voici un exemple de comment créer un tuple en Python avec trois éléments :

```python
my_tuple = (1, "hello", 3.14)
```

Vous pouvez également créer un tuple vide en utilisant des parenthèses vides `()`.

```python
empty_tuple = ()
```

Si vous souhaitez créer un tuple contenant uniquement un élément, vous devez ajouter une virgule après l'élément, car sans cela, Python interprétera les parenthèses simplement comme des opérateurs de regroupement, et non comme un tuple :

```python
single_tuple = (1,)
```

## Indices des tuples

Vous pouvez accéder aux éléments d'un tuple en Python en utilisant l'indexation, tout comme dans les listes.

Comme nous l'avons déjà mentionné, l'indexation en Python commence à partir de 0. Cela signifie que le premier élément d'un tuple a un indice de 0, le deuxième élément a un indice de 1, et ainsi de suite. L'indexation négative est également prise en charge, ce qui signifie que le dernier élément d'un tuple a un indice de -1, l'avant-dernier élément a un indice de -2, et ainsi de suite.

Voici un exemple d'accès aux éléments d'un tuple en utilisant l'indexation :

```python3
my_tuple = ('apple', 'banana', 'cherry')
print(my_tuple[0])   # Output: 'apple'
print(my_tuple[1])   # Output: 'banana'
print(my_tuple[-1])  # Output: 'cherry'
```

## Comment ajouter à un tuple en Python

En Python, les tuples sont immuables, ce qui signifie que une fois qu'ils sont créés, leurs éléments ne peuvent pas être modifiés. Cependant, vous pouvez créer un nouveau tuple en combinant des tuples existants et d'autres éléments. Donc pour "ajouter" ou pour "ajouter" un élément à un tuple, vous créeriez essentiellement un nouveau tuple qui inclut les éléments existants ainsi que le nouvel élément. Voici quelques façons d'atteindre cet objectif :

**Utiliser l'opérateur `+` pour créer un nouveau tuple** :

```python3
existing_tuple = (1, 2, 3)
new_element = 4

# Concatenate the existing tuple with a new tuple containing the new element
new_tuple = existing_tuple + (new_element,)

print(new_tuple)
```

**Utilisation de l'opérateur de l'affectation augmentée `+=`** :

```python3
existing_tuple = (1, 2, 3)
new_element = 4

# Use the += operator to concatenate the existing tuple with a new tuple containing the new element
existing_tuple += (new_element,)

print(existing_tuple)
```

Ces deux méthodes créent un nouveau tuple en combinant les éléments du tuple existant avec le nouvel élément, ajoutant ainsi efficacement l'élément au tuple. Rappelez-vous, les tuples sont immuables, donc vous créez réellement un nouveau tuple plutôt que de modifier l'original.

## Liste triée de Tuples

Vous pouvez trier une liste de tuples en Python en utilisant la fonction sorted, et en passant un argument clé qui spécifie comment comparer les éléments de chaque tuple. Voici un exemple :

```python3
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the first element in each tuple
sorted_list = sorted(my_list, key=lambda x: x[0])

print(sorted_list) # Output: [(1, 2), (2, 4), (3, 1)]
```

Vous pouvez également trier la liste de tuples dans l'ordre inverse en définissant l'argument `reverse` sur `True` :

```python3
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the second element in each tuple in reverse order
sorted_list = sorted(my_list, key=lambda x: x[1], reverse=True)

print(sorted_list) # Output: [(2, 4), (1, 2), (3, 1)]
```

## Tuple nommé en Python

Un tuple nommé est une sous-classe du type de données tuple intégré qui permet d'accéder aux champs par leur nom ainsi que par leur position d'indice.

Les tuples nommés sont créés en utilisant la fonction `collections.namedtuple`. Voici un exemple :

```python3
from collections import namedtuple

# create a named tuple with two fields: 'x' and 'y'
Point = namedtuple('Point', ['x', 'y'])

# create an instance of the named tuple
p = Point(1, 2)

# access fields by index
print(p[0])  # prints 1

# access fields by name
print(p.x)   # prints 1
print(p.y)   # prints 2
```

Les tuples nommés sont similaires aux tuples réguliers, mais avec l'avantage supplémentaire d'avoir des champs nommés qui peuvent rendre le code plus lisible et auto-documenté. Ils sont immuables, comme les tuples réguliers, donc leurs champs ne peuvent pas être changés une fois qu'ils sont créés.

## Tuple à l'intérieur d'une liste en Python

Dans certains cas, nous devons faire une liste de tuples, par exemple pour regrouper des données liées. Ainsi, vous pouvez créer une liste contenant des tuples en utilisant la syntaxe suivante :

```python
my_list = [(item1, item2), (item3, item4), (item5, item6)]
```

Chaque tuple de la liste peut contenir plusieurs éléments, qui peuvent être de n'importe quel type de données, y compris des chaînes de caractères, des nombres et d'autres tuples. Voici un exemple d'une liste contenant des tuples avec différents types de données :

```python
my_list = [("apple", 2), ("orange", 3), ("banana", 4.5), ("grape", ("red", "green"))]
```

Vous pouvez accéder aux éléments d'un tuple à l'intérieur d'une liste en utilisant l'indexation. Par exemple, pour accéder au deuxième élément du premier tuple dans la liste ci-dessus, vous pouvez utiliser le code suivant :

```python
print(my_list[0][1])   # Output: 2
```

## Ajout d'un Tuple

Pour ajouter un tuple à une liste en Python, vous pouvez utiliser la méthode `append()`. Voici un exemple :

```python3
my_list = [(1, 2), (3, 4)]
new_tuple = (5, 6)
my_list.append(new_tuple)
print(my_list) # Output: [(1, 2), (3, 4), (5, 6)]
```
