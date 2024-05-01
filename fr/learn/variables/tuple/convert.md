> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/tuple/convert

Parfois, il est nécessaire de convertir un tuple en un type de données différent, comme une liste ou une chaîne de caractères, pour effectuer certaines opérations. Dans certains cas, nous devons convertir certains types de données en tuple. Python fournit des fonctions intégrées pour la conversion de tuples, qui peuvent être utilisées pour manipuler et traiter les données stockées dans les tuples. Explorons les différentes manières de conversion et les cas les plus courants.

## Tuple vs Liste en Python

En Python, les tuples et les listes sont utilisés pour stocker des collections d'éléments, mais il existe quelques différences clés entre eux. Voici certaines des principales différences :

- **Mutabilité** : Les listes sont mutables, ce qui signifie que leur contenu peut être changé, ajouté ou supprimé après leur création. Les tuples, en revanche, sont immuables, ce qui signifie que leur contenu ne peut pas être changé une fois qu'ils sont créés.
- **Syntaxe** : Les listes sont créées à l'aide de crochets [] et les tuples sont créés à l'aide de parenthèses ().
- **Utilisation** : Les listes sont généralement utilisées pour les collections d'éléments connexes qui doivent être changés ou mis à jour au fil du temps, tandis que les tuples sont souvent utilisés pour les collections d'éléments connexes qui sont destinés à être en lecture seule ou statiques.
- **Performance** : Les tuples sont généralement plus rapides que les listes, puisqu'ils sont plus petits et leur immutabilité permet certaines optimisations en termes d'utilisation de la mémoire et de performance.

## Conversion de Tuple en Liste en Python

Convertir un tuple en liste est une opération courante en Python, surtout lorsque nous voulons modifier ou ajouter de nouveaux éléments à la séquence. Comme nous l'avons déjà mentionné, les tuples sont immuables, ce qui signifie que nous ne pouvons pas changer leur contenu une fois qu'ils sont créés. Cependant, les listes sont mutables, et nous pouvons modifier leur contenu en ajoutant, supprimant ou changeant des éléments. Pour convertir un tuple en liste, nous pouvons utiliser la fonction intégrée `list()`.

Voici un exemple :

```python3
# Define a tuple
my_tuple = (1, 2, 3, 4, 5)

# Convert the tuple to a list
my_list = list(my_tuple)

# Print the result
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Conversion de Liste en Tuple

Nous pouvons convertir une liste en tuple à l'aide de la fonction intégrée `tuple()`. Cela peut être utile lorsque nous avons besoin de convertir une liste modifiable en un tuple immuable.

Voici un exemple :

```python3
# Define a list
my_list = [1, 2, 3, 4, 5]

# Convert the list to a tuple
my_tuple = tuple(my_list)

# Print the result
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Conversion d'un tuple en chaîne en Python

Vous pouvez convertir un tuple Python en une chaîne en utilisant la méthode `join()`. Voici un exemple :

```python3
my_tuple = ('apple', 'banana', 'cherry')
my_string = ', '.join(my_tuple)
print(my_string) # Output: apple, banana, cherry
```

> Remarque : la méthode `join()` fonctionne uniquement avec des chaînes de caractères. Si le tuple contient des éléments non-chaînes, vous devez d'abord les convertir en chaînes en utilisant la fonction `str()`.

## Conversion de Chaîne en Tuple

Pour convertir une chaîne de retour en un tuple en Python, vous pouvez utiliser la méthode `split()`. Voici un exemple :

```python3
my_string = 'apple, banana, cherry'
my_tuple = tuple(my_string.split(', '))
print(my_tuple) # Output: ('apple', 'banana', 'cherry')
```

> Note : la méthode `split()` retourne une liste de chaînes de caractères. Si le tuple original contenait des éléments non-chaine, vous devez les reconvertir dans leurs types de données originaux après avoir créé le tuple.

## Conversion de Tuple en Dictionnaire en Python

Pour convertir un tuple Python en un dictionnaire, vous pouvez utiliser la fonction constructeur `dict()`. Voici un exemple :

```python3
my_tuple = ('a', 1), ('b', 2), ('c', 3)
my_dict = dict(my_tuple)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Conversion de Dictionnaire en Tuple

Pour convertir un dictionnaire Python en un tuple, vous pouvez utiliser la méthode `items()` de l'objet dictionnaire pour obtenir une liste de paires (clé, valeur), puis convertir cette liste en un tuple en utilisant la fonction constructeur `tuple()`. Voici un exemple :

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
my_tuple = tuple(my_dict.items())
print(my_tuple) # Output: (('a', 1), ('b', 2), ('c', 3))
```
