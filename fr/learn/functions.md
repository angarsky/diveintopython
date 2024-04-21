> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions

Les fonctions en Python jouent un rôle crucial en programmation car elles servent de blocs de code réutilisables qui peuvent effectuer des tâches spécifiques. Une fois définie, vous pouvez appeler une fonction en Python en utilisant son nom et en passant des arguments (facultatifs) entre parenthèses. Vous pouvez créer plusieurs fonctions, chacune avec sa fonctionnalité spécifique, ce qui facilite l'organisation et la structuration de votre code. La typage de fonction et la documentation de fonction sont des éléments essentiels qui peuvent rendre votre code plus lisible et plus facile à déboguer, surtout lorsqu'on travaille sur des projets plus importants. À partir de cet article, nous apprendrons ce qu'est une fonction en Python et comment appeler une fonction.

## Programmation Fonctionnelle

Python prend en charge plusieurs paradigmes de programmation, dont l'un est la programmation fonctionnelle. La programmation fonctionnelle est un paradigme de programmation qui se concentre sur l'utilisation de fonctions pures, évitant l'état partagé, les données mutables et les effets de bord. En Python, ce paradigme est généralement utilisé par le biais de l'utilisation de fonctions d'ordre supérieur et d'expressions `lambda`.

### Exemple de Fonction d'Ordre Supérieur

```python3
def apply_twice(f):
    def wrapper(x):
        return f(f(x))
    return wrapper
 
def add_two(x):
    return x + 2
 
### Using apply_twice to add two to a number four times

applied_four_times = apply_twice(apply_twice(add_two))
result = applied_four_times(10) 
print(result) ### Result will be 18
```

### Exemple d'Expression Lambda

```python
numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x**2, numbers))
### squared_numbers will be [1, 4, 9, 16, 25]

```

En résumé, Python prend en charge les paradigmes de programmation fonctionnelle grâce aux fonctions d'ordre supérieur et aux expressions `lambda`.

## Comment écrire une fonction en Python

En Python, une fonction est définie en utilisant le mot-clé `def`, suivi du nom de la fonction, et d'un ensemble de parenthèses qui peuvent contenir des paramètres. Le bloc de code qui effectue la tâche est indenté sous l'instruction `def`.

Pour appeler une fonction en Python, utilisez simplement le nom de la fonction, suivi des parenthèses contenant les arguments nécessaires.

### Exemple de fonction basique

```python3
def greet(name):
    print("Hello, " + name)

greet("John") # Output: Hello, John
```

### Exemple de fonction avec une valeur de retour

```python3
def square(number):
    return number * number

result = square(4)
print(result) # Output: 16
```

Lorsqu'une fonction possède une instruction `return`, elle peut renvoyer une valeur unique ou plusieurs valeurs séparées par des virgules. Ces valeurs peuvent ensuite être affectées à une variable ou utilisées directement.

Lorsque vous créez une fonction en Python, il est de bonne pratique de spécifier le **typage de fonction** en ajoutant des indications de type pour les paramètres et les valeurs de retour. Cela facilite la compréhension, pour les autres développeurs, des entrées et sorties attendues de la fonction.

```python
def sum_numbers(num1: int, num2: int) -> int:
    return num1 + num2

print(sum_numbers(2, 3)) # Output: 5
```

La documentation des **fonctions** peut être ajoutée à l'aide de docstrings, qui décrivent ce que fait la fonction, ses paramètres et sa valeur de retour. Cette information peut être consultée en utilisant une fonction `help`.

```python
def greet(name):
    """Print a greeting message to the person with the given name."""
    print("Hello, " + name)

help(greet)
```

En Python, les **paramètres de fonction** peuvent avoir des valeurs par défaut qui sont utilisées si aucune valeur n'est fournie lorsque la fonction est appelée.

```python3
def greet(name="there"):
    print("Hello, " + name)

greet() # Output: Hello, there
greet("John") # Output: Hello, John
```

La **fonction principale** est une convention en Python, où le code à exécuter directement est placé dans un bloc `if __name__ == '__main__':`, assurant qu'il est uniquement exécuté lorsque le fichier est exécuté directement, et non importé comme un module.

