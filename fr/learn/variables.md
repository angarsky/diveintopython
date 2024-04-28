> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables

Les variables jouent un rôle crucial en Python, car elles fournissent un moyen de stocker et de manipuler des données tout au long d'un programme. En attribuant des valeurs aux variables, nous pouvons facilement nous référer à et mettre à jour les données au besoin, rendant notre code plus efficace et lisible. Dans l'ensemble, les variables sont un concept fondamental en programmation Python et sont essentielles pour tout type de manipulation et d'analyse de données. Revoyons ce sujet en détail.

## Définition d'une Variable

Définissons ce qu'est une variable en Python. C'est un emplacement nommé dans la mémoire de l'ordinateur qui stocke une valeur. C'est comme un conteneur qui peut contenir différents types de données, tels que des nombres, des chaînes de caractères ou des booléens.

Pour créer une variable en Python, vous devez lui donner un nom et lui attribuer une valeur à l'aide de l'opérateur d'affectation `=`.

## Convention de Nom de Variable

En Python, les noms de variables sont sensibles à la casse et peuvent être n'importe quelle combinaison de lettres, de nombres et de tirets bas. Cependant, il existe des directives et des conventions de nommage des variables en Python qui rendent votre code plus lisible et plus maintenable :

- Utilisez des lettres minuscules pour les noms de variables. En Python, il est coutumier d'utiliser des lettres minuscules pour les noms de variables.
- Utilisez des tirets bas pour séparer les mots dans les noms de variables. Si un nom de variable se compose de plusieurs mots, utilisez des tirets bas pour les séparer. Par exemple, `first_name` est un meilleur nom de variable que `firstname`.
- Évitez d'utiliser des mots-clés réservés. Python a des mots-clés réservés qui ont une signification spéciale dans le langage, comme `if`, `else`, `while` et `for`. Évitez d'utiliser ces mots-clés comme noms de variables.
- Utilisez des noms descriptifs pour les variables. Choisissez des noms descriptifs qui reflètent le but de la variable. Par exemple, `count` est un meilleur nom de variable que `c`.
- Utilisez des noms singuliers pour les noms de variables. Par exemple, `student` est un meilleur nom de variable que `students`.
- Soyez cohérent avec les conventions de nommage dans votre code et au sein de votre équipe.

Voici quelques exemples de bons noms de variables en Python :

```python
first_name
last_name
age
is_student
num_of_courses
```

Rappelez-vous que de bonnes conventions de nommage de variables ne vous aident pas seulement à définir un nom de variable valide, mais rendent également votre code plus lisible, maintenable, et réduisent le risque de bogues.

## Déclaration de Variable

En Python, vous n'avez pas besoin de déclarer explicitement une variable avant de l'utiliser. Vous pouvez créer une variable simplement en lui assignant une valeur.

Cependant, il est important de noter que les variables en Python sont typées dynamiquement, ce qui signifie que le type de données d'une variable est déterminé au moment de l'exécution en fonction du type de la valeur qui lui est assignée. Cela signifie que la même variable peut contenir différents types de valeurs à différents moments. Par exemple :

```python
y = 5
y = "hello"

print(y) # Output: hello
```

Dans cet exemple, nous avons d'abord créé une variable nommée `y` et lui avons attribué la valeur `5`. Nous avons ensuite changé la valeur de `y` en une chaîne `hello`. Le programme a imprimé la valeur de `y`, qui est la chaîne `hello`.

## Types de données

Il y a neuf types de données en Python :

- Entiers
- Nombres à virgule flottante
- Complexes
- Chaînes de caractères
- Booléens
- Listes
- Tuples
- Ensembles
- Dictionnaires

Les trois premiers types peuvent conditionnellement être combinés dans le groupe numérique.

### Types Numériques

Les types numériques sont utilisés pour représenter les nombres en Python. Il existe trois types de données numériques en Python :

