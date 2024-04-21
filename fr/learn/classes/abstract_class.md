> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/abstract-class

En programmation orientée objet, une classe abstraite est une classe qui ne peut pas être instanciée et est conçue pour être sous-classée, fournissant une interface de base pour ses classes dérivées. Python est un langage orienté objet qui prend en charge les classes abstraites via son module [Abstract Base Class](https://docs.python.org/3/library/abc.html) (ABC). Ce module offre un moyen de définir des classes abstraites et d'imposer leur interface à leurs sous-classes. Cet article explorera le concept de classes abstraites en Python et comment elles sont implémentées en utilisant la classe de base abstraite de Python.

## Introduction à la classe abstraite Python

En Python, une **classe abstraite** est une classe qui est conçue pour être héritée par d'autres classes. Elle ne peut pas être instanciée seule et son but est de fournir un modèle pour que d'autres classes puissent s'en inspirer.

Une classe de base abstraite en Python est définie en utilisant le module `abc`. Il nous permet de spécifier qu'une classe doit implémenter des méthodes spécifiques, mais il ne fournit pas d'implémentation pour ces méthodes. Toute classe qui hérite d'une classe de base abstraite doit implémenter toutes les méthodes abstraites.

```python3
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

r = Rectangle(5, 6)
print(r.area())    ### Output 30

```

Dans l'exemple ci-dessus, `Shape` est une classe de base abstraite qui définit une méthode abstraite `area`. `Rectangle` est une classe concrète qui hérite de `Shape` et implémente la méthode `area`.

```python3
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def talk(self):
        pass

class Dog(Animal):
    def talk(self):
        return "Woof!"

class Cat(Animal):
    def talk(self):
        return "Meow"

c = Cat()
print(c.talk())    ### Output Meow

d = Dog()
print(d.talk())    ### Output Woof!

```

Dans cet exemple, `Animal` est une classe de base abstraite qui définit une méthode abstraite `talk`. `Dog` et `Cat` sont des classes concrètes qui héritent de `Animal` et implémentent la méthode `talk`.

En conclusion, les classes abstraites en Python fournissent un moyen de définir un modèle pour que d'autres classes puissent se construire dessus. Elles ne peuvent pas être instanciées par elles-mêmes et elles offrent un moyen de garantir que les sous-classes implémentent des méthodes spécifiques. Le module `abc` offre un moyen de définir des classes de base abstraites en Python.

## Création de Classe de Base Abstraite Python

Une classe abstraite est une classe qui ne peut pas être instanciée et est destinée à être utilisée comme classe de base pour d'autres classes.

En Python, le module `abc` fournit la classe `ABC`. Elle est utilisée pour créer des classes de base abstraites.

Pour créer une classe de base abstraite, nous devons hériter de la classe `ABC` et utiliser le décorateur `@abstractmethod` pour déclarer des méthodes abstraites.

### Exemple de Classe Abstraite

```python
from abc import ABC, abstractmethod

class Shape(ABC):

    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass
```

Dans cet exemple, nous avons créé une classe de base abstraite `Shape` avec deux méthodes abstraites `area` et `perimeter`. Toute classe qui hérite de `Shape` doit implémenter ces deux méthodes.

### Exemple de Classe Abstraite avec Héritage

```python

from abc import ABC, abstractmethod

class Animal(ABC):

    @abstractmethod
    def sound(self):
        pass

class Dog(Animal):

    def sound(self):
        return 'Woof'
```

Dans cet exemple, nous avons créé une classe de base abstraite `Animal` avec une méthode abstraite `sound`. Nous avons également créé une classe `Dog` qui hérite de `Animal` et implémente la méthode `sound`.

> Une classe qui hérite d'une classe de base abstraite doit implémenter toutes les méthodes abstraites déclarées dans la classe de base, à moins qu'elle ne soit également une classe abstraite.

## Classe Abstraite Python vs Interface

Une classe abstraite est une classe Python qui ne peut pas être instanciée, et elle est utilisée pour définir des propriétés et comportements communs que les sous-classes peuvent hériter. Elle est définie en utilisant le module abc, qui signifie classe de base abstraite. Une classe abstraite est utilisée lorsque nous voulons définir une classe de base, et nous ne voulons pas qu'elle soit instanciée. Instead, nous voulons qu'elle soit sous-classée par d'autres classes qui fourniront des implémentations spécifiques de ses méthodes abstraites.

### Exemple d'une Classe de Base Abstraite Python

```python3
from abc import ABC, abstractmethod
 
class Animal(ABC):
     
    @abstractmethod
    def move(self):
        pass
 
class Dog(Animal):
     
    def move(self):
        print("I am walking on four legs")
         
class Snake(Animal):
     
    def move(self):
        print("I am slithering")
         
d = Dog()
d.move()
 
s = Snake()
s.move()
```

Dans l'exemple ci-dessus, Animal est une classe de base abstraite avec une méthode abstraite appelée `move()`. Dog et Snake sont deux sous-classes de la classe Animal, et elles fournissent leurs implémentations spécifiques de la méthode `move()`.

### Interfaces en Python

Une interface est une collection de méthodes abstraites qui définit le comportement d'une classe. En Python, il n'existe pas de définition stricte d'une interface comme dans d'autres langages de programmation comme Java. A la place, nous utilisons des classes abstraites pour définir les interfaces. Une interface peut être considérée comme un contrat entre la classe et le monde extérieur. Une classe qui implémente une interface doit fournir une implémentation pour toutes les méthodes définies dans l'interface.

#### Exemple d'une Interface Python

```python3
from abc import ABC, abstractmethod
 
class Shape(ABC):
     
    @abstractmethod
    def area(self):
        pass
 
    @abstractmethod
    def perimeter(self):
        pass
 
class Rectangle(Shape):
     
    def __init__(self, length, width):
        self.length = length
        self.width = width
     
    def area(self):
        return self.length * self.width
     
    def perimeter(self):
        return 2 * (self.length + self.width)

r = Rectangle(10, 5)
print("Area of Rectangle:", r.area())  # Area of Rectangle: 50
print("Perimeter of Rectangle:", r.perimeter()) # Perimeter of Rectangle: 30
```

Dans l'exemple ci-dessus, `Shape` est une interface avec deux méthodes abstraites appelées `area()` et `perimeter()`. `Rectangle` est une classe qui implémente l'interface Shape et fournit son implémentation pour les méthodes `area()` et `perimeter()`.

## Polymorphisme dans les Classes Abstraites Python

Une classe abstraite est une classe qui ne peut pas être instanciée, mais elle peut servir de base pour d'autres classes. C'est un moyen de définir une interface commune pour un groupe de classes liées. Le polymorphisme est la capacité d'un objet à prendre de nombreuses formes. En Python, les classes abstraites peuvent être utilisées pour implémenter le polymorphisme.

```python3
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def move(self):
        pass

class Dog(Animal):
    def move(self):
        print("Dog is running")

class Cat(Animal):
    def move(self):
        print("Cat is jumping")

d = Dog()
c = Cat()

d.move() ### This will print "dog is running"
c.move() ### This will print "cat is jumping"

```

## Utilisation des classes de base abstraites (ABC) en Python

Les classes abstraites en Python sont des classes qui ne peuvent pas être instanciées, et sont destinées à être héritées par d'autres classes. Elles sont utiles pour définir des méthodes et propriétés communes qui devraient être implémentées par leurs sous-classes concrètes.

Une manière d'implémenter des classes abstraites en Python est d'utiliser des classes de base abstraites (ABC) provenant du module `abc`. Un ABC est un type spécial de classe qui ne peut pas être instancié directement, mais peut être sous-classé. Les ABCs définissent une ou plusieurs méthodes abstraites, qui sont des méthodes qui doivent être implémentées par toute sous-classe concrète.

L'exemple de code suivant montre comment définir une classe de base abstraite `Animal`, qui définit deux méthodes abstraites `speak` et `move` qui doivent être implémentées par toute sous-classe concrète :

```python3
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def speak(self):
        pass
    
    @abstractmethod
    def move(self):
        pass

class Cat(Animal):
    def speak(self):
        print('meow')
    
    def move(self):
        print('running')
```

Maintenant, toute sous-classe concrète de `Animal` doit implémenter à la fois `speak` et `move`.

Un autre avantage de l'utilisation des ABCs en Python est qu'ils peuvent être utilisés pour imposer un certain contrat d'interface sur les classes, sans spécifier leurs détails d'implémentation.

Par exemple, si vous voulez définir une fonction qui accepte uniquement des objets ayant une méthode `draw`, vous pourriez définir un ABC nommé `Drawable`, qui définit une méthode abstraite `draw` :

```python3
from abc import ABC, abstractmethod

class Drawable(ABC):
    @abstractmethod
    def draw(self):
        pass
        
def draw_all(drawables):
    for drawable in drawables:
        drawable.draw()

class Rectangle(Drawable):
    def draw(self):
        print('Drawing a rectangle')
    
    
class Circle(Drawable):
    def draw(self):
        print('Drawing a circle')
    
draw_all([Rectangle(), Circle()])
```

Dans cet exemple, la fonction `draw_all` accepte une liste d'objets `Drawable`, qu'elle dessine en appelant leur méthode `draw`. Les classes `Rectangle` et `Circle` implémentent toutes les deux la méthode `draw`, donc elles peuvent être utilisées avec la fonction `draw_all`.

Dans l'ensemble, les classes de base abstraites en Python fournissent un outil puissant pour la conception de code, en vous permettant de définir une fonctionnalité commune qui peut être facilement étendue et personnalisée par des sous-classes concrètes.

## Meilleures pratiques pour la conception de classes abstraites Python

Lors de la conception de classes abstraites en Python, il est important de suivre les meilleures pratiques pour garantir une base de code maintenable et lisible.

1. Utilisez le module `abc` pour définir une classe de base abstraite (ABC).

```python
import abc

class Shape(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def area(self):
        pass
    
class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius
        
    def area(self):
        return 3.14 * self.radius ** 2
```

2. Utilisez des méthodes abstraites pour spécifier le contrat que les classes dérivées doivent suivre.

```python
import abc

class Vehicle(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def start_engine(self):
        pass
    
class Car(Vehicle):
    def start_engine(self):
        print("Engine started")

class Bike(Vehicle):
    pass

my_car = Car()
my_car.start_engine()    # "Engine started"

# my_bike = Bike()    TypeError: Can't instantiate abstract class Bike with abstract methods start_engine
```

Suivre ces meilleures pratiques garantira que vos classes abstraites soient facilement compréhensibles et maintenables, avec des contrats clairs pour les classes dérivées à suivre.
