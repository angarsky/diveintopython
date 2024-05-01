> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/statements/if

En Python, l'instruction `if` est utilisée pour l'exécution conditionnelle de code. Elle vous permet de spécifier une condition et d'exécuter un bloc de code uniquement si cette condition évalue à `True`.

## Comment utiliser l'instruction `if` en Python

Les instructions `if` en Python sont des instructions conditionnelles utilisées pour exécuter un bloc de code en fonction de certaines conditions. La syntaxe de base d'une instruction `if` est :

```python
if 1 > 2:
   ##### Execute block of code if the condition is true
    pass

```

Une instruction if peut également être combinée avec une instruction `else` pour exécuter différents blocs de code selon que la `condition` est vraie ou fausse. La syntaxe pour une instruction if-else est :

```python3
if 2 > 1:
   ##### Execute block of code if the condition is true
    print('True')
else:
   ### Execute block of code if the condition is false
    print('False')

```

### Nombres Pairs

```python3
num = 4
if num % 2 == 0:
    print("Even")
else:
    print("Odd")
```

### Maximum de deux nombres

```python3
num1 = 10
num2 = 20
if num1 > num2:
    print("num1 is greater than num2")
else:
    print("num2 is greater than num1")

```

Utilisez des instructions if en Python pour contrôler le flux de votre programme et prendre des décisions en fonction de conditions spécifiques.

## Opérateur Ternaire

Les instructions ternaires fournissent un moyen concis d'écrire une instruction if en une ligne. Il s'agit d'une instruction if en ligne qui consiste en trois opérandes : une condition, une expression à exécuter si la condition est vraie, et une expression à exécuter si la condition est fausse.

### Syntaxe de l'Instruction Ternaire `if`

```python
<expression_if_true> if <condition> else <expression_if_false>
```

### Vérifier si un nombre est impair ou pair

```python3
num = 7
result = "Even" if num % 2 == 0 else "Odd"
print(result)  # Output: Odd
```

