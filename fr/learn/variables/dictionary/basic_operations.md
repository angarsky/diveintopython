> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/dictionary/basic-operations

Les dictionnaires sont une structure de données puissante et flexible qui vous permet de stocker et de manipuler des paires clé-valeur. Revoyons certaines opérations et méthodes courantes que vous pouvez effectuer sur les dictionnaires en Python.

## Ajouter un élément à un dictionnaire

Il existe plusieurs manières d'ajouter des éléments à un dictionnaire.

### Affectation de valeur

Pour ajouter une paire clé-valeur à un dictionnaire Python, vous pouvez utiliser la syntaxe suivante :

```python
my_dict[key] = value
```

Ici, `my_dict` est le dictionnaire auquel vous souhaitez ajouter un élément, `key` est la clé pour le nouvel élément, et `value` est la valeur pour le nouvel élément.

Par exemple, si vous avez un dictionnaire vide et que vous souhaitez y ajouter un nouvel élément avec la clé `"name"` et la valeur `"John"`, vous pouvez faire ce qui suit :

```python3
my_dict = {}
my_dict["name"] = "John"
print(my_dict) # Output: {'name': 'John'}.
```

Si la clé existe déjà dans le dictionnaire, sa valeur sera mise à jour avec la nouvelle valeur. Si la clé n'existe pas, une nouvelle paire clé-valeur sera ajoutée au dictionnaire.

### La méthode `update()`

La méthode `update()` prend un autre dictionnaire en argument et ajoute ses paires clé-valeur au dictionnaire original. Si une clé existe déjà dans le dictionnaire original, sa valeur sera mise à jour avec la valeur du nouveau dictionnaire.

Voici un exemple :

```python
my_dict = {'a': 1, 'b': 2}
new_dict = {'c': 3, 'd': 4}

my_dict.update(new_dict)

print(my_dict)  # Output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}
```

> Remarque : Il n'y a pas de méthode intégrée `append()` pour les dictionnaires, car les dictionnaires n'ont pas d'ordre inhérent. Vous ne pouvez donc pas ajouter un élément en utilisant la méthode `append()`.

## Supprimer un élément d'un dictionnaire

Pour supprimer un élément d'un dictionnaire en Python, vous pouvez utiliser le mot-clé `del` avec la clé du dictionnaire.

Voici un exemple de comment supprimer une clé du dictionnaire ainsi que sa valeur :

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# delete an element with key 'b'
del my_dict['b']

# print the updated dictionary
print(my_dict) # Output: {'a': 1, 'c': 3}
```

Dans l'exemple ci-dessus, le mot-clé `del` est utilisé pour supprimer la paire clé-valeur avec la clé `'b'` du dictionnaire `my_dict`. Le dictionnaire résultant ne contient que les éléments avec les clés `'a'` et `'c'`.

## Itération ou Bouclage de Dictionnaire en Python

Nous allons vous montrer comment itérer sur un dictionnaire en Python en utilisant une boucle `for`. Voici quelques façons d'itérer :

- Itérer sur les clés :

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the keys and print them
for key in my_dict:
    print(key)
```

Sortie :

```python
a
b
c
```

- Itérer sur les valeurs :

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the values and print them
for value in my_dict.values():
    print(value)
```

Sortie :

```python
1
2
3
```

- Itérer sur les paires clé-valeur :

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the key-value pairs and print them
for key, value in my_dict.items():
    print(key, value)
```

Sortie:

```python
a 1
b 2
c 3
```

Dans le troisième exemple, nous utilisons la méthode `items()` du dictionnaire pour obtenir une liste des paires clé-valeur. Nous utilisons ensuite le déballage de tuple pour extraire la clé et la valeur de chaque paire et les imprimer.

Nous avons utilisé `for` dans nos exemples, mais, bien sûr, vous pouvez également utiliser `while` pour parcourir un dictionnaire en Python.

## Fusionner des dictionnaires en Python

Vous pouvez fusionner deux dictionnaires en utilisant la méthode `update()` que nous avons mentionnée plus tôt. La méthode `update()` ajoute les paires clé-valeur d'un dictionnaire dans un autre dictionnaire. Si une clé existe déjà dans le dictionnaire cible, la valeur correspondante sera mise à jour avec la nouvelle valeur.

