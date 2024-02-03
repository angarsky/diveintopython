> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes

Classes in Python allow developers to create reusable components for their code, making it easier to maintain and modify. In this article, we will explore the basics of classes in Python and how to use them effectively in your projects.  

## Basic Principles of Object-Oriented Programming  

Object-oriented programming (OOP) is a programming paradigm that uses objects and their interactions to design applications. Python is an object-oriented programming language that supports next OOP concepts: 

1.  **Encapsulation**: Encapsulation is the mechanism of bundling data (attributes) and methods together within a class. It hides the internal details of an object and provides public interfaces to interact with it. Encapsulation helps in achieving data abstraction and code modularity.

2. **Inheritance**: Inheritance allows a class (subclass) to inherit properties and methods from another class (superclass). The subclass can extend or modify the inherited behavior while inheriting the common characteristics of the superclass. Inheritance promotes code reusability and supports the "is-a" relationship.

3. **Polymorphism**: Polymorphism allows objects of different classes to be treated as objects of a common superclass. It enables the use of a single interface to represent different types of objects. Polymorphism is achieved through method overriding and method overloading.

4. **Abstraction**: Abstraction focuses on representing essential features of an object while hiding the unnecessary details. It allows programmers to create abstract classes and methods that define the common behavior, leaving the implementation details to the subclasses.
  
## What is a Class in Python

In Python, a class is a blueprint for creating objects (also known as instances). It defines a set of attributes (variables) and methods (functions) that the objects created from the class will have. In other words, a class serves as a template or a structure for creating objects with predefined characteristics and behaviors.

### How to Create a Class in Python

