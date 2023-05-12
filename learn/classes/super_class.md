Super Class in Python: Understanding the Key Concepts of Python 3 Abstract Class and Super Initialization. In this article, we will delve into the intricacies of Python Class Super, focusing on how to call Super Class Method and other essential aspects. Get ready to unlock the full potential of Python Development by mastering the vital elements of Super Class in Python.  
  
## Understanding Python's Super Class  

The `super()` function in python is used to call a method in a parent class from a child class. The `super()` function helps in creating a hierarchy among classes in Python that is easy to maintain and understand. In Python 3, `super()` is commonly used for initializing abstract classes.

### Using `super()` in Python Class

```python
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

In conclusion, `super()` is a powerful function in Python that provides a clean and concise way to call parent class methods from a child class. It helps to create a clear hierarchy among classes and to maintain clean code.  
  
## Python 3 Abstract Class  

A Python 3 abstract class is a class that cannot be instantiated and is meant to be subclassed by other classes. The `super()` function is used to access and call methods from a parent or superclass in Python. Here are two code examples that illustrate the use of `super()` in Python 3 abstract classes:

### Python 3 Abstract Class. Example 1

```python
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

In this example, we define an abstract class `MyAbstractClass` with an abstract method `my_method()`. The class has an `__init__` method that uses `super()` to call the `__init__` method of the superclass. We then define a subclass `MySubclass` that overrides the `__init__` method and implements the `my_method()` method. When we instantiate an object of `MySubclass`, both `__init__` methods are called in order, and the `my_method()` method of `MySubclass` is called.

### Abstract Class. Example 2

```python
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

In this example, we define a parent class `MyParentClass` with a method `my_method()`. We then define a child class `MyChildClass` that overrides `my_method()` and uses `super()` to call the same method in the parent class. When we instantiate an object of `MyChildClass`, the `my_method()` method in the parent class is called first, followed by the same method in the child class.  
  
## The Role of `super` in Class Inheritance  

In Python, `super()` is a built-in function that gives access to methods of a parent class through inheritance. It is used to call a method of the parent class without explicitly naming the parent class. It is also used in Python 3 abstract classes to call `super().__init__()` method.

```python
### Example 1
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

In the above example, `Child` class inherits `Parent` class and initializes `name` attribute using `super()` function.

```python
### Example 2
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

In the above example, `Parent` class is an abstract class. `Child` class inherits `Parent` class and initializes the parent class using `super().__init__()` method. The `calculate()` method is implemented in `Child` class. 

## The Power of Super Class  

The `super()` function in Python is used to call a method of a super class from a sub class. It is very powerful and useful, and it can simplify inheritance hierarchies when used appropriately. 

In Python 3, `super()` takes two arguments: the first is the subclass calling `super()`, and the second is either the subclass instance or the class itself. For example:

```python
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

In this example, `super().__init__()` calls the `__init__()` method of class `A`, the super class of `B`. This way, both `A` and `B` are initialized when a new object of `B` is created.

Another use case is with abstract classes that contain `super().__init__()` in their `__init__()` method:

```python
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

In this example, `MyAbstractClass` is an abstract class that defines an `abstractmethod()` called `my_abstract_method()`. The `MyClass` class inherits from `MyAbstractClass` and defines its own implementation of `my_abstract_method()`. When a new object of `MyClass` is created, its `__init__()` method calls `super().__init__()`, which initializes the abstract class `MyAbstractClass`. 

Overall, the `super()` function is a powerful tool in Python that can simplify inheritance hierarchies and streamline object initialization.  
  
## Implementing Inheritance With Super Class  

Python's `super` keyword is used in class inheritance to call methods of the parent class. It is especially useful when working with multiple inheritance. By using `super`, we can avoid hard-coding the name of the parent class in our code and automatically use the next class in the method resolution order (MRO).

Here are a couple of examples of using `super` in Python:

```python
### Example 1
from abc import ABC, abstractmethod

class Animal(ABC):
    def __init__(self, name):
        self.name = name

    @abstractmethod
    def make_sound(self):
        pass

class Dog(Animal):
    def __init__(self, name):
        super().__init__(name)

    def make_sound(self):
        return "Woof"

class Cat(Animal):
    def __init__(self, name):
        super().__init__(name)

    def make_sound(self):
        return "Meow"

dog = Dog("Buddy")
cat = Cat("Fluffy")

print(dog.make_sound())  # Output: Woof
print(cat.make_sound())  # Output: Meow
```

In this example, `Animal` is an abstract base class defined using the `abc` module. The `Dog` and `Cat` classes inherit from `Animal` and override the `make_sound` method. When creating a new instance of `Dog` or `Cat`, we pass in a name which is used in the constructor of the parent class using `super()`.

```python
### Example 2
class Person:
    def __init__(self, name):
        self.name = name
    
    def greet(self):
        print(f"Hello, my name is {self.name}.")
        

class Student(Person):
    def __init__(self, name, school):
        super().__init__(name)
        self.school = school
    
    def greet(self):
        super().greet()
        print(f"I am a student at {self.school}.")
        

class Teacher(Person):
    def __init__(self, name, subject):
        super().__init__(name)
        self.subject = subject
    
    def greet(self):
        super().greet()
        print(f"I teach {self.subject}.")
        

student = Student("Alice", "Oxford")
teacher = Teacher("Bob", "Math")

student.greet()
teacher.greet()
```

In this example, `Person` is a base class that defines a `greet` method. The `Student` and `Teacher` classes inherit from `Person` and add extra attributes and a customized `greet` method. When calling the `greet` method on a `Student` or `Teacher` instance, we use `super()` to call the parent implementation of `greet` first, and then print out additional information. 
