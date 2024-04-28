> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/list/convert

En Python, il est courant de convertir des données vers et depuis des listes, car les listes sont une structure de données polyvalente qui peut contenir plusieurs éléments de différents types de données. Dans certains cas, nous devons changer le type de données stockées dans une liste. Examinons les cas de conversion les plus courants.

## Conversion de Liste en Chaîne en Python

Pour convertir une liste en chaîne en Python, vous pouvez utiliser la méthode `join()`. Voici un exemple :

```python3
my_list = ["apple", "pineapple", "cherry"]
my_string = ", ".join(my_list)
print(my_string) # Output: apple, pineapple, cherry
```

## Conversion de chaîne en liste

Pour convertir une chaîne Python en une liste, vous pouvez utiliser la méthode `split()`. La méthode `split()` divise une chaîne en une liste de sous-chaînes basées sur un délimiteur spécifié.

Voici un exemple de comment obtenir une liste à partir d'une chaîne :

```python3
my_string = "Hello, World!"
my_list = my_string.split(", ")
print(my_list) Output: ['Hello', 'World!']
```

Pour convertir une chaîne Python en une liste de caractères, vous pouvez utiliser la fonction `list()`, qui prend une séquence (par exemple, une chaîne) comme argument et renvoie une liste contenant les éléments de la séquence :

Voici un exemple de conversion de chaîne en liste de caractères :

```python3
my_string = "Hello, world!"
my_list = list(my_string)
print(my_list) Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

## Conversion de liste en dictionnaire

Vous pouvez convertir une liste en dictionnaire en Python en utilisant le constructeur `dict()`. La liste doit contenir des paires clé-valeur sous forme de tuples, où le premier élément de chaque tuple est la clé et le deuxième élément est la valeur. Voici un exemple :

```python3
my_list = [("a", 1), ("b", 2), ("c", 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Conversion de Liste en Ensemble

Pour convertir une liste en ensemble en Python, vous pouvez utiliser la fonction intégrée `set()`. Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

Vous pouvez également obtenir une liste de valeurs uniques en utilisant la fonction `set()`, en convertissant une liste en ensemble, puis en la reconvertissant en liste.

## Conversion d'Ensemble en Liste

Pour convertir un ensemble en liste en Python, vous pouvez utiliser la fonction `list()`. Voici un exemple :

```python3
my_set = {1, 2, 3, 4, 5}
my_list = list(my_set)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Diviser une chaîne en liste

Vous pouvez utiliser la méthode `split()` en Python pour diviser une chaîne en liste.

Voici un exemple :

```python3
string = "Hello World"
list = string.split()
print(list) # Output: ['Hello', 'World']
```

Par défaut, la méthode `split()` divise la chaîne de caractères sur les caractères d'espacement (espaces, tabulations et sauts de ligne). Vous pouvez également spécifier un délimiteur différent en le passant comme argument à la méthode `split()`. Par exemple, si vous souhaitez diviser une chaîne sur les virgules, vous pouvez faire :

```python3
string = "apple,banana,orange"
list = string.split(",")
print(list) # Output: ['apple', 'banana', 'orange']
```

## Conversion d'une liste en tuple

En Python, vous pouvez facilement convertir une liste en tuple en utilisant la fonction intégrée `tuple()`. Voici un exemple :

```python3
my_list = [1, 2, 3, 4, 5]
my_tuple = tuple(my_list)
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Conversion de Tuple en Liste

En Python, vous pouvez convertir un tuple en liste en utilisant la fonction intégrée `list()`. Voici un exemple :

```python3
my_tuple = (1, 2, 3, 4, 5)
my_list = list(my_tuple)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Conversion de Liste de Caractères en Liste d'Entiers en Python

Pour convertir une liste de caractères en une liste d'entiers en Python, vous pouvez utiliser une compréhension de liste avec la fonction intégrée `ord()`, qui renvoie le point de code Unicode d'un caractère.

Voici un exemple de code :

```python3
char_list = ['a', 'b', 'c', 'd']
int_list = [ord(char) for char in char_list]
print(int_list) # Output: [97, 98, 99, 100]
```
