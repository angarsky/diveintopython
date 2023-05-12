This article explores the ins and outs of working with methods and functions in classes in Python. Specifically, we delve into the important concepts of the class constructor (or `__init__` method), abstract class methods, and the difference between class methods and static methods. So if you're looking to elevate your understanding of functions in a class, read on!  
  
## Fundamentals of Python Functions in a Class

Python allows us to define functions inside a class. These functions are called methods, and they can access the attributes (variables) and methods of the class. A class constructor is a special method that is called when an object of a class is created. Here are some important concepts related to methods and functions in Python:
  
## Mastering the Python Class Constructor   

We can define functions in a class, known as methods. The class constructor or `__init__` method is a special method that is called when an object of the class is created. It is used to initialize the instance variables of a class.

An abstract class method is a method that is declared but contains no implementation. It is used as a template for other methods that are defined in a subclass.

A class method is a method that is bound to the class and not the instance of the class. It can be accessed using the class name.

A static method is a method that is bound to the class and not the instance of the class. It does not take any argument like self or cls.

### Example 1: Class Constructor

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

In the above example, we defined a `Person` class with a constructor that initializes the name and age attributes of the class. We then created an object of the class `p1` and accessed its attributes using dot notation.

### Example 2: Class Method vs Static Method

```python
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

In this example, we defined a `Calculator` class with two methods: `add` as a class method and `multiply` as a static method. We accessed these methods using the class name `Calculator` without creating an object of the class. We used the `@classmethod` and `@staticmethod` decorators to define these methods.  

## Python Abstract Class Method

An abstract class method is a method that is declared in an abstract base class but does not have an implementation. It is used to define a method that must be implemented by any class that inherits from the abstract class. Abstract class methods are created using the `@abstractmethod` decorator. Here is an example of an abstract class method in Python:

```python
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
  
## Distinguishing Class Method vs Static Method

Abstract class method is defined as a method that is declared but contains no implementation. It is up to the subclass to provide the implementation. An abstract method is defined using the **@abstractmethod** decorator in Python.

Class methods are used to modify the class or its properties. They are defined using the `@classmethod` decorator and are passed the class as its first argument instead of the instance.

Python static methods are called on the class and do not take any special first argument. They are defined using the `@staticmethod` decorator.

### Key Differences Between Class Method vs Static Method in Python:

| Class method  | Static method  |
|---|---|
| Decorator: **@classmethod** | Decorator: **@staticmethod** |
| First argument: **cls** (class itself) | No special first argument |
| Can modify class state or properties | Cannot modify class state or properties |
| Useful for class-specific operations | Useful for utility operations unrelated to the class |
| Can access class-level variables | Cannot access class-level variables |

### Example 1: Class method
```python
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

### Example 2: Static method
```python
class Formatter:
    @staticmethod
    def format_string(string):
        return string.upper()

print(Formatter.format_string('hello')) # Output: 'HELLO'
```  