Dans l'exemple ci-dessus, l'instruction ternaire vérifie si le nombre est pair ou impair avec **opérateur ternaire** `if`. Si le nombre est divisible par 2 (c'est-à-dire, le reste de la division est zéro), la variable `result` sera assignée à la chaîne `'Even'`, et si ce n'est pas divisible par 2 (c'est-à-dire, le reste est un), la variable `result` sera assignée à la chaîne `'Odd'`.

### Vérifier si une liste est vide ou non

```python3
my_list = [1, 2, 3]
result = "Not Empty" if my_list else "Empty"
print(result)  # Output: Not Empty
```

Dans l'exemple ci-dessus, l'instruction ternaire vérifie si la variable `my_list` est vide ou non. Si `my_list` n'est pas vide, la variable `result` se verra attribuer la chaîne `Not Empty`, et si elle est vide, la variable `result` se verra attribuer la chaîne `Empty`.

Dans l'ensemble, les instructions ternaires fournissent un moyen propre et efficace d'écrire des instructions conditionnelles en Python.

## L'instruction `if` Entre Deux Nombres

Pour vérifier si un nombre est compris entre deux nombres en Python, vous pouvez utiliser une instruction `if` avec des opérateurs logiques. Voici deux exemples :

```python3
x = 5
if 2 <= x <= 8:
    print("x is between 2 and 8")
else:
    print("x is not between 2 and 8")
```

Dans cet exemple, l'instruction `if` vérifie si `x` se trouve entre `2` et `8` (inclus). Si `x` est entre `2` et `8`, l'instruction `print(`x is between 2 and 8`)` sera exécutée, sinon, `print(`x is not between 2 and 8`)` sera exécutée.

```python3
y = 10
if not (y < 2 or y > 8):
    print("y is between 2 and 8")
else:
    print("y is not between 2 and 8")
```

Dans cet exemple, l'instruction `if` vérifie si `y` n'est **pas** inférieur à `2` ou **pas** supérieur à `8`. Si `y` est entre `2` et `8`, l'instruction `print(y is between 2 and 8)` sera exécutée, sinon, `print(y is not between 2 and 8)` sera exécutée.

Utilisez ces exemples pour vérifier si votre nombre est entre deux chiffres en Python.

## L'instruction `if` dans une Compréhension de Liste

En Python, une instruction `if` peut être utilisée dans la compréhension de liste pour filtrer uniquement les valeurs qui répondent à une condition spécifique. Cela est extrêmement utile pour créer une nouvelle liste qui contient uniquement les valeurs souhaitées sans avoir besoin d'écrire une boucle.

```python3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
even_numbers = [num for num in numbers if num % 2 == 0]
print(even_numbers)
```

Ce code crée une nouvelle liste appelée `even_numbers` contenant uniquement les nombres pairs de la liste originale `numbers`.

```python3
words = ["apple", "banana", "cherry", "date"]
short_words = [word for word in words if len(word) < 6]
print(short_words)
```

Cet exemple utilise la compréhension de liste pour créer une nouvelle liste appelée `short_words` qui contient uniquement des mots de moins de six caractères issus de la liste originale `words`.

En utilisant l'instruction `if` dans la compréhension de liste, nous pouvons réduire considérablement la quantité de code nécessaire pour créer une nouvelle liste filtrée. Cela peut aboutir à un code plus lisible et concis qui est plus facile à maintenir.

## Instructions `if` imbriquées

Les instructions If imbriquées sont utilisées en programmation Python lorsque deux conditions ou plus doivent être vérifiées simultanément. Il s'agit d'une instruction conditionnelle à l'intérieur d'une autre, créant une structure hiérarchique de prise de décision.

```python3
age = 18
if age >= 18:
    print("You are legally an adult")
    if age == 18:
        print("Congratulations on turning 18!")
else:
    print("You are not yet an adult")
```

Dans cet exemple, la première instruction `if` vérifie si l'`age` est supérieur ou égal à 18. Si `True`, la deuxième instruction `if` vérifie si `age` est égal à 18. Si les deux conditions sont `True`, il affiche le message de félicitations. Sinon, il affiche uniquement le message d'être légalement adulte.

```python3
x = 5
y = 10
z = 15
if x > y:
    if x > z:
        print("x is the largest")
    else:
        print("z is the largest")
else:
    if y > z:
        print("y is the largest")
    else:
        print("z is the largest")
```

Dans cet exemple, il y a trois variables, et les instructions `if` imbriquées vérifient laquelle d'entre elles est la plus grande. Si `x` est plus grand que `y`, alors ça vérifie si `x` est plus grand que `z`. Si c'est `True`, ça affiche `x est le plus grand`. Si la première condition est `False`, alors ça vérifie si `z` est plus grand que `y`. Si c'est `True`, ça affiche `z est le plus grand`. Si aucune de ces conditions n'est `True`, alors `y` doit être le plus grand, et ça affiche `y est le plus grand`.

Ce ne sont que des exemples simples pour illustrer le concept des instructions If imbriquées en Python et comment elles peuvent être utilisées en programmation.

## L'instruction `elif` en Python

L'instruction `elif` en Python est une instruction conditionnelle qui vous aide à vérifier plusieurs conditions dans un programme. Elle est utilisée conjointement avec les instructions `if` et `else`.

### Syntaxe

```python
if condition:
    statement(s)
elif condition:
    statement(s)
else:
    statement(s)
```

Ici, `condition` est une expression booléenne qui évalue à `True` ou `False`. Si `condition` est `True`, alors les instructions à l'intérieur du bloc `if` sont exécutées. Si `condition` est `False`, alors les instructions à l'intérieur du bloc `elif` sont exécutées. Si aucune des conditions n'est `True`, alors les instructions à l'intérieur du bloc `else` sont exécutées.

```python3
age = 25

if age < 18:
    print("You are a minor")
elif age >= 18 and age <= 65:
    print("You are an adult")
else:
    print("You are a senior citizen")
```

Dans cet exemple, nous vérifions l'`age` d'une personne. Si l'`age` est inférieur à 18 ans, il imprime `You are a minor`. Si l'`age` est compris entre 18 et 65 ans, il imprime `You are an adult`. Si l'`age` est supérieur à 65 ans, il imprime `You are a senior citizen`.

```python3
score = 80

if score >= 90:
    print("You have secured an A grade")
elif score >= 80 and score < 90:
    print("You have secured a B grade")
elif score >= 70 and score < 80:
    print("You have secured a C grade")
elif score >= 60 and score < 70:
    print("You have secured a D grade")
else:
    print("You have failed the exam")
```

Dans cet exemple, nous vérifions le `score` d'un étudiant. Selon le `score`, il affiche différents messages. Si le `score` est supérieur ou égal à 90, il imprime `Vous avez obtenu une note A`. Si le `score` est entre 80 et 89, il imprime `Vous avez obtenu une note B`. Si le `score` est entre 70 et 79, il imprime `Vous avez obtenu une note C`. Si le `score` est entre 60 et 69, il imprime `Vous avez obtenu une note D`. Si le `score` est inférieur à 60, il imprime `Vous avez échoué à l'examen`.

## Plusieurs déclarations `if`

En Python, plusieurs déclarations `if` peuvent être utilisées pour vérifier plusieurs conditions dans un seul bloc d'exécution. Il existe deux manières d'écrire plusieurs déclarations `if` en Python - en utilisant plusieurs déclarations `if` et en utilisant une déclaration `if` multiligne.

### Exemple de Plusieurs Déclarations `if`

La syntaxe pour utiliser plusieurs déclarations `if` est la suivante :

```python
if condition1:
    # do something
if condition2:
    # do something else
if condition3:
    # do something else again
```

Ici, chaque instruction `if` vérifie une condition distincte et exécute le bloc de code correspondant si la condition est vraie.

```python3
x = 5
y = 8

if x > 0:
    print("x is a positive number")

if y < 10:
    print("y is less than 10")

# Output:
# 
# x is a positive number
# y is less than 10
```

### Un autre exemple de déclaration `if` Multiligne

La syntaxe pour utiliser une déclaration `if` multiligne est la suivante :

```python
if condition1 and \
   condition2 and \
   condition3:
   # do something
```

Ici, les barres obliques inversées (`\`) indiquent que l'instruction `if` est continuée sur la ligne suivante.

```python3
x = 5
y = 8

if x > 0 and \
   y < 10:
    print("x is a positive number and y is less than 10")

# Output:
# 
# x is a positive number and y is less than 10
```

Dans l'ensemble, les deux méthodes sont utiles pour vérifier plusieurs conditions en Python, mais les instructions `if` sur plusieurs lignes peuvent rendre le code plus lisible et plus facile à gérer.
