> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/statements/operators

Dans cet article, nous allons explorer les différents types d'opérateurs en Python et comment ils sont utilisés en programmation.

## L'opérateur `in`

L'opérateur `in` en Python est utilisé pour vérifier si une valeur est présente dans une séquence ou pas. Il retourne une valeur Booléenne `True` si la valeur est trouvée dans la séquence et `False` sinon.

```python3
my_list = [1, 2, 3, 4, 5]
x = 3

if x in my_list:
    print("Element is present in the list")
else:
    print("Element is not present in the list")

# Output:
# 
# Element is present in the list
```

```python3
my_string = "Hello World"
x = "o"

if x in my_string:
    print("Substring is present in the string")
else:
    print("Substring is not present in the string")

# Output:
# 
# Substring is present in the string
```

Avec l'opérateur `in`, nous pouvons facilement vérifier l'existence d'éléments dans une liste, un tuple ou tout autre type de données séquentielles en python. Cela aide également à simplifier le code et à le rendre plus lisible.

## Comment utiliser l'opérateur `and` dans `if`

L'opérateur `and` en Python est utilisé dans les instructions `if` pour tester si plusieurs conditions sont vraies. Il renvoie `True` si les deux conditions sont vraies, et `False` sinon. Voici deux exemples :

```python3
x = 5
y = 10
if x > 0 and y > 0:
    print("Both x and y are positive")
else:
    print("At least one of x and y is not positive")
```

Dans cet exemple, l'opérateur `and` est utilisé pour déterminer si `x` et `y` sont tous les deux positifs. Étant donné que `x` et `y` sont tous les deux supérieurs à 0, l'instruction `if` est évaluée à `True` et `Both x and y are positive` est imprimé.

```python3
name = "John"
age = 25
if name == "John" and age == 25:
    print("Your name is John and you are 25 years old")
else:
    print("You are not John or you are not 25 years old")
```

Dans cet exemple, l'opérateur `and` est utilisé pour vérifier si `name` est `John` et `age` est 25. Comme les deux conditions sont vraies, l'instruction `if` évalue à `True` et `Votre nom est John et vous avez 25 ans` est imprimé.

En résumé, l'opérateur `and` en Python est un outil puissant dans les instructions `if` qui vous permet de vérifier plusieurs conditions à la fois. Il peut être très utile dans des programmes complexes nécessitant une vérification de conditions étendue.

## L'opérateur `or`

L'opérateur `or` en Python est un opérateur logique qui retourne `True` si l'une des deux opérandes est `True`, et `False` si les deux opérandes sont `False`. Il peut être utilisé dans les déclarations conditionnelles ou les expressions booléennes.

### L'opérateur `or` dans une Déclaration Conditionnelle

```python3
age = 25
if age < 18 or age > 60:
    print("You are not eligible for this job")
else:
    print("You are eligible for this job")

# Output: `You are eligible for this job`
```

Dans cet exemple, l'opérateur `or` est utilisé pour vérifier si la variable `age` est soit inférieure à 18 ans, soit supérieure à 60 ans. Si l'une ou l'autre des conditions est `True`, il imprime un message indiquant que la personne n'est pas éligible pour le poste. Sinon, il imprime un message disant que la personne est éligible pour le poste.

### L'opérateur `or` dans une expression booléenne

```python3
x = 5
y = 10
result = x > 3 or y < 9
print(result)
# Output: `True`
```

Dans cet exemple, l'opérateur `or` est utilisé dans une expression booléenne pour vérifier si `x` est supérieur à 3 ou `y` est inférieur à 9. Comme `x` est supérieur à 3, l'expression évalue à `True` et le `result` est imprimé comme `True`.

Dans l'ensemble, l'opérateur `or` en Python offre un moyen simple de vérifier si au moins l'une des conditions dans une expression booléenne est `True`.

## L'opérateur `not`

L'opérateur `not` en Python est utilisé pour inverser l'état logique d'une expression booléenne. Il renvoie True si l'expression est `False` et `False` si l'expression est True. Voici deux exemples :

### Comment utiliser le `not` avec une variable booléenne

```python
flag = False
print(not flag)

```

### Le `not` avec un Opérateur de Comparaison

```python
x = 10
y = 5
print(not x > y) ### Output

```

