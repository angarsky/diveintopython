> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/nested

Les fonctions imbriquées sont un **outil puissant** disponible dans la programmation Python qui permet de définir des fonctions à l'intérieur d'autres fonctions. Un tel concept d'imbriquer une fonction à l'intérieur d'une autre peut rendre le code plus organisé et plus gérable. Avec l'aide des fonctions imbriquées, le code devient plus facile à lire et est également plus efficace. Dans cet article, nous allons examiner de plus près ce que sont les fonctions imbriquées et pourquoi elles sont utilisées en Python.

## Comprendre les fonctions imbriquées de Python

Les fonctions imbriquées en Python se réfèrent à la création de fonctions à l'intérieur d'une autre fonction. En d'autres termes, une fonction peut être définie à l'intérieur d'une autre fonction, et elle peut accéder aux variables déclarées dans sa fonction extérieure.

Les fonctions imbriquées sont utiles dans des situations où nous devons définir une fonction d'aide qui n'est nécessaire qu'à l'intérieur de la portée de la fonction extérieure. Les fonctions imbriquées améliorent la lisibilité et aident à modulariser le code.

### Deux exemples de fonctions imbriquées en Python

```python3
def outer_function(x):
    def inner_function(y):
        return x + y
    return inner_function

add_five = outer_function(5)
print(add_five(3)) # Output: 8
```

Dans cet exemple, nous définissons deux fonctions : la `outer_function` et la `inner_function`. La `outer_function` prend un argument `x` et retourne la `inner_function`. La `inner_function`, à son tour, prend un argument `y` et retourne la somme de `x` et `y`.

Nous assignons la sortie de `outer_function(5)` à la variable `add_five`, qui devient une fonction qui ajoute `5` à son argument. Lorsque nous appelons `add_five(3)`, nous obtenons `8` comme résultat.

```python3
def outer_function():
    x = 1
    def inner_function():
        y = 2
        return x + y
    return inner_function()

print(outer_function()) # Output: 3
```

Dans cet exemple, nous définissons une `outer_function` qui initialise une variable `x` à 1 et retourne le résultat de la `inner_function`. La `inner_function` initialise une variable `y` à `2` et retourne la somme de `x` et `y`.

Lorsque nous appelons `outer_function()`, nous obtenons `3` comme résultat, qui est la somme de `x` et `y`. La `inner_function` est appelée dans le cadre de la `outer_function`, et elle a accès à la variable `x` déclarée dans la `outer_function`.

## Avantages de l'Utilisation de Fonctions Imbriquées en Python

Les fonctions imbriquées dans le code Python offrent une gamme d'avantages, permettant aux développeurs de créer une structure de programmation plus robuste et adaptable, d'améliorer la lisibilité du code, et de créer un code modulaire qui est plus simple à maintenir.

### Encapsulation et Modularité

Un avantage principal des fonctions imbriquées réside dans leur capacité à définir des fonctions d'aide à l'intérieur du périmètre d'une fonction spécifique. Ce faisant, cela évite d'encombrer l'espace de noms global et favorise l'organisation du code. Considérez l'exemple suivant :

```python
def double_odd_numbers(numbers):
    def is_odd(num):
        return num % 2 != 0
    
    def double(num):
        return num * 2
    
    return [double(num) for num in numbers if is_odd(num)]
```

Dans cette instance, `double_odd_numbers` englobe les fonctions `is_odd` et `double`, simplifiant la compréhension puisque ces fonctions sont uniquement utilisées dans le contexte de la fonction principale.

### Création de Fermeture

Un autre avantage notable des fonctions imbriquées est leur capacité à générer des fermetures. Cela permet aux fonctions imbriquées d'accéder et de manipuler des variables de leur fonction englobante. Par exemple :

```python3
def power_function(base):
    def exponent_power(exponent):
        result = 1
        for _ in range(exponent):
            result *= base
        return result
    
    return exponent_power

square = power_function(2)
cube = power_function(3)

print(square(3))  # Output: 8
print(cube(2))    # Output: 9
```

