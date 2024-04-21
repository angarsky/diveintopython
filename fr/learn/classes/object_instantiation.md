> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/object-instantiation

L'instanciation d'objet est un concept fondamental dans la programmation orientée objet qui se réfère au processus de création de nouveaux objets à partir d'une classe. Ce processus implique l'utilisation de constructeurs, qui sont des méthodes spéciales définissant comment les nouveaux objets sont initialisés. Cet article décrit comment instancier un objet en Python et fournit des exemples de comment créer et utiliser ces objets dans votre code.

## Explorer les constructeurs de classe en Python

Un constructeur de classe en Python est une méthode spéciale qui est exécutée lorsqu'un objet d'une classe est instancié. Il est utilisé pour initialiser les attributs de la classe. La méthode constructeur en Python est appelée `__init__()` et elle est définie à l'intérieur de la classe.

### Comment instancier une classe Python

Explorons comment instancier une classe en Python.
Pour accomplir cela, nous devons réaliser l'instanciation de classe en Python en créant une instance de la classe qui invoque sa méthode constructeur. Voici un exemple d'une classe simple et comment instancier un objet de cette classe.

```python3
class Recipe:
    def __init__(self, name, ingredients):
        self.name = name
        self.ingredients = ingredients

# Instantiate a Recipe object
my_recipe = Recipe("Spaghetti Bolognese", ["spaghetti", "tomato sauce", "ground beef"])

# Access the object's attributes
print("Recipe Name:", my_recipe.name)
print("Ingredients:", my_recipe.ingredients)
```

Dans l'exemple ci-dessus, la classe `Recipe` possède un constructeur qui définit les attributs `name` et `ingredients` pour chaque nouvel objet qui est instancié. L'objet `my_recipe` est instancié avec le nom "Spaghetti Bolognese" et une liste d'ingrédients. Les instructions d'impression afficheront `Recipe Name: Spaghetti Bolognese` et `Ingredients: ['spaghetti', 'sauce tomate', 'viande hachée']`.

## Héritage et Constructeurs en Python

En Python, les constructeurs jouent un rôle crucial dans l'héritage des classes, permettant aux classes enfants d'hériter et d'étendre les attributs et comportements des classes parents.

### Bases de l'Héritage des Constructeurs

Les classes enfants héritent du constructeur de leur classe parente, ce qui leur permet de réutiliser la logique d'initialisation du parent. Par exemple :

```python
class Vehicle:
    def __init__(self, make, model):
        self.make = make
        self.model = model

class Car(Vehicle):
    def __init__(self, make, model, year):
        super().__init__(make, model)
        self.year = year
```

Dans cet exemple, la classe `Car` hérite de `Vehicle` et étend ses attributs.

### Surcharge du Constructeur

Les classes enfants peuvent également remplacer le constructeur de la classe parente pour personnaliser l'initialisation :

```python
class Bike(Vehicle):
    def __init__(self, make, model, wheel_count):
        super().__init__(make, model)
        self.wheel_count = wheel_count
```

### Classes de Base Abstraites

Les classes de base abstraites vous permettent d'imposer des modèles d'initialisation dans une hiérarchie de classes. Veuillez vous référer à la [page des classes abstraites](/fr/learn/classes/abstract_class.md) pour en lire plus.

## Plongée dans le processus de Python d'instanciation d'objets

Instancier un objet, en Python, signifie créer une instance d'une classe. Lorsque vous créez une instance d'une classe, vous instanciez l'objet. En Python, le processus d'instanciation d'objets implique la création et l'initialisation des objets.

Pour instancier une classe Python, vous devez utiliser la méthode constructeur, qui est la méthode `__init__()`. La méthode constructeur initialise les attributs ou propriétés d'un objet.

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

person1 = Person("John", 25)
print(person1.name)
print(person1.age)
```

Dans cet exemple, nous avons défini une classe appelée `Person` avec deux attributs, `name` et `age`. Nous avons instancié un objet `person1` et passé deux arguments à la méthode constructeur. Enfin, nous avons imprimé les valeurs des attributs name et age.

```python3
class Employee:
    def __init__(self, firstname, lastname, salary):
        self.firstname = firstname
        self.lastname = lastname
        self.salary = salary

    def get_fullname(self):
        return self.firstname + " " + self.lastname

employee1 = Employee("Jane", "Doe", 50000)
print(employee1.firstname)
print(employee1.get_fullname())
print(employee1.salary)
```

Dans cet exemple, nous avons défini une classe appelée `Employee` avec trois attributs, `firstname`, `lastname` et `salary`. Nous avons instancié un objet `employee1` et passé trois arguments à la méthode du constructeur. Finalement, nous avons imprimé les valeurs des attributs firstname, get_fullname() et salary.

En Python, instancier des objets est une manière puissante et flexible de créer des objets avec des comportements et des attributs spécifiques.

## Initialiser des objets en utilisant la méthode `__init__()`

La méthode `__init__()` est utilisée dans les classes Python pour initialiser les objets nouvellement créés. Elle est automatiquement appelée lorsqu'un objet est créé en utilisant le constructeur de la classe.

Voici un exemple de classe avec une méthode `__init__()`:

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("Alice", 25)
print(p1.name)  ### Output Alice

print(p1.age)  ### Output 25
```

Dans cet exemple, la classe `Person` possède une méthode `init` qui prend deux arguments : `name` et `age`. Lorsque vous créez un nouvel objet `Person`, vous passez des valeurs pour ces arguments, et la méthode `__init__()` définit les variables d'instance correspondantes.