Dans l'ensemble, l'opérateur `not` est un outil utile en Python pour changer la valeur de vérité d'une expression booléenne. Il peut être utilisé avec des variables booléennes ou en conjonction avec des opérateurs de comparaison.

## Opérateur de Non Égalité

L'opérateur de non égalité en Python est utilisé pour comparer deux valeurs et retourne `True` si elles ne sont pas égales, et `False` si elles le sont. Le symbole utilisé pour l'opérateur de non égalité est `!=`.

```python
value1 != value2
```

```python3
a = 5
b = 3
if a != b:
    print("a is not equal to b")

# Output:
# 
# a is not equal to b
```

```python3
name1 = "John"
name2 = "Mary"
if name1 != name2:
    print("Names are not equal")
# Output:
# 
# Names are not equal
```

En utilisant l'opérateur de non égalité en Python, vous pouvez facilement comparer deux valeurs et obtenir le résultat souhaité. Cet opérateur est utile dans de nombreuses situations où vous avez besoin de vérifier si deux valeurs ne sont pas égales.

## Division

En Python, il existe trois types d'opérateurs de division : l'opérateur de barre oblique simple `/`, l'opérateur de double barre oblique `//` et l'opérateur de pourcentage `%`.

L'opérateur `/` effectue une division régulière et renvoie une réponse de type float, tandis que l'opérateur `//` effectue une division entière et renvoie la valeur entière du quotient. L'opérateur `%` renvoie le reste de la division. Un autre nom de l'opérateur `%` est **opérateur modulo**

```python3
x = 10
y = 3
result = x / y
print(result)
```

Sortie : `3.3333333333333335`

```python3
x = 10
y = 3
floor_division = x // y 
# Use modulo operator
remainder = x % y 
print(floor_division)
print(remainder)

# Output: 
# 
# 3
# 1
```

Globalement, comprendre ces opérateurs et leurs différences est important dans la programmation Python lorsqu'on effectue des opérations mathématiques.

## L'opérateur `:`

L'opérateur `:` en Python est utilisé pour découper des séquences telles que les listes, les tuples et les chaînes de caractères. Il vous permet d'extraire une portion d'une séquence en spécifiant un indice de début et de fin séparés par deux points. Vous pouvez également spécifier une taille de pas. Cet opérateur est très utile lorsqu'on travaille avec des données en Python.

```python3
### create a list

my_list = [0, 1, 2, 3, 4, 5]

### slice the list from index 2 to index 4

sliced_list = my_list[2:5]

### print the sliced list

print(sliced_list)

# Output:
# 
# [2, 3, 4]
```

```python
### create a string

my_string = "Hello world!"

### slice the string to get characters from index 1 to index 4

sliced_string = my_string[1:5]

### print the sliced string

print(sliced_string)

# Output:
# 
# ello
```

L'opérateur `:` est un outil essentiel en Python pour travailler avec des séquences. Sa syntaxe flexible rend le découpage et le hachage des données un jeu d'enfant !

## Opérateur Booléen en Python

Les opérateurs booléens en Python sont utilisés pour évaluer des conditions vraies ou fausses. Ces opérateurs incluent `and`, `or` et `not`. En Python, les opérations booléennes sont créées avec les mots-clés `and`, `or` et `not`.

```python3
x = 5
y = 10
z = 15

if x < y and z > y:
    print("Both conditions are true")
# Output: `Both conditions are true`
```

```python3
x = 5
y = 10
z = 15

if x < y or z < y:
    print("At least one condition is true")

# Output: `At least one condition is true`
```

L'utilisation d'opérateurs booléens en Python offre de la flexibilité dans l'évaluation de conditions multiples et dans la prise de décision. En utilisant des opérations booléennes, des énoncés complexes peuvent être simplifiés et codés en moins de lignes de code.

## Surcharge d'opérateur

En Python, la surcharge d'opérateur nous permet de définir le comportement des opérateurs de manière personnalisée pour une classe ou un objet spécifique. Cela aide à améliorer la clarté et la lisibilité du code. Python supporte la surcharge d'opérateur pour la plupart des opérateurs intégrés tels que `+`, `-`, `/`, `//`, `%`, `&`, `|`, `^`, `>>`, `<<`, `<`, `>`, `<=`, `>=`, `==`, `!=`, et plus encore.

