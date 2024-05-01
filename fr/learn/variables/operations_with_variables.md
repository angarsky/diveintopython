> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/operations-with-variables

Python offre diverses opérations et méthodes pour travailler avec des données et effectuer diverses tâches. Examinons les plus populaires qui concernent tous les types de variables.

## Définition du type

Il existe plusieurs façons de vérifier le type d'une variable en Python. Voyons comment vérifier un type de variable en Python.

### Fonction `type()`

Cette fonction intégrée `type()` renvoie le type de données d'une variable, c'est l'équivalent de `typeof` dans d'autres langages de programmation.

Voyons comment imprimer le type de variable en Python :

```python3
x = 23
print(type(x))   # Output: <class 'int'>

y = 3.14
print(type(y))   # Output: <class 'float'>

z = "Hello, friend!"
print(type(z))   # Output: <class 'str'>

w = True
print(type(w))   # Output: <class 'bool'>
```

Dans cet exemple, la fonction `type()` est utilisée pour déterminer le type des variables `x`, `y`, `z` et `w`. La sortie montre la classe de la variable.

### Fonction `isinstance()`

Cette fonction intégrée vérifie si une variable est une instance d'une classe spécifiée ou non. Avec cette fonction, nous pouvons facilement vérifier si une variable est `string` ou non.

Nous vérifions donc ici le type de variable en Python :

```python3
x = 5
print(isinstance(x, int))  # Output: True

y = "hello"
print(isinstance(y, str))  # Output: True

z = [1, 2, 3]
print(isinstance(z, list))  # Output: True
```

### Utilisation de l'attribut `__class__`

Cet attribut retourne la classe d'un objet.

Exemple :

```python3
x = 17
print(x.__class__)  # Output: <class 'int'>

y = "hello"
print(y.__class__)  # Output: <class 'str'>

z = [1, 2, 3]
print(z.__class__)  # Output: <class 'list'>
```

Cet exemple montre comment imprimer un type d'une variable en Python.

### Utiliser la fonction `type()` avec une instruction `assert`

Ceci est une manière de vérifier le type d'une variable et de lever une erreur si le type n'est pas celui attendu.

Exemple :

```python
x = 98
assert type(x) == int

y = "hello"
assert type(y) == str

z = [1, 2, 3]
assert type(z) == list
```

Voici des manières de déterminer le type d'une variable en Python, par exemple, vous pouvez vérifier si une variable est une liste (voir l'exemple ci-dessus).

## Suppression des Variables

### Utilisation de l'instruction `del`

En Python, l'instruction `del` est utilisée pour supprimer une variable ou un élément d'une liste, d'un dictionnaire ou de tout autre objet de collection. La syntaxe pour l'utilisation de del est :

```python
del object
```

Où `object` peut être une variable, un élément de liste, un élément de dictionnaire, ou tout autre objet.

Voici quelques exemples :

```python
# Delete a variable
x = 5
del x

# Delete an item from a list
my_list = [1, 2, 3, 4, 5]
del my_list[2]

# Delete an item from a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}
del my_dict['b']
```

Dans le premier exemple, la variable `x` est supprimée en utilisant l'instruction `del`. Après que l'instruction soit exécutée, la variable `x` n'existe plus.

Dans le deuxième exemple, le troisième élément de la liste `my_list` est supprimé en utilisant del `my_list[2]`. Après que l'instruction soit exécutée, `my_list` contient les éléments `[1, 2, 4, 5]`.

Dans le troisième exemple, l'élément avec la clé `'b'` est supprimé du dictionnaire `my_dict` en utilisant `del my_dict['b']`. Après que l'instruction soit exécutée, `my_dict` contient les éléments `{'a': 1, 'c': 3}`.

Notez que `del` supprime seulement la référence à l'objet, pas l'objet lui-même. Si l'objet est encore référencé ailleurs dans le code, il ne sera pas supprimé de la mémoire.

### Assigner `None` à la Variable

Une autre méthode pour vider une variable est d'assigner la valeur `None` à une variable pour indiquer qu'elle n'a pas de valeur. La valeur `None` est une constante intégrée qui représente l'absence de valeur. Voici un exemple :

```python
x = None
print(x)  # Output: None
```

Dans cet exemple, nous attribuons la valeur `None` à la variable `x`. Lorsque nous imprimons la valeur de `x`, nous voyons qu'elle retourne `None`.

### Utiliser les fonctions `locals()` ou `globals()`

Vous pouvez utiliser les fonctions `locals()` et `globals()` pour accéder respectivement aux espaces de noms locaux et globaux. Ces fonctions renvoient un dictionnaire qui contient toutes les variables et leurs valeurs dans l'espace de noms actuel. Vous pouvez utiliser ces fonctions pour supprimer des variables de l'espace de noms en utilisant l'instruction `del`.

Voici un exemple :

```python
def my_function():
    x = 5
    y = 10
    del locals()['y']
    print(x)
    print(y)  # This will raise a NameError

my_function()
```

