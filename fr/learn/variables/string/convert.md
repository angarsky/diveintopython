> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/string/convert

Dans le processus de travail avec des données, il est souvent nécessaire de convertir un type de données en un autre. En Python, vous pouvez convertir différents types de données en une chaîne de caractères et vice versa en utilisant diverses fonctions de conversion. Cette partie décrira comment le faire.

## Convertir en Chaîne

Pour convertir un objet non-chaîne en chaîne en Python, vous pouvez utiliser la fonction `str()`. Voici quelques exemples de comment caster des données :

```python3
# convert an integer to a string
num = 42
str_num = str(num)
print(str_num)  # outputs "42"
print(type(str_num))  # outputs "<class 'str'>"

# convert a float to a string
pi = 3.14159
str_pi = str(pi)
print(str_pi)  # outputs "3.14159"
print(type(str_pi))  # outputs "<class 'str'>"

# convert a boolean to a string
flag = True
str_flag = str(flag)
print(str_flag)  # outputs "True"
print(type(str_flag))  # outputs "<class 'str'>"
```

Notez que si vous essayez de convertir un objet qui n'a pas de représentation en chaîne définie, vous pouvez obtenir une exception `TypeError`.

## Unicode en Chaine de Caractères

En Python, vous pouvez convertir une chaîne Unicode en une chaîne de caractères régulière (également connue sous le nom de chaîne de bytes) en utilisant la méthode `encode`.

Voici un exemple :

```python3
unicode_string = "Hello, World! 🌍"
byte_string = unicode_string.encode("utf-8")
print(byte_string) # Output: b'Hello, World! \xf0\x9f\x8c\x8d'
```

Dans cet exemple, la méthode `encode` est utilisée pour convertir la `unicode_string` en une chaîne d'octets codée au format UTF-8. La variable `byte_string` résultante contient la représentation en octets de la chaîne originale.

Notez que le préfixe `b` dans la sortie indique que la valeur est une chaîne d'octets, plutôt qu'une chaîne de caractères ordinaire. Si vous voulez reconvertir la chaîne d'octets en une chaîne de caractères ordinaire, vous pouvez utiliser la méthode de décodage :

```python
new_unicode_string = byte_string.decode("utf-8")
print(new_unicode_string) # Output: Hello, World! 🌍
```

Dans cet exemple, la méthode `decode` est utilisée pour convertir la chaîne de bytes en une chaîne Unicode codée en format UTF-8. La variable `new_unicode_string` résultante contient la chaîne originale.

## Conversion de Chaîne en Liste

Pour convertir une chaîne en une liste de ses lettres individuelles en Python, vous pouvez utiliser la fonction intégrée `list()`. Voici un exemple :

```python
my_string = "hello"
letters_list = list(my_string)
print(letters_list)
```

Cela produira :

```python
['h', 'e', 'l', 'l', 'o']
```

Alternativement, vous pourriez utiliser une boucle pour itérer sur la chaîne de caractères et ajouter chaque lettre à une nouvelle liste :

```python3
my_string = "hello"
letters_list = []
for letter in my_string:
    letters_list.append(letter)
print(letters_list)
```

Cela produira également :

```python
['h', 'e', 'l', 'l', 'o']
```

## Conversion de chaîne en booléen

Vous pouvez convertir une chaîne en une valeur booléenne en utilisant la fonction intégrée `bool()`.

Par défaut, les chaînes suivantes sont considérées comme `True` :

- Toute chaîne non vide
- La chaîne "True" (sans tenir compte de la casse)

D'autre part, les chaînes suivantes sont considérées comme `False` :

- Une chaîne vide
- La chaîne "False" (sans tenir compte de la casse)
- N'importe quelle valeur numérique égale à 0 (c'est-à-dire, "0" ou "0.0")

Voici quelques exemples :

```python
>>> bool("hello")
True
>>> bool("")
False
>>> bool("True")
True
>>> bool("false")
False
>>> bool("0")
False
>>> bool("1")
True
```

Si vous avez une chaîne de caractères qui n'est pas l'une des valeurs mentionnées ci-dessus et que vous souhaitez la traiter comme un booléen, vous pouvez définir vos propres règles de conversion en utilisant une instruction `if` ou une expression conditionnelle.

## Chaîne vers Hex

Vous pouvez convertir une chaîne en sa représentation hexadécimale en Python en utilisant la méthode `encode()` et l'encodage `'hex'`. Voyons comment encoder avec un exemple :

```python3
string = "Hello, world!"
hex_string = string.encode('hex')

print(hex_string) # Output: 48656c6c6f2c20776f726c6421
```

Dans Python 3, la méthode `hex()` peut être utilisée pour convertir une chaîne en sa représentation hexadécimale. Voici un exemple :

```python
string = "Hello, world!"
hex_string = ''.join([hex(ord(c))[2:] for c in string])

print(hex_string) #Output: 48656c6c6f2c20776f726c6421
```

## La méthode `join()`

Cette méthode vous permet de joindre les éléments d'un itérable (comme une liste, un tuple ou une chaîne) en une seule chaîne en utilisant une chaîne séparateur.

La syntaxe pour utiliser la méthode `join()` est la suivante :

```python
separator_string.join(iterable)
```

Ici, `separator_string` est la chaîne que vous souhaitez utiliser pour séparer les éléments dans l'itérable, et `iterable` est la séquence d'éléments que vous souhaitez joindre.

Par exemple, si vous avez une liste de chaînes de caractères et que vous souhaitez les joindre en une seule chaîne séparée par des virgules, vous pourriez utiliser le code suivant :

```python3
my_list = ['mango', 'pineapple', 'banana']
separator = ', '
result = separator.join(my_list)
print(result)  # Output: "mango, pineapple, banana"
```

Dans cet exemple, la méthode `join()` est appelée sur la chaîne de séparation, avec la liste `my_list` comme argument itérable. La chaîne résultante est assignée à la variable result et imprimée dans la console.

Notez que la méthode `join()` peut également être utilisée avec d'autres types d'itérables, tels que les tuples ou les ensembles. De plus, vous pouvez utiliser une chaîne vide comme séparateur si vous souhaitez joindre les éléments sans aucune séparation.