Voici un exemple :

```python
dict1 = {'a': 1, 'b': 2}
dict2 = {'b': 3, 'c': 4}

dict1.update(dict2)

print(dict1) # Output: {'a': 1, 'b': 3, 'c': 4}
```

Dans cet exemple, nous avons deux dictionnaires `dict1` et `dict2`. Nous utilisons la méthode `update()` pour fusionner `dict2` dans `dict1`. Le dictionnaire résultant est `{'a': 1, 'b': 3, 'c': 4}`.

> Note : lorsque la méthode `update()` est appelée, elle modifie le dictionnaire sur lequel elle est appelée. Si vous ne souhaitez pas modifier le dictionnaire original, vous pouvez créer un nouveau dictionnaire et utiliser la méthode `update()` pour fusionner les deux dictionnaires.

## Dictionnaire Ordonné ou Trié

Dans Python 3.7 et les versions ultérieures, les dictionnaires garantissent le maintien de l'ordre de leurs éléments tel qu'ils ont été ajoutés. Cela signifie que les éléments d'un dictionnaire seront itérés dans le même ordre qu'ils ont été insérés.

Avant Python 3.7, les dictionnaires ne préservaient pas l'ordre de leurs éléments, et itérer sur un dictionnaire renverrait ses éléments dans un ordre arbitraire.

Vous pouvez obtenir un dictionnaire trié selon ses clés ou ses valeurs. Le tri d'un dictionnaire peut être effectué à l'aide de la fonction intégrée `sorted()`, qui retourne une liste des clés ou des valeurs du dictionnaire dans un ordre trié. Par exemple :

```python
my_dict = {'c': 3, 'a': 1, 'b': 2}

# sort by keys
sorted_dict_by_keys = {k: my_dict[k] for k in sorted(my_dict)}

# sort by values
sorted_dict_by_values = {k: v for k, v in sorted(my_dict.items(), key=lambda item: item[1])}
```

Notez que dans l'exemple ci-dessus, le dictionnaire original `my_dict` n'est pas modifié, et deux nouveaux dictionnaires `sorted_dict_by_keys` et `sorted_dict_by_values` sont créés à la place.

## Imprimer un Dictionnaire

Pour imprimer un dictionnaire en Python, vous pouvez utiliser la fonction intégrée `print()`. Il existe différentes manières d'imprimer un dictionnaire en fonction de la manière dont vous souhaitez formater la sortie.

Voici un exemple de comment imprimer un dictionnaire :

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print the dictionary using the print() function
print(my_dict)
```

Cela produira ce qui suit :

```python
{'apple': 1, 'pineapple': 2, 'orange': 3}
```

Si vous souhaitez imprimer chaque paire clé-valeur du dictionnaire sur une ligne séparée, vous pouvez utiliser une boucle `for` pour itérer sur le dictionnaire et imprimer chaque élément :

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print each key-value pair on a separate line
for key, value in my_dict.items():
    print(key, ":", value)
```

Cela produira ce qui suit :

```python
apple : 1
pineapple : 2
orange : 3
```

## Conversion d'un dictionnaire en JSON en Python

Vous pouvez utiliser le module intégré `json` en Python pour convertir un dictionnaire au format JSON.

Voici un exemple de snippet de code :

```python3
import json

# sample dictionary
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# convert dictionary to JSON
json_obj = json.dumps(my_dict)

# print the JSON object
print(json_obj)
```

Dans cet exemple, la fonction `json.dumps()` est utilisée pour convertir le dictionnaire `my_dict` en un objet JSON `json_obj`. La fonction `print()` est utilisée pour afficher l'objet JSON sur la console.

Sortie :

```python
{"name": "John", "age": 30, "city": "New York"}
```

Vous pouvez également enregistrer l'objet JSON dans un fichier en utilisant la fonction `json.dump()`. Voici un exemple :

```python
import json

# sample dictionary
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# save dictionary to a JSON file
with open('data.json', 'w') as f:
    json.dump(my_dict, f)
```

Dans cet exemple, la fonction `json.dump()` est utilisée pour enregistrer le dictionnaire `my_dict` dans un fichier nommé `data.json`. Le fichier est ouvert en mode écriture à l'aide de l'instruction with.
