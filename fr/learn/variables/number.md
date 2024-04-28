> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/number

Python prend en charge plusieurs types de données numériques qui sont utilisés pour diverses opérations mathématiques en programmation. Ces types de données incluent les entiers, les nombres à virgule flottante et les nombres complexes. Comprendre ces types de données et leurs caractéristiques est essentiel pour tout programmeur qui souhaite travailler avec des données numériques en Python.

## Types de nombres en Python

En Python, il existe plusieurs types de nombres qui peuvent être utilisés à différentes fins. Les types de nombres les plus courants en Python sont :

- **Nombre entier** (int) : C'est un nombre entier sans aucun point décimal. Par exemple, `1`, `2`, `3`, etc. sont des entiers.
- **Nombre flottant** : C'est un nombre décimal. Par exemple, `1.2`, `3.14159`, etc. sont des flottants.
- **Nombre complexe** : C'est un nombre avec une partie réelle et une partie imaginaire. Par exemple, `1 + 2j`, `3.14 - 4j`, etc. sont des nombres complexes.

Voici quelques exemples de comment définir ces types de nombres en Python :

```python
# Integer
x = 5
print(type(x))  # Output: <class 'int'>

# Float
y = 3.14
print(type(y))  # Output: <class 'float'>

# Complex
z = 2 + 3j
print(type(z))  # Output: <class 'complex'>
```

## La fonction `isinstance()`

Pour vérifier si une variable est un nombre en Python, vous pouvez utiliser la fonction `isinstance()` pour vérifier si la variable appartient au type de données int, float ou complexe. Voici un exemple :

```python3
x = 10
y = 3.14
z = 2 + 3j

print(isinstance(x, (int, float, complex)))  # Output: True
print(isinstance(y, (int, float, complex)))  # Output: True
print(isinstance(z, (int, float, complex)))  # Output: True
print(isinstance('hello', (int, float, complex)))  # Output: False
```

## Arrondir un nombre en Python

Vous pouvez arrondir un nombre en utilisant la fonction intégrée `round()`. La fonction `round()` prend deux arguments : le nombre à arrondir et le nombre de décimales à arrondir.

Voici un exemple :

```python3
x = 3.14159
rounded_x = round(x, 2)
print(rounded_x) # Output: 3.14
```

Notez que si le nombre à arrondir se termine par 5, la fonction `round()` arrondira au nombre pair le plus proche. Cela est connu sous le nom d'"arrondi bancaire". Par exemple :

```python
x = 2.5
rounded_x = round(x)
print(rounded_x) # Output: 2
```

## Formatage des nombres

En Python, il existe plusieurs manières de formater des nombres. Voici quelques exemples :

### Utiliser la fonction intégrée `format()`

```python3
x = 3.14159
print("{:.2f}".format(x))  # Output: 3.14
```

La chaîne `"{:.2f}"` à l'intérieur de la fonction `format()` indique à Python de formater le nombre en tant que nombre flottant avec 2 décimales.

### Utilisation des f-strings (Python 3.6 et ultérieur)

```python
x = 3.14159
print(f"{x:.2f}")  # Output: 3.14
```

Le `f` avant la chaîne indique qu'il s'agit d'une chaîne f, et le `"{x:.2f}"` à l'intérieur de la chaîne indique à Python de formater la valeur de `x` en tant que flottant avec 2 chiffres après la virgule.

### En utilisant l'opérateur `%`

```python3
x = 3.14159
print("%.2f" % x)  # Output: 3.14
```

La chaîne `%.2f` à l'intérieur de l'opérateur `%` indique à Python de formater le nombre en tant que flottant avec 2 chiffres après la virgule.

## Vérifier si une chaîne est un nombre

Vous pouvez vérifier si une chaîne est un nombre en Python en utilisant différentes méthodes. Voici quelques exemples :

### En utilisant la méthode `isnumeric()`

```python
my_string = "123"
if my_string.isnumeric():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
```

### Utilisant la méthode `isdigit()`

```python
my_string = "456"
if my_string.isdigit():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
 ```

### Utiliser le bloc try-except pour convertir une chaîne en nombre flottant

```python
my_string = "789.12"
try:
    float(my_string)
    print("String is a number")
except ValueError:
    print("String is not a number") # Output: String is a number
```

> Notez que si la chaîne contient un caractère non numérique, les deux premières méthodes retourneront `False` et la troisième méthode lèvera une `ValueError`.

## Vérifier si un nombre est entier

Vous pouvez utiliser l'opérateur modulo `%` pour vérifier si un nombre est entier ou non. Si le résultat de la division du nombre par 1 est égal à 0, alors le nombre est un nombre entier.

Voici un exemple :

```python
num = 5.0  # the number you want to check

if num % 1 == 0:
    print("The number is whole.")
else:
    print("The number is not whole.") # Output: "The number is whole."
 ```