- **Entier** : Les entiers sont des nombres entiers sans aucun point décimal. Exemple : 5, 10, -3.
- **Flottant** : Les flottants sont des nombres avec des points décimaux. Exemple : 2.5, -0.1, 3.14.
- **Complexe** : Les nombres complexes sont des nombres avec une partie réelle et une partie imaginaire. Ils sont indiqués en ajoutant un `j` à la fin de la partie imaginaire. Exemple : 2 + 3j, -4j.

```python
# integer
a = 5
# float
b = 3.14
# complex
c = 2 + 3j
```

### Type Booléen

Le type Booléen est un type de données qui ne peut avoir que deux valeurs - `True` ou `False`.

```python
a = True
b = False
```

### Type de chaîne

Les chaînes (également connues sous le nom de littéral de chaîne) sont utilisées pour représenter des données textuelles en Python. Elles sont entourées de guillemets (simples ou doubles) et peuvent contenir des lettres, des chiffres et des caractères spéciaux. Voyons ce qu'est une chaîne avec un exemple :

```python
a = "Hello, World!"
b = 'Python is cool'
```

### Type de liste

Les listes sont utilisées pour stocker une collection d'éléments. Elles peuvent contenir n'importe quel type de données et sont indiquées par des crochets.

```python
a = [1, 2, 3, 4, 5]
b = ['mango', 'pineapple', 'orange']
```

### Type de tuple

Les tuples sont similaires aux listes, mais ils sont immuables, ce qui signifie que leur contenu ne peut pas être changé. Ils sont indiqués par des parenthèses.

```python
a = (1, 2, 3)
b = ('red', 'green', 'blue')
```

### Type d'ensemble

Les ensembles sont utilisés pour stocker des valeurs uniques. Ils sont indiqués par des accolades.

```python
a = {1, 2, 3, 4, 5}
b = {'mango', 'pineapple', 'orange'}
```

### Type de Dictionnaire

Les dictionnaires sont utilisés pour stocker des paires clé-valeur. Chaque clé est associée à une valeur, et elles sont indiquées par des accolades avec des paires clé-valeur séparées par des deux-points.

```python
a = {'name': 'John', 'age': 30, 'city': 'New York'}
b = {'mango': 1.99, 'pineapple': 0.99, 'orange': 2.99}
```

### Type None

None est un type de donnée spécial en Python qui représente l'absence de valeur.

```python
a = None
```

## Variable de Caractère

En Python, une variable de caractère est un seul caractère stocké dans une variable. Contrairement à certains autres langages de programmation, Python n'a pas de type de données séparé pour les caractères. Au lieu de cela, un caractère est simplement une chaîne de longueur 1 en Python.

Pour déclarer une variable de caractère en Python, vous pouvez assigner un seul caractère à une variable en utilisant des guillemets simples, des guillemets doubles, ou des triples guillemets. Voici quelques exemples :

```python
char1 = 'a'
char2 = "b"
char3 = '''c'''
```

Dans les exemples ci-dessus, `char1`, `char2` et `char3` sont toutes des variables de caractère qui stockent respectivement les caractères `a`, `b` et `c`.

Vous pouvez également utiliser l'indexation pour extraire un seul caractère d'une variable de chaîne. Par exemple :

```python
string = "hello"
char = string[0]   # Output: 'h'
```

Dans l'exemple ci-dessus, `char` est une variable de caractère qui stocke le premier caractère de la chaîne `hello`.

## Déclarer les Types de Variables

Comme cela a été mentionné plus haut, Python est un langage à typage dynamique, ce qui signifie que vous n'avez pas besoin de déclarer explicitement le type d'une variable. Au lieu de cela, le type d'une variable est déterminé à l'exécution en fonction de la valeur qui lui est assignée.

Cependant, à partir de Python 3.5, le langage inclut une syntaxe pour les annotations de type, qui vous permettent de spécifier le type attendu d'une variable. Cela peut être utile pour améliorer la lisibilité du code, la documentation et la vérification de type.

