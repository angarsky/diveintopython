> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/dictionary

Python fournit plusieurs types de collections intégrées pour stocker et manipuler des données. Certains des types de collections couramment utilisés en Python sont :

* Listes
* Tuples
* Ensembles
* Dictionnaires
* Tableaux
* Deques

Il existe également d'autres types de collections moins couramment utilisés en Python, tels que les namedtuples, les dictionnaires par défaut, et les tas, qui sont des versions spécialisées des types de collections de base énumérés ci-dessus.

## Définition du Dictionnaire

Un dictionnaire en Python est une collection de paires clé-valeur, où chaque clé est associée à une valeur. C'est une structure de données non ordonnée, et chaque clé dans le dictionnaire doit être unique.

Voici un exemple de dictionnaire en Python :

```python
# Define a dictionary with key-value pairs
student = {
    "name": "Alice",
    "id": 12345,
    "courses": ["Math", "Physics", "Chemistry"],
    "grades": {"Math": 90, "Physics": 85, "Chemistry": 95}
}
```

## Comment créer un dictionnaire en Python

Jetons un coup d'œil à comment créer ou initialiser un dictionnaire en Python. Vous pouvez le faire en utilisant des accolades `{}` ou en utilisant la fonction `dict()`. Voici quelques exemples :

- En utilisant des accolades :

```python
# Create an empty dictionary
empty_dict = {}

# Create a dictionary with key-value pairs
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# Create a dictionary with mixed data types
mixed_dict = {'name': 'John', 'age': 30, 'scores': [85, 90, 95]}
```

- Utilisation de la fonction `dict()` :

```python
# Create an empty dictionary
empty_dict = dict()

# Create a dictionary with key-value pairs
my_dict = dict(name='John', age=30, city='New York')

# Create a dictionary with mixed data types
mixed_dict = dict(name='John', age=30, scores=[85, 90, 95])
```

Dans les deux cas, le dictionnaire est créé avec un ensemble de paires clé-valeur. Les clés doivent être uniques et de types de données immuables (comme les chaînes de caractères, les nombres ou les tuples), tandis que les valeurs peuvent être de n'importe quel type de données, y compris des listes, des dictionnaires et d'autres objets.

## Suppression d'un Dictionnaire

En Python, vous pouvez supprimer un dictionnaire en utilisant le mot-clé `del` suivi du nom de la variable du dictionnaire. Voici un exemple :

```python
my_dict = {'key1': 'value1', 'key2': 'value2'}
del my_dict
```

Dans l'exemple ci-dessus, nous avons créé un dictionnaire `my_dict` avec deux paires clé-valeur. Le mot-clé `del` est utilisé pour supprimer le dictionnaire en spécifiant le nom de la variable `my_dict`.

Après avoir exécuté l'instruction `del`, le dictionnaire `my_dict` sera complètement supprimé de la mémoire, et toute tentative d'y accéder résultera en une `NameError` parce que la variable n'existe plus.

## Accès aux dictionnaires en Python

Vous pouvez obtenir la valeur du dictionnaire en utilisant ses clés. Voici un exemple :

```python3
# Creating a dictionary
my_dict = {'apple': 3, 'banana': 5, 'orange': 2}

# Accessing a value using its key
print(my_dict['apple'])  # Output: 3
print(my_dict['banana']) # Output: 5
```

Vous pouvez également obtenir la valeur associée à une clé dans un dictionnaire en utilisant la méthode `get()`. Voici un exemple :

```python3
# create a dictionary
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# get the value associated with the 'apple' key
apple_value = my_dict.get('apple')

# print the value
print(apple_value) # Output: 1
```

Si la clé n'est pas trouvée dans le dictionnaire, `get()` renvoie None par défaut.

## Dictionnaire de Dictionnaires

Vous pouvez imbriquer un dictionnaire dans un dictionnaire en utilisant simplement un dictionnaire comme valeur dans un autre dictionnaire. Voici un exemple :

```python3
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# accessing values in the dictionary of dictionaries
print(my_dict['person1']['name']) # output: 'John'
print(my_dict['person2']['age']) # output: 32
```

Pour accéder aux valeurs dans les dictionnaires imbriqués, nous utilisons deux ensembles de crochets. Le premier ensemble de crochets est utilisé pour accéder au dictionnaire extérieur, et le deuxième ensemble de crochets est utilisé pour accéder au dictionnaire intérieur.

Vous pouvez également ajouter de nouveaux dictionnaires au dictionnaire imbriqué, comme ceci :

```python
# adding a new person to the dictionary of dictionaries
my_dict['person3'] = {'name': 'Alex', 'age': 25}

# accessing the new person's information
print(my_dict['person3']['name']) # output: 'Alex'
```

De même, vous pouvez mettre à jour les valeurs dans les dictionnaires imbriqués :

```python3
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# updating a person's age in the dictionary of dictionaries
my_dict['person1']['age'] = 30

# accessing the updated age
print(my_dict['person1']['age']) # output: 30
```

Dans l'ensemble, combiner des dictionnaires en Python est une méthode simple et puissante pour stocker et accéder à des structures de données hiérarchiques.

## Dictionnaire d'Objets en Python

Ce sujet est assez similaire aux dictionnaires imbriqués - vous pouvez créer un dictionnaire d'objets en utilisant les instances d'objet comme valeurs et en utilisant des clés uniques pour accéder aux objets. Voici un exemple :

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# create objects
person1 = Person("Alice", 25)
person2 = Person("Bob", 30)
person3 = Person("Charlie", 35)

# create dictionary of objects
people = {
    "person1": person1,
    "person2": person2,
    "person3": person3
}

# access objects using keys
print(people["person1"].name)   # outputs "Alice"
print(people["person2"].age)    # outputs 30
```

## Inversion des Clés et des Valeurs dans le Dictionnaire

Revoyons un exemple de comment inverser les clés et les valeurs dans un dictionnaire en Python. Pour ce faire, vous pouvez utiliser une compréhension de dictionnaire et échanger les clés et les valeurs dans chaque paire clé-valeur :

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}

reversed_dict = {value: key for key, value in my_dict.items()}

print(reversed_dict) # Output: {1: 'a', 2: 'b', 3: 'c'}
```

Dans le code ci-dessus, nous commençons par définir un dictionnaire `my_dict` avec quelques paires clé-valeur. Ensuite, nous créons un nouveau dictionnaire `reversed_dict` en utilisant une compréhension de dictionnaire. Dans la compréhension, nous itérons sur le dictionnaire `my_dict` en utilisant la méthode `items()`, qui retourne une liste de paires (clé, valeur). Pour chaque paire clé-valeur, nous échangeons les positions de la clé et de la valeur, et ajoutons la nouvelle paire (valeur, clé) au `reversed_dict`.
