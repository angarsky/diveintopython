> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/generators

**Les fonctions générateurs** en Python sont des types spéciaux de fonctions qui peuvent être utilisées pour créer des **itérateurs**. Elles génèrent une séquence de valeurs à la volée selon les besoins, au lieu de retourner une valeur d'un seul coup comme les fonctions régulières. Cela les rend plus efficaces en termes de mémoire et plus rapides que d'autres méthodes de production d'itérateurs.

## Introduction aux Générateurs

Les avantages de l'utilisation des fonctions générateurs incluent une efficacité de performance améliorée, une meilleure gestion de la mémoire, et la capacité à gérer de grands ensembles de données et des ensembles de données infinis.

### Exemple 1 : Fonction Python régulière

```python3
def power(n):
    result = []
    for i in range(n):
        result.append(2**i)
    return result

print(power(5)) # Output: [1, 2, 4, 8, 16]
```

### Exemple 2 : Fonction génératrice Python

```python3
def power(n):
    for i in range(n):
        yield 2**i

print(list(power(5))) # Output: [1, 2, 4, 8, 16]
```

Dans le deuxième exemple, la fonction générateur est utilisée pour créer un **itérateur** qui génère chaque valeur à la volée au besoin, plutôt que de créer et de stocker une liste de valeurs en mémoire comme dans le premier exemple. Cela peut être un moyen beaucoup plus efficace de travailler avec de grands ensembles de données ou des calculs qui peuvent ne pas avoir besoin d'être stockés en mémoire en une seule fois.

## Syntaxe et Structure des Fonctions Générateur

Elle utilise le mot-clé `yield` pour retourner une valeur et suspendre temporairement l'exécution de la fonction. La **syntaxe** d'une fonction générateur en Python est **similaire** à une fonction régulière, mais avec l'ajout de l'instruction `yield`.

Syntaxe d'une fonction générateur en Python :

```python 
def count_up_to(n):
    i = 1
    while i <= n:
        yield i
        i += 1
```

Dans cet exemple, la fonction générateur `count_up_to()` génère une séquence de nombres de `1` jusqu'à une valeur donnée `n`. Lorsqu'elle est appelée, elle renvoie un objet générateur sur lequel on peut itérer pour obtenir la valeur `next` dans la séquence.

Un autre exemple de fonction générateur est la fonction `string_generator()` qui prend une chaîne de caractères en entrée et renvoie chaque caractère de la chaîne un par un en utilisant l'instruction yield.

```python 
def string_generator(string):
    for char in string:
        yield char
```

La fonction générateur `string_generator()` crée un nouvel objet générateur qui produit un caractère à la fois à partir de la chaîne d'entrée. L'instruction yield est utilisée pour mettre temporairement en pause l'exécution de la fonction et retourner le caractère actuel avant de reprendre l'exécution.

## Comprendre l'instruction `yield` dans les fonctions génératrices

La fonction génératrice en Python est un type spécial de fonction Python qui peut retourner un objet itérateur. Ces objets itérateurs peuvent être utilisés pour générer une séquence de valeurs à la volée, au lieu de les calculer toutes en une fois et de les stocker dans une liste. L'instruction yield est une partie cruciale des fonctions génératrices et permet à la fonction de produire une valeur et de mettre temporairement sa exécution en pause.

### Exemple 1 : Fonction Génératrice Simple en Python

```python 
def simple_generator():
    yield 'Hello'
    yield 'World'
    yield '!'
```

Dans cet exemple, la fonction `simple_generator()` contient trois instructions `yield`, qui produiront trois valeurs : `Hello`, `World`, et `!`. Lorsque la fonction est appelée, elle n'exécute pas immédiatement son code ; à la place, elle retourne un objet itérateur. Chaque fois que la méthode `__next__()` de l'itérateur est appelée, la fonction exécutera son code jusqu'à atteindre une instruction `yield`. À ce moment-là, la fonction mettra sa exécution en pause et retournera la valeur à l'appelant. La prochaine fois que la méthode `__next__()` de l'itérateur est appelée, la fonction reprendra son exécution là où elle s'était arrêtée et continuera jusqu'à atteindre la prochaine instruction `yield` ou la fin de la fonction.

