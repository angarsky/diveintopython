> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/loops

Il existe deux types de boucles en Python : les boucles `for` et les boucles `while`.

La boucle `for` est utilisée pour itérer sur une séquence (qui peut être une liste, un tuple, un ensemble, un dictionnaire, une chaîne de caractères ou tout autre objet itérable) et exécuter un bloc de code pour chaque élément de la séquence. La boucle `while` est utilisée pour exécuter un bloc de code de manière répétée tant qu'une certaine condition est `true`. Dans la boucle `while`, la condition est vérifiée au début de chaque itération, et la boucle est quittée lorsque la condition devient fausse. Il est important de s'assurer que la condition devienne éventuellement fausse, sinon, la boucle continuera de tourner indéfiniment, ce qui est appelé une boucle infinie.

## Syntaxe de la boucle `for` en Python

Un exemple de comment utiliser la boucle `for` pour parcourir une liste en Python :

```python3
cars = ["bmw", "audi", "renault"]
for car in cars:
    print(car)
```

Dans cet exemple, nous avons une liste de voitures, et nous voulons imprimer chaque voiture sur une nouvelle ligne. Nous utilisons la boucle `for` pour itérer sur chaque élément de la liste, et pour chaque élément, nous l'imprimons dans la console en utilisant la fonction `print`.

### Boucle `for` en Ligne

Dans cet exemple, nous avons une liste de nombres, et nous voulons créer une nouvelle liste qui contient le carré de chaque nombre. Au lieu d'utiliser une boucle `for` traditionnelle, nous utilisons une compréhension de liste, qui est une manière plus concise d'atteindre le même résultat.

```python3
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)
```

Dans ce cas, l'expression est `x**2`, qui est le carré du nombre actuel dans l'itération, et l'itérable est la liste des nombres. Le résultat de la compréhension de liste est une nouvelle liste qui contient le carré de chaque nombre : `[1, 4, 9, 16, 25]`.

### Boucle `for` avec Indice

Dans cet exemple, la `boucle` itère sur la liste `cars` et imprime l'indice et la valeur de chaque élément :

```python3
cars = ["bmw", "audi", "renault"]
for i in range(len(cars)):
    print(i, cars[i])
```

### Fonction de puissance en Python utilisant une boucle

```python3
def power(a, b):
    pow = 1
    for i in range(b):
        pow *= a
    return pow

a = 2
b = 3
print(power(a, b))
```

## Boucles `while` en Python

Voici un exemple de la boucle `while` qui compte de `1` à `10` :

```python3
count = 1
while count <= 10:
    print(count)
    count += 1
```

Dans cet exemple, la boucle commence avec count égal à `1`. La condition count `<= 10` est `true`, donc le code à l'intérieur de la boucle est exécuté. Ce code imprime la valeur de count (qui est actuellement `1`) puis incrémente count de `1` en utilisant l'opérateur `+=`. La boucle vérifie ensuite à nouveau la condition, qui est toujours `vraie` car count est maintenant `2`. Ce processus se répète jusqu'à ce que count atteigne `11`, à ce moment la condition devient `fausse` et la boucle se termine.

> Note : Python n'a pas de boucle `do-while` intégrée comme certains autres langages de programmation. Cependant, vous pouvez obtenir une fonctionnalité similaire en utilisant une combinaison d'une boucle `while` et d'une vérification initiale.

## Instructions `break` et `continue`

En Python, `break` et `continue` sont des mots-clés réservés utilisés pour modifier le comportement des boucles. Ils vous permettent de contrôler quand une boucle doit se terminer ou passer outre certaines itérations en fonction d'une condition.

### Exemple : Comment `break` une boucle `for`

```python3
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        # end for loop
        break
    print(num)
```

Dans cet exemple, la boucle itère sur la liste `numbers` et imprime chaque nombre. Cependant, lorsque la valeur de `num` est égale à `3`, l'instruction `break` met fin à la boucle `for`. La sortie serait : `1 2`.

### Comment utiliser `continue` avec une boucle `for`

Le `continue`, quant à lui, est utilisé pour **sauter une itération de la boucle** basée sur une condition. Lorsqu'il est rencontré, il provoque la fin de l'itération actuelle de la boucle et se poursuit avec la prochaine itération. Voici un exemple de comment sauter une itération dans la boucle `for` en Python :

```python3
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        continue
    print(num)
```