Vous pouvez également avoir des arguments optionnels ou par défaut dans la méthode `__init__()`:

```python3
class Rectangle:
    def __init__(self, width=0, height=0):
        self.width = width
        self.height = height

r1 = Rectangle()
print(r1.width)  ### Output 0

print(r1.height)  ### Output 0

r2 = Rectangle(10, 20)
print(r2.width)  ### Output 10

print(r2.height)  ### Output 20
```

Dans cet exemple, la classe `Rectangle` possède une méthode `__init__()` qui prend deux arguments optionnels : `width` et `height`. Si aucun argument n'est fourni, les valeurs par défaut de `0` sont utilisées.

## Personnalisation de l'initialisation d'objet en Python

En Python, la méthode `__init__()` est appelée lorsqu'un objet d'une classe est créé. Elle est utilisée pour initialiser les attributs de l'objet. Cependant, il se peut que nous ayons besoin de personnaliser l'initialisation de l'objet en spécifiant nos propres paramètres. Ceci peut être réalisé en utilisant les méthodes suivantes :

### Création d'une classe Python sans `__init__()`

Une façon de personnaliser l'initialisation de l'objet est de définir une méthode personnalisée qui initialise les attributs. Cette méthode peut prendre des paramètres qui sont utilisés pour définir les valeurs des attributs. Voici un exemple :

```python3
class Car:
    def set_values(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

my_car = Car()
my_car.set_values('Toyota', 'Camry', 2022)
print(my_car.make)  # Output: Toyota
```

Dans cet exemple, nous avons défini une méthode personnalisée `set_values()` pour initialiser les attributs `make`, `model` et `year`. Nous avons ensuite appelé cette méthode sur un objet de la classe `Car` pour définir les valeurs des attributs.

### Création de Classe avec `__init__()`

Une autre façon de personnaliser l'initialisation d'objet est d'utiliser des attributs au niveau de la classe. Ces attributs peuvent être définis dans la définition de la classe et utilisés pour initialiser les attributs de l'objet. Voici un exemple :

```python3
class Car:
    make = ''
    model = ''
    year = 0

    def __init__(self):
        self.make = Car.make
        self.model = Car.model
        self.year = Car.year

my_car = Car()
my_car.make = 'Toyota'
my_car.model = 'Camry'
my_car.year = 2022
print(my_car.make)  # Output: Toyota
```

Dans cet exemple, nous avons défini `make`, `model` et `year` comme attributs de niveau classe et avons défini leurs valeurs par défaut sur une chaîne vide et `0`. Nous avons ensuite utilisé ces attributs pour initialiser les attributs de l'objet dans la méthode `__init__()`. Nous pouvons plus tard modifier les valeurs des attributs de l'objet comme dans l'exemple précédent.

## Création d'un objet de classe Python avec des initialiseurs flexibles

La programmation orientée objet nous permet de créer des objets avec différentes propriétés. Nous pouvons initialiser un objet avec des propriétés fixes ou flexibles en passant différents arguments au constructeur. En Python, nous pouvons utiliser la méthode `__init__()` pour initialiser un objet avec des propriétés flexibles.

```python3
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

rect = Rectangle(5, 10)
print(rect.width)   # Output: 5
print(rect.height)  # Output: 10
```

Dans l'exemple ci-dessus, nous avons initialisé l'objet `Rectangle` avec des propriétés fixes `width` et `height`. L'objet renvoyé par le constructeur aura toujours les mêmes propriétés.

```python3
class Circle:
    def __init__(self, radius, color='red', border=None):
        self.radius = radius
        self.color = color
        self.border = border

circle = Circle(5)
print(circle.radius)  # Output: 5
print(circle.color)   # Output: red
print(circle.border)  # Output: None
```

Dans l'exemple ci-dessus, nous avons initialisé l'objet `Circle` avec des propriétés flexibles `radius`, `color` et `border`. Nous avons passé seulement un argument `radius` au constructeur, mais nous avons également spécifié des valeurs par défaut pour `color` et `border`. Cela nous permet de créer un objet `Circle` avec seulement un argument, ou trois arguments, ou tout nombre d'arguments intermédiaire.

## Création d'objet en utilisant la méthode `__new__()`

La méthode `__new__()` est utilisée en Python pour créer des objets de manière dynamique. Elle permet au développeur de créer un objet de classe en utilisant le nom de la classe, et ensuite vous pouvez ajouter des attributs après l'init de la classe Python.

```python3
class Person:
    pass

dave = Person.__new__(Person)
dave.name = "Dave"
dave.age = 25

print(dave.name)
```

Dans l'exemple ci-dessus, nous créons une classe appelée `Person` puis nous utilisons la méthode .new() pour créer un objet appelé `dave`. Nous ajoutons ensuite les attributs `name` et `age` à cet objet après l'initialisation.

```python3
class Car:
    def __init__(self, model, make):
        self.model = model
        self.make = make

car = Car.__new__(Car)
car.__init__("Corvette", "Chevrolet")
car.color = "red"

print(car.color)
```

Dans cet exemple, nous créons une classe appelée `Car` et définissons ses attributs lors de l'initialisation en utilisant `__init__()`. Nous créons ensuite un objet appelé `car` en utilisant la méthode `__new__()` et l'initialisons avec les attributs de modèle et de marque. Enfin, nous ajoutons l'attribut `color` à l'objet `car` après l'initialisation.