## Générer un Nombre Aléatoire

Pour obtenir un nombre aléatoire en Python, vous pouvez utiliser le module `random`. Voici un exemple de comment générer un entier aléatoire entre 0 et 10 :

```python
import random

random_number = random.randint(0, 10)
print(random_number)
```

Cela affichera un entier aléatoire entre 0 et 10 (inclus) chaque fois que vous exécutez le script. Si vous souhaitez générer un nombre flottant aléatoire, vous pouvez utiliser la fonction `random.uniform()` à la place :

```python
import random

random_number = random.uniform(0, 1)
print(random_number)
```

## Carré d'un Nombre en Python

Voyons comment calculer le carré d'un nombre en Python.
La première méthode utilise l'opérateur d'exponentiation `**`. Voici un exemple :

```python
x = 5
squared = x ** 2
print(squared) # Output: 25
```

Alternativement, vous pouvez également utiliser la fonction `pow()` pour calculer le carré d'un nombre. Voici un exemple :

```python
x = 5
squared = pow(x, 2)
print(squared)
```

## Inversion d'un Nombre

Vous pouvez inverser un nombre en utilisant l'opérateur `-` (moins).

Voici un exemple :

```python
number = 10
negated_number = -number
print(negated_number) # Output: -10
```

## Nombre Premier

Un nombre premier est un entier positif supérieur à 1 qui n'a pas d'autres diviseurs entiers positifs que 1 et lui-même. En Python, vous pouvez vérifier si un nombre est premier en testant s'il est divisible par un nombre autre que 1 et lui-même.

Voici un exemple de fonction qui vérifie si un nombre est premier ou non :

```python
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True
```

Cette fonction prend un entier positif `n` en entrée et retourne `True` si `n` est premier, et `False` sinon.

La fonction vérifie d'abord si `n` est inférieur ou égal à 1, ce qui n'est pas un nombre premier par définition. Si `n` est inférieur ou égal à 1, la fonction retourne `False`.

Si `n` est supérieur à 1, la fonction vérifie s'il est divisible par un nombre quelconque de 2 à la racine carrée de `n`. Si `n` est divisible par un nombre quelconque dans cette plage, il n'est pas premier et la fonction retourne `False`. Sinon, `n` est premier et la fonction retourne `True`.

Voici un exemple d'utilisation de la fonction `is_prime` :

```python
print(is_prime(7)) # True
print(is_prime(15)) # False
print(is_prime(23)) # True
print(is_prime(1)) # False
```

Sortie :

```python
True
False
True
False
```

Dans cet exemple, nous avons appelé la fonction `is_prime` avec différentes valeurs d'entrée et imprimé le résultat.

## Le Nombre d'Euler en Python

Le nombre d'Euler, également connu sous le nom de constante mathématique `e`, est une constante mathématique qui est approximativement égale à 2.71828. En Python, vous pouvez calculer le nombre d'Euler en utilisant le module `math`.

Voici un exemple de comment calculer le nombre d'Euler :

```python3
import math

e = math.e

print(e) # Output: 2.718281828459045
```

## Extraire un Nombre d'une Chaîne de Caractères

Pour extraire un nombre d'une chaîne de caractères en Python, vous pouvez utiliser des expressions régulières avec le module `re`. Voici un exemple :

```python3
import re

string = "The price is $12.34"

number = re.findall(r'\d+\.\d+', string)[0]

print(number) # Output: 12.34
```

Dans cet exemple, nous avons d'abord importé le module `re`, qui fournit un support pour les expressions régulières. Nous avons ensuite défini une variable `string` qui contient une phrase avec un nombre.

Pour extraire le nombre de la chaîne, nous avons utilisé la fonction `re.findall` avec un motif d'expression régulière `\d+\.\d+`. Ce motif correspond à un ou plusieurs chiffres `\d+` suivis d'un point `\.` suivi d'un ou plusieurs chiffres `\d+`. Le résultat correspondant est une chaîne de caractères qui représente le nombre dans la phrase.

Puisque `re.findall` retourne une liste de correspondances, nous avons accédé au premier élément `[0]` de la liste pour obtenir le nombre sous forme de chaîne de caractères.

Si vous avez besoin de convertir le nombre extrait d'une chaîne en une valeur numérique, vous pouvez utiliser la fonction float ou int :

```python
number = float(number)
print(number) # Output: 12.34
```

## Chiffres d'un nombre

Pour trouver les chiffres d'un nombre en Python, vous pouvez convertir le nombre en chaîne de caractères puis itérer sur la chaîne pour extraire chaque chiffre. Voici un exemple :

```python3
num = 12345

# Convert number to string
num_str = str(num)

# Iterate over string and print each digit
for digit in num_str:
    print(digit)
```
