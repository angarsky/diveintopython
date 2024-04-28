> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/string

Auparavant, nous avons abordé le sujet des opérations avec les variables. Dans cette partie, nous allons plonger dans les opérations et méthodes les plus courantes avec les chaînes de caractères. Ceci n'est pas la liste complète des manipulations de chaînes possibles.

## Déclaration d'une Variable de Chaîne

Vous pouvez déclarer une variable de chaîne en attribuant une valeur de chaîne à un nom de variable en utilisant le signe égal `=`. Voici un exemple :

```python
my_string = "Hello, world!"
```

Dans cet exemple, nous avons déclaré une variable de type chaîne appelée `my_string` et lui avons attribué la valeur `"Hello, world!"`. Remarquez que la valeur de la chaîne est entourée de guillemets.

Vous pouvez également déclarer une variable de chaîne vide en lui attribuant une valeur de chaîne vide à un nom de variable, comme ceci :

```python
my_string = ""
```

Dans ce cas, nous avons déclaré une variable de type chaîne appelée `my_string` et nous lui avons attribué une valeur de chaîne vide.

## Concaténation de Chaînes

La concaténation de chaînes est le processus qui consiste à combiner deux chaînes ou plus en une seule chaîne. En Python, vous pouvez concaténer les chaînes en utilisant l'opérateur `+`. Une autre option pour ajouter une chaîne est d'utiliser l'opérateur `+=`.

Voyons un exemple d'ajout d'une chaîne :

```python3
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

Dans l'exemple ci-dessus, nous avons créé deux variables de chaîne `str1` et `str2` contenant respectivement les chaînes "Hello" et "World". Nous utilisons ensuite l'opérateur `+` pour ajouter une chaîne à une autre, avec un caractère d'espace, pour créer un seul résultat de chaîne. Enfin, nous imprimons le résultat de l'ajout à la console, ce qui affiche "Hello World".

## Une variable dans une chaîne

En Python, vous pouvez inclure des variables dans des chaînes en utilisant différentes méthodes. Voici quelques-unes des méthodes communément utilisées pour y parvenir :

**Concaténation de chaînes** : vous pouvez concaténer des chaînes et des variables en utilisant l'opérateur `+` :

```python3
name = "Alice"
age = 30
message = "Hello, my name is " + name + " and I am " + str(age) + " years old."
print(message)
```

**Utilisation de la méthode `str.format()`**: cette méthode vous permet d'intégrer des variables dans une chaîne en utilisant des espaces réservés `{}` :

```python3
name = "Bob"
age = 25
message = "Hello, my name is {} and I am {} years old.".format(name, age)
print(message)
```

**Utilisation des f-strings (littéraux de chaîne formatés)** : introduits dans Python 3.6, les f-strings offrent une manière concise d'incorporer directement des variables à l'intérieur des chaînes en préfixant la chaîne avec `f` et en utilisant `{}` pour encadrer les variables :

```python
name = "Charlie"
age = 35
message = f"Hello, my name is {name} and I am {age} years old."
print(message)
```

Toutes ces méthodes aboutissent au même résultat, mais les f-strings sont souvent préférées en raison de leur lisibilité et de leur facilité d'utilisation. Elles vous permettent de référencer directement les variables à l'intérieur de la chaîne, rendant le code plus propre et plus compréhensible.

## Longueur de la Chaîne

Vous pouvez obtenir la longueur d'une chaîne en utilisant la fonction intégrée `len()`. Vous pouvez également vérifier si une chaîne est vide en utilisant cette méthode.

Voici un exemple du calcul des caractères qu'une chaîne contient :

```python3
my_string = "Hello, world!"
print(len(my_string))  # Output: 13
```

Dans cet exemple, la fonction `len()` retourne le nombre de caractères dans la variable `my_string`, qui est de 13. Vous pouvez également utiliser `len()` pour obtenir la longueur d'une variable de chaîne qui est vide ou contient des espaces blancs :

```python3
empty_string = ""
print(len(empty_string))  # Output: 0

whitespace_string = "   "
print(len(whitespace_string))  # Output: 3
```

Dans les deux cas, la fonction `len()` renvoie la longueur de la chaîne, qui est de 0 pour la chaîne vide et de 3 pour la chaîne contenant des espaces blancs.

## Comparaison de chaînes

En Python, vous pouvez utiliser divers opérateurs de comparaison pour comparer des chaînes. Voici quelques exemples :

L'opérateur `==` : vérifie si deux chaînes sont égales.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 == str2:
    print("The two strings are equal.")
else:
    print("The two strings are not equal.")
# Output: The two strings are not equal.
```