Voici un exemple de comment vous pouvez utiliser les annotations de type en Python :

```python
# declare a variable with an integer type annotation
my_number: int = 42

# declare a variable with a string type annotation
my_string: str = "Hello, world!"

# declare a function with type annotations for parameters and return value
def add_numbers(a: int, b: int) -> int:
    return a + b
```

Notez que les annotations de type sont facultatives, et Python fonctionnera toujours même si vous ne les utilisez pas. Cependant, l'utilisation des annotations de type peut aider à détecter certains types d'erreurs au moment de la compilation, plutôt qu'à l'exécution.

## Variables et Constantes

En Python, les variables sont utilisées pour stocker des données ou des valeurs qui peuvent être modifiées ou mises à jour au cours du programme. D'autre part, les variables constantes, comme leur nom l'indique, sont des variables qui ne peuvent pas être modifiées une fois qu'elles ont reçu une valeur.

En Python, il n'y a pas de manière spécifique de déclarer une variable ou une variable constante, car les variables sont typées dynamiquement et leur type peut changer pendant l'exécution du programme. Cependant, une convention courante pour différencier entre les variables et les variables constantes est d'utiliser des lettres majuscules pour ces dernières.

Par exemple, disons que nous voulons déclarer une variable pour stocker l'âge d'une personne et une variable constante pour stocker la valeur de pi. Nous pouvons les déclarer comme suit :

```python
# variable to store age
age = 30

# constant variable to store pi value
PI = 3.14159
```

Dans l'exemple ci-dessus, `age` est une variable qui peut être modifiée, tandis que `PI` est une variable constante qui ne peut pas être modifiée une fois qu'une valeur lui a été attribuée.

Il est important de noter que cette convention ne rend pas réellement la variable constante, et il est toujours possible de modifier la valeur d'une variable constante en Python. Cependant, suivre cette convention aide à distinguer entre les variables qui sont destinées à être modifiées pendant l'exécution du programme et celles qui sont censées être constantes.

## Définition de Variables Globales et Locales

Il y a deux types de variables en Python : **globales** et **locales**.

Une variable globale en Python est une variable qui est définie à l'extérieur d'une fonction et peut être accédée par n'importe quelle partie du programme, y compris les fonctions. Les variables globales en Python ont une portée globale, ce qui signifie qu'elles sont accessibles de n'importe où dans le code.

Voici un exemple de comment définir une variable globale en Python :

```python3
x = 10

def my_function():
    print(x)

my_function() # output: 10
```

Dans l'exemple ci-dessus, `x` est une variable globale qui peut être accédée par la fonction `my_function`. Lorsque la fonction est appelée, elle imprime la valeur de `x`.

Voyons maintenant ce qu'est une variable locale en Python.

Une variable locale est une variable qui est définie à l'intérieur d'une fonction et ne peut être accédée que dans cette fonction. Les variables locales ont une portée locale, ce qui signifie qu'elles sont seulement accessibles dans le bloc de code où elles sont définies.

Voici un exemple de définition d'une variable locale en Python :

```python3
def my_function():
    y = 5
    print(y)

my_function() # output: 5
```

Dans l'exemple ci-dessus, `y` est une variable locale qui ne peut être accédée que dans la fonction `my_function`. Lorsque la fonction est appelée, elle imprime la valeur de `y`.

Il est important de noter que si vous définissez une variable locale avec le même nom qu'une variable globale, la variable locale prendra le dessus dans la fonction. Voici un exemple :

```python
x = 10

def my_function():
    x = 5
    print(x)

my_function() # output: 5
print(x) # output: 10
```

Dans l'exemple ci-dessus, `my_function` définit une variable locale `x` avec une valeur de `5`. Lorsque la fonction est appelée, elle imprime la valeur de la variable locale, qui est `5`. Cependant, la variable globale `x` a toujours une valeur de `10`, qui est imprimée lorsqu'elle est appelée en dehors de la fonction.
