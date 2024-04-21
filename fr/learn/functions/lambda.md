> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/lambda

Les **fonctions lambda** en Python sont des fonctions **anonymes** qui peuvent être définies et déclarées **en ligne** avec le reste du code.

## Qu'est-ce qu'une fonction Lambda en Python

En Python, une fonction lambda est un moyen concis de créer de petites fonctions anonymes. Contrairement aux fonctions régulières définies avec le mot-clé `def`, les fonctions lambda sont créées en utilisant le mot-clé `lambda` et sont généralement utilisées pour des opérations courtes et immédiates.

La syntaxe pour une fonction lambda est simple :

```python
lambda arguments: expression
```

Ici, `lambda` est le mot-clé, `arguments` sont les paramètres d'entrée de la fonction, et `expression` est l'opération que la fonction effectue.

Voici également quelques exemples de déclaration et d'utilisation :

### Addition Basique

```python
add = lambda x, y: x + y
print(add(3, 4))  # Output: 7
```

### Utilisation dans des fonctions d'ordre supérieur

```python3
numbers = [1, 2, 3, 4, 5]
doubled = list(map(lambda x: x * 2, numbers))
print(doubled)  # Output: [2, 4, 6, 8, 10]
```

### Trier une liste de tuples

```python3
students = [('Alice', 25), ('Bob', 20), ('Charlie', 30)]
students.sort(key=lambda x: x[1])
print(students)  # Output: [('Bob', 20), ('Alice', 25), ('Charlie', 30)]
```

Les fonctions lambda sont particulièrement pratiques lorsqu'une petite fonction est nécessaire pour une courte période. Leur simplicité est avantageuse dans les cas où définir une fonction régulière pourrait être excessif.

Points clés à retenir :

- Les fonctions lambda sont anonymes et ne nécessitent pas de nom.
- Elles peuvent gérer des opérations simples en une seule ligne.
- Souvent utilisées avec des fonctions d'ordre supérieur comme map, filter et sort.
  
## Avantages et raisons d'utiliser les fonctions lambda en programmation Python

1. **Code concis** : Les fonctions lambda peuvent être définies en une seule ligne de code, ce qui les rend faciles à utiliser et à lire.

2. Facile à **utiliser des fonctions d'un autre fichier Python** : Vous pouvez utiliser des fonctions `lambda` pour définir une fonction qui peut être utilisée depuis un autre fichier Python.

3. **Programmation fonctionnelle** : Les fonctions lambda permettent aux programmeurs Python d'utiliser des techniques de programmation fonctionnelle, ce qui facilite l'écriture de code pur et modulaire.

### Exemple d'une fonction lambda

```python3 
x = lambda a : a + 10
print(x(5)) # output: 15
```

Dans cet exemple, une fonction `lambda` est définie avec le paramètre `a`. La fonction ajoute `10` au paramètre et retourne le résultat. La fonction `lambda` est ensuite appelée avec le paramètre `5`, ce qui donne comme résultat `15`.

## Exemples et cas d'utilisation des fonctions Lambda en Python

1. **Trier une liste de tuples** : Les fonctions Lambda peuvent être utilisées comme **argument clé** dans la fonction `sorted()` pour trier une liste de tuples en fonction d'un élément spécifique du tuple.

```python3 
# Sorting a list of tuples based on the age of a person
people = [('Jane', 23), ('John', 19), ('Adam', 25), ('Kate', 18)]
sorted_people = sorted(people, key=lambda x: x[1])
print(sorted_people)
# Output: [('Kate', 18), ('John', 19), ('Jane', 23), ('Adam', 25)]
```

2. **Filtrage d'une liste** : Les fonctions Lambda peuvent être utilisées avec `filter()` pour créer une nouvelle liste qui satisfait une condition spécifique.

```python3 
 # Filter a list of numbers greater than 5
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
filtered_numbers = list(filter(lambda x: x > 5, numbers))
print(filtered_numbers)
# Output: [6, 7, 8, 9, 10]
```

## Différences Entre Lambda et les Fonctions Régulières en Python

1. **Syntaxe** : Les fonctions Lambda sont écrites en une seule ligne de code et n'exigent pas le mot-clé `def`. Les fonctions régulières sont définies en utilisant le mot-clé `def` et peuvent être écrites sur plusieurs lignes.

2. **Arguments** : Les fonctions Lambda peuvent avoir un nombre quelconque d'arguments mais ne peuvent avoir qu'une seule expression. Les fonctions régulières peuvent prendre un nombre quelconque d'arguments et peuvent avoir plusieurs expressions.

