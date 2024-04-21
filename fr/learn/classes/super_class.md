> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/super-class

Dans cet article, nous allons plonger dans les subtilités des Super Classes Python. Préparez-vous à débloquer le plein potentiel du Développement Python en maîtrisant les éléments vitaux de la Super Classe en Python.

## Comprendre la Super Classe de Python

La fonction `super()` en python est utilisée pour appeler une méthode dans une classe parente depuis une classe enfant. La fonction `super()` aide à créer une hiérarchie parmi les classes en Python qui est facile à maintenir et à comprendre. Dans Python 3, `super()` est couramment utilisée pour initialiser des classes abstraites.

### Utiliser `super()` dans une Classe Python

```python3
class MyParentClass:
    def do_something(self):
        print("Parent class doing something.")

class MyChildClass(MyParentClass):
    def do_something(self):
        super().do_something()
        print("Child class doing something.")
        
child = MyChildClass()
child.do_something()
```

En conclusion, `super()` est une fonction puissante en Python qui fournit un moyen propre et concis d'appeler des méthodes de classe parente depuis une classe enfant. Elle aide à créer une hiérarchie claire entre les classes et à maintenir un code propre.

## Classe Abstraite Python

Une classe abstraite est une classe qui ne peut pas être instanciée et qui est destinée à être sous-classée par d'autres classes. La fonction `super()` est utilisée pour accéder et appeler des méthodes depuis un parent ou une superclasse en Python. Voici deux exemples de code qui illustrent l'utilisation de `super()` dans des classes abstraites Python.

### Définir une Classe Abstraite

```python3
import abc

class MyAbstractClass(metaclass=abc.ABCMeta):
    
    def __init__(self):
        super().__init__()
        print("Initializing MyAbstractClass")
        
    @abc.abstractmethod
    def my_method(self):
        pass
        
class MySubclass(MyAbstractClass):
    
    def __init__(self):
        super().__init__()
        print("Initializing MySubclass")
        
    def my_method(self):
        print("Calling my_method in MySubclass")
        
my_obj = MySubclass()
my_obj.my_method()

# Output:
# Initializing MyAbstractClass
# Initializing MySubclass
# Calling my_method in MySubclass
```

Dans cet exemple, nous définissons une classe abstraite `MyAbstractClass` avec une méthode abstraite `my_method()`. La classe possède une méthode `__init__` qui utilise `super()` pour appeler la méthode `__init__` de la superclasse. Nous définissons ensuite une sous-classe `MySubclass` qui surcharge la méthode `__init__` et implémente la méthode `my_method()`. Lorsque nous instancions un objet de `MySubclass`, les deux méthodes `__init__` sont appelées dans l'ordre, et la méthode `my_method()` de `MySubclass` est appelée.

### Définir une Classe Parente

```python3
class MyParentClass:
    
    def my_method(self):
        print("Calling my_method in MyParentClass")
        
class MyChildClass(MyParentClass):
    
    def my_method(self):
        super().my_method()
        print("Calling my_method in MyChildClass")
        
my_obj = MyChildClass()
my_obj.my_method()

# Output:
# Calling my_method in MyParentClass
# Calling my_method in MyChildClass
```

Dans cet exemple, nous définissons une classe parente `MyParentClass` avec une méthode `my_method()`. Nous définissons ensuite une classe enfant `MyChildClass` qui remplace `my_method()` et utilise `super()` pour appeler la même méthode dans la classe parente. Lorsque nous instancions un objet de `MyChildClass`, la méthode `my_method()` dans la classe parente est appelée en premier, suivie par la même méthode dans la classe enfant.

## Le Rôle de `super()` dans l'Héritage de Classe

En Python, `super()` est une fonction intégrée qui donne accès aux méthodes d'une classe parente via l'héritage. Elle est utilisée pour appeler une méthode de la classe parente sans nommer explicitement la classe parente. Elle est également utilisée dans les classes abstraites de Python 3 pour appeler la méthode `super().__init__()`.

```python3
class Parent:
    def __init__(self, name):
        self.name = name

class Child(Parent):
    def __init__(self, name, age):
        super().__init__(name) # Call Parent class __init__ method
        self.age = age

child = Child("John", 10)
print(child.name) # Output: John
```

Dans l'exemple ci-dessus, la classe `Child` hérite de la classe `Parent` et initialise l'attribut `name` en utilisant la fonction `super()`.

```python3
from abc import ABC, abstractmethod

class Parent(ABC):
    @abstractmethod
    def calculate(self, x, y):
        pass

class Child(Parent):
    def __init__(self, name):
        self.name = name
        super().__init__() # Call Parent class __init__ method

    def calculate(self, x, y):
        return x + y

child = Child("John")
print(child.calculate(4, 5)) # Output: 9
```

Dans l'exemple ci-dessus, la classe `Parent` est une classe abstraite. La classe `Child` hérite de la classe `Parent` et initialise la classe parente en utilisant la méthode `super().__init__()`. La méthode `calculate()` est implémentée dans la classe `Child`.

## Le Pouvoir de la Super Classe

