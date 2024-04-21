> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/return-function

Retourner une fonction à partir d'une fonction signifie qu'une fonction est créée et retournée comme sortie d'une autre fonction. Cela est possible en Python car les fonctions sont des objets de première classe, ce qui signifie qu'elles peuvent être passées comme n'importe quel autre objet tel que des entiers, des chaînes ou des listes.

## Fonction de Retour en Python

Dans les exemples suivants, les fonctions Python sont utilisées pour retourner d'autres fonctions, permettant un comportement dynamique basé sur les paramètres d'entrée.

### Exemple 1 : Utilisation de base du Retour de Fonction

Considérez `function1`, qui retourne une autre fonction, `function2`. Cette fonction interne `function2` multiplie son argument par une valeur spécifiée, `a`. Lorsque `function1(5)` est appelée, elle retourne `function2` avec `a` réglé sur `5`. La fonction résultante est assignée à la variable `multiply_by_5`. Par la suite, appeler `multiply_by_5(3)` produit `15`.

```python3
def function1(a):
    def function2(b):
        return a * b
    return function2

multiply_by_5 = function1(5)
result = multiply_by_5(3)
print(result)  # Output: 15
```

### Exemple 2 : Retour conditionnel de fonctions

Dans ce scénario, `function3` détermine quelle fonction retourner basée sur la valeur du paramètre `operation`. Elle contient deux fonctions internes : `add_numbers` et `multiply_numbers`, effectuant respectivement des opérations d'addition et de multiplication.

En passant soit `add` soit `multiply` à `function3`, elle retourne la fonction interne correspondante. Par exemple, si `operation_type` est réglé sur `add`, la fonction `add_numbers` est assignée à la variable `math_function`. L'invoquer avec `math_function(3, 5)` additionnera les deux nombres, résultant en une sortie de `8`.

```python3
def function3(operation):
    def add_numbers(a, b):
        return a + b
    
    def multiply_numbers(a, b):
        return a * b
    
    if operation == "add":
        return add_numbers
    elif operation == "multiply":
        return multiply_numbers

operation_type = "add"
math_function = function3(operation_type)
result = math_function(3, 5)
print(result)  # Output: 8
```

En résumé, ces exemples illustrent comment les fonctions Python peuvent être utilisées pour renvoyer d'autres fonctions de manière dynamique, offrant une polyvalence dans la gestion des opérations en fonction des conditions d'entrée.

## Explorant le Concept de Fonctions Imbriquées et de Renvoi de Fonctions

En Python, les fonctions peuvent être imbriquées, ce qui signifie que vous pouvez définir une fonction à l'intérieur d'une autre fonction. Vous pouvez également renvoyer une fonction à partir d'une autre fonction en Python. Ce concept de fonctions imbriquées et de renvoi de fonctions permet plus de flexibilité et est un outil puissant en programmation.

### Exemple 1 : Renvoyer une Fonction à partir d'une Fonction

```python3
def create_adder(num):
    def adder(x):
        return num + x
    return adder

add5 = create_adder(5)
print(add5(3))    # Output: 8
```

Dans cet exemple, nous définissons une fonction `create_adder` qui prend un paramètre `num`. À l'intérieur de `create_adder`, nous définissons une autre fonction `adder` qui prend un paramètre `x` et retourne la somme de `num` et `x`. Finalement, `create_adder` retourne `adder`.

Nous créons ensuite une nouvelle fonction `add5` en appelant `create_adder(5)`. Cela signifie que `add5` est maintenant une référence à `adder` avec `num` réglé sur 5. Lorsque nous appelons `add5(3)`, nous passons le paramètre `x` en tant que `3`, ce qui donne le résultat `8`.

### Exemple 2 : Fonctions imbriquées

```python3 
def outer_function(num):
    def inner_function(x):
        return num + x
    return inner_function

add3 = outer_function(3)
add5 = outer_function(5)

print(add3(10))    # Output: 13
print(add5(10))    # Output: 15
```

Dans cet exemple, nous définissons une fonction `outer_function` qui prend un paramètre `num`. À l'intérieur de `outer_function`, nous définissons une autre fonction `inner_function` qui prend un paramètre `x` et retourne la somme de `num` et `x`. Enfin, `outer_function` retourne `inner_function`.

Nous créons ensuite deux nouvelles fonctions `add3` et `add5` en appelant respectivement `outer_function(3)` et `outer_function(5)`. Cela signifie que `add3` est maintenant une référence à `inner_function` avec `num` réglé sur 3, et `add5` est une référence à `inner_function` avec `num` réglé sur 5. Quand nous appelons `add3(10)` et `add5(10)`, nous passons le paramètre `x` comme `10`, ce qui donne comme résultat `13` et `15` respectivement.

## Comprendre les Avantages de Retourner une Fonction depuis une Autre Fonction

