> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/string/substring

Une sous-chaîne est une séquence de caractères qui fait partie d'une chaîne de caractères plus grande. Il s'agit d'une séquence contiguë de caractères à l'intérieur d'une chaîne, qui peut être extraite ou manipulée indépendamment.

Par exemple, dans la chaîne "Hello, World!", les sous-chaînes "Hello", "World" et "!" sont toutes des sous-chaînes de la chaîne originale.

Revoyons les opérations et méthodes les plus courantes liées à la sous-chaîne.

## Découpage de Chaîne

Le découpage de chaîne est le processus de création d'une nouvelle sous-chaîne à partir d'une chaîne existante en Python. Vous pouvez découper une chaîne en utilisant la syntaxe `[start:end]` pour extraire une portion de la chaîne qui commence à l'indice `start` et se termine à l'indice `end` (non inclusif). Voici quelques exemples :

```python3
my_string = "Hello, world!"

# Get the substring from index 0 to index 4 (not inclusive)
print(my_string[0:4])  # Output: "Hell"

# Get the substring from index 7 to the end of the string
print(my_string[7:])  # Output: "world!"

# Get the substring from index 2 to index 8 (not inclusive) with a step of 2
print(my_string[2:8:2])  # Output: "lo"

# Get the substring from index 2 to the second-to-last character
print(my_string[2:-1])  # Output: "llo, world"
```

Dans le premier exemple, nous utilisons le découpage pour extraire la sous-chaîne `"Hell"` de la variable `my_string` en spécifiant l'index de départ `0` et l'index de fin `4` (non inclus).

Dans le deuxième exemple, nous utilisons le découpage pour extraire la sous-chaîne `"world!"` de la variable `my_string` en spécifiant seulement l'index de départ `7` et en laissant l'index de fin vide. Cela indique à Python d'extraire la sous-chaîne de l'index de départ jusqu'à la fin de la chaîne.

Dans le troisième exemple, nous utilisons le découpage pour extraire un caractère sur deux de la sous-chaîne `"lo, "`. Nous faisons cela en spécifiant l'index de départ `2`, l'index de fin `8` (non inclus) et un pas de `2`.

Dans le quatrième exemple, nous utilisons le découpage pour extraire la sous-chaîne `"llo, world"` de la variable `my_string` en spécifiant l'index de départ `2` et l'index de fin `-1`. Le `-1` spécifie l'avant-dernier caractère de la chaîne comme index de fin.

Pour diviser une chaîne sur un délimiteur, vous pouvez également utiliser la méthode `split()`. Cette méthode prend un argument, qui est le caractère ou la chaîne de caractères délimiteur que vous souhaitez utiliser pour diviser la chaîne. Voici un exemple :

```python
my_string = "Hello,world"
my_list = my_string.split(",")
print(my_list) # Output: ['Hello', 'world']
```

Vous pouvez supprimer le premier caractère d'une chaîne en Python en utilisant le découpage de chaîne. Voici un exemple :

```python
string = "hello"
new_string = string[1:]
print(new_string) # Output: ello
```

Le découpage de chaîne peut également être utilisé pour supprimer le dernier caractère d'une chaîne. Voici un exemple :

```python
my_string = "Hello World!"
new_string = my_string[:-1]
print(new_string)  # Output: "Hello World"
```

## Sous-chaîne de caractères

Pour vérifier si une chaîne Python contient une sous-chaîne spécifique, vous pouvez utiliser le mot-clé `in` ou la méthode `find()`.

Voici un exemple en utilisant le mot-clé in :

```python3
my_string = "Hello, world!"
if "world" in my_string:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

Voici un exemple utilisant la méthode `find()` :

```python3
my_string = "Hello, world!"
if my_string.find("world") != -1:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

Dans les deux exemples, nous vérifions si la sous-chaîne `"world"` est présente dans la chaîne `my_string`. Si la sous-chaîne est trouvée, nous imprimons `"Sous-chaîne trouvée !"`, sinon nous imprimons `"Sous-chaîne non trouvée."`.

## Inversion de Chaîne

Il y a plusieurs façons d'inverser une chaîne en Python.