Voici deux exemples de code qui démontrent la surcharge d'opérateur en Python :

```python
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def __str__(self):
        return f"Rectangle({self.length}, {self.width})"

    def __add__(self, other):
        return Rectangle(self.length + other.length, self.width + other.width)

r1 = Rectangle(4, 3)
r2 = Rectangle(2, 5)
print(r1 + r2)  ### Output

```

Dans le code ci-dessus, nous avons défini un comportement personnalisé pour l'opérateur '+' pour la classe `Rectangle`. Lorsque nous ajoutons deux objets `Rectangle` en utilisant l'opérateur '+', cela créera un nouvel objet `Rectangle` avec la somme de la `length` et de la `width` des deux rectangles.

```python3
class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def __lt__(self, other):
        return self.pages < other.pages

b1 = Book("Python for Beginners", "John Smith", 300)
b2 = Book("Advanced Python", "David Johnson", 500)
print(b1 < b2)  ### Output

```

Dans ce code, nous avons défini un comportement personnalisé pour l'opérateur `<` pour la classe `Book`. Il compare deux livres en fonction du nombre de `pages` qu'ils ont. Si le nombre de `pages` dans l'objet `self` est inférieur au nombre de `pages` dans l'objet `other`, il va `return` `True`.

Dans l'ensemble, la surcharge des opérateurs en Python vous aide à écrire un code plus lisible et expressif. Cela rend votre code plus propre et plus facile à comprendre.

## Opérateurs mathématiques en Python

Python fournit une variété d'opérateurs mathématiques qui peuvent être utilisés pour effectuer des opérations mathématiques en Python. Ces opérateurs incluent l'addition, la soustraction, la multiplication, la division et le modulo.

### Opérateur d'Addition

L'opérateur d'addition en Python est représenté par un `+`. Il est utilisé pour ajouter deux nombres ou plus, comme montré ci-dessous :

```python3
# Adding two numbers
num1 = 10
num2 = 20
result = num1 + num2 
print(result)  # Output: 30

# Adding more than two numbers
result = num1 + num2 + 5
print(result)  # Output: 35
```

### Opérateur de Division

L'opérateur de division dans Python est représenté par un `/`. Il est utilisé pour diviser un nombre par un autre nombre et renvoie une valeur à virgule flottante comme résultat :

```python3
# Division of two numbers
num1 = 10
num2 = 2
result = num1 / num2 
print(result)  # Output: 5.0  (float)

# Division with remainder
num1 = 7
num2 = 3
result = num1 / num2 
remainder = num1 % num2
print(result)  # Output: 2.3333333333333335 (float)
print(remainder) # Output: 1 (int)
```

Python offre de nombreux autres opérateurs mathématiques tels que la soustraction, la multiplication, le modulo, et plus encore. En utilisant ces opérateurs, vous pouvez effectuer des opérations mathématiques complexes dans vos programmes Python.

## Opérateurs binaires en Python

Les opérateurs binaires sont utilisés en Python pour effectuer des opérations bitwise sur des entiers. Ces opérations fonctionnent en manipulant les bits individuels de la représentation binaire des entiers. Cela est utile dans la programmation de bas niveau, comme l'optimisation du code ou le travail avec le matériel.

### Comment utiliser les opérateurs binaires en Python

Il existe six opérateurs binaires disponibles en Python. Ceux-ci sont :

- `&` (ET binaire) : Cet opérateur retourne un nouvel entier dont les bits sont mis à 1 seulement si les bits correspondants des deux opérandes sont à 1.
- `|` (OU binaire) : Cet opérateur retourne un nouvel entier dont les bits sont mis à 1 si l'un des bits correspondants des opérandes est à 1.
- `^` (XOR binaire) : Cet opérateur retourne un nouvel entier dont les bits sont mis à 1 seulement si l'un des bits correspondants des opérandes est à 1.
- `~` (NON binaire) : Cet opérateur retourne le complément de l'opérande, c'est-à-dire qu'il inverse tous les bits de l'opérande.
- `<<` (décalage vers la gauche) : Cet opérateur décale les bits de l'opérande vers la gauche du nombre de bits spécifié. Les bits décalés sont remplis de 0.
- `>>` (décalage vers la droite) : Cet opérateur décale les bits de l'opérande vers la droite du nombre de bits spécifié. Les bits décalés sont remplis de 0 pour les nombres positifs et de 1 pour les nombres négatifs.