```python3
def main():
    print("Hello World")

if __name__ == "__main__":
    main()
```

## Typage de fonction en Python : Types d'arguments et valeurs de retour

Le typage de fonction spécifie les types d'arguments et la valeur de retour attendue d'une fonction. Python prend en charge les arguments positionnels, par mot-clé, par défaut et de longueur variable pour une fonction. Les arguments de fonction font référence aux valeurs transmises à une fonction, et les valeurs de retour sont les résultats du code exécuté.

Voici quelques exemples de fonctions en Python :

```python
# Example of a function that returns a value

def calculate_area(width, height):
    area = width * height
    return area

# Example of a function that returns multiple values 

def get_student_details(name, age, student_id):
    return name, age, student_id
```

En Python, les arguments de fonction de longueur variable sont désignés par le symbole `*`. Voici un exemple de fonction Python qui prend des arguments de longueur variable :

```python
def calculate_sum(*numbers):
    total = 0
    for num in numbers:
        total += num
    return total
# Here's how you can call the calculate_sum function with different numbers of arguments:
sum1 = calculate_sum(1, 2, 3)   # sum1 is 6
sum2 = calculate_sum(10, 20)    # sum2 is 30
sum3 = calculate_sum(5)         # sum3 is 5
```

Dans cet exemple, la syntaxe des nombres `*` dans la définition de la fonction indique à Python de permettre un nombre quelconque d'arguments à être transmis à la fonction. La fonction utilise ensuite une boucle pour itérer sur tous les arguments et calculer leur somme.

Comme vous pouvez le voir, vous pouvez passer un nombre quelconque d'arguments à la fonction `calculate_sum`, et cela fonctionnera correctement.

## Comment Nommer Correctement une Fonction en Python

1. Les noms de fonctions doivent **commencer par une lettre ou un souligné** `_`, suivi de n'importe quelle combinaison de lettres, chiffres ou soulignés.
Exemple : `def my_function():`

2. Les noms de fonctions doivent être **descriptifs** et transmettre le but de la fonction.
Exemple : `def calculate_total():`

3. Les noms de fonctions sont **sensibles à la casse**, ce qui signifie que `my_function` et `My_Function` sont des noms différents.
Exemple : `def my_function():` et `def My_Function():` sont deux fonctions différentes.

4. Les noms de fonctions ne doivent pas être les mêmes que ceux d'un **mot-clé Python**, comme `print` ou `if`.
Exemple : `def print():` n'est pas un nom valide pour une fonction.

5. Les noms de fonctions doivent suivre la convention de nommage **"snake_case"**, où les mots sont séparés par des soulignés. Cette convention rend les noms de fonctions plus lisibles et plus faciles à comprendre.
Exemple : `def calculate_total_with_discount():`

Dans l'ensemble, il est recommandé de choisir un nom de fonction qui soit **descriptif**, **facile à comprendre**, et qui suive les conventions de nommage pour les fonctions Python.

## Comment Retourner Plusieurs Valeurs d'une Fonction

En Python, une fonction ne peut retourner directement qu'une seule valeur. Cependant, vous pouvez retourner plusieurs valeurs en les regroupant dans une structure de données comme un tuple, une liste ou un dictionnaire. Voici un exemple de fonction qui retourne plusieurs valeurs en utilisant un tuple :

```python3
def get_user_info():
    name = "John Doe"
    age = 30
    email = "johndoe@example.com"
    return name, age, email

# Call the function and unpack the returned values
user_name, user_age, user_email = get_user_info()

print("Name:", user_name)
print("Age:", user_age)
print("Email:", user_email)

# Output:
# Name: John Doe
# Age: 30
# Email: johndoe@example.com
```

Cette fonction `get_user_info()` renvoie le `name`, `age` et `email` d'un utilisateur. En séparant les variables par des virgules dans l'instruction de retour, Python crée automatiquement un tuple contenant ces valeurs. Nous pouvons ensuite déballer le tuple en variables séparées lors de l'appel de la fonction.
