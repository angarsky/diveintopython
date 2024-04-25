> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/loops/range

L'instruction `range` est une fonctionnalité cruciale en Python qui permet aux développeurs de définir une séquence de nombres dans une plage spécifiée. Elle est souvent utilisée dans diverses applications de programmation pour créer des boucles et itérer sur des sous-ensembles spécifiques d'éléments dans une liste ou un tuple. L'instruction range est un outil simple mais puissant qui peut améliorer la fonctionnalité de votre code Python. Dans cet article, nous allons explorer les différentes applications et fonctionnalités de l'instruction range et comment elle peut être utilisée pour augmenter l'efficacité et l'efficacité de vos scripts Python.

## Qu'est-ce que `range` en Python ?

La fonction `range` en Python génère une séquence de nombres dans une plage donnée. C'est une fonction intégrée en Python qui peut être utilisée pour créer un objet range itérable.

La fonction `range` prend trois paramètres : `start`, `stop`, et le pas du range `step`. Le paramètre `start` est le début de la plage, `stop` est la fin de la plage (exclusive), et `step` est la différence entre chaque nombre dans la séquence.

### Exemple 1 : Impression des nombres de 0 à 9

```python
for i in range(10):
    print(i)
```

### Exemple 2 : Affichage des nombres pairs de 2 à 10

```python3
for i in range(2, 11, 2):
    print(i)
```

Dans le deuxième exemple, le paramètre `start` est défini à 2, le paramètre `stop` est défini à 11 (exclusif), et le paramètre `step` est défini à 2, ce qui crée une séquence de nombres pairs de 2 à 10 (plage incluse).

Utiliser la fonction `range` peut être utile dans de nombreux scénarios de programmation, tels que boucler à travers un ensemble de nombres ou générer une liste d'éléments.

## Comment utiliser `range` avec une boucle `for`

Cette fonction peut être utilisée avec une boucle `for` pour itérer à travers une certaine plage de nombres.

Voici un exemple d'utilisation de `range` avec une boucle `for` pour imprimer une séquence d'entiers :

```python3
for num in range(1, 10):
    print(num)

# This will output:
# 
# 1
# 2
# 3
# 4
# 5
# 6
# 7
# 8
# 9
```

### Comment utiliser `range` avec des nombres flottants

Vous pouvez également utiliser `range` pour parcourir une séquence de nombres flottants.

```python
for i in range(0, 10):
    print(i/10.0)

# This will output:
# 
# 0.0
# 0.1
# 0.2
# 0.3
# 0.4
# 0.5
# 0.6
# 0.7
# 0.8
# 0.9
```

En résumé, `range` est une fonction Python utile qui peut être combinée à une boucle `for` pour itérer sur une séquence de nombres, y compris les valeurs flottantes.

## Comment inverser un `range`

Pour inverser un range en Python, vous pouvez utiliser la fonction `list`. Tout d'abord, créez un range en utilisant la fonction `range`, puis passez-le en argument à la fonction `list` pour convertir `range` en liste. Après cela, vous pouvez utiliser la notation de tranche `[::-1]` pour obtenir le **range en arrière**. Alternativement, vous pouvez aussi utiliser la fonction `reversed` pour obtenir le range inversé.

### Utilisant la fonction `list` et la notation de tranche

```python
my_range = range(1, 6)
reversed_range = list(my_range)[::-1]
print(reversed_range)  ### Output

```

### Utilisation de la fonction `reversed`

```python
my_range = range(1, 6)
reversed_range = list(reversed(my_range))
print(reversed_range)  ### Output

```

Dans les deux exemples, nous commençons par créer une plage de `1` à `6` en utilisant la fonction `range`. Ensuite, nous la passons en argument à la fonction `list` pour la convertir en liste. Enfin, nous utilisons soit la notation de découpe soit la fonction `reversed` pour obtenir la **plage dans le sens inverse**.

## Range et Xrange

Dans Python 2, `range()` et `xrange()` sont utilisés pour générer une séquence de nombres entre deux valeurs. Cependant, il existe une différence entre ces deux méthodes.

`range()` renvoie une liste tandis que `xrange()` renvoie un itérateur. Cela signifie que `range()` génère toute la séquence et la stocke en mémoire tandis que `xrange()` génère les valeurs à la volée selon les besoins. Par conséquent, `xrange()` requiert moins de mémoire et est plus efficace pour les grandes séquences.

Voici un exemple d'utilisation de `range()`:

```python3
for i in range(5):
    print(i)

# Output:
# 
# 0
# 1
# 2
# 3
# 4
```

Et voici le même exemple en utilisant `xrange()` dans Python 2 :

```python
for i in xrange(5):
    print(i)

# Output:
# 
# 0
# 1
# 2
# 3
# 4
```

Dans l'ensemble, `xrange()` est recommandé pour les grandes séquences en Python 2 car il est plus efficace en termes de mémoire.

## Utiliser `random` avec la fonction `range`

Le module [random](https://docs.python.org/3/library/random.html) de Python est un outil puissant pour générer des nombres aléatoires. L'un des cas d'utilisation courants de `random` est de générer des entiers aléatoires dans une plage spécifique. Cela peut être réalisé en utilisant la fonction `range` en conjonction avec `random`.

```python3
import random

# Generate a random number in the range 0 to 9
num = random.randint(0, 9)

print(num)
```

Dans l'exemple ci-dessus, nous `import`ons le module `random` et utilisons la fonction `randint` pour générer un entier aléatoire entre 0 et 9 (inclus).

```python3
import random

# Generate 10 random integers in the range 0 to 9
nums = [random.randint(0, 9) for _ in range(10)]

print(nums)
```

Dans l'exemple ci-dessus, nous utilisons une compréhension de liste avec la fonction `range` pour générer une liste de 10 entiers aléatoires entre 0 et 9 (inclus).

Utiliser `random` avec la fonction `range` en Python est un moyen facile de générer des entiers aléatoires dans une plage spécifique. Cela peut être utile dans une variété d'applications, de la génération de données de test aléatoires à la simulation de jeu ou de processus statistiques.