The `class` keyword is used to create a class. Here is an example of a simple `Person` class:

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def greet(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

person = Person("John", 30)
person.greet()

# Output:
# 
# Hello, my name is John and I am 30 years old.
```

In this example, the `Person` class has two attributes `name` and `age`, and a method `greet` that prints a greeting message. The `__init__` method is a constructor that initializes the attributes of the object. To create an object of the `Person` class, we use the class constructor and pass in the required parameters.

Inheritance is a mechanism that allows a subclass to inherit the properties (methods and attributes) of its superclass. Polymorphism allows objects of different classes to be treated as if they are of the same type.

## Advantages of Utilizing Classes  

Python class is a blueprint for creating objects that have a set of attributes and methods. It is a fundamental concept in object-oriented programming. Here are some benefits of utilizing classes:

- **Code organization:** Classes allow you to group related data and functionality together in a single block of code. This improves code readability, reduces duplication, and makes it easier to maintain and update your code.

- **Inheritance:** Classes can be used to create new classes that inherit properties and methods from existing ones. This allows you to reuse code and avoid writing redundant code.

```python3
class Employee:
    """A class representing an employee."""

    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def get_salary(self):
        return self.salary

    def set_salary(self, new_salary):
        self.salary = new_salary

class Manager(Employee):
    """A class representing a manager, inheriting from Employee."""

    def __init__(self, name, salary, bonus):
        super().__init__(name, salary)
        self.bonus = bonus

    def get_salary(self):
        return self.salary + self.bonus
```

## How to Create a Python Object  

An object is an instance of a class that encapsulates data along with methods or functions to operate on that data. Creating an object involves defining a class and then instantiate class using the class constructor.

### Example of Creating Python Objects

```python

class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model
    
    def get_make(self):
        return self.make
    
    def get_model(self):
        return self.model

new_car = Car("Toyota", "Camry")
print(new_car.get_make())
print(new_car.get_model())

# Output:
# Toyota
# Camry
```

To create a Python object, you define a class and then instantiate class using the class constructor. You can then call methods or access attributes of the object. With these examples, you can get started with creating Python objects in your own projects.  
  
## Defining Classes in Python  

Creating a class in Python is done using the keyword `class`. Classes in Python allow for the creation of objects that have attributes and methods.

The following code defines a simple class called `Car` and creates an instance of that class called `my_car`:

### Example of a Class Definition

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

my_car = Car("Toyota", "Corolla", 2022)
```

In this example, the `__init__` method is used for **Python class initialization**. The `self` parameter refers to the object instance being created. The `make`, `model`, and `year` parameters are attributes of the object that can be accessed and modified using dot notation. Finally, an instance of the `Car` class is created with the `my_car` variable, which is passed the arguments `Toyota`, `Corolla`, and 2022.

The following example defines a more complex class called `BankAccount`:

### Example of a Complex Class

```python
class BankAccount:
    def __init__(self, account_number, balance):
        self.account_number = account_number
        self.balance = balance
        self.transactions = []

    def deposit(self, amount):
        self.balance += amount
        self.transactions.append(("deposit", amount))

    def withdraw(self, amount):
        if amount > self.balance:
            raise ValueError("Not enough funds")
        self.balance -= amount
        self.transactions.append(("withdrawal", amount))

my_account = BankAccount("123456", 500)
my_account.deposit(200)
my_account.withdraw(50)
```

In this example, the `BankAccount` class is defined with an `__init__` that sets the `account_number` and `balance` attributes. A `transactions` list is also initialized, which will keep track of all transactions on the account. The `deposit` and `withdraw` methods can be called on a `BankAccount` object to modify the account's balance and add a transaction. Finally, the `my_account` variable is created as a `BankAccount` object with an initial balance of `500`, and the account is modified with a `deposit` and a withdrawal.

These examples illustrate the basics of defining classes in Python, including the use of the `class` keyword, the `__init__` method for initializing objects, and the creation of instance methods to modify object attributes.  
   
## The Difference between Classes and Instances  

Classes in Python are the blueprint for creating objects. An object is an instance of a class, and it can have attributes (variables) and methods (functions). 

To create a class in Python, we use the `class` keyword followed by the name of the class. Here is an example:

```python
class Dog:
   def __init__(self, name, breed):
      self.name = name
      self.breed = breed

   def bark(self):
      print("Woof!")

my_dog = Dog("Fido", "Labrador")

print(my_dog.name) 

print(my_dog.breed) 

my_dog.bark() 
```

In this example, we created a `Dog` class with two attributes (`name` and `breed`) and one method (`bark`). The `__init__` method is a special method that gets called when we create a new instance of the class. 

To create a new instance of a class in Python, we can simply call the class like a function and pass in any necessary arguments.

In this example, we created a new instance of the `Dog` class and assigned it to the variable `my_dog`. We passed in two arguments (``Fido`` and ``Labrador``) that were used to set the `name` and `breed` attributes of the object.

We can then access the attributes and methods of the object using dot notation.

In summary, classes in Python allow us to create objects with attributes and methods, and instances of a class are created by calling the class like a function.

## Methods vs Functions in Python

Python methods and functions are two crucial programming concepts in Python. A method is a function that is associated with an object, while a function is not associated with any object. In other words, a method is a function that belongs to a class, while a function is not linked to any class. 

In Python, a method is typically called in the form `object.method()`, while a function is called in the form `function()`. Methods are used to carry out actions on an object or `return` a value that is related to the object. On the other hand, functions are used to carry out a task or operation on data and `return` a result.

Here are two examples to differentiate between methods and functions in Python:

### A Method Example

```python
# Define a list
my_list = [1, 2, 3, 4, 5]

# Use the append method to add a value to the list
my_list.append(6)

# Print the updated list
print(my_list)  # Output: [1, 2, 3, 4, 5, 6]
```

In the example above, the `append()` method is associated with the `my_list` object. It adds the value `6` to the list. 

### A Function Example

```python
# Define a function to calculate the area of a rectangle
def calculate_area(length, width):
    area = length * width
    return area

# Call the function with two arguments
rectangle_area = calculate_area(5, 10)

# Print the area of the rectangle
print(rectangle_area)  # Output: 50
```

In the example above, the `calculate_area()` function is not associated with any object. It takes two arguments `length` and `width` and returns the `area` of the rectangle. 

In conclusion, while methods and functions may have some similarities, the main difference between them is that methods are associated with objects, while functions are not. Knowing when to use methods and functions is an important aspect of programming in Python. 
  
## Invoking of Class Methods  

In Python, class methods are defined using the `@classmethod` decorator. Class methods can be called by the class or an instance of the class.

To invoke a class method in Python, you can use the following syntax:

```python
class MyClass:
    def __init__(self, name):
        self.name = name

    @classmethod
    def greet(cls):
        print(f"Hello from {cls.__name__}!")

    def say_hello(self):
        print(f"Hello, {self.name}!")

# Invoking class method without creating an instance
MyClass.greet()

# Creating an instance and invoking instance method
obj = MyClass("Alice")
obj.say_hello()
```

In this example, we have a class called `MyClass` with two methods: `greet()` and `say_hello()`.

The `greet()` method is a class method decorated with `@classmethod`. It takes the cls parameter, which refers to the class itself. It prints a greeting message along with the name of the class.

The `say_hello()` method is an instance method. It takes the `self` parameter, which refers to the instance of the class. It prints a personalized greeting message using the `name` attribute of the instance.

To invoke a class method, you can directly call it on the class itself, without creating an instance.

## Implemenation of Class Trees in Python  

In Python programming, a class is a blueprint for creating objects with common attributes and methods. A class tree represents a hierarchy of classes, where each class inherits attributes and methods from its parent class or superclass.

### Class Tree Example

```python
class Animal:
    def __init__(self, name, sound):
        self.name = name
        self.sound = sound

    def make_sound(self):
        return self.sound

class Dog(Animal):
    def __init__(self, name, sound):
        Animal.__init__(self, name, sound)

dog = Dog("Rufus", "Woof")
print(dog.make_sound())   # Output: Woof
```

In this example, we define two classes, `Animal` and `Dog`. The `Dog` class inherits from the `Animal` class using the syntax `class Dog(Animal):`. The `Dog` class has its own constructor (`__init__`) but also calls the constructor of its parent class (`Animal.__init__(self, name, sound)`).

### More Complex Class Tree Example

```python
class A:
    def method(self):
        print("Method of class A")

class B:
    def method(self):
        print("Method of class B")

class C(A, B):
    pass

c = C()
c.method()  # Output: Method of class A
```

In this example, we define three classes `A`, `B`, and `C`. The `C` class inherits from both `A` and `B` using the syntax `class C(A, B):`. When calling the `method` function on the `C` object, it resolves to the `A` method because `A` is listed first in the inheritance chain. 
  
## The Essence of OOP: Code Reusability  

Object-oriented programming (OOP) is a popular software programming paradigm that emphasizes the creation of reusable code components. OOP programming is powerful in Python because of its ability to implement such reusable code in the form of classes and modules.

### A Class Import in Python

Python is an object-oriented language, which means that classes play a central role in its design. To access class methods and attributes from another module, the class must be imported using the `import` statement: `from module_name import Class_Name`.

## Inheritance  

In Python, inheritance allows a class to inherit properties and methods of another class. This helps in code reusability, making it easy to create new classes without having to rewrite the code from scratch.

### How to Inherit from Two Classes

Python also allows a class to inherit from two classes and calls it a two-level inheritance. In this case, the new class inherits from a class that has already inherited from another class.

```python
class A:
    def hello(self):
        print("Hello from A")

class B(A):
    pass

class C(B):
    pass

obj = C()
obj.hello() # Output: Hello from A
```

In the code above, the class `C` inherits from class `B`, which already inherits from class `A`, and thus can access methods from both classes.

### How to Inherit From Multiple Classes in Python

Python allows a class to inherit from multiple classes at the same time. This is known as multiple inheritance and enables the new class to have the characteristics of both classes. 

```python
class A:
    def hello(self):
        print("Hello from A")

class B:
    def hi(self):
        print("Hi from B")

class C:
    def greet(self):
        print("Greet from C")

class D:
    def good_morning(self):
        print("Good_morning from D")

class E(A,B,C, D):
    pass

obj = E()
obj.hello() # Output: Hello from A
obj.hi() # Output : Hi from B
obj.good_morning() # Output : Good_morning from D
```

In the code above, class `E` inherits from `A`, `B`, `C`, `D` classes and can access methods from all this classes.
