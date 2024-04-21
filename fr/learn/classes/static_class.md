> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/static-class

Python propose différents types de classes, notamment les classes statiques Python, qui vous permettent de définir des fonctionnalités au niveau de la classe sans avoir besoin de créer des instances. L'un des avantages de l'utilisation d'une classe statique est qu'elle vous permet de regrouper des fonctions liées au sein d'une classe, en intégrant des classes statiques Python dans vos projets Python, vous pouvez tirer parti des avantages d'une fonctionnalité organisée au niveau de la classe qui ne dépend pas des instances de classe. Pour créer une méthode statique dans une classe, vous pouvez utiliser le décorateur `@staticmethod`. Une fois créée, vous pouvez appeler la méthode statique directement à partir de la classe sans créer une instance de celle-ci. Dans cet article, nous allons explorer le concept de classes statiques et comment créer et appeler une méthode statique dans une classe.

## Comprendre les Classes Statiques Python

Une classe statique Python est une classe qui ne nécessite pas qu'une instance soit créée. Elle est créée en utilisant le décorateur `@staticmethod` dans une définition de classe. Une méthode statique n'a pas accès à l'instance, et elle ne peut pas non plus modifier la classe elle-même.

### Comment Utiliser une Classe Statique Python et Appeler une Méthode Statique dans une Classe

En plus de comprendre le concept d'une méthode statique, il est crucial de saisir l'importance d'une classe statique en Python.

```python3
class MyClass:
    @staticmethod
    def static_method():
        print("This is a static method in a class")
        
MyClass.static_method()   # Output: This is a static method in a class
```

Dans l'exemple ci-dessus, `static_method()` est une méthode statique dans `MyClass`. Elle peut être appelée en utilisant le nom de la classe sans une instance de la classe.

```python3
class Calculator:
    @staticmethod
    def add_numbers(x, y):
        return x + y
        
result = Calculator.add_numbers(3, 5)
print(result)   # Output: 8
```

Dans l'exemple ci-dessus, la méthode statique `add_numbers()` de la classe `Calculator` peut être appelée directement en utilisant le nom de la classe `Calculator`. Elle prend deux arguments `x` et `y` et retourne leur somme.

Globalement, les classes et méthodes statiques fournissent une manière de représenter des fonctionnalités qui ne dépendent d'aucune instance ou variable de classe, et peuvent être utilisées sans créer une instance de classe.

## Qu'est-ce qu'une Méthode Statique en Python

Python nous permet de créer des classes statiques et des méthodes statiques au sein d'une classe. Une méthode statique en Python ne nécessite pas qu'une instance de la classe soit créée avant d'être utilisée. Pendant ce temps, une méthode statique de classe en Python est une méthode dont le premier paramètre est la classe elle-même plutôt que l'instance de la classe.

Pour créer des classes et méthodes statiques, nous utilisons simplement le décorateur `@staticmethod` en Python.

```python3
class Math:
    @staticmethod
    def add(x, y):
        return x + y

    @staticmethod
    def subtract(x, y):
        return x - y
        
# To call the static methods in the class, we don't need to create an instance of the class
print(Math.add(2, 3))       # Output: 5
print(Math.subtract(5, 2))  # Output: 3
```

Dans l'exemple ci-dessus, nous avons créé une **classe statique** appelée **Math** qui contient deux **méthodes statiques** appelées **add** et **subtract**. Nous pouvons appeler ces méthodes directement à partir de la classe sans avoir besoin de créer une instance de la classe.

```python
class Person:
    count = 0

    def __init__(self, name):
        self.name = name
        Person.count += 1

    @staticmethod
    def total_people():
        return f"There are {Person.count} people."

# Create some instances of Person
person1 = Person("John")
person2 = Person("Jane")
person3 = Person("Jack")

# Call the static method from the class
print(Person.total_people())  # Output: There are 3 people.
```

Dans cet exemple, nous avons créé une classe `Person` avec une **variable de classe** appelée `count` qui va suivre le nombre d'instances de la classe créées. Nous avons également créé une **méthode statique de classe Python** appelée `total_people` qui retournera le nombre total de personnes créées. Nous pouvons appeler cette méthode statique directement depuis la classe.

