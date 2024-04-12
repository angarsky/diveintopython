> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/methods

This article explores the ins and outs of working with methods and functions in classes in Python. Specifically, we delve into the important concepts of the class constructor (or `__init__` method), abstract class methods, and the difference between class methods and static methods. So if you're looking to elevate your understanding of functions in a class, read on!  
  
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

In this example, we defined a `Calculator` class with two methods: `add` as a class method and `multiply` as a static method. We accessed these methods using the class name `Calculator` without creating an object of the class. We used the `@classmethod` and `@staticmethod` decorators to define these methods.  

## Python Abstract Class Method

An abstract class method is a method that is declared in an abstract base class but does not have an implementation. It is used to define a method that must be implemented by any class that inherits from the abstract class. Abstract class methods are created using the `@abstractmethod` decorator. Here is an example of an abstract class method in Python:

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
  
## Method Overloading  

Method overloading is a feature in Python that allows a class to have multiple methods with the same name but with different parameters. This feature helps to provide flexibility and reusability to the code design. It is different from method overriding that allows a subclass to provide its implementation of a method defined in its superclass.

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

In the first example, we define a class with two methods with the same name but with different parameters. Python does not support method overloading directly, so the last method definition overwrites the previous one. Thus, when we create an object of the class and call the `method`, we will get the output of the last method definition.

In the second example, we define a class with a single `method` that takes multiple optional parameters. We can use conditional statements to check the number of parameters passed and `print` the output accordingly. This approach provides reusability to the code as we can call the same `method` with different parameters.  
  
## Public, Private and Protected Methods in Python

In Python, we can differentiate between public, private, and protected methods based on their access level. 

- **Public methods** are those that can be accessed from anywhere within or outside the class.
- **Private methods** in a Python's class are those that can only be accessed from inside the class.
- **Protected methods** are those that can only be accessed from inside the class and its subclasses.

### Public Methods

Public methods are accessible from anywhere within or outside the class. They play a significant role in interacting with the class's attributes and functionality. When developers create a method without any underscore prefix, it automatically becomes a public method.

```python3
class MyClass:
    def public_method(self):
        print("This is a public method")

obj = MyClass()
obj.public_method()  # Accessing the public method
```

As shown in the example, the `public_method()` is accessible outside the class `MyClass`. These methods allow external code to interact with the class's functionalities directly.

### Python Private Methods

Private methods in Python are designed to be accessed only from within the class in which they are defined. They are indicated by prefixing the method name with double underscores `__`.

```python3
class MyClass:
    def __private_method(self):
        print("This is a private method")

obj = MyClass()
obj.__private_method()  # Attempting to access the private method (Raises an error)
```

Trying to access a private method from outside the class results in an AttributeError. Python name mangling makes the method name prefixed with double underscores harder to access directly from external code. These methods are used for internal class operations, enhancing encapsulation and preventing accidental misuse or overriding.

### Protected Methods

Protected methods are indicated by prefixing the method name with a single underscore `_`. They can be accessed from within the class itself and its subclasses.

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

Protected methods provide a way to allow subclasses to access certain methods while still preventing direct access from external code. However, unlike some other languages, Python doesn't enforce strict visibility restrictions.

## Python Getter and Setter Methods  

Python offers getter and setter convenience methods to control access to the private instance variables for classes. The getter and setter methods are important because without them, the private instance variables would not be accessible outside of the class.

Getter method allows to access the value of a private instance variable from outside a class, and the setter method allows to set the value of a private instance variable from outside a class.

Here's a simple example class with getter and setter methods:

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

Now, you can use these methods to access and set the value of `value` attribute of `MyClass`.

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

Now, you can use the property `value` of `MyClass` to get and set the value of `value` attribute:

In conclusion, getter and setter methods provide a controlled way to access and set the values of private instance variables in Python classes.  
  
## Method vs Function  

In Python, both methods and functions are used to perform a specific task. However, they have some distinct differences.

### Functions

Functions are defined outside the class and can be called anywhere in the code using its name. They take input parameters and `return` a value. Here's an example of a function that takes two numbers as input and returns their sum:

```python3
def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)
print(result)  # Output: 8
```

To use this function, we can call it and provide the input parameters:

### Methods

Methods, on the other hand, are defined inside classes and are called on instances of that class. They have access to the instance attributes and can modify its state.

Here's an example of a method that takes one input parameter and modifies the state of the instance:

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

In this example, the `accelerate()` method is defined inside the `Car` class and is called on an instance of the `Car` class. It accelerates the speed of the car by adding the input parameter to the `speed` attribute of the instance.

In summary, functions are standalone blocks of code that take input parameters and return a value, while methods are defined inside classes and are called on instances of that class, with access to the instance attributes and the ability to modify its state.  
  
## Override Class Method

Method overriding is a feature in object-oriented programming that allows a subclass to provide a different implementation of a method that is already defined in its superclass. In Python, method overriding is straightforward and is achieved by defining a method in the subclass with the same name as the method in the superclass.

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

In this example, the `Child` class extends the `Parent` class and overrides the `my_method()` method. When we create an object of the `Child` class and call `my_method()`, it will print `Child method called` instead of `Parent method called`.

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

In this example, the `Bird` class extends the `Animal` class and override class method `move()`. However, it also calls the superclass's implementation of `move()` first using the `super()` function, and then adds its own implementation of `Bird is flying`. The output will be `Animal is moving` and `Bird is flying`. 

Using method overriding in Python allows for more flexibility and customization in the behavior of your classes.  