### Exemple 2 : Fonction Génératrice avec Paramètres en Python

```python 
def even_numbers(maximum):
    i = 0
    while i < maximum:
        if i % 2 == 0:
            yield i
        i += 1
```

Dans cet exemple, la fonction générateur `even_numbers()` prend un paramètre `maximum`, indiquant le nombre maximum de nombres pairs à générer. La fonction utilise une boucle `while` pour itérer de 0 à `maximum` et utilise une instruction `if` pour vérifier si le nombre courant est pair. Si le nombre est pair, la fonction produit la valeur. La fonction continuera à générer des nombres pairs jusqu'à ce qu'elle atteigne la limite `maximum`, ou jusqu'à ce que la méthode `__next__()` de l'itérateur ne soit plus appelée.

Dans l'ensemble, les fonctions générateur en Python sont un outil puissant pour générer une séquence de valeurs à la volée, ce qui économise la mémoire computationnelle et offre une meilleure performance par rapport aux méthodes traditionnelles de génération de grandes séquences de données.

## Différences entre les Générateurs et les Fonctions Régulières en Python

Les fonctions générateur en Python sont un type spécial de fonction qui nous permet de retourner un objet itérateur. La fonction générateur retourne un objet générateur qui peut être itéré. Les fonctions régulières, d'autre part, retournent une valeur puis se terminent.

Voici quelques différences entre les fonctions Python et les fonctions générateur :

1. **Exécution :** Une fonction Python régulière s'exécute jusqu'à ce qu'elle atteigne la fin ou une instruction return. Une fonction générateur, d'autre part, produit une valeur puis passe dans un état suspendu jusqu'à ce qu'une autre valeur soit demandée.

2. **Utilisation de la Mémoire :** Les fonctions régulières peuvent retourner une sortie volumineuse, ce qui peut consommer beaucoup de mémoire. En contraste, les fonctions générateur utilisent une quantité minimale de mémoire car elles calculent les valeurs de manière paresseuse au fur et à mesure du besoin.

Voici un exemple d'une fonction Python régulière :

```python 
def square_numbers(nums):
    result = []
    for i in nums:
        result.append(i * i)
    return result
```

Cette fonction prend une liste de nombres en entrée et renvoie une liste de leurs carrés.

Voici un exemple de fonction générateur en Python :

```python
def square_numbers(nums):
    for i in nums:
        yield i * i
```

Cette fonction génératrice prend également une liste de nombres en entrée et génère leurs carrés en sortie.

En résumé, alors que les fonctions Python régulières sont utilisées pour retourner une valeur puis sortir, les fonctions génératrices sont destinées à produire une séquence de valeurs sur lesquelles il est possible d'itérer.

## Cas d'usage courants pour les fonctions génératrices

Les cas d'usage courants pour les fonctions génératrices en Python incluent :

1. **Analyse de gros fichiers ou ensembles de données** - Les fonctions génératrices peuvent être utilisées pour lire des morceaux d'un fichier ou d'un ensemble de données à la fois, plutôt que de charger le fichier entier en mémoire d'un coup.

2. **Génération de séquences infinies** - Les fonctions génératrices peuvent être utilisées pour générer des séquences infinies de nombres, telles que la séquence de Fibonacci, sans nécessiter du programmeur la création d'une grande liste ou d'un tableau.

### Exemple : Fonction pour lire un gros fichier par morceaux

```python
def read_chunks(file_path, chunk_size=1024):
    with open(file_path, "r") as f:
        while True:
            chunk = f.read(chunk_size)
            if not chunk:
                break
            yield chunk
```