La fonction `super()` en Python est utilisée pour appeler une méthode d'une super classe depuis une sous-classe. Elle est très puissante et utile, et elle peut simplifier les hiérarchies d'héritage lorsqu'elle est utilisée de manière appropriée.

En Python 3, `super()` prend deux arguments : le premier est la sous-classe appelant `super()`, et le second est soit l'instance de la sous-classe, soit la classe elle-même. Par exemple :

```python3
class A:
    def __init__(self):
        print("I am in A's __init__")

class B(A):
    def __init__(self):
        super().__init__()
        print("I am in B's __init__")

b = B()  
# Output
# I am in A's __init__
# I am in B's __init__

```

Dans cet exemple, `super().__init__()` appelle la méthode `__init__()` de la classe `A`, la super classe de `B`. De cette manière, `A` et `B` sont initialisés lorsqu'un nouvel objet de `B` est créé.

Un autre cas d'utilisation est avec les classes abstraites qui contiennent `super().__init__()` dans leur méthode `__init__()`:

```python3
from abc import ABC, abstractmethod

class MyAbstractClass(ABC):
    def __init__(self):
        super().__init__()

    @abstractmethod
    def my_abstract_method(self):
        pass

class MyClass(MyAbstractClass):
    def __init__(self):
        super().__init__()

    def my_abstract_method(self):
        print("I am implementing my abstract method")

c = MyClass()  

```

Dans cet exemple, `MyAbstractClass` est une classe abstraite qui définit une `abstractmethod()` appelée `my_abstract_method()`. La classe `MyClass` hérite de `MyAbstractClass` et définit sa propre implémentation de `my_abstract_method()`. Lorsqu'un nouvel objet de `MyClass` est créé, sa méthode `__init__()` appelle `super().__init__()`, ce qui initialise la classe abstraite `MyAbstractClass`.

Dans l'ensemble, la fonction `super()` est un outil puissant en Python qui peut simplifier les hiérarchies d'héritage et rationaliser l'initialisation des objets.

## Implémentation de l'Héritage Multiple Avec Super Classe

Python prend en charge l'héritage multiple, ce qui signifie qu'une classe peut hériter de plusieurs classes parentes. Dans de tels cas, la fonction `super()` joue un rôle crucial dans la gestion de l'ordre dans lequel les méthodes des classes parentes sont appelées. Lorsque vous gérez l'héritage multiple, vous pouvez utiliser `super()` pour naviguer efficacement dans l'ordre de résolution des méthodes (MRO).

Exemple:

```python3
class A:
    def some_method(self):
        print("Method from class A")

class B:
    def some_method(self):
        print("Method from class B")

class C(A, B):
    def some_method(self):
        super().some_method()
        print("Method from class C")

obj = C()
obj.some_method()
```

Sortie :

```python
Method from class A
Method from class C
```

Dans cet exemple, la classe `C` hérite à la fois de `A` et de `B`. La fonction `super()` aide à appeler la méthode de la classe `A` dans l'ordre de résolution de méthode (MRO), suivie de sa propre méthode.

## Ordre de Résolution de Méthode (MRO)

L'Ordre de Résolution de Méthode (MRO) est un concept crucial dans l'héritage multiple. Python utilise l'algorithme de linéarisation C3 pour déterminer l'ordre dans lequel les méthodes sont appelées. Comprendre le MRO peut vous aider à prédire comment fonctionne `super()` dans des hiérarchies d'héritage complexes.

Exemple:

```python3
class A:
    def some_method(self):
        print("Method from class A")

class B(A):
    def some_method(self):
        print("Method from class B")

class C(A):
    def some_method(self):
        print("Method from class C")

class D(B, C):
    def some_method(self):
        super().some_method()
        print("Method from class D")

obj = D()
obj.some_method()
```

Sortie:

```python
Method from class B
Method from class C
Method from class D
```

Dans cet exemple, `D` hérite à la fois de `B` et de `C`, et le MRO assure le bon ordre des appels de méthodes.

Inclure ces sections dans votre article fournira une compréhension complète de comment `super()` fonctionne dans différents scénarios d'héritage et l'importance de l'Ordre de Résolution des Méthodes en Python.

## Héritage Multi-Niveaux Avec Super Classe

L'héritage multi-niveaux est un motif courant dans la programmation orientée objet, où une sous-classe hérite d'une autre sous-classe. Dans de tels scénarios, `super()` vous permet d'accéder et d'étendre le comportement de la classe parente sans coupler étroitement votre code à des noms de classes spécifiques.

Exemple:

```python3
class Grandparent:
    def speak(self):
        print("Grandparent speaks")

class Parent(Grandparent):
    def speak(self):
        super().speak()
        print("Parent speaks")

class Child(Parent):
    def speak(self):
        super().speak()
        print("Child speaks")

obj = Child()
obj.speak()
```

Sortie:

```python
Grandparent speaks
Parent speaks
Child speaks
```

Ici, la fonction `super()` garantit que chaque niveau de la hiérarchie de classe contribue au comportement final.