## Comment appeler une méthode statique dans une classe

Pour appeler une méthode statique dans une classe, vous devez définir une méthode statique en utilisant un décorateur intégré `@staticmethod`. Une méthode statique ne nécessite aucune instance pour être appelée, à la place, elle est associée à la classe elle-même.

```python
class MyClass:
    
    @staticmethod  ### Defining static method
    def my_static_method():
        print("This is a static method.")
        
### Calling the static method using the class name

MyClass.my_static_method()   ### Output

```

```python3
class Math:
    
    @staticmethod   ### Defining static method

    def add(a, b):
        return a + b

    @staticmethod  ### Defining static method

    def multiply(a, b):
        return a * b

### Calling the static methods in class using class name
print(Math.add(2, 3))      ### Output 5
print(Math.multiply(2, 3)) ### Output 6

```

Dans les exemples ci-dessus, nous pouvons voir comment définir et appeler une méthode statique en utilisant le décorateur `@staticmethod` en Python.

## Quand Utiliser les Méthodes Statiques

Les méthodes statiques en Python sont une fonctionnalité puissante qui peut améliorer significativement l'organisation du code et sa maintenabilité. Cependant, il est essentiel de comprendre quand et où les utiliser efficacement. Voici quelques scénarios courants où les méthodes statiques peuvent être bénéfiques :

### Fonctions Utilitaires

Les méthodes statiques sont idéales pour les fonctions utilitaires qui ne sont pas liées à une instance spécifique d'une classe. Ces fonctions fournissent des fonctionnalités qui peuvent être utilisées dans diverses parties de votre base de code. En les encapsulant dans une méthode statique, vous assurez une structure propre et modulaire, rendant votre code plus maintenable.

```python
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]
```

Dans cet exemple, la méthode `reverse_string` est une fonction utilitaire qui peut être utilisée pour inverser une chaîne. Elle ne nécessite pas d'accès à des données spécifiques à une instance et peut être appelée directement sur la classe.

### Méthodes de Fabrique

Les méthodes statiques peuvent être utilisées pour créer des instances d'une classe. Cela est particulièrement utile lorsque vous souhaitez encapsuler la logique de création d'objets au sein de la classe elle-même. Les méthodes de fabrique simplifient le processus d'initialisation d'objets et fournissent des interfaces claires et concises pour créer des objets.

```python
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    @staticmethod
    def create_square(side_length):
        return Rectangle(side_length, side_length)
```

Dans cet exemple, la méthode statique `create_square` est une méthode de fabrique qui simplifie la création d'instances de carré `Rectangle`.

### Mise en cache et Mémoïsation

Les méthodes statiques peuvent être utilisées à des fins de mise en cache ou de mémoïsation. Lorsque vous avez besoin de stocker et de réutiliser des résultats calculés, les méthodes statiques peuvent aider à maintenir un cache au sein de la classe, rendant les calculs ultérieurs plus efficaces.

```python
class MathUtils:
    _fib_cache = {0: 0, 1: 1}

    @staticmethod
    def fibonacci(n):
        if n not in MathUtils._fib_cache:
            MathUtils._fib_cache[n] = MathUtils.fibonacci(n - 1) + MathUtils.fibonacci(n - 2)
        return MathUtils._fib_cache[n]
```

Dans cet exemple, la méthode statique `fibonacci` calcule les nombres de Fibonacci avec de la mémoïsation pour optimiser les performances.

### Organisation du code

Utilisez des méthodes statiques pour regrouper les fonctions liées au sein d'une classe. Cela améliore l'organisation du code et sa lisibilité. Lorsque les fonctions partagent un objectif commun mais ne dépendent pas de données spécifiques à une instance, les encapsuler en tant que méthodes statiques au sein de la même classe maintient votre base de code structurée.

```python
class FileUtils:
    @staticmethod
    def read_file(filename):
        # Read file content

    @staticmethod
    def write_file(filename, content):
        # Write content to a file
```