Dans ce scénario, `power_function` produit une nouvelle fonction, `exponent_power`, capable de calculer la puissance d'une base élevée à un exposant donné. En utilisant cette structure imbriquée, des fonctions comme `square` et `cube` obtiennent un accès à la variable de base de la fonction englobante, simplifiant la création de nouvelles fonctions avec différentes valeurs de base.

En exploitant les fonctions imbriquées, les développeurs Python peuvent améliorer la modularité, la lisibilité du code, et exploiter les puissantes fonctionnalités de fermeture pour créer des structures de code plus polyvalentes et efficaces.

## Création de Fonctions Imbriquées en Python

Les fonctions imbriquées en Python se réfèrent au processus de création d'une fonction à l'intérieur d'une autre fonction. Ce processus permet une meilleure organisation et lisibilité du code. Pour créer une fonction imbriquée en Python, suivez ces étapes :

1. **Créez** la fonction externe.
2. **Définissez** la fonction interne au sein de la fonction externe.
3. **Appelez** la fonction interne au sein de la fonction externe ou retournez-la.

En conclusion, créer des fonctions imbriquées en Python est une technique utile pour organiser et rationaliser le code. Elle permet une meilleure lisibilité et peut simplifier les processus complexes.

## Exemples de Fonctions Imbriquées Python dans des Applications du Monde Réel

Les fonctions imbriquées sont des fonctions **à l'intérieur d'autres fonctions**. Ces fonctions sont particulièrement utiles en programmation. Elles peuvent être utilisées dans des applications réelles en Python. Par exemple, une fonction imbriquée pourrait définir une fonction qui appelle une autre fonction. Ou, une fonction imbriquée pourrait définir une fonction qui utilise une fonction précédemment définie. De plus, une fonction imbriquée pourrait fournir une portée locale.

```python3
def parent_function(x):
    def child_function(y):
        return y * 2
    return x + child_function(x)

print(parent_function(5))
```

Dans cet exemple, `child_function` est une fonction imbriquée. Elle est définie à l'intérieur de `parent_function`. `parent_function` prend en paramètre `x`. Ensuite, elle utilise `child_function` pour doubler `x`. Finalement, elle renvoie la somme de `x` et `child_function(x)`. Lorsque nous exécutons `parent_function(5)`, nous obtenons 15 comme résultat.

```python3
def adder(a):
    def inner(x):
        return x + a
    return inner

x = adder(3)
y = adder(5)
print(x(5))
print(y(5))
```

Dans cet exemple, `inner` est une fonction imbriquée. Elle est définie à l'intérieur de `adder`. `adder` prend un paramètre a. `adder` retourne `inner`. `inner` prend un paramètre `x`. Elle retourne la somme de `x` et de `a`. Lorsque nous appelons `adder(3)`, nous obtenons `inner`. Nous stockons `inner` comme `x`. Il en va de même pour `adder(5)` que nous stockons comme `y`. Lorsque nous appelons `x(5)`, nous obtenons 8 comme résultat. Lorsque nous appelons `y(5)`, nous obtenons 10 comme résultat.

```python
def exponential(x):
    def square(y):
        return y * y
    return square(x) * square(x)

print(exponential(2))
```

Dans cet exemple, `square` est une fonction imbriquée. Elle est définie à l'intérieur de `exponential`. `exponential` prend un paramètre `x`. `exponential` retourne le carré de `x` élevé à la puissance quatre. `square` prend un paramètre `y`. Il retourne le carré de `y`. Lorsque nous exécutons `exponential(2)`, nous obtenons 16 comme résultat.

## Meilleures pratiques pour utiliser les fonctions imbriquées en Python

Les fonctions imbriquées font référence à la définition d'une fonction à l'intérieur d'une autre fonction en Python. Cela peut être utile pour l'organisation du code et l'encapsulation. Les meilleures pratiques pour utiliser les fonctions imbriquées incluent éviter l'imbrication excessive, s'assurer que chaque fonction a un but clair et spécifique et utiliser les portées de variables appropriées.

