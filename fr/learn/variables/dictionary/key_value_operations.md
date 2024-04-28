> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/dictionary/key-value-operations

Assez souvent, nous sommes confrontés à des situations où nous devons manipuler les clés ou les valeurs d'un dictionnaire. Heureusement, les dictionnaires offrent une variété d'opérations pour travailler avec les clés et les valeurs.

## Obtenir les Clés d'un Dictionnaire

Pour obtenir les clés d'un dictionnaire en Python, vous pouvez utiliser la méthode `keys()`. Voici un exemple de récupération d'un ensemble de clés :

```python3
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Getting the keys of the dictionary
keys = my_dict.keys()

# Printing the keys
print(keys) # Output: dict_keys(['name', 'age', 'city'])
```

Notez que `keys()` renvoie un objet view, qui est une vue dynamique sur les clés du dictionnaire. Cela signifie que si le dictionnaire est modifié, l'objet view reflétera ces changements. Si vous avez besoin de travailler avec les clés en tant que liste, vous pouvez convertir l'objet view en liste.

## Convertir les Clés du Dictionnaire en Liste

Pour convertir les clés d'un dictionnaire en liste en Python, vous pouvez utiliser la méthode `keys()` et la fonction `list()`. Voici un exemple :

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
keys_list = list(my_dict.keys())
print(keys_list)  # Output: ['a', 'b', 'c']
```

Dans le code ci-dessus, `my_dict.keys()` retourne un objet `dict_keys` contenant les clés de `my_dict`. La fonction `list()` est utilisée pour convertir cet objet en une liste, qui est assignée à la variable `keys_list`. Finalement, `keys_list` est imprimé dans la console.

## Vérification de la présence de la clé

En Python, la méthode `has_key()` n'est pas disponible pour les dictionnaires. Vous pouvez plutôt utiliser l'opérateur `in` pour vérifier si un dictionnaire possède une clé. Voyons comment vérifier si une clé existe dans un dictionnaire en Python :

```python3
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Checking if a key is present in the dictionary
if "name" in my_dict:
    print("The key 'name' is present in the dictionary")
else:
    print("The key 'name' is not present in the dictionary")

if "country" in my_dict:
    print("The key 'country' is present in the dictionary")
else:
    print("The key 'country' is not present in the dictionary")
```

Cela produira :

```python
The key 'name' is present in the dictionary
The key 'country' is not present in the dictionary
```

Notez que l'opérateur `in` vérifie si la clé est présente dans le dictionnaire, et non si la valeur de la clé est `None`. Si vous avez besoin de vérifier la présence d'une valeur de clé dans un dictionnaire, vous pouvez utiliser la méthode `get()`.

## Suppression d'une Clé du Dictionnaire

En Python, vous pouvez supprimer une clé d'un dictionnaire en utilisant l'instruction del ou la méthode pop().

Voici un exemple utilisant l'instruction del pour supprimer une clé d'un dictionnaire :

```python
my_dict = {"a": 1, "b": 2, "c": 3}

del my_dict["b"]

print(my_dict)  # Output: {"a": 1, "c": 3}
```

Dans l'exemple ci-dessus, la clé `"b"` est supprimée du dictionnaire `my_dict` en utilisant l'instruction `del`.

Voici un exemple utilisant la méthode `pop()` pour supprimer une clé d'un dictionnaire :

```python
my_dict = {"a": 1, "b": 2, "c": 3}

my_dict.pop("b")

print(my_dict)  # Output: {"a": 1, "c": 3}
```

Dans l'exemple ci-dessus, la clé `"b"` est supprimée du dictionnaire `my_dict` en utilisant la méthode `pop()`. La méthode `pop()` retourne également la valeur associée à la clé supprimée, ce qui peut être utile si vous avez besoin de réaliser un traitement supplémentaire basé sur cette valeur.

## Conversion des Valeurs du Dictionnaire en Liste

Vous pouvez utiliser la méthode `values()` d'un dictionnaire Python pour obtenir une liste de ses valeurs.

Voici un exemple :

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
values_list = list(my_dict.values())
print(values_list) # Output: [1, 2, 3]
```

Dans le code ci-dessus, nous créons un dictionnaire `my_dict` avec trois paires clé-valeur. Nous appelons ensuite la méthode `values()` sur le dictionnaire pour obtenir un objet vue de ses valeurs, et nous le convertissons en liste en utilisant le constructeur `list()`. Enfin, nous imprimons la liste résultante des valeurs.

> Notez que l'ordre des valeurs dans la liste n'est pas garanti d'être le même que l'ordre des clés dans le dictionnaire, puisque les dictionnaires sont non ordonnés en Python.
