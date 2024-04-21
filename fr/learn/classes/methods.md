> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/methods

Cet article explore les tenants et aboutissants du travail avec les méthodes et fonctions dans les classes en Python. Plus précisément, nous nous penchons sur les concepts importants du constructeur de classe (ou méthode `__init__`), les méthodes de classe abstraite, et la différence entre les méthodes de classe et les méthodes statiques. Donc, si vous cherchez à approfondir votre compréhension des fonctions dans une classe, lisez la suite !

## Maîtriser le Constructeur de Classe Python

Nous pouvons définir des fonctions dans une classe, connues sous le nom de méthodes. Le constructeur de classe ou méthode `__init__` est une méthode spéciale qui est appelée lorsqu'un objet de la classe est créé. Elle est utilisée pour initialiser les variables d'instance d'une classe.

Une méthode de classe abstraite est une méthode qui est déclarée mais ne contient aucune implémentation. Elle est utilisée comme modèle pour d'autres méthodes qui sont définies dans une sous-classe.

Une méthode de classe est une méthode qui est liée à la classe et non à l'instance de la classe. Elle peut être accédée en utilisant le nom de la classe.

Une méthode statique est une méthode qui est liée à la classe et non à l'instance de la classe. Elle ne prend aucun argument comme self ou cls.

### Exemple 1 : Constructeur de Classe

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("John", 36)

print(p1.name)
print(p1.age)

# Output:
# John
# 36
```

Dans l'exemple ci-dessus, nous avons défini une classe `Person` avec un constructeur qui initialise les attributs nom et âge de la classe. Nous avons ensuite créé un objet de la classe `p1` et accédé à ses attributs en utilisant la notation par point.

### Exemple 2 : Méthode de Classe vs Méthode Statique

```python3
class Calculator:
    @classmethod
    def add(cls, num1, num2):
        return num1 + num2
    
    @staticmethod
    def multiply(num1, num2):
        return num1 * num2

print(Calculator.add(2,3))
print(Calculator.multiply(2,3))
# Output:
# 5
# 6
```

Dans cet exemple, nous avons défini une classe `Calculator` avec deux méthodes : `add` comme méthode de classe et `multiply` comme méthode statique. Nous avons accédé à ces méthodes en utilisant le nom de la classe `Calculator` sans créer d'objet de la classe. Nous avons utilisé les décorateurs `@classmethod` et `@staticmethod` pour définir ces méthodes.

## Méthode de Classe Abstraite en Python

Une méthode de classe abstraite est une méthode qui est déclarée dans une classe de base abstraite mais qui n'a pas d'implémentation. Elle est utilisée pour définir une méthode qui doit être implémentée par toute classe qui hérite de la classe abstraite. Les méthodes de classe abstraite sont créées en utilisant le décorateur `@abstractmethod`. Voici un exemple de méthode de classe abstraite en Python :

```python3
from abc import ABC, abstractmethod

class Shape(ABC):
    def __init__(self, type):
        self.type = type

    @abstractmethod
    def area(self):
        pass

class Square(Shape):
    def __init__(self, side):
        super().__init__("Square")
        self.side = side

    def area(self):
        return self.side ** 2

my_square = Square(5)
print(my_square.area()) # Output: 25
```

## Surcharge de méthode

La surcharge de méthode est une fonctionnalité en Python qui permet à une classe d'avoir plusieurs méthodes portant le même nom mais avec des paramètres différents. Cette fonctionnalité aide à fournir de la flexibilité et de la réutilisabilité à la conception du code. Cela est différent de la redéfinition de méthode qui permet à une sous-classe de fournir sa propre implémentation d'une méthode définie dans sa superclasse.

```python
class Example:
    def method(self, a):
        print("Method with one parameter:", a)
    
    def method(self, a, b):
        print("Method with two parameters:", a, b)  
```

```python
class Example:
    def method(self, a=None, b=None, c=None):
        if a != None and b == None and c == None:
            print("Method with one parameter:", a)
        
        elif a != None and b != None and c == None:
            print("Method with two parameters:", a, b)
            
        elif a != None and b != None and c != None:
            print("Method with three parameters:", a, b, c)
