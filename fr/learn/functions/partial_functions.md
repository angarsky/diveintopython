> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/partial-functions

Python offre une gamme de fonctions aux développeurs. Les fonctions partielles dans Python sont un ajout passionnant qui peut être extrêmement utile, en particulier lorsqu'on traite du code complexe. Une fonction partielle est une fonction dont certains de ses arguments sont déjà définis, ce qui la rend plus facile à appeler. Dans cet article, nous explorons le concept de fonctions partielles dans Python et comment elles peuvent être utilisées efficacement dans différents scénarios de programmation.

## Comprendre les fonctions partielles Python : un guide pour débutants sur la modification de fonction

Une **fonction partielle** dans Python est une fonction qui est définie avec certains de ses arguments déjà fixés. Cela nous permet de créer de nouvelles fonctions à partir de celles existantes qui ont certains des arguments pré-configurés. La fonction résultante est appelée une fonction partielle.

Par exemple, considérez la fonction normale suivante qui ajoute deux nombres. Nous pouvons créer une nouvelle fonction partielle à partir de cette fonction en fixant l'un des arguments :

```python3
from functools import partial

def add(a, b):
    return a + b

add_3 = partial(add, 3)

print(add_3(4)) # Output: 7
```

Ici, nous avons créé une nouvelle fonction partielle appelée `add_3` qui ajoute 3 à n'importe quel nombre que nous lui passons. Nous avons fait cela en utilisant la fonction `partial` du module `functools`.

Nous pouvons également utiliser des fonctions partielles pour modifier une fonction existante en passant une nouvelle valeur pour l'un de ses arguments :

```python3
from functools import partial

mod = partial(pow, 2)

print(mod(3)) # Output: 8
```

Dans cet exemple, nous avons créé une nouvelle fonction partielle appelée `mod` qui prend un nombre et calcule son modulo avec 2.

## Comment utiliser les fonctions partielles en Python pour simplifier des extraits de code récurrents

Les fonctions partielles sont des fonctions qui sont définies avec certains de leurs arguments déjà fixés, ce qui réduit le besoin de répéter des extraits de code en Python. Elles sont créées en utilisant la méthode `partial()` du module `functools` et peuvent être utilisées pour simplifier du code complexe.

Les mots-clés utilisés dans cette réponse sont fonction et fonction partielle.

### Deux exemples d'utilisation de fonctions partielles en Python

Supposons que nous ayons une fonction qui calcule la surface d'un rectangle. Nous avons besoin de calculer la surface de plusieurs rectangles avec une `width` fixée à `10`. Au lieu de créer une nouvelle fonction, nous pouvons créer une fonction partielle avec l'argument de largeur fixe :

```python3
from functools import partial

def calculate_area(length, width):
    return length * width

calculate_area_with_fixed_width = partial(calculate_area, width=10)

area1 = calculate_area_with_fixed_width(5)
area2 = calculate_area_with_fixed_width(7)

print(area1) # 50
print(area2) # 70
```

Supposons que nous avons une fonction qui génère une URL à partir d'un chemin et de certains paramètres de requête. Nous devons générer des URL avec un chemin fixe et certains paramètres de requête variables. Au lieu de répéter l'argument de chemin à chaque fois, nous pouvons créer une fonction partielle avec l'argument de chemin fixe :

```python3
from functools import partial

def generate_url(path, params):
    url = "https://example.com" + path + "?"
    for key, value in params.items():
        url += key + "=" + value + "&"
    return url[:-1]

generate_url_with_fixed_path = partial(generate_url, "/search")

url1 = generate_url_with_fixed_path({"q": "Python"})
url2 = generate_url_with_fixed_path({"q": "Java", "sort": "date"})

print(url1) # https://example.com/search?q=Python
print(url2) # https://example.com/search?q=Java&sort=date
```

## Exploration des avantages des fonctions partielles en Python : un exemple pratique

Les fonctions partielles en Python sont des fonctions qui sont partiellement définies et contiennent des valeurs fixes pour certains paramètres. Ces fonctions offrent plusieurs avantages, tels que l'amélioration de la réutilisabilité et la réduction de la redondance du code. Un exemple pratique de l'utilisation des fonctions partielles en Python est l'implémentation de la fonction exponentielle, où une fonction partielle peut être créée pour prédéfinir la base de l'exposant.

### Exemple de Fonction : Fonction Exponentielle

La fonction exponentielle est utilisée dans de nombreuses opérations mathématiques et peut être facilement mise en œuvre en Python en utilisant la fonction `exp` du module `math`. Cependant, si nous voulons calculer la valeur exponentielle d'un nombre avec différentes bases, nous devons écrire des lignes de code séparées pour chaque opération. Cela peut entraîner une redondance de code et une diminution de la lisibilité.

```python
import math

x = 5

exponential_2 = math.exp(2 * x)
exponential_3 = math.exp(3 * x)
exponential_4 = math.exp(4 * x)
```

Pour éviter cela et rendre le code plus concis, nous pouvons utiliser des fonctions partielles en Python. Nous pouvons définir une fonction partielle pour la fonction `exp` avec un paramètre fixe pour la base en utilisant la fonction `partial` du module `functools`. Ensuite, nous pouvons appeler la fonction partielle avec le paramètre variable `x`.

```python
import math
from functools import partial

exp_base_2 = partial(math.exp, 2)
exp_base_3 = partial(math.exp, 3)
exp_base_4 = partial(math.exp, 4)

x = 5

exponential_2 = exp_base_2(x)
exponential_3 = exp_base_3(x)
exponential_4 = exp_base_4(x)
```

