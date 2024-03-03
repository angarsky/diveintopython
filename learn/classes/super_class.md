> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/super-class

In this article, we will delve into the intricacies of Python Super Classes. Get ready to unlock the full potential of Python Development by mastering the vital elements of Super Class in Python.  
  
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
  
## Python Abstract Class  

Abstract class is a class that cannot be instantiated and is meant to be subclassed by other classes. The `super()` function is used to access and call methods from a parent or superclass in Python. Here are two code examples that illustrate the use of `super()` in Python abstract classes.

### Define an Abstract Class

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

### Define a Parent Class

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
  
## The Role of `super()` in Class Inheritance  

In Python, `super()` is a built-in function that gives access to methods of a parent class through inheritance. It is used to call a method of the parent class without explicitly naming the parent class. It is also used in Python 3 abstract classes to call `super().__init__()` method.

```python
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
  
## Implementing Multiple Inheritance With Super Class  

Python supports multiple inheritance, which means a class can inherit from multiple parent classes. In such cases, the `super()` function plays a crucial role in managing the order in which the parent classes' methods are called. When dealing with multiple inheritances, you can use `super()` to navigate the method resolution order (MRO) effectively.

Example:

```python
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

Output:

```python
Method from class A
Method from class C
```

In this example, class `C` inherits from both `A` and `B`. The `super()` function helps call the method from class `A` in the MRO, followed by its own method.

## Method Resolution Order (MRO)

Method Resolution Order (MRO) is a critical concept in multiple inheritances. Python uses the C3 linearization algorithm to determine the order in which methods are called. Understanding the MRO can help you predict how `super()` functions in complex inheritance hierarchies.

Example:

```python
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

Output:

```python
Method from class B
Method from class C
Method from class D
```

In this example, `D` inherits from both `B` and `C`, and the MRO ensures the correct order of method calls.

Including these sections in your article will provide a comprehensive understanding of how `super()` works in different inheritance scenarios and the significance of Method Resolution Order in Python.

## Multi-Level Inheritance With Super Class

Multi-level inheritance is a common pattern in object-oriented programming, where a subclass inherits from another subclass. In such scenarios, `super()` allows you to access and extend the behavior of the parent class without tightly coupling your code to specific class names.

Example:

```python
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

Output:

```python
Grandparent speaks
Parent speaks
Child speaks
```

Here, the `super()` function ensures that each level of the class hierarchy contributes to the final behavior.