Dans cet exemple, la classe `FileUtils` regroupe des méthodes liées aux opérations sur les fichiers, offrant une manière claire et organisée de travailler avec les fichiers.

En reconnaissant ces scénarios, vous pouvez efficacement exploiter la puissance des méthodes statiques dans votre base de code Python et créer un logiciel plus maintenable et organisé. Les méthodes statiques offrent une manière propre et concise d'encapsuler une fonctionnalité qui ne dépend pas des données spécifiques à une instance, tout en améliorant la lisibilité et la maintenabilité du code.

## Classes Statiques vs Classes Régulières

Les classes statiques en Python sont des classes qui possèdent des attributs et des méthodes au niveau de la classe qui peuvent être accédés sans créer une instance de la classe. Elles sont définies en utilisant le décorateur `@staticmethod`. D'autre part, les classes régulières en Python sont celles qui nécessitent un objet de la classe pour accéder aux attributs ou méthodes.

### Classe Statique Python

```python3
class StaticClass:
    @staticmethod
    def my_static_method():
        print("This is a static method")

# Call static method in class
StaticClass.my_static_method()
```

Dans l'exemple ci-dessus, nous avons défini une classe statique `StaticClass` avec une méthode statique `my_static_method`. Nous pouvons appeler cette méthode sans créer une instance de la classe.

## Comment utiliser les classes statiques en Python

Les classes statiques en Python sont des classes utilisées pour regrouper des fonctions qui ne peuvent pas être classifiées sous les classes existantes. Ces classes ne nécessitent pas la création d'une instance de la classe pour être accédées. Au lieu de cela, les méthodes statiques peuvent être appelées directement depuis la classe elle-même. Voici certains des principaux avantages de l'utilisation des classes statiques :

1. **Organisation de l'espace de noms** - Les classes statiques peuvent être utilisées pour organiser des fonctions qui ne se classent pas bien sous une classe existante. Cela aide à maintenir une structure de code propre et organisée.

2. **Réutilisabilité du code** - Les classes statiques peuvent être réutilisées à travers plusieurs modules et fonctions, rendant le code réutilisable et facile à maintenir.

3. **Amélioration de la lisibilité du code** - Les classes statiques rendent le code plus facile à lire et à comprendre, car les fonctions sont regroupées sous une seule classe et peuvent être accédées directement.

```python
class MathUtils:
    @staticmethod
    def add_numbers(a, b):
        return a + b

result = MathUtils.add_numbers(2, 3)
print(result)
```

Dans cet exemple, nous avons créé une classe statique `MathUtils` et défini une méthode statique `add_numbers` qui prend deux arguments et retourne leur somme. La méthode statique peut être appelée directement à partir de la classe `MathUtils` sans créer une instance de la classe.

```python3
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]

class TextUtils:
    @staticmethod
    def reverse_and_uppercase(string):
        reversed_string = StringUtils.reverse_string(string)
        return reversed_string.upper()

result = TextUtils.reverse_and_uppercase("Hello World")
print(result)
```

Dans cet exemple, nous avons créé deux classes statiques `StringUtils` et `TextUtils`. La classe `StringUtils` contient une méthode statique `reverse_string` qui retourne une chaîne inversée. La classe `TextUtils` contient une méthode statique `reverse_and_uppercase` qui appelle la méthode `reverse_string` de la classe `StringUtils` et retourne la chaîne inversée en majuscules.

## Variables statiques dans la classe

En Python, les variables statiques sont des variables au niveau de la classe qui sont partagées entre toutes les instances de la classe. Ces variables sont définies à l'intérieur de la classe mais en dehors de toute méthode, et elles conservent leur valeur à travers différentes instances de la classe.

Les variables statiques sont utiles lorsque vous souhaitez stocker des données qui sont partagées par toutes les instances d'une classe ou lorsque vous souhaitez maintenir un comptage ou une configuration commune à travers toutes les instances.

Voici deux exemples de code qui démontrent l'utilisation des variables statiques dans les classes Python :

### Exemple 1 : Comptage d'Instances