### L'opérateur `&`

```python
x = 5      

y = 3      

z = x & y  ### in binary

print(z)   ### Output

```

Dans cet exemple, nous utilisons l'opérateur ET bit à bit pour trouver les bits communs entre `x` et `y`. Le résultat est `1`, qui est le seul bit qui est défini sur 1 à la fois dans `x` et `y`.

### L'opérateur `<<`

```python
x = 7      

y = 2     

z = x << 1 ### in binary

print(z)   ### Output 
```

Dans cet exemple, nous utilisons l'opérateur de décalage à gauche pour décaler les bits de `x` vers la gauche d'une position. Le résultat est `14`, qui est `1110` en binaire. Le bit décalé sur la gauche est rempli de `0`.

Dans l'ensemble, les opérations sur les bits en Python peuvent être utiles pour optimiser le code et travailler avec les nombres à un niveau bas.

## Ordre des opérateurs

En Python, tout comme en mathématiques, il existe un ordre spécifique dans lequel les opérateurs sont évalués. Cela est connu sous le nom d'ordre des opérations. La préséance des opérateurs en Python est la suivante :

1. Parenthèses
2. Exponentiation
3. Multiplication, Division et Modulo (de gauche à droite)
4. Addition et Soustraction (de gauche à droite)

Il est important de garder cet ordre à l'esprit lors de la rédaction d'expressions en Python.

```python

result = 5 + 3 * 2 # first 3*2 will be evaluated, then 5 will be added to the result
print(result) # output: 11

result = (5 + 3) * 2 # first 5+3 will be evaluated in the parentheses, then the result will be multiplied by 2
print(result) # output: 16
```

Dans le premier exemple, l'opération de multiplication est évaluée avant l'opération d'addition, conformément à l'ordre des opérations. Dans le second exemple, l'opération d'addition à l'intérieur des parenthèses est évaluée en premier, là encore conformément à l'ordre des opérations. Comprendre l'ordre des opérateurs en Python peut aider à éviter des erreurs et produire des résultats plus précis.

## Opérateur Walrus

L'Opérateur Walrus est une nouvelle fonctionnalité disponible dans Python 3.8 et les versions ultérieures. Il fournit un moyen concis et efficace d'assigner des valeurs aux variables dans certains scénarios.

### Comprendre l'Opérateur Walrus

L'Opérateur Walrus est représenté par le symbole := et est utilisé pour assigner des valeurs aux variables en une seule expression. Il est particulièrement utile dans des scénarios où des appels répétés à des fonctions ou des méthodes consomment beaucoup de ressources, car il peut aider à réduire ces appels.

### Opérateur Walrus avec une instruction 'if'

```python

if (a:=2+3) > 4:
    print(f"{a} is greater than 4")
else:
    print(f"{a} is less than or equal to 4")
```

### Opérateur Walrus avec Boucle 'while'

```python
import random

while (num:=random.randint(1,10)) != 3:
     print(num)
```

Dans les deux exemples ci-dessus, l'opérateur Walrus est utilisé pour attribuer des valeurs à la variable dans la même expression que l'instruction conditionnelle. Cela rend le code plus concis et plus facile à lire.

## Opérateur d'exponentiation

L'opérateur d'exponentiation dans Python est représenté par `**` et est utilisé pour élever un nombre à une puissance. C'est un opérateur binaire qui prend deux opérandes ; le premier étant la base et le second étant l'exposant.

Voici deux exemples de code pour démontrer l'utilisation de l'opérateur d'exponentiation dans Python :

```python3
num = 2
exp = 3
result = num ** exp
print(result)  

```

```python3
num = 2
exp = 3
num **= exp
print(num)  

```

Dans les deux exemples, l'opérateur `**` est utilisé pour calculer le `result` de l'élévation d'un nombre à une puissance. Dans le deuxième exemple, le `result` est attribué à la variable `num` en utilisant l'opérateur d'affectation `**=` pour un code plus concis. En utilisant l'opérateur d'exponentiation, vous pouvez facilement effectuer des opérations d'exponentiation dans votre code Python.
