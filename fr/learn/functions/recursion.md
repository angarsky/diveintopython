> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/recursion

**La programmation récursive** est une technique de programmation où une fonction **s'appelle elle-même de manière répétée** jusqu'à ce qu'elle atteigne un cas de base ou terminal. C'est un outil puissant lorsqu'il s'agit de traiter certains types de problèmes qui peuvent être naturellement définis de manière récursive. En Python, nous pouvons mettre en œuvre cette technique grâce aux fonctions récursives.

## Fonctions récursives en Python

Les fonctions récursives sont des fonctions qui **s'appellent elles-mêmes** pendant l'exécution pour résoudre un problème en le décomposant en sous-problèmes plus petits. La récursivité en Python implique deux étapes principales : définir le ou les cas de base et le ou les cas récursifs.

### Exemple 1 : Calcul de factorielle en utilisant la récursivité

```python3
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# driver code
num = 5
print("Factorial of", num, "is", factorial(num))
```

Dans cet exemple, la fonction `factorial()` prend un entier `n` en entrée et calcule **récursivement** le **factoriel** de `n` en le multipliant par le factoriel de `n-1`. Le cas de base est lorsque `n` est égal à `0`, auquel cas la fonction retourne `1`.

### Exemple 2 : Calcul de la série de Fibonacci en utilisant la récursivité

```python3
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return (fibonacci(n-1) + fibonacci(n-2))

# driver code
num_terms = 10

if num_terms <= 0:
    print("Invalid input")
else:
    print("Fibonacci series:")
    for i in range(num_terms):
        print(fibonacci(i), end=" ")
```

Dans cet exemple, la fonction `fibonacci()` prend un entier `n` en entrée et calcule de manière récursive le terme `n` de la **série Fibonacci** en ajoutant les deux termes précédents. Le cas de base est lorsque `n` est `0` ou `1`, auquel cas la fonction retourne `n`. Le code conducteur imprime les premiers `num_terms` de la série Fibonacci, où `num_terms` est une valeur saisie par l'utilisateur.

## Conseils et meilleures pratiques pour la programmation récursive en Python

1. **Définissez clairement le cas de base** : Le cas de base est la condition sous laquelle la fonction doit arrêter de s'appeler elle-même de manière récursive et renvoyer une valeur. Assurez-vous que le cas de base est clairement défini et que la fonction l'atteint finalement pour éviter la récursion infinie.

2. **Attention à la profondeur de récursion** : La profondeur de récursion fait référence au nombre de fois qu'une fonction s'appelle elle-même de manière récursive. Python a une **limite de profondeur de récursion par défaut de 1000**, donc assurez-vous de garder vos fonctions récursives dans la limite ou ajustez la limite de profondeur de récursion à l'aide du module sys.

3. **Envisagez d'utiliser la mémoïsation** : La mémoïsation est une technique utilisée pour mettre en cache les résultats d'appels de fonction coûteux et les réutiliser lorsque les mêmes entrées se produisent à nouveau. Cela peut améliorer de manière significative la performance des fonctions récursives en Python en évitant les calculs en double.

4. **Testez et déboguez avec soin** : Les fonctions récursives peuvent être difficiles à déboguer en raison de leur nature complexe. Assurez-vous de tester votre fonction avec différentes valeurs d'entrée et prenez le temps de comprendre comment elle fonctionne avant de la déployer en production.

## Exemple : Recherche binaire

```python
def binary_search(arr, target, low, high):
    # base case
    if low > high:
        return -1
    # recursive case
    mid = (low + high) // 2
    if arr[mid] == target:
        return mid
    elif arr[mid] > target:
        return binary_search(arr, target, low, mid-1)
    else:
        return binary_search(arr, target, mid+1, high)
```

Cette fonction récursive effectue une **recherche binaire** sur un tableau trié en **s'appelant elle-même** avec des sous-tableaux plus petits jusqu'à ce qu'elle trouve la cible ou atteigne le cas de base où l'indice bas est supérieur à l'indice haut.

## Erreurs communes et pièges dans la récursivité en Python

Les fonctions récursives en Python peuvent être un outil puissant pour résoudre des problèmes complexes, mais elles peuvent aussi être sujettes à des erreurs communes et des pièges. Voici quelques erreurs à éviter lors de l'utilisation de la récursivité en Python :

1. **Boucles infinies** : Il est facile de créer des boucles infinies dans les fonctions récursives si vous n'avez pas de cas de base qui interrompt finalement la récursion. Assurez-vous de définir un cas de base qui arrêtera la récursion.

2. **Débordement de pile** : La récursion peut créer beaucoup de surcharge mémoire, ce qui peut conduire à des erreurs de débordement de pile. Soyez prudent lorsque vous utilisez la récursion avec de grands ensembles de données.

## Améliorer les fonctions récursives en Python pour une plus grande efficacité et performance

L'amélioration récursive se réfère au processus d'optimisation d'une fonction récursive en Python pour une meilleure efficacité et performance. Cela implique d'identifier les domaines pouvant être peaufinés, comme réduire la complexité spatiale ou utiliser la mémoïsation pour réduire le nombre d'appels récursifs.

Ci-dessous se trouvent deux exemples de comment améliorer les fonctions récursives en Python pour une plus grande efficacité :

### Mémoïsation

La mémoïsation est le processus de stockage de résultats précédemment calculés pour éviter un recalcul répété. Cela peut réduire considérablement le temps d'exécution d'une fonction récursive.

```python
def fibonacci(n, memo={}):
    if n <= 1:
        return n
    elif n in memo:
        return memo[n]
    else:
        memo[n] = fibonacci(n-1, memo) + fibonacci(n-2, memo)
        return memo[n]
```

Dans le code ci-dessus, le dictionnaire `memo` est utilisé pour stocker les nombres de Fibonacci déjà calculés. Lorsque la fonction est appelée avec un `n` précédemment calculé, la valeur `memo` est retournée au lieu que la fonction effectue un autre appel récursif.

### Optimisation de la récursion terminale

L'optimisation de la récursion terminale est une manière d'optimiser les fonctions récursives de sorte qu'elles utilisent moins d'espace sur la pile d'appels.

```python3
def sum_n(n, acc=0):
    if n == 0:
        return acc
    else:
        return sum_n(n-1, acc+n)

# Example usage
print(sum_n(5)) # Outputs: 15
```

Dans le code ci-dessus, `sum_n()` est une **fonction récursive** qui calcule la somme de tous les nombres de `1` à `n`. L'argument acc est un **accumulateur** qui stocke les résultats intermédiaires du calcul.

À chaque appel récursif, la fonction ajoute la valeur actuelle de `n` à l'accumulateur et passe le résultat à l'appel récursif suivant, sans conserver le cadre de pile de l'appel précédent en mémoire. De cette façon, la fonction utilise une quantité constante de mémoire sur la pile d'appels, et évite le risque de débordement de pile pour de grandes valeurs de `n`.

> Notez que l'optimisation de la récursion terminale ne peut être appliquée qu'aux fonctions récursives qui ont un appel terminal, c'est-à-dire, un appel récursif qui se produit à la fin de l'exécution de la fonction.
