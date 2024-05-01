> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/dictionary/convert

En Python, les dictionnaires sont l'une des structures de données les plus couramment utilisées, car ils permettent des recherches rapides et efficaces de valeurs basées sur des clés. Bien que les dictionnaires soient généralement créés manuellement dans le code Python, il est souvent utile de convertir des données provenant d'autres formats, tels que les listes ou JSON, en dictionnaires. Revoyons les exemples de conversion

## Création de Dictionnaire en utilisant des Variables

Voyons l'exemple de comment convertir des variables en un dictionnaire en Python :

```python3
# define variables
name = "John"
age = 25
gender = "male"

# create dictionary
my_dict = {
    "name": name,
    "age": age,
    "gender": gender
}

# print dictionary
print(my_dict)
```

Dans cet exemple, nous définissons trois variables : `name`, `age` et `gender`. Ensuite, nous créons un dictionnaire appelé `my_dict` et attribuons chaque variable à une clé dans le dictionnaire. Enfin, nous imprimons le dictionnaire pour vérifier qu'il contient les paires clé-valeur correctes. Le résultat devrait être :

```python
{'name': 'John', 'age': 25, 'gender': 'male'}
```

## Conversion de Liste en Dictionnaire

Pour convertir une liste en dictionnaire en Python, vous pouvez utiliser la fonction constructeur `dict()`. La liste doit contenir des tuples où chaque tuple contient une paire clé-valeur. Voici un exemple :

```python3
my_list = [('a', 1), ('b', 2), ('c', 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

Dans cet exemple, la liste `my_list` contient trois tuples, chacun représentant une paire clé-valeur. La fonction constructeur `dict()` est utilisée pour convertir la liste en un dictionnaire, et le dictionnaire résultant est stocké dans la variable `my_dict`. Le résultat affiche le contenu du dictionnaire obtenu.

## Conversion de Chaîne en Dictionnaire

Vous pouvez convertir une chaîne en un dictionnaire en Python à l'aide du module `json`, qui est intégré à Python.

Voici un exemple :

```python3
import json

# Sample string
string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert string to dictionary
dictionary = json.loads(string)

# Print the dictionary
print(dictionary)
```

Sortie :

```python
{'name': 'John', 'age': 30, 'city': 'New York'}
```

Dans cet exemple, la méthode `json.loads()` est utilisée pour convertir la chaîne en un dictionnaire. Le dictionnaire résultant est stocké dans la variable `dictionary` puis affiché.

## Conversion de Tuple en Dictionnaire

En Python, vous pouvez convertir un tuple en un dictionnaire en utilisant la fonction `dict()` que nous avons mentionnée plus tôt. Voici un exemple :

```python3
# Define a tuple
my_tuple = ('apple', 'pineapple', 'cherry')

# Convert the tuple to a dictionary
my_dict = dict(zip(range(len(my_tuple)), my_tuple))

# Print the dictionary
print(my_dict)
```

Sortie :

```python
{0: 'apple', 1: 'pineapple', 2: 'cherry'}
```

Dans cet exemple, la fonction `zip()` est utilisée pour combiner les éléments du tuple avec les indices de chaque élément. Ensuite, la fonction `dict()` est utilisée pour convertir l'objet zippé en un dictionnaire.