Voyons comment inverser une chaîne en python avec des exemples :

- En utilisant le slicing :

```python
string = "hello"
reversed_string = string[::-1]
print(reversed_string)  # Output: "olleh"
```

- En utilisant une boucle :

```python3
string = "hello"
reversed_string = ""
for char in string:
    reversed_string = char + reversed_string
print(reversed_string)  # Output: "olleh"
```

- Utiliser la fonction `reversed()` :

```python
string = "hello"
reversed_string = "".join(reversed(string))
print(reversed_string)  # Output: "olleh"
```

Toutes ces méthodes produiront le même résultat, qui est la version inversée de la chaîne originale.

## Les méthodes `startswith()` et `endswith()`

En Python, `startswith()` et `endswith()` sont deux méthodes de chaîne qui sont utilisées pour vérifier si une chaîne commence ou se termine par un préfixe ou un suffixe spécifique, respectivement. Voici un aperçu de ces méthodes :

La méthode `startswith()` est utilisée pour vérifier si une chaîne commence par un préfixe spécifique. La méthode prend un ou plusieurs préfixes comme argument et retourne `True` si la chaîne commence par l'un d'eux, et `False` sinon. Voici la syntaxe pour la méthode `startswith()`:

```python
string.startswith(prefix, start=0, end=len(string))
```

où :

- `prefix` est le préfixe à vérifier.
- `start` est un paramètre optionnel qui spécifie l'indice de début de la chaîne à rechercher. Par défaut, `start` est défini à 0, ce qui signifie que toute la chaîne sera recherchée.
- `end` est un paramètre optionnel qui spécifie l'indice de fin de la chaîne à rechercher. Par défaut, `end` est défini à la longueur de la chaîne.

Voici un exemple d'utilisation de la méthode startswith() :

```python
s = "Python is a great programming language"
print(s.startswith("Python"))  # True
print(s.startswith("Java"))    # False
print(s.startswith(("Java", "Python")))  # True (checking multiple prefixes)
```

La méthode `endswith()` est utilisée pour vérifier si une chaîne se termine par un suffixe spécifique. La méthode prend un ou plusieurs suffixes comme argument et renvoie `True` si la chaîne se termine par l'un d'eux, et `False` dans le cas contraire. Voici la syntaxe pour la méthode `endswith()` :

```python
string.endswith(suffix, start=0, end=len(string))
```

où:

- `suffix` est le suffixe à vérifier.
- les paramètres `start` et `end` ont la même signification que dans la méthode `startswith()`.

Voici un exemple d'utilisation de la méthode `endswith()` :

```python3
s = "Python is a great programming language"
print(s.endswith("language"))  # True
print(s.endswith("Python"))    # False
print(s.endswith(("Python", "language")))  # True (checking multiple suffixes)
```

Dans les deux méthodes, vous pouvez passer un tuple de préfixes ou de suffixes pour vérifier plusieurs possibilités. Les paramètres `start` et `end` sont optionnels et peuvent être utilisés pour rechercher seulement une partie de la chaîne.

## La méthode `split()`

C'est aussi une méthode intégrée en Python qui est utilisée pour diviser et analyser une chaîne en une liste de sous-chaînes basée sur un séparateur spécifié. Par défaut, le séparateur utilisé est l'espace blanc.

Voici un exemple :

```python3
s = "Hello World! How are you?"

words = s.split()

print(words)   # Output: ['Hello', 'World!', 'How', 'are', 'you?']
```

Dans l'exemple ci-dessus, la méthode `split()` est appelée sur la chaîne de caractères `s`, qui contient des mots séparés par des espaces. La liste résultante words contient tous les mots de la chaîne originale en tant qu'éléments séparés.

Vous pouvez également spécifier un séparateur différent en utilisant la méthode `split()`. Par exemple :

```python3
s = "mango,pineapple,banana"

fruits = s.split(",")

print(fruits)   # Output: ['mango', 'pineapple', 'banana']
```

Dans cet exemple, la méthode `split()` est appelée sur la chaîne de caractères `s`, qui contient des noms de fruits séparés par des virgules. La liste résultante fruits contient tous les noms de fruits en tant qu'éléments séparés, avec la virgule utilisée comme séparateur.