```python3
class Car:
    # Static variable to keep track of the number of instances
    count = 0

    def __init__(self, name):
        self.name = name
        # Increment the count when a new instance is created
        Car.count += 1

# Creating instances of the Car class
car1 = Car("Tesla")
car2 = Car("BMW")
car3 = Car("Audi")

# Accessing the static variable using the class name
print("Total cars:", Car.count)  # Output: Total cars: 3
```

Dans l'exemple ci-dessus, la variable `count` est une variable statique qui garde le compte du nombre d'instances de `Car` créées. Elle est incrémentée dans le constructeur (`__init__`) chaque fois qu'une nouvelle instance est créée. La variable statique est accédée en utilisant le nom de la classe (`Car.count`).

### Exemple 2 : Configuration Commune

```python3
class Circle:
    # Class-level constant for pi
    PI = 3.14159

    def __init__(self, radius):
        self.radius = radius

    def calculate_area(self):
        # Accessing the static variable inside an instance method
        area = Circle.PI * self.radius * self.radius
        return area

# Creating instances of the Circle class
circle1 = Circle(5)
circle2 = Circle(7)

# Calling the instance method to calculate the area
area1 = circle1.calculate_area()
area2 = circle2.calculate_area()

print("Area 1:", area1)  # Output: Area 1: 78.53975
print("Area 2:", area2)  # Output: Area 2: 153.93791

```

Dans cet exemple, la variable `PI` est une variable statique qui stocke la valeur de `pi`. Elle est utilisée à l'intérieur de la méthode calculate_area pour calculer l'aire d'un cercle. La variable statique est accédée en utilisant le nom de la classe (`Circle.PI`).

Les variables statiques sont partagées parmi toutes les instances d'une classe et peuvent être accédées en utilisant le nom de la classe ou à travers une instance de la classe. Elles constituent un outil utile pour gérer des données communes à toutes les instances ou pour maintenir une configuration partagée à travers les objets.

## La différence entre une méthode de classe et une méthode statique

Maintenant que vous êtes familier avec les méthodes de classe et les méthodes statiques, il est temps de plonger dans le monde de la classe statique de Python et ses propriétés distinctives.

La méthode de classe abstraite est définie comme une méthode qui est déclarée mais ne contient pas d'implémentation. Il appartient à la sous-classe de fournir l'implémentation. Une méthode abstraite est définie en utilisant le décorateur **@abstractmethod** en Python.

Les méthodes de classe sont utilisées pour modifier la classe ou ses propriétés. Elles sont définies en utilisant le décorateur `@classmethod` et le premier argument passé est la classe elle-même au lieu de l'instance.

Les méthodes statiques Python sont appelées sur la classe et ne prennent aucun argument spécial en premier. Elles sont définies en utilisant le décorateur `@staticmethod`.

### Différences clés entre méthode de classe et méthode statique en Python

| Méthode de classe  | Méthode statique  |
|---|---|
| Décorateur : **@classmethod** | Décorateur : **@staticmethod** |
| Premier argument : **cls** (la classe elle-même) | Pas d'argument spécial en premier |
| Peut modifier l'état ou les propriétés de la classe | Ne peut pas modifier l'état ou les propriétés de la classe |
| Utile pour les opérations spécifiques à la classe | Utile pour les opérations utilitaires non liées à la classe |
| Peut accéder aux variables au niveau de la classe | Ne peut pas accéder aux variables au niveau de la classe |

### Exemple 1 : Méthode de classe

```python3
class Car:
    wheels = 4

    def __init__(self, make, model):
        self.make = make
        self.model = model

    @classmethod
    def set_wheels(cls, num_wheels):
        cls.wheels = num_wheels

car1 = Car('Toyota', 'Corolla')
print(car1.wheels) # Output: 4
Car.set_wheels(3)
print(car1.wheels) # Output: 3
```

### Exemple 2 : Méthode statique

```python
class Formatter:
    @staticmethod
    def format_string(string):
        return string.upper()

print(Formatter.format_string('hello')) # Output: 'HELLO'
```