Dans cet exemple, la boucle itère sur la liste `numbers` et imprime chaque nombre. Cependant, lorsque la valeur de `num` est égale à `3`, l'instruction `continue` est exécutée, provoquant la fin de l'itération courante de la boucle et la poursuite avec l'itération suivante. Le résultat serait : `1 2 4 5`.

### Exemple de `continue` dans une boucle `while`

Utiliser `continue` dans une boucle `while` en Python est une manière de sauter certaines itérations de la boucle et de passer à la suivante. Cela peut être utile lorsque vous avez besoin de sauter certaines valeurs ou conditions dans votre boucle.

```python3
i = 0
while i < 10:
    i += 1
    if i % 2 == 0:
        continue
    print(i)
```

Dans cet exemple, la boucle itère sur les nombres de 1 à 10. Cependant, lorsque la valeur de `i` est paire, l'instruction `continue` est déclenchée, poussant la boucle à sauter à l'itération suivante sans exécuter d'autre code dans l'itération courante.

```python3
my_list = [1, 2, 3, 4, 5]
while my_list:
    val = my_list.pop()
    if val == 3:
        continue
    print(val)
```

Dans cet exemple, la boucle itère sur les valeurs dans `my_list`. Lorsque la valeur de `val` est égale à 3, l'instruction `continue` fait que la boucle passe à l'itération suivante sans imprimer la valeur.

## Comment `break` une boucle `while`

Pour interrompre une boucle `while` en Python, vous pouvez utiliser l'instruction `break`. Cette instruction est responsable de l'arrêt de la boucle pour qu'elle ne continue plus à itérer, dès qu'une certaine condition est remplie. La syntaxe pour utiliser `break` dans une boucle `while` est comme suit :

```python
while <condition>:
    ### statements to be executed inside the loop

    if <break-condition>:
        break
```

Ici, `<condition>` est la condition de la boucle qui décide initialement si la boucle doit être exécutée ou non, et `<break-condition>` est une instruction conditionnelle supplémentaire qui définit la ou les conditions pour arrêter la boucle. Une fois cette condition remplie, la boucle est automatiquement terminée, et le contrôle est transféré à l'instruction suivante après la boucle.

```python3
n = 1
while n <= 10:
    print(n)
    if n == 5:
        break
    n += 1
print("Loop Ended")

# Output:
# 
# 1
# 2
# 3
# 4
# 5
# Loop Ended
```

Dans cet exemple, la boucle while va `print` des nombres de 1 à 5, puis `stop` dès que `n == 5`. L'instruction `break` est utilisée pour réaliser cela, et la sortie montre que la boucle s'est terminée après avoir complété l'exécution de la condition souhaitée.

### Comment arrêter une boucle infinie en Python

```python3
while True:
    value = input("Enter a number: ")
    if value == "stop":
        break
    print(int(value) ** 2)
print("Loop Ended")

# Output:
# Enter a number: 2
# 4
# Enter a number: 5
# 25
# Enter a number: 3
# 9
# Enter a number: stop
# Loop Ended
```

Dans cet exemple, la boucle `while` continuera de demander à l'utilisateur d'entrer un `number`, et calculera son carré si l'`input` est un `number`. Si l'`input` est 'stop', la boucle se rompra, et le contrôle sera transféré à l'instruction après la boucle.

Cette approche aide à éviter les boucles infinies en Python, et à contrôler le flux d'exécution en fonction de certains critères.

## Un Compte dans une boucle `for`

Pour compter dans une boucle `for` en Python, vous pouvez utiliser une variable compteur de boucle. Cette variable garde une trace du nombre de fois que la boucle `for` a été exécutée. Voici deux exemples :

```python3
count = 0
for i in range(10):
    count += 1
print("The loop executed", count, "times.")
```

Dans cet exemple, nous créons une variable `count` et définissons sa valeur initiale à 0. Nous utilisons ensuite une boucle `for` pour itérer 10 fois, en incrémentant la variable `count` de 1 à chaque fois. Enfin, nous affichons le nombre total de fois où la boucle a été exécutée avec `print`.

```python3
fruits = ['apple', 'banana', 'cherry']
for i, fruit in enumerate(fruits, 1):
    print(i, fruit)
```

Dans cet exemple, nous utilisons la fonction intégrée `enumerate()` pour parcourir une liste de `fruits` et leurs indices. Nous commençons l'indice à 1 en passant le deuxième argument à `enumerate()`. À l'intérieur de la boucle, nous `print` l'indice et le nom du `fruit`.