## La fonction `string.find()`

C'est une fonction intégrée de Python qui retourne l'indice de la première occurrence d'une sous-chaîne au sein d'une chaîne donnée. Si la sous-chaîne n'est pas trouvée, elle retourne `-1`. La syntaxe pour utiliser `string.find()` est comme suit :

```python
string.find(substring, start=0, end=len(string))
```

où `string` est la chaîne dans laquelle effectuer la recherche, `substring` est la chaîne à rechercher, `start` est l'indice de début de la recherche (par défaut c'est 0), et `end` est l'indice de fin de la recherche (par défaut c'est la longueur de la chaîne).

Voici un exemple :

```python
sentence = "The quick brown fox jumps over the lazy dog"
print(sentence.find("fox"))   # Output: 16
print(sentence.find("cat"))   # Output: -1
```

Dans la première ligne, nous définissons une chaîne de caractères sentence. Ensuite, nous utilisons la fonction `find()` pour rechercher la sous-chaîne `"fox"` dans la chaîne `sentence`. Puisque `"fox"` est trouvé à l'indice 16 dans la chaîne `sentence`, la fonction `find()` retourne `16`. Dans la deuxième ligne, nous recherchons la sous-chaîne `"cat"`, qui n'est pas trouvée dans la chaîne `sentence`, donc la fonction `find()` retourne `-1`.

## La méthode `replace()`

En Python, les chaînes de caractères sont immuables, ce qui signifie que vous ne pouvez pas modifier une chaîne une fois qu'elle a été créée. Cependant, vous pouvez créer une nouvelle chaîne qui contient une version modifiée de la chaîne originale.

Pour supprimer un caractère spécifique ou une sous-chaîne d'une chaîne en Python, vous pouvez utiliser la méthode `replace()` ou le découpage de chaîne.

Voici un exemple d'utilisation de la méthode replace() pour supprimer un caractère spécifique :

```python3
my_string = "Hello, World!"
new_string = my_string.replace("o", "")
print(new_string) # Output: Hell, Wrld!
```

Ici, nous avons remplacé le caractère `"o"` par une chaîne vide, le supprimant ainsi efficacement de la chaîne d'origine.

## Troncature de Chaîne

Vous pouvez tronquer une chaîne en spécifiant la longueur maximale de la chaîne que vous souhaitez conserver.

Voici un exemple :

```python3
text = "This is a long text that needs to be truncated."
max_length = 20
truncated_text = text[:max_length] + "..." if len(text) > max_length else text
print(truncated_text) # Output: This is a long text...
```

Dans cet exemple, nous commençons par définir une chaîne `text` que nous souhaitons tronquer. Nous spécifions également la longueur maximale de la chaîne tronquée à l'aide de la variable `max_length`.

Nous utilisons ensuite le découpage pour obtenir les premiers caractères `max_length` de la chaîne. Si la longueur de la chaîne originale est supérieure à `max_length`, nous ajoutons une ellipse à la fin de la chaîne tronquée en utilisant la concaténation de chaînes. Si la longueur de la chaîne originale est inférieure ou égale à `max_length`, nous attribuons simplement la chaîne originale à la variable `truncated_text`.

Enfin, nous imprimons la chaîne tronquée en utilisant la fonction `print()`.

## La méthode `count()`

Vous pouvez utiliser la méthode intégrée `count` pour compter le nombre d'occurrences d'une sous-chaîne dans une chaîne.

Voici un compteur de sous-chaîne `"is"` :

```python3
string = "Hello, world! This is a sample string."
substring = "is"

count = string.count(substring)

print(count) # Output: 2
```

Dans cet exemple, nous avons une chaîne `"Hello, world! This is a sample string."` et nous souhaitons compter le nombre d'occurrences de la sous-chaîne `"is"`. Nous utilisons la méthode count pour compter le nombre de fois que la sous-chaîne apparaît dans la chaîne.

Le résultat de ce programme sera `2`, car la sous-chaîne `"is"` apparaît deux fois dans la chaîne.
