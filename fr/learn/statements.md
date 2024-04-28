> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/statements

En Python, les instructions sont des instructions ou des commandes que vous écrivez pour effectuer des actions ou des tâches spécifiques. Elles sont les blocs de construction d'un programme Python.

## Qu'est-ce qu'une Instruction en Python?

Une [instruction](https://en.wikipedia.org/wiki/Statement_(computer_science)) est une ligne de code qui effectue une action spécifique. C'est la plus petite unité de code qui peut être exécutée par l'interpréteur Python.

### Instruction d'Affectation

```python
x = 10
```

Dans cet exemple, la valeur `10` est attribuée à la variable `x` en utilisant l'instruction d'affectation.

### Instruction conditionnelle

```python3
x = 3
if x < 5:
    print("x is less than 5")
else:
    print("x is greater than or equal to 5")
```

Dans cet exemple, l'instruction if-else est utilisée pour vérifier la valeur de `x` et `print` un message correspondant.

En utilisant des instructions, les programmeurs peuvent instruire l'ordinateur à effectuer une variété de tâches, allant d'opérations arithmétiques simples à des processus de prise de décision complexes. L'utilisation appropriée des instructions est cruciale pour écrire un code Python efficace et efficace.

## Ensemble d'Instructions

Voici un tableau résumant les différents types d'instructions dans Python :

| Instruction                | Description                                                       |
|----------------------------|-------------------------------------------------------------------|
| Instructions Multi-Lignes  | Instructions s'étendant sur plusieurs lignes utilisant la continuation de ligne ou des accolades.|
| Instructions Composées     | Instructions qui contiennent d'autres instructions (par ex., [if](/fr/learn/statements/if.md), while, for).   |
| Instructions Simples       | Instructions autonomes de base qui effectuent une action unique.          |
| Instructions d'Expression  | Instructions qui évaluent et produisent une valeur.                      |
| Instruction `pass`         | Une instruction substitut qui ne fait rien.                        |
| Instruction `del`          | Utilisée pour supprimer les références à des objets.                              |
| Instruction `return`       | Termine une fonction et renvoie une valeur (facultatif).              |
| Instruction `import`       | Importe des modules ou des objets spécifiques de modules.                  |
| Instructions `continue` et `break` | Instructions de contrôle de flux utilisées dans les boucles (`continue` passe à l'itération suivante, `break` sort de la boucle). |

Veuillez noter que ce tableau fournit un aperçu succinct de chaque type d'instruction, et il peut y avoir des détails et variations supplémentaires pour chaque instruction.

## Instructions Multi-Lignes

Les instructions multi-lignes sont un moyen pratique d'écrire un long code en Python sans le rendre encombré. Elles vous permettent d'écrire plusieurs lignes de code comme une seule instruction, facilitant ainsi la lecture et la compréhension du code par les développeurs. Voici deux exemples d'instructions multi-lignes en Python :

1. Utilisation du backslash :

```python
total = 10 + \
        20 + \
        30
print(total) ### Output

```

2. Utilisation des parenthèses :

```python
fruit_list = ('Apple',
              'Mango',
              'Banana',
              'Orange')
print(fruit_list) ### Output

```

## Déclarations Simples

Les déclarations simples sont la plus petite unité d'exécution dans le langage de programmation Python et elles ne contiennent aucune expression logique ou conditionnelle. Elles sont généralement composées d'une seule ligne de code et peuvent effectuer des opérations de base telles que l'assignation de valeurs aux variables, l'affichage de valeurs ou l'appel de fonctions.

Exemples de déclarations simples en Python :

```python
### Assigning a value to a variable

x = 5

### Printing out a value

print(x)
```

Les déclarations simples sont essentielles à la programmation en Python et sont souvent utilisées en combinaison avec des déclarations plus complexes pour créer des programmes et des applications robustes.

## Déclarations d'expression

Les déclarations d'expression en Python sont des lignes de code qui évaluent et produisent une valeur. Elles sont utilisées pour assigner des valeurs aux variables, appeler des fonctions et effectuer d'autres opérations qui produisent un résultat.

```python
x = 5
y = x + 3
print(y)
```

Dans cet exemple, nous attribuons la valeur `5` à la variable `x`, puis ajoutons `3` à `x` et attribuons le résultat (`8`) à la variable `y`. Enfin, nous `print` la valeur de `y`.

```python3
def square(x):
    return x * x

result = square(5)
print(result)
```

Dans cet exemple, nous définissons une fonction `square` qui prend un argument (`x`) et renvoie son carré. Nous appelons ensuite la fonction avec l'argument `5` et assignons le résultat (`25`) à la variable `result`. Enfin, nous `print` la valeur de `result`.

Globalement, les instructions d'expression constituent une partie essentielle de la programmation Python et permettent l'exécution d'opérations mathématiques et computationnelles.

## L'instruction `assert`

L'instruction `assert` en Python est utilisée pour tester les conditions et déclencher une erreur si la condition n'est pas remplie. Elle est souvent utilisée à des fins de débogage et de test.

```python
assert condition, message
```

Où `condition` est l'expression qui est testée, et `message` est le message d'erreur optionnel qui est affiché lorsque la condition n'est pas remplie.

```python
x = 5
assert x == 5, "x should be 5"
```

Dans cet exemple, l'instruction `assert` teste si `x` est égal à `5`. Si la condition est remplie, l'instruction n'a aucun effet. Si la condition n'est pas remplie, une erreur sera soulevée avec le message `x should be 5`.

```python
def divide(x, y):
    assert y != 0, "Cannot divide by zero"
    return x / y
```

Dans cet exemple, l'instruction `assert` teste si `y` n'est pas égal à `0` avant de procéder à la division. Si la condition est remplie, la division se poursuit comme prévu. Si la condition n'est pas remplie, une erreur sera générée avec le message `Cannot divide by zero`.

Globalement, les instructions `assert` sont un outil utile en Python pour le débogage et les tests, car elles peuvent aider à détecter les erreurs dès le début. Elles peuvent également être facilement désactivées dans le code de production pour éviter toute surcharge inutile.

## L'instruction `try`

L'instruction `try` en Python est utilisée pour attraper les exceptions qui peuvent survenir lors de l'exécution d'un bloc de code. Elle garantit que même lorsqu'une erreur se produit, le code ne s'arrête pas de s'exécuter.

```python
try:
    # Block of code to be attempted
except ExceptionType:
    # Block of code to be executed if the try block throws an exception
else:
    # Block of code to be executed if no exception was thrown in the try block
finally:
    # Block of code that is always executed regardless of whether an exception was thrown or not
```

### Exemples de traitement des erreurs

```python3
try:
    x = 1/0
except ZeroDivisionError:
    print("Division by zero is not allowed")

# Output:

# Division by zero is not allowed
```

```python
try:
    f = open("myfile.txt")
    f.write("This is a test file")
except IOError:
    print("Error: File not found or could not be written")
else:
    print("File written successfully")
finally:
    f.close()
# Output:

# Error: File not found or could not be written
```