Dans cet exemple, nous définissons une fonction `my_function()` qui crée deux variables `x` et `y`. Nous utilisons ensuite l'instruction del pour supprimer la variable `y` de l'espace de noms local en utilisant `del locals()['y']`. Après que l'instruction soit exécutée, `y` n'est plus défini dans l'espace de noms local, donc lorsque nous essayons d'imprimer sa valeur, nous obtenons une `NameError`.

Vous pouvez également utiliser la fonction `globals()` pour supprimer des variables de l'espace de noms global. Voici un exemple :

```python
x = 5
y = 10

def my_function():
    del globals()['x']

my_function()

print(x)  # This will raise a NameError
print(y)  # Output: 10
```

Dans cet exemple, nous définissons deux variables `x` et `y` dans l'espace de noms global. Nous définissons ensuite une fonction `my_function()` qui utilise `del globals()['x']` pour retirer la variable `x` de l'espace de noms global. Après que la fonction ait été appelée, `x` n'est plus défini dans l'espace de noms global, donc lorsque nous essayons d'imprimer sa valeur, nous obtenons une `NameError`. Cependant, `y` est toujours défini dans l'espace de noms global, donc nous pouvons imprimer sa valeur sans aucune erreur.

De plus, vous pouvez effacer toutes les variables de l'espace de noms courant en utilisant les fonctions `globals()` et `locals()`. Voici comment vous pouvez le faire :

```python
# Clear all global variables
for var in globals().copy():
    if var.startswith("__"):
        continue
    del globals()[var]

# Clear all local variables
for var in locals().copy():
    if var.startswith("__"):
        continue
    del locals()[var]
```

Le code ci-dessus supprimera toutes les variables des espaces de noms global et local à l'exception des variables Python intégrées (qui commencent par `__`). Gardez à l'esprit que cela peut être dangereux car cela supprimera toutes vos variables et vous ne pourrez pas y accéder plus tard dans votre programme. Donc, assurez-vous de l'utiliser avec prudence.

### Utilisation de la méthode `__del__()`

La méthode `__del__()` est une méthode spéciale qui est appelée lorsqu'un objet est sur le point d'être détruit ou collecté comme déchet. Vous pouvez définir cette méthode dans votre classe pour effectuer toutes les tâches de nettoyage nécessaires avant que l'objet ne soit détruit.

La méthode `__del__()` ne prend aucun argument et ne renvoie aucune valeur. Voici un exemple :

```python
class MyClass:
    def __init__(self, name):
        self.name = name
    
    def __del__(self):
        print(f"{self.name} has been deleted")
        
obj1 = MyClass("Object 1")
obj2 = MyClass("Object 2")
del obj1
```

Dans cet exemple, nous définissons une classe `MyClass` avec une méthode `__init__()` qui initialise une variable d'instance name. Nous définissons également une méthode `__del__()` qui affiche un message lorsque l'objet est supprimé. Nous créons deux instances de la classe `MyClass` puis nous en supprimons une en utilisant l'instruction `del`.

Lorsque nous exécutons ce code, nous obtenons la sortie suivante :

```python
Object 1 has been deleted
```

Cette sortie indique que la méthode `__del__()` a été appelée lorsque l'objet `obj1` a été supprimé.

Notez que la méthode `__del__()` n'est pas garantie d'être appelée dans tous les cas. Par exemple, si le programme se termine de manière abrupte, la méthode peut ne pas être appelée. Par conséquent, il n'est généralement pas judicieux de compter sur cette méthode pour des tâches de nettoyage critiques. Au lieu de cela, il est préférable d'utiliser d'autres mécanismes de nettoyage, tels que les instructions `with` ou les gestionnaires de contexte, lorsque cela est possible.

## Opérations avec les Variables

Nous avons déjà couvert l'assignation de variables plus tôt. Mais voyons également ce que nous pouvons faire d'autre avec les variables.

### Copier une variable

Pour copier une variable en Python, vous pouvez utiliser l'opérateur d'assignation `=` ou la méthode `copy()`. Cependant, il est important de noter que le comportement de ces méthodes peut être différent en fonction du type de la variable.

- Copie superficielle : Lorsque vous utilisez l'opérateur d'assignation pour copier une liste, un dictionnaire ou d'autres objets modifiables, vous créez une copie superficielle. Cela signifie que la nouvelle variable se réfère au même objet en mémoire que la variable originale. Toutes modifications apportées à la variable originale seront reflétées dans la copie, et vice versa. Par exemple :

```python3
original_list = [1, 2, 3]
copy_list = original_list  # Shallow copy
original_list[0] = 4
print(copy_list)  # Output: [4, 2, 3]
```

- Copie profonde : Si vous souhaitez créer un nouvel objet en mémoire qui est une copie de la variable originale, vous pouvez utiliser la méthode `copy()`. Cela crée une copie profonde, ce qui signifie que les modifications apportées à la variable originale ne seront pas reflétées dans la copie, et vice-versa. Par exemple :

