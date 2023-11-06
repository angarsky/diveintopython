> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/object-instantiation

Object instantiation is a fundamental concept in object-oriented programming that refers to the process of creating new objects from a class. This process involves using constructors, which are special methods that define how new objects are initialized. This article describes how to instantiate an object in Python and provides examples of how to create and use these objects in your code.  
  
## Exploring Python's Class Constructors  

A class constructor in Python is a special method that is executed when an object of a class is instantiated. It is used to initialize the attributes of the class. The constructor method in Python is called `__init__()` and it is defined within the class.

### How to Instantiate a Python Class

To instantiate a class in Python, we create an object of the class, which will call the constructor method. Here's an example of a simple class and how to instantiate an object of that class.

```python
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

In the above example, the `Recipe` class has a constructor that sets the attributes `name` and `ingredients` for each new object that is instantiated. The `my_recipe` object is instantiated with the name "Spaghetti Bolognese" and a list of ingredients. The print statements will output `Recipe Name: Spaghetti Bolognese` and `Ingredients: ['spaghetti', 'tomato sauce', 'ground beef']`.

## Inheritance and Constructors in Python

In Python, constructors play a crucial role in class inheritance, allowing child classes to inherit and extend attributes and behaviors from parent classes.

### Constructor Inheritance Basics

Child classes inherit the constructor of their parent class, enabling them to reuse the initialization logic from the parent. For example:

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

In this example, the Car class inherits from Vehicle and extends its attributes.

### Constructor Overriding

Child classes can also override the parent class's constructor to customize initialization:

```python
class Bike(Vehicle):
    def __init__(self, make, model, wheel_count):
        super().__init__(make, model)
        self.wheel_count = wheel_count
```

### Abstract Base Classes

Abstract base classes allow you to enforce initialization patterns across a class hierarchy:

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def __init__(self, color):
        self.color = color

class Circle(Shape):
    def __init__(self, color, radius):
        super().__init__(color)
        self.radius = radius
```

Conclusion

Understanding constructor inheritance in Python is vital for creating structured and maintainable object-oriented code. It provides flexibility for reusing and customizing initialization logic and enforces consistent patterns using abstract base classes. Mastering constructor inheritance enhances your control over class hierarchies.

## Delving into Python's Process of Instantiating Objects  

Instantiating an object, in Python, means creating an instance of a class. When you create an instance of a class, you instantiate the object. In Python, the process of instantiating objects involves creating and initializing objects. 

To instantiate a Python class, you need to use the constructor method, which is the `__init__()` method. The constructor method initializes the attributes or properties of an object. 

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

person1 = Person("John", 25)
print(person1.name)
print(person1.age)
```

In this example, we defined a class called `Person` with two attributes, `name` and `age`. We instantiated an object `person1` and passed two arguments to the constructor method. Finally, we printed the values of the name and age attributes. 

```python
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
In this example, we defined a class called `Employee` with three attributes, `firstname`, `lastname` and `salary`. We instantiated an object `employee1` and passed three arguments to the constructor method. Finally, we printed the values of the firstname, get_fullname() and salary attributes. 

In Python, instantiating objects is a powerful and flexible way to create objects with specific behaviors and attributes.  
  
## Initializing Objects Using the `__init__()` Method  

The `__init__()` method is used in Python classes to initialize newly-created objects. It is automatically called when an object is created using the class constructor. 

Here's an example of a class with an `__init__()` method:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("Alice", 25)
print(p1.name)  ### Output Alice

print(p1.age)  ### Output 25
```

In this example, the `Person` class has an `init` method that takes two arguments: `name` and `age`. When you create a new `Person` object, you pass in values for these arguments, and the `__init__()` method sets the corresponding instance variables.

You can also have optional or default arguments in the `__init__()` method:

```python
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

In this example, the `Rectangle` class has an `__init__()` method that takes two optional arguments: `width` and `height`. If no arguments are provided, the default values of `0` are used. 
  
## Customizing Object Initialization  

In Python, the `__init__()` method is called when an object of a class is created. It is used to initialize the attributes of the object. However, sometimes we may need to customize object initialization by specifying our own parameters. This can be achieved using the following methods:

### Creating Python Class without `__init__()`

One way to customize object initialization is to define a custom method that initializes the attributes. This method can take parameters which are used to set the values of the attributes. Here is an example:

```python
class Car:
    def set_values(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

my_car = Car()
my_car.set_values('Toyota', 'Camry', 2022)
print(my_car.make)  # Output: Toyota
```

In this example, we defined a custom method `set_values()` to initialize the attributes `make`, `model`, and `year`. We then called this method on an object of the `Car` class to set the attribute values.

### Creating Class with `__init__()`

Another way to customize object initialization is to use class-level attributes. These attributes can be set in the class definition and used to initialize the attributes of the object. Here is an example:

```python
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

In this example, we defined `make`, `model`, and `year` as class-level attributes and set their default values to an empty string and `0`. We then used these attributes to initialize the object's attributes in the `__init__()` method. We can later modify the attribute values of the object as in the previous example.  
  
## Creating Python Class Object with Flexible Initializers  

Object-oriented programming allows us to create objects with different properties. We can initialize an object with fixed properties or flexible properties by passing different arguments to the constructor. In Python, we can use the `__init__()` method to initialize an object with flexible properties. 

```python
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

rect = Rectangle(5, 10)
print(rect.width)   # Output: 5
print(rect.height)  # Output: 10
```

In the above example, we initialized the `Rectangle` object with fixed properties `width` and `height`. The object returned by the constructor will always have the same properties.

```python
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

In the above example, we initialized the `Circle` object with flexible properties `radius`, `color`, and `border`. We passed only one argument `radius` to the constructor, but we also specified default values for `color` and `border`. This allows us to create a `Circle` object with only one argument, or three arguments, or any number of arguments in between. 

## Object Creation using the `__new__()` Method  

The `__new__()` method is used in Python to create objects dynamically. It allows the developer to create a class object using the class name, and then you can add attribute after init of python class. 

```python
class Person:
    pass

dave = Person.__new__(Person)
dave.name = "Dave"
dave.age = 25
```

In the above example, we create a class called `Person` and then use the .new() method to create an object called `dave`. We then add the attributes `name` and `age` to this object after initialization. 

```python
class Car:
    def __init__(self, model, make):
        self.model = model
        self.make = make

car = Car.__new__(Car)
car.__init__("Corvette", "Chevrolet")
car.color = "red"
```

In this example, we create a class called `Car` and define its attributes during initialization using `__init__()`. We then create an object called `car` using the `__new__()` method and initialize it with the model and make attributes. Finally, we add the attribute `color` to the `car` object after initialization.