```

Dans le premier exemple, nous définissons une classe avec deux méthodes portant le même nom mais avec des paramètres différents. Python ne prend pas en charge directement la surcharge de méthodes, donc la dernière définition de la méthode écrase la précédente. Ainsi, lorsque nous créons un objet de la classe et appelons la `method`, nous obtiendrons le résultat de la dernière définition de la méthode.

Dans le second exemple, nous définissons une classe avec une seule `method` qui accepte plusieurs paramètres optionnels. Nous pouvons utiliser des instructions conditionnelles pour vérifier le nombre de paramètres passés et `print` le résultat en conséquence. Cette approche offre une réutilisabilité au code car nous pouvons appeler la même `method` avec différents paramètres.

## Méthodes Publiques, Privées et Protégées en Python

En Python, nous pouvons différencier les méthodes publiques, privées et protégées en fonction de leur niveau d'accès.

- **Les méthodes publiques** sont celles qui peuvent être accédées de partout, à l'intérieur ou à l'extérieur de la classe.
- **Les méthodes privées** dans une classe de Python sont celles qui ne peuvent être accédées que de l'intérieur de la classe.
- **Les méthodes protégées** sont celles qui ne peuvent être accédées que de l'intérieur de la classe et de ses sous-classes.

### Méthodes Publiques

Les méthodes publiques sont accessibles de n'importe où, à l'intérieur ou à l'extérieur de la classe. Elles jouent un rôle significatif dans l'interaction avec les attributs et les fonctionnalités de la classe. Lorsque les développeurs créent une méthode sans aucun préfixe de soulignement, elle devient automatiquement une méthode publique.

```python3
class MyClass:
    def public_method(self):
        print("This is a public method")

obj = MyClass()
obj.public_method()  # Accessing the public method
```

Comme le montre l'exemple, la `public_method()` est accessible depuis l'extérieur de la classe `MyClass`. Ces méthodes permettent au code externe d'interagir directement avec les fonctionnalités de la classe.

### Méthodes Privées en Python

Les méthodes privées en Python sont conçues pour être accessibles uniquement depuis la classe dans laquelle elles sont définies. Elles sont indiquées en préfixant le nom de la méthode par des doubles underscores `__`.

```python3
class MyClass:
    def __private_method(self):
        print("This is a private method")

obj = MyClass()
obj.__private_method()  # Attempting to access the private method (Raises an error)
```

Tenter d'accéder à une méthode privée depuis l'extérieur de la classe résulte en une AttributeError. Le name mangling en Python rend le nom de la méthode, préfixé de doubles soulignés, plus difficile à accéder directement depuis du code externe. Ces méthodes sont utilisées pour des opérations internes de la classe, améliorant l'encapsulation et prévenant l'utilisation accidentelle ou la surcharge.

### Méthodes Protégées

Les méthodes protégées sont indiquées en préfixant le nom de la méthode avec un seul souligné `_`. Elles peuvent être accédées depuis la classe elle-même et ses sous-classes.

```python3
class MyClass:
    def _protected_method(self):
        print("This is a protected method")

class SubClass(MyClass):
    def access_protected(self):
        self._protected_method()  # Accessing the protected method from a subclass

obj = SubClass()
obj.access_protected()  # Accessing the protected method from the subclass
```

Les méthodes protégées offrent un moyen de permettre aux sous-classes d'accéder à certaines méthodes tout en empêchant l'accès direct depuis le code externe. Cependant, contrairement à certaines autres langues, Python n'impose pas de restrictions strictes de visibilité.

## Méthodes d'accès (Getter) et de modification (Setter) en Python

Python propose des méthodes de commodité getter et setter pour contrôler l'accès aux variables d'instance privées des classes. Les méthodes getter et setter sont importantes car sans elles, les variables d'instance privées ne seraient pas accessibles depuis l'extérieur de la classe.

La méthode getter permet d'accéder à la valeur d'une variable d'instance privée depuis l'extérieur d'une classe, et la méthode setter permet de définir la valeur d'une variable d'instance privée depuis l'extérieur d'une classe.

Voici un exemple simple de classe avec des méthodes getter et setter :

```python3
class MyClass:
    def __init__(self):
        self._value = None

    def get_value(self):
        return self._value

    def set_value(self, value):
        self._value = value