```python3
import copy

original_list = [1, 2, 3]
copy_list = copy.deepcopy(original_list)  # Deep copy
original_list[0] = 4
print(copy_list)  # Output: [1, 2, 3]
```

Il est important d'utiliser la méthode appropriée pour copier des variables afin d'éviter un comportement inattendu dans votre code.

### Vérifier si une Variable est Définie ou non

Vous pouvez utiliser l'opérateur `in` pour vérifier si une variable a été définie ou non.

Voici un exemple :

```python3
if 'my_variable' in locals() or 'my_variable' in globals():
    print('my_variable is defined')
else:
    print('my_variable is not defined')
```

Ce code vérifie si la variable `my_variable` est définie dans l'espace de noms local ou global. Si elle est définie, le code imprimera `'my_variable is defined'`, sinon il imprimera `'my_variable is not defined'`.

Notez que si la variable a été définie mais a une valeur de `None`, cette méthode la considérera toujours comme définie. Si vous voulez vérifier spécifiquement une valeur non-`None`, vous pouvez modifier le code ainsi :

```python3
if 'my_variable' in locals() and locals()['my_variable'] is not None or 'my_variable' in globals() and globals()['my_variable'] is not None:
    print('my_variable is defined and has a non-None value')
else:
    print('my_variable is not defined or has a value of None')
```

Ce code vérifie à la fois que la variable est définie et qu'elle a une valeur non-`None`. Si les deux conditions sont remplies, il imprimera `'my_variable is defined and has a non-None value'`, sinon il imprimera `'my_variable is not defined or has a value of None'`.

### Vérifier si une Variable est Vide

En Python, il existe plusieurs façons de vérifier si une variable est vide :

- Utiliser la déclaration `if` avec le nom de la variable :

```python
if my_variable:
    # do something
    pass
else:
    # the variable is empty
    pass
```

Si `my_variable` est vide ou évalué à `False`, le bloc `else` sera exécuté.

- Utilisation de l'opérateur `not` avec le nom de la variable :

```python
if not my_variable:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Si `my_variable` est vide ou évalue à `False`, le bloc `if` sera exécuté.

- Utilisation de la fonction intégrée `len()` :

```python
if len(my_variable) == 0:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Si `my_variable` a une longueur de 0, elle est considérée comme vide.

- Utiliser l'opérateur `is` avec `None` :

```python
if my_variable is None:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Si `my_variable` est égal à `None`, il est considéré comme vide. Cependant, il est important de noter que `None` est une valeur spécifique en Python et n'est pas la même chose qu'une chaîne vide, une liste ou d'autres types de données.

### Obtenir le Nom d'une Variable

Les variables sont simplement des noms qui font référence à des objets en mémoire. En Python, vous pouvez obtenir le nom d'une variable en utilisant les fonctions `locals()` ou `globals()`, selon que la variable se trouve dans l'espace de noms local ou global.

Voici un exemple :

```python3
x = 42
var_name = [k for k,v in locals().items() if v is x][0]
print(var_name)
```

Ce code assigne la valeur `42` à la variable `x`. Ensuite, il utilise une compréhension de liste pour itérer sur tous les éléments dans l'espace de noms local, et trouver le nom de la variable qui fait référence à l'objet avec la valeur de `x`. Enfin, il affiche ce nom de variable, qui dans ce cas est `x`.

Notez que cette approche suppose que la variable a une valeur unique dans l'espace de noms, ce qui peut ne pas toujours être le cas. De plus, il n'est généralement pas recommandé de se fier aux noms de variables dans votre logique de code, car cela peut rendre votre code plus fragile et plus difficile à refactoriser.

### Vérifier si une Variable Existe

Vous pouvez vérifier si une variable existe en Python en utilisant le mot-clé `in` avec la fonction `locals()` ou `globals()`. Voici un exemple :

```python3
if 'my_variable' in locals():
    print("my_variable exists in the local scope.")

if 'my_variable' in globals():
    print("my_variable exists in the global scope.")
```

Dans l'exemple ci-dessus, nous vérifions si une variable nommée `my_variable` existe dans le scope local ou global en utilisant le mot-clé `in` avec la fonction `locals()` ou `globals()`, respectivement. Si la variable existe, nous imprimons un message indiquant qu'elle existe dans le scope spécifié.

Notez que vérifier l'existence d'une variable en utilisant le mot-clé `in` et la fonction `locals()` ou `globals()` ne fonctionnera que pour les variables qui ont déjà été définies dans le programme. Si vous n'êtes pas sûr qu'une variable ait été définie ou non, vous pouvez utiliser un bloc `try`-`except` pour attraper une exception `NameError` qui serait levée si la variable n'existe pas. Voici un exemple :

```python3
try:
    my_variable
    print("my_variable exists.")
except NameError:
    print("my_variable does not exist.")
```

Dans cet exemple, nous essayons d'accéder à la variable `my_variable`, et si elle n'existe pas, une exception `NameError` est levée. Nous attrapons l'exception en utilisant le bloc except et imprimons un message indiquant que la variable n'existe pas.