En utilisant une variable de compteur de boucle, vous pouvez facilement suivre le nombre de fois qu'une boucle `for` a été exécutée en Python. Cela peut être utile pour le débogage, les tests et l'analyse de la performance.

## Boucles Imbriquées

Les boucles imbriquées sont des boucles qui sont placées à l'intérieur d'une autre boucle. En Python, les boucles imbriquées sont principalement utilisées pour itérer sur des tableaux, des matrices, et des listes multi-dimensionnelles. Elles sont utiles pour résoudre des problèmes qui impliquent de répéter une tâche pour chaque élément d'une structure imbriquée.

### Boucles For Imbriquées en Python

Le type de boucle imbriquée le plus courant en Python est la boucle for imbriquée. Cette boucle est utilisée pour itérer sur des éléments dans une structure imbriquée en utilisant deux déclarations `for` ou plus.

#### Exemple Simple de Boucles `for` Imbriquées

```python3
numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for row in numbers:
    for num in row:
        print(num)
```

Dans cet exemple, nous avons une matrice 3 par 3 qui est représentée par une liste multi-dimensionnelle. La boucle for imbriquée itère sur les éléments de la matrice et imprime chaque nombre sur une nouvelle ligne.

### Boucles `while` imbriquées en Python

Les boucles `while` imbriquées en Python utilisent une ou plusieurs boucles internes qui répètent le même processus plusieurs fois. Elles sont utilisées pour itérer sur les éléments d'une structure de données imbriquée jusqu'à ce qu'une certaine condition soit remplie.

#### Exemple de boucles `while` imbriquées

```python3
x = 1
y = 1

while x <= 5:
    y = 1
    while y <= x:
        print(y, end="")
        y += 1
    print()
    x += 1
```

Dans cet exemple, nous utilisons deux boucles `while` imbriquées pour `print` un triangle de `numbers`. La boucle `while` extérieure itère sur chaque `row` du triangle, tandis que la boucle `while` intérieure itère sur chaque nombre dans cette ligne.

Dans l'ensemble, les boucles imbriquées sont un concept important dans la programmation Python, et elles peuvent vous aider à résoudre des problèmes complexes en itérant sur des structures de données imbriquées. En incorporant des boucles for et `while` imbriquées dans votre code, vous pouvez écrire des programmes plus efficaces, lisibles et puissants.

## Comment Utiliser une Boucle `for` avec une Instruction `range`

L'instruction `range` en Python est une fonction intégrée qui peut être utilisée pour générer une séquence de nombres. Elle est souvent utilisée dans les boucles `for` pour répéter une tâche un certain nombre de fois. Voici deux exemples de comment utiliser l'instruction `range` en Python :

```python3
for i in range(5):
    print(i)

for i in range(0, 10, 2):
    print(i)
```

Dans le premier exemple, la boucle `for` est utilisée pour itérer à travers une plage de nombres de 0 à 4. Dans le deuxième exemple, la fonction `range` est appelée avec trois arguments : le nombre de départ (0), le nombre de fin (10) et le pas (2). Cela générera une séquence de nombres de 0 à 10 (sans inclure 10) avec un pas de 2. La boucle `for` itère ensuite à travers cette séquence et imprime chaque nombre.

### Une boucle `for` Inversée

```python3
for i in range(5, 0, -1):
    print(i)
# Output:
# 5
# 4
# 3
# 2
# 1
```

```python3
a = ['1', '2', '3', '4', '5']

for i in reversed(a):
    print(i)
# Output:
# 5
# 4
# 3
# 2
# 1
```

Utiliser l'instruction `range` en Python est un moyen efficace de parcourir une séquence de nombres et d'effectuer une tâche. C'est une technique souvent utilisée en programmation et facile à implémenter avec la boucle `for` en Python.

## Boucle `for` en une ligne

La compréhension de liste rend plus facile l'écriture d'une boucle for en une ligne en Python. Utiliser une boucle en une ligne peut aider à simplifier le code et le rendre plus concis.

```python3
squares = [x**2 for x in range(10)]
print(squares)
```

Sortie :

```python
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

```python3
even_numbers = [num for num in range(20) if num % 2 == 0]
print(even_numbers)

# Output:
# 
# [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
```

Dans les deux exemples, la boucle `for` est condensée en une seule ligne en utilisant la compréhension de liste. La boucle itère sur une `range` de valeurs et applique une condition à la `range` donnée. Cela se traduit par une liste avec la sortie souhaitée.

Utiliser une boucle for en une ligne en Python est un outil puissant qui peut optimiser votre code et le rendre plus efficace.