L'opérateur `!=` : vérifie si deux chaînes ne sont pas égales.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 != str2:
    print("The two strings are not equal.")
else:
    print("The two strings are equal.")
# Output: The two strings are not equal.
```

L'opérateur `<` : vérifie si la première chaîne est inférieure à la seconde chaîne dans l'ordre lexicographique.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 < str2:
    print("The first string comes before the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before the second string.
```

L'opérateur `>` : vérifie si la première chaîne est supérieure à la seconde chaîne dans l'ordre lexicographique.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 > str2:
    print("The first string comes after the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

L'opérateur `<=` : vérifie si la première chaîne est inférieure ou égale à la seconde chaîne dans l'ordre lexicographique.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 <= str2:
    print("The first string comes before or is equal to the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before or is equal to the second string.
```

L'opérateur `>=` : vérifie si la première chaîne est supérieure ou égale à la deuxième chaîne dans l'ordre lexicographique.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 >= str2:
    print("The first string comes after or is equal to the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

Notez que lors de la comparaison de chaînes de caractères en Python, la comparaison est effectuée dans l'ordre lexicographique, ce qui signifie que la comparaison est basée sur les valeurs ASCII des caractères dans les chaînes de caractères.

## Chaîne de Caractères Multilignes

Vous pouvez créer une chaîne de caractères multilignes en encadrant le texte avec des triples guillemets, soit des triples guillemets simples (''') soit des triples guillemets doubles (""").

Par exemple :

```python3
multiline_string = '''
This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
'''

print(multiline_string)
```

```python
# Output:

This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
```

Notez que tout espace blanc, y compris les sauts de ligne, dans la chaîne entre guillemets triples sera inclus dans la chaîne. Si vous souhaitez exclure les espaces blancs au début ou à la fin d'une ligne, vous pouvez utiliser des méthodes de chaîne comme strip() ou rstrip().

## Chaîne Binaire

Une chaîne binaire peut être représentée en utilisant le préfixe `0b` suivi d'une séquence de chiffres `0` et `1`. Par exemple, la chaîne binaire `1101` peut être représentée comme `0b1101`. Voici quelques exemples de comment créer et manipuler des chaînes binaires en Python :

- Créer une chaîne binaire :

```python
binary_str = '0b1101'
```

- Convertir un nombre décimal entier en une chaîne binaire :

```python
decimal_num = 13
binary_str = bin(decimal_num)
```

- Convertir une chaîne binaire en un entier décimal :

```python
binary_str = '0b1101'
decimal_num = int(binary_str, 2)
```

- Opérations bit à bit sur des chaînes binaires :

```python3
binary_str1 = '0b1101'
binary_str2 = '0b1010'

# Bitwise AND
result = int(binary_str1, 2) & int(binary_str2, 2)
print(bin(result))  # Output: 0b1000

# Bitwise OR
result = int(binary_str1, 2) | int(binary_str2, 2)
print(bin(result))  # Output: 0b1111

# Bitwise XOR
result = int(binary_str1, 2) ^ int(binary_str2, 2)
print(bin(result))  # Output: 0b0111
```

Notez que lors de l'exécution d'opérations bitwise, nous devons convertir les chaînes binaires en entiers décimaux en utilisant la fonction `int()` avec un deuxième argument spécifiant la base (`2` dans ce cas), puis convertir le résultat à nouveau en une chaîne binaire en utilisant la fonction `bin()`.

## Itérer sur les Caractères

Il existe plusieurs façons d'itérer sur les caractères d'une chaîne en Python. Voici quelques exemples :

- En utilisant une boucle `for` :

```python3
my_string = "Hello, world!"
for char in my_string:
    print(char)
```

- En utilisant une boucle `while` :

```python3
my_string = "Hello, world!"
i = 0
while i < len(my_string):
    print(my_string[i])
    i += 1
```

- En utilisant une compréhension de liste :

```python3
my_string = "Hello, world!"
char_list = [char for char in my_string]
print(char_list)
```

- Utilisant la fonction `map()` :

```python3
my_string = "Hello, world!"
char_list = list(map(str, my_string))
print(char_list)
```

- Utilisant la fonction `enumerate()`:

```python
my_string = "Hello, world!"
for index, char in enumerate(my_string):
    print(f"Character at index {index}: {char}")
```

Toutes ces méthodes vous permettront d'itérer sur les caractères d'une chaîne et d'effectuer des opérations sur eux. Choisissez celle qui répond le mieux à vos besoins !