obj = MyClass()
obj.set_value(10)
print(obj.get_value())
```

Maintenant, vous pouvez utiliser ces méthodes pour accéder et définir la valeur de l'attribut `value` de `MyClass`.

```python3
class MyClass:
    def __init__(self):
        self._value = None

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

obj = MyClass()
obj.value = 10
print(obj.value) 
```

Maintenant, vous pouvez utiliser la propriété `value` de `MyClass` pour obtenir et définir la valeur de l'attribut `value` :

En conclusion, les méthodes getter et setter offrent un moyen contrôlé d'accéder et de définir les valeurs des variables d'instance privées dans les classes Python.

## Méthode vs Fonction

En Python, les méthodes et les fonctions sont utilisées pour effectuer une tâche spécifique. Cependant, elles présentent des différences distinctes.

### Fonctions

Les fonctions sont définies en dehors de la classe et peuvent être appelées n'importe où dans le code en utilisant leur nom. Elles prennent des paramètres d'entrée et `return` une valeur. Voici un exemple de fonction qui prend deux nombres en entrée et retourne leur somme :

```python3
def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)
print(result)  # Output: 8
```

Pour utiliser cette fonction, nous pouvons l'appeler et fournir les paramètres d'entrée :

### Méthodes

Les méthodes, d'autre part, sont définies à l'intérieur des classes et sont appelées sur des instances de cette classe. Elles ont accès aux attributs de l'instance et peuvent modifier son état.

Voici un exemple de méthode qui prend un paramètre d'entrée et modifie l'état de l'instance :

```python3
class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model
        self.speed = 0

    def accelerate(self, speed):
        self.speed += speed

my_car = Car("Toyota", "Corolla")
my_car.accelerate(20)
print(my_car.speed)  # Output: 20
```

Dans cet exemple, la méthode `accelerate()` est définie à l'intérieur de la classe `Car` et est appelée sur une instance de la classe `Car`. Elle accélère la vitesse de la voiture en ajoutant le paramètre d'entrée à l'attribut `speed` de l'instance.

En résumé, les fonctions sont des blocs de code autonomes qui prennent des paramètres d'entrée et retournent une valeur, tandis que les méthodes sont définies à l'intérieur des classes et sont appelées sur des instances de cette classe, avec accès aux attributs de l'instance et la capacité de modifier son état.

## Surcharge de Méthode de Classe

La surcharge de méthode est une fonctionnalité de la programmation orientée objet qui permet à une sous-classe de fournir une implémentation différente d'une méthode déjà définie dans sa superclasse. En Python, la surcharge de méthode est simple et se réalise en définissant une méthode dans la sous-classe portant le même nom que la méthode dans la superclasse.

```python3
class Parent:
  def my_method(self):
    print("Parent method called")

class Child(Parent):
  def my_method(self):
    print("Child method called")

obj = Child()
obj.my_method() ### prints Child method called

```

Dans cet exemple, la classe `Child` étend la classe `Parent` et remplace la méthode `my_method()`. Lorsque nous créons un objet de la classe `Child` et appelons `my_method()`, cela affichera `Child method called` au lieu de `Parent method called`.

```python3
class Animal:
  def move(self):
    print("Animal is moving")

class Bird(Animal):
  def move(self):
    super().move()
    print("Bird is flying")

obj = Bird()
obj.move() ### prints "Animal is moving" and "Bird is flying

```

Dans cet exemple, la classe `Bird` étend la classe `Animal` et redéfinit la méthode de classe `move()`. Cependant, elle appelle également en premier l'implémentation de la classe parente de `move()` en utilisant la fonction `super()`, puis ajoute sa propre implémentation de `Bird is flying`. Le résultat sera `Animal is moving` et `Bird is flying`.

Utiliser la redéfinition de méthode en Python permet plus de flexibilité et de personnalisation dans le comportement de vos classes.