Un des bénéfices significatifs de retourner une fonction depuis une autre fonction en Python est que cela offre de la flexibilité. En retournant une fonction, le programmeur peut créer une fonction plus spécifique et personnalisée basée sur les entrées passées à la fonction originale. Cela permet également une réutilisation efficace du code.

Un autre avantage de retourner une fonction depuis une autre fonction est que cela peut simplifier la complexité du code, menant à une structure de code plus lisible. Le code devient plus organisé et compréhensible, améliorant ainsi sa maintenance et ses processus de débogage.

Voici deux exemples de retour de fonction depuis une fonction en Python :

### Exemple 1 : Retourner une Fonction Qui Multiplie N'importe Quel Nombre par un Facteur Donné :

```python
def multiply(factor):
    def inner(num):
        return num * factor
    return inner

double = multiply(2)
triple = multiply(3)

print(double(5)) #output: 10
print(triple(5)) #output: 15
```

En appelant `multiply(2)` et `multiply(3)`, nous créons deux nouvelles fonctions `double` et `triple`, respectivement, qui peuvent être utilisées pour multiplier n'importe quel nombre par `2` ou `3`.

### Exemple 2 : Renvoyer une fonction qui effectue des opérations mathématiques :

```python3
def operate(operation):
    def inner(num1, num2):
        if operation == 'add':
            return num1 + num2
        elif operation == 'subtract':
            return num1 - num2
        elif operation == 'multiply':
            return num1 * num2
        elif operation == 'divide':
            return num1 / num2
    return inner

add_func = operate('add')
subtract_func = operate('subtract')

print(add_func(10, 5)) #output: 15
print(subtract_func(10, 5)) #output: 5
```

En appelant `operate('add')` et `operate('subtract')`, nous créons deux nouvelles fonctions `add_func` et `subtract_func`, respectivement, qui peuvent être utilisées pour effectuer des opérations d'addition et de soustraction sur n'importe quels deux nombres.

## Comprendre les différentes manières de définir et de retourner des fonctions en Python

Renvoyer une fonction à partir d'une fonction peut être utile dans des situations où nous avons besoin de créer des fonctions dynamiquement en fonction de certaines conditions.

```python
def create_adder(num):
    def adder(x):
        return x + num
    return adder

add5 = create_adder(5)
print(add5(10)) # Output: 15
```

Dans cet exemple, nous définissons une fonction appelée `create_adder` qui prend un paramètre `num`. À l'intérieur de la fonction `create_adder`, nous définissons une autre fonction appelée `adder` qui prend un paramètre `x` et retourne la somme de `num` et `x`. Enfin, nous retournons la fonction `adder` en tant que sortie.

Nous assignons ensuite la sortie de `create_adder(5)` à une variable appelée `add5`. Cela signifie que `add5` est maintenant une fonction qui prend un paramètre `x` et retourne la somme de `5` et `x`. Quand nous appelons `add5(10)`, cela retourne `15`.

## Explorer l'Utilisation des Arguments dans les Fonctions Retournées

```python
def power(base):
    def exponent(exp):
        return base ** exp
    return exponent

square = power(2)
cube = power(3)

print(square(5)) # Output: 25
print(cube(3)) # Output: 27
```

Dans cet exemple, une fonction imbriquée `exponent` est définie à l'intérieur de la fonction `power`. La fonction `exponent` calcule un nombre élevé à une puissance. La fonction `power` renvoie la fonction `exponent`. Deux variables `square` et `cube` sont attribuées en appelant la fonction `power` avec différentes valeurs de base. Les deux dernières instructions print appellent `square` et `cube` avec différentes valeurs d'exposant.

```python3
def operation(operator):
    def calculate(num1, num2):
        if operator == '+':
            return num1 + num2
        elif operator == '-':
            return num1 - num2
        elif operator == '*':
            return num1 * num2
        elif operator == '/':
            return num1 / num2
        else:
            return "Invalid operator"
    return calculate

addition = operation('+')
subtraction = operation('-')
multiplication = operation('*')
division = operation('/')

print(addition(5, 3)) # Output: 8
print(subtraction(5, 3)) # Output: 2
print(multiplication(5, 3)) # Output: 15
print(division(5, 3)) # Output: 1.6666666666666667
print(operation('%')(5, 3)) # Output: Invalid operator
```

Dans cet exemple, la fonction `operation` prend un paramètre `operator` et retourne la fonction `calculate`. La fonction `calculate` effectue l'opération arithmétique spécifiée par le paramètre `operator` sur deux arguments numériques. Quatre variables `addition`, `subtraction`, `multiplication` et `division` sont assignées en appelant la fonction `operation` avec différentes valeurs d'opérateur. La dernière instruction print montre ce qui se passe lorsqu'un opérateur invalide est utilisé comme argument.