La fonction `read_chunks()` lit un fichier en morceaux de taille `chunk_size` et génère chaque morceau jusqu'à ce que la fin du fichier soit atteinte. Cela permet au programmeur de traiter de gros fichiers sans charger le fichier entier en mémoire.

## Techniques avancées pour travailler avec les fonctions générateurs

En utilisant les **techniques avancées** discutées ci-dessous, vous pouvez **manipuler** et **optimiser** la sortie des fonctions générateurs dans votre code.

### Exécution paresseuse

L'un des principaux avantages des fonctions générateurs est la **capacité de retarder l'exécution à la volée** jusqu'à ce que la sortie soit réellement nécessaire. Cela peut améliorer significativement la performance de votre code en évitant la nécessité de générer et de stocker toute la sortie en mémoire.

```python3
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

gen = fibonacci(10) # Does not execute any code.
for num in gen:
    print(num) # Executes code as needed.
```

### Fil d'exécution avec des générateurs

Vous pouvez même **combiner des générateurs avec des threads** pour exécuter du code **de manière asynchrone**, permettant à **plusieurs processus** d'être exécutés simultanément et d'améliorer encore les performances de votre code.

```python 
from threading import Thread
import time

def countdown(num):
    print(f"Starting countdown for {num}")
    for i in range(num, 0, -1):
        print(i)
        time.sleep(1)

def generate_counts():
    for i in range(5, 0, -1):
        yield Thread(target=countdown, args=(i,))

threads = list(generate_counts())
for thread in threads:
    thread.start()

for thread in threads:
    thread.join()
```

Dans cet exemple, nous créons une fonction génératrice qui crée plusieurs fils d'exécution en utilisant le module `Thread` en Python. La fonction `countdown` est exécutée à l'intérieur de chaque fil généré, en décomptant de manière asynchrone à partir de la valeur spécifiée. En utilisant les fonctions génératrices et les fils d'exécution ensemble, nous pouvons créer un code plus efficace et performant qui tire parti de plusieurs processeurs simultanément.

## Meilleures pratiques et conseils pour écrire des fonctions génératrices efficaces et efficaces

1. **Utilisez une fonction génératrice au lieu d'une compréhension de liste ou d'une boucle**, lors de la génération de grandes séquences de données. Cela est dû au fait qu'une fonction génératrice produit des valeurs à la volée, tandis qu'une compréhension de liste ou une boucle crée la séquence entière en mémoire avant de la retourner.

2. **Utilisez le mot-clé `yield` au lieu de `return` lors de la production de valeurs** dans une fonction génératrice. Cela permet à la fonction de suspendre l'exécution et de retourner une valeur, sans terminer la fonction. La fonction peut ensuite être reprise là où elle s'est arrêtée plus tard.

3. **Utilisez la fonction `next()`** pour avancer à travers la séquence générée par une fonction génératrice. Cette fonction récupère la valeur suivante produite par la fonction et déplace l'état d'exécution de la fonction vers l'avant.

4. **Utilisez la fonction `send()`** pour envoyer une valeur de retour dans une fonction génératrice et reprendre son exécution. Cette fonction permet à un code client de transmettre des valeurs à une fonction génératrice, qui peut ensuite utiliser ces valeurs pour produire de nouvelles valeurs.

### Exemple : Une fonction génératrice qui produit des valeurs dans une séquence géométrique

```python3
def geometric_sequence(start, factor):
    value = start
    while True:
        yield value
        value *= factor

# Usage:
g = geometric_sequence(2, 3)
print(next(g))  # Prints 2
print(next(g))  # Prints 6
print(next(g))  # Prints 18
print(next(g))  # Prints 54
print(next(g))  # Prints 162
# ...

```

Par exemple, la fonction génératrice produit une séquence infinie de valeurs. Cependant, le mot-clé `yield` permet à la fonction de **produire des valeurs à la demande**, et le code client peut consommer ces valeurs une à une, **sans stocker l'intégralité de la séquence en mémoire**.
