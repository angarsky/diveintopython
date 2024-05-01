> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/statements/match

Les instructions switch sont une fonctionnalité populaire dans de nombreux langages de programmation, permettant aux développeurs de gérer de manière propre et efficace de multiples cas conditionnels. Cependant, Python n'inclut pas d'instruction switch intégrée. Dans cet article, nous explorerons plusieurs manières d'implémenter une fonctionnalité semblable au switch dans Python, en utilisant diverses techniques et bibliothèques. Que vous soyez un développeur expérimenté ou débutant, ce guide vous fournira des aperçus précieux sur ce concept de programmation important.

## Instruction Match

L'instruction `match` a été introduite dans Python 3.10 pour fournir un moyen concis et lisible d'exprimer la logique conditionnelle. Elle vous permet de comparer une valeur à un ensemble de motifs et d'exécuter le code correspondant en fonction de la correspondance.

Pour utiliser `match` dans Python, vous pouvez créer une instruction `case` pour chaque motif à comparer. Voici un exemple de code qui démontre l'instruction de cas de correspondance Python :

```python
def describe_number(num):
    match num:
        case 0:
            return "Zero"
        case 1:
            return "Single"
        case _:
            return "Multiple"
```

Dans cet exemple, la fonction `describe_number` prend un paramètre `num` et retourne une chaîne de caractères basée sur la valeur de `num`. Si `num` est `0`, elle retourne ``Zero``. Si `num` est `1`, elle retourne `Single`. Sinon, elle retourne `Multiple` en utilisant un motif de correspondance générique avec `_`.

Voici un autre exemple de cas d’instruction en Python :

```python
def calculate_discount(total_amount):
    match total_amount:
        case amount if amount < 1000:
            return amount * 0.05
        case amount if amount >= 1000 and amount < 5000:
            return amount * 0.10
        case amount if amount >= 5000:
            return amount * 0.15
```

Dans cet exemple, la fonction `calculate_discount` prend un paramètre `total_amount` et retourne la remise correspondante basée sur la valeur de `total_amount`. L'instruction `match` comprend trois instructions `case` avec des conditions spécifiques, chacune retournant le pourcentage de remise applicable.

En conclusion, l'instruction `match` est un ajout puissant au langage Python qui simplifie les déclarations conditionnelles. Elle peut améliorer la lisibilité et vous aider à écrire du code plus concis.

## Instruction Switch

Malheureusement, Python ne dispose pas d'une instruction switch case native. Cependant, il existe plusieurs méthodes pour émuler sa fonctionnalité à travers d'autres constructions telles que les instructions if-elif-else ou les dictionnaires.

```python3
def switch_case(argument):
    if argument == 0:
        return "Zero"
    elif argument == 1:
        return "One"
    elif argument == 2:
        return "Two"
    else:
        return "Invalid argument"

print(switch_case(2)) # Output: Two
```

```python3
def switch_case(argument):
    return {
        0: "Zero",
        1: "One",
        2: "Two"
    }.get(argument, "Invalid argument")

print(switch_case(2)) # Output: Two
```

Bien que n'étant pas aussi concises qu'une instruction `switch case`, ces alternatives peuvent fournir une logique et une lisibilité similaires dans votre code Python.