Pour utiliser les fonctions imbriquées en Python, définissez la fonction externe puis définissez la fonction interne à l'intérieur de celle-ci. La fonction interne a accès aux variables de la fonction externe, mais pas l'inverse. Voici deux exemples :

```python3
# Example 1: Power function using nested functions
def power_function(num):
    def inner_power(power):
        return num ** power
    return inner_power

# Example usage
square_function = power_function(2)
cube_function = power_function(3)
print(square_function(5))  # Output: 32
print(cube_function(5))  # Output: 243
```

```python3
# Example 2: Functions in a loop
def generate_functions():
    functions = []
    for i in range(5):
        def inner_function(num):
            return num + i
        functions.append(inner_function)
    return functions

# Example usage
functions_list = generate_functions()
for j, f in enumerate(functions_list):
    print(f(j))  # Output: 4 5 6 7 8
```

Dans le premier exemple, une fonction de puissance est créée en utilisant des fonctions imbriquées. La fonction externe prend un nombre et retourne la fonction interne, qui calcule la puissance de ce nombre. La fonction interne est définie dans le contexte de la fonction externe, ce qui lui permet d'accéder au paramètre `num` et de calculer la puissance.

Dans le deuxième exemple, une liste de fonctions est générée en utilisant une boucle et des fonctions imbriquées. La fonction interne est définie dans la boucle, ce qui lui donne accès à la variable de boucle `i`. La liste résultante de fonctions peut alors être utilisée pour effectuer des calculs en utilisant différentes valeurs de `i`.

## Différences entre les Fonctions Imbriquées et les Fonctions Anonymes en Python

Les fonctions imbriquées sont des fonctions qui sont définies à l'intérieur d'une autre fonction. Ces fonctions sont uniquement accessibles depuis la fonction extérieure qui les contient. D'un autre côté, les fonctions anonymes sont des fonctions sans noms qui sont définies en utilisant le mot-clé lambda. Ces fonctions peuvent être définies n'importe où dans le programme et peuvent être passées comme arguments à d'autres fonctions.

### Fonction Imbriquée

```python3
def outer_func(x):
   def inner_func(y):
       return x*y
   return inner_func

result = outer_func(5)
print(result(7))  # Output: 35
```

Dans cet exemple, la fonction `inner_func` est définie à l'intérieur de `outer_func`, ce qui en fait une fonction imbriquée. Nous retournons ensuite `inner_func` comme résultat de l'appel de `outer_func`. La variable `result` est assignée à la fonction interne avec `x` défini à `5`. Nous appelons ensuite `result` avec `y` égal à `7` pour obtenir le résultat de `35`.

### Fonction Anonyme

```python
list_nums = [1, 2, 3, 4, 5]
new_list = list(map(lambda x: x*2, list_nums))
print(new_list)  # Output: [2, 4, 6, 8, 10]
```

Dans cet exemple, nous utilisons une fonction anonyme définie par le mot-clé `lambda` et nous la passons comme argument à la fonction `map`. Cette fonction multiplie chaque élément de `list_nums` par `2` et retourne une nouvelle liste avec les résultats mappés stockés dans `new_list`.

## Erreurs courantes à éviter lors de l'utilisation de fonctions imbriquées en programmation Python

Pour éviter les erreurs courantes lors de l'utilisation de fonctions imbriquées en programmation Python, il est important de s'assurer que les noms de fonctions et les variables ne sont **pas répétés** au sein d'une fonction imbriquée et de sa fonction parente, car cela peut entraîner de la confusion et des erreurs.

D'autres erreurs courantes à éviter incluent l'appel incorrect d'une fonction au sein d'une autre fonction, et l'utilisation incorrecte de boucles au sein de fonctions imbriquées. De plus, il faut être attentif lors de l'utilisation des techniques de programmation fonctionnelle et des fonctions de puissance dans les fonctions imbriquées.

Par exemple, le code suivant illustre une erreur courante lorsqu'une variable est définie à la fois dans une fonction parente et une fonction imbriquée :

```python
def parent_func():
    num = 2
    def nested_func():
        num = num * 2 # This will raise an UnboundLocalError when the function will be called
        return num
    return nested_func()
```