Ainsi, nous pouvons facilement calculer la valeur exponentielle d'une variable `x` pour différentes bases en utilisant les fonctions partielles définies sans avoir à réécrire le code pour chaque opération.

### Exemple de Fonction Partielle : Fonction de Multiplication

Un autre exemple de l'utilisation des fonctions partielles en Python est l'implémentation de la fonction `multiply`. Supposons que nous ayons une liste de nombres que nous voulons multiplier par une valeur fixe `x`. Nous pouvons définir une fonction partielle en utilisant la fonction `partial` du module `functools` pour créer une nouvelle fonction qui multiplie un nombre donné par `x`.

```python3
from functools import partial

multiply = partial(lambda x, y: x * y, 2)

result = map(multiply, [1, 2, 3, 4, 5])
print(list(result))    # Output: [2, 4, 6, 8, 10]
```

Dans cet exemple, la fonction `multiply` est définie comme une fonction partielle qui accepte deux arguments, `x` et `y`. Le premier argument `x` est fixé à la valeur `2`, et le second argument `y` est passé en tant que paramètre variable en utilisant la fonction `map` pour multiplier chaque élément de la liste par `2` et retourner le résultat. Cela résulte en un code plus concis et lisible.

## Quand utiliser des fonctions partielles vs. des lambdas en Python : Différences clés et similitudes

Les fonctions partielles sont des fonctions qui ont un ensemble fixe d'arguments prédéfinis, et le reste des arguments peut être passé plus tard. D'autre part, les fonctions lambda sont des fonctions anonymes qui peuvent être définies à la volée.

Utilisez des fonctions partielles lorsque vous avez une fonction avec des arguments fixes et que vous souhaitez la réutiliser avec différentes valeurs pour les arguments restants. Utilisez des lambdas lorsque vous avez besoin de définir rapidement une fonction simple sans lui donner un nom.

Différences clés et similitudes :

- Les fonctions partielles sont définies en utilisant la fonction `functools.partial()`, tandis que les fonctions lambda sont définies en utilisant le mot-clé `lambda`.
- Les fonctions partielles peuvent avoir un ensemble fixe d'arguments prédéfinis, tandis que les lambdas peuvent avoir un nombre quelconque d'arguments.
- Les fonctions partielles et les lambdas peuvent tous deux être utilisés comme arguments pour d'autres fonctions.

### Exemple d'utilisation d'une fonction partielle

```python3
import functools

def multiply(x, y):
    return x * y

double = functools.partial(multiply, y=2)

print(double(3))   # Output: 6
```

### Exemple d'utilisation d'une fonction lambda

```python
add = lambda x, y: x + y

print(add(2, 3))   # Output: 5
```

## Comment créer des fonctions partielles en Python : un tutoriel étape par étape

Pour créer une fonction partielle en Python, vous devez suivre les étapes suivantes :

1. Importez le module `functools`.
2. Définissez la fonction originale que vous souhaitez utiliser comme fonction partielle.
3. Utilisez la fonction `partial()` pour créer une nouvelle fonction qui a déjà certains paramètres définis.

```python
import functools

def multiply(x, y):
    return x * y

multiply_by_two = functools.partial(multiply, 2)
print(multiply_by_two(5)) # Output: 10
```

Dans cet exemple, une fonction partielle appelée `multiply_by_two` est créée à partir de la fonction `multiply()`, avec le premier paramètre défini sur 2. Lorsque `multiply_by_two()` est appelée avec le paramètre 5, elle multiplie 2 par 5 et retourne 10.

```python3
import functools

def power(base, exponent):
    return base ** exponent

square = functools.partial(power, exponent=2)
cube = functools.partial(power, exponent=3)

print(square(5)) # Output: 25
print(cube(5)) #Output: 125
```

Dans cet exemple, des fonctions partielles nommées `square` et `cube` sont créées en utilisant la fonction `power()`, avec le paramètre d'exposant défini à 2 et 3, respectivement. Lorsque `square(5)` est appelé, cela retourne 25, et lorsque `cube(5)` est appelé, cela retourne 125.

## Améliorer la lisibilité du code avec les fonctions partielles en Python : Astuces et conseils

Une façon d'utiliser les fonctions partielles est de réduire la duplication de code. Par exemple, supposons que nous ayons deux fonctions qui calculent l'`average` de deux nombres :

```python
def average(a, b): 
    return (a + b) / 2 

def average_three(a, b, c): 
    return (a + b + c) / 3
```

Nous pouvons utiliser une fonction partielle pour **éviter de dupliquer** le code pour additionner les nombres :

```python3
from functools import partial 

def add(*args): 
    return sum(args) 

average_two = partial(add, 2) 
average = partial(add, 3) 

print(average_two(4)) # prints 3.0
print(average(1, 2, 3)) # prints 2.0
```

Une autre façon d'utiliser les fonctions `partial` est de créer des valeurs par défaut pour les paramètres optionnels. Par exemple, supposons que nous ayons une fonction qui formate un nombre avec un nombre spécifié de décimales :

```python
from functools import partial 

def format_number(number, digits): 
    return f"{number:.{digits}f}"

format_two_digits = partial(format_number, digits=2) 

print(format_number(3.14159, 2)) # prints 3.14
print(format_two_digits(3.14159)) # prints 3.14
```

Dans les deux cas, l'utilisation de fonctions partielles rend le code plus lisible en exprimant explicitement l'intention du code d'une manière plus facile à comprendre et à maintenir.