3. **Nom** : Les fonctions Lambda sont anonymes, ce qui signifie qu'elles n'ont pas de nom. Les fonctions régulières ont un nom qui est utilisé pour appeler la fonction.

4. **Portée** : Les fonctions Lambda sont limitées en termes de portée et peuvent seulement accéder aux variables globales. Les fonctions régulières ont une portée plus large et peuvent accéder aux variables locales et globales.
  
## Meilleures Pratiques pour Utiliser les Fonctions Lambda en Python  

1. Gardez vos fonctions Lambda **courtes et simples** : Les fonctions Lambda sont mieux utilisées pour de petites opérations qui peuvent être écrites de manière concise en une seule ligne de code. Si votre fonction est trop longue ou complexe, il pourrait être préférable d’écrire une fonction Python régulière.

2. Utilisez les fonctions Lambda avec `map()`, `filter()`, et `reduce()` : Ces fonctions d'ordre supérieur nécessitent un argument de fonction, et les fonctions Lambda sont un excellent moyen de créer des fonctions simples à la volée.

3. **N'abusez pas des fonctions Lambda** : Bien que les fonctions Lambda puissent être utiles pour certaines tâches, elles peuvent également rendre votre code moins lisible si elles sont surutilisées. Si votre expression Lambda en Python devient trop longue, il pourrait être préférable d'écrire une fonction Python régulière à la place.

## Concepts Avancés de Lambda : `map()`, `reduce()`, et `filter()`  

La fonction `map()` est utilisée pour appliquer une fonction lambda donnée **à chaque élément dans une collection**. Le résultat est une nouvelle collection avec la fonction lambda appliquée à chaque élément. Voici un exemple d'utilisation de la fonction map pour ajouter une valeur constante à chaque élément d'une liste à l'aide d'une fonction lambda :

```python3 
numbers = [1, 2, 3, 4, 5]
add_two = lambda x: x + 2
result = map(add_two, numbers)
print(list(result)) # [3, 4, 5, 6, 7]
```

La fonction `reduce()` est utilisée pour appliquer une fonction lambda donnée **à une collection et la réduire** à une seule valeur. La fonction lambda doit prendre deux arguments et renvoyer une seule valeur. Voici un exemple d'utilisation de la fonction reduce pour calculer le produit de tous les nombres dans une liste à l'aide d'une fonction lambda :

```python 
from functools import reduce
numbers = [1, 2, 3, 4, 5]
multiply = lambda x, y: x * y
result = reduce(multiply, numbers)
print(result) # 120
```

La fonction `filter()` est utilisée pour **appliquer** une fonction lambda donnée **à chaque élément d'une collection** et **filtrer les éléments** qui ne répondent pas à une certaine condition. Le résultat est une nouvelle collection avec uniquement les éléments qui répondent à la condition. Voici un exemple d'utilisation de la fonction filter pour ne conserver que les nombres pairs dans une liste à l'aide d'une fonction lambda :

```python 
numbers = [1, 2, 3, 4, 5]
is_even = lambda x: x % 2 == 0
result = filter(is_even, numbers)
print(list(result)) # [2, 4]
```

## Exploration des limitations et des mises en garde de l'utilisation des fonctions Lambda dans le code Python

Une limitation des fonctions lambda est qu'elles sont **limitées à une seule expression**. Cela signifie que des opérations plus complexes, telles qu'une boucle ou plusieurs instructions, ne peuvent pas être effectuées au sein d'une fonction lambda. Par exemple, si nous voulions créer une fonction de puissance en Python en utilisant une boucle, nous ne pourrions pas utiliser de fonctions lambda.

Une autre limitation des fonctions lambda est qu'elles **ne peuvent pas être utilisées pour définir des fonctions récursives**. La récursion nécessite qu'une fonction s'appelle elle-même, et une fonction lambda **ne peut pas se référer à elle-même**.

De plus, l'utilisation des fonctions lambda peut rendre le code plus difficile à lire et à comprendre, surtout pour les opérations complexes. Dans de tels cas, il peut être préférable d'utiliser une fonction Python régulière à la place.

En outre, l'utilisation de fonctions lambda dans du code critique pour les performances **peut entraîner un petit surcoût** dû au processus de création de la fonction. Dans de tels cas, il peut être préférable **d'utiliser une fonction Python pré-définie**, comme la fonction `exp()` de la bibliothèque `math`.

```python 
# Example of using the exp() function
import math
x = 2.0
y = math.exp(x)
```
