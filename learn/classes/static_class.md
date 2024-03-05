> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/static-class

Python offers various class types, including Python static classes, which allow you to define class-level functionality without the need to create instances. One of the advantages of using a static class is that it allows you to group related functions together within a class, by integrating Python static classes into your Python projects, you can harness the benefits of organized, class-level functionality that doesn't depend on class instances. To create a static method in a class, you can use the `@staticmethod` decorator. Once created, you can call the static method directly from the class without creating an instance of it. In this article, we will explore the concept of static classes and how to create and call a static method in a class.  
  
## Understanding Python Static Classes  

Python static class is a class that does not require an instance to be created. It is created using the `@staticmethod` decorator in a class definition. A static method doesn't have access to the instance, and it also can't modify the class itself. 

### How to Use a Python Static Class and Call Static Method in Class

In addition to understanding the concept of a static method, it's crucial to grasp the significance of a static class in Python.

```python3
class MyClass:
    @staticmethod
    def static_method():
        print("This is a static method in a class")
        
MyClass.static_method()   # Output: This is a static method in a class
```

In the above example, `static_method()` is a static method in `MyClass`. It can be called using the class name without an instance of the class.

```python3
class Calculator:
    @staticmethod
    def add_numbers(x, y):
        return x + y
        
result = Calculator.add_numbers(3, 5)
print(result)   # Output: 8
```

In the above example, the `add_numbers()` static method of `Calculator` class can be called directly using the class name `Calculator`. It takes two arguments `x` and `y` and returns their sum. 

Overall, static classes and static methods provide a way to represent functionality that doesn't depend on any instance or class variables, and can be used without creating an instance of a class.  
  
## What is a Static Method in Python  

Python allows us to create static classes and static methods within a class. A static method in Python doesn't require an instance of the class to be created before it is used. Meanwhile, a Python class static method is a method whose first parameter is the class itself rather than the instance of the class.

To create static classes and static methods, we simply use the `@staticmethod` decorator in Python. 

```python3
class Math:
    @staticmethod
    def add(x, y):
        return x + y

    @staticmethod
    def subtract(x, y):
        return x - y
        
# To call the static methods in the class, we don't need to create an instance of the class
print(Math.add(2, 3))       # Output: 5
print(Math.subtract(5, 2))  # Output: 3
```

In the above example, we created a **static class** called **Math** that contains two **static methods** called **add** and **subtract**. We can call these methods directly from the class without the need to create an instance of the class.

```python3
class Person:
    count = 0

    def __init__(self, name):
        self.name = name
        Person.count += 1

    @staticmethod
    def total_people():
        return f"There are {Person.count} people."

# Create some instances of Person
person1 = Person("John")
person2 = Person("Jane")
person3 = Person("Jack")

# Call the static method from the class
print(Person.total_people())  # Output: There are 3 people.
```

In this example, we created a `Person` class with a **class variable** called `count` that will track the number of instances of the class created. We also created a **Python class static method** called `total_people` that will return the total number of people created. We can call this static method directly from the class.
  
## How to Call a Static Method in a Class  

To call a static method in a class, you need to define a static method using a built-in decorator `@staticmethod`. A static method doesn't require any instance to be called, instead, it is associated with the class itself. 

```python
class MyClass:
    
    @staticmethod  ### Defining static method
    def my_static_method():
        print("This is a static method.")
        
### Calling the static method using the class name

MyClass.my_static_method()   ### Output

```

```python3
class Math:
    
    @staticmethod   ### Defining static method

    def add(a, b):
        return a + b

    @staticmethod  ### Defining static method

    def multiply(a, b):
        return a * b

### Calling the static methods in class using class name
print(Math.add(2, 3))      ### Output 5
print(Math.multiply(2, 3)) ### Output 6

```

In the above examples, we can see how to define and call a static method using the `@staticmethod` decorator in Python.  

## When to Use Static Methods

Static methods in Python are a powerful feature that can significantly improve code organization and maintainability. However, it's essential to understand when and where to use them effectively. Here are some common scenarios where static methods can be beneficial:

### Utility Functions

Static methods are ideal for utility functions that are not tied to a specific instance of a class. These functions provide functionality that can be used across various parts of your codebase. By encapsulating them in a static method, you ensure a clean and modular structure, making your code more maintainable.

```python
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]
```

In this example, the `reverse_string` method is a utility function that can be used to reverse a string. It doesn't require access to instance-specific data and can be called directly on the class.

### Factory Methods

Static methods can be used to create instances of a class. This is particularly useful when you want to encapsulate the logic for object creation within the class itself. Factory methods simplify the process of object initialization and provide clear and concise interfaces for creating objects.

```python
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    @staticmethod
    def create_square(side_length):
        return Rectangle(side_length, side_length)
```

In this example, the `create_square` static method is a factory method that simplifies the creation of square `Rectangle` instances.

### Caching and Memoization

Static methods can be used for caching or memoization purposes. When you need to store and reuse calculated results, static methods can help maintain a cache within the class, making subsequent calculations more efficient.

```python
class MathUtils:
    _fib_cache = {0: 0, 1: 1}

    @staticmethod
    def fibonacci(n):
        if n not in MathUtils._fib_cache:
            MathUtils._fib_cache[n] = MathUtils.fibonacci(n - 1) + MathUtils.fibonacci(n - 2)
        return MathUtils._fib_cache[n]
```

In this example, the `fibonacci` static method calculates Fibonacci numbers with memoization to optimize performance.

### Code Organization

Use static methods to group related functions within a class. This improves code organization and readability. When functions share a common purpose but don't depend on instance-specific data, encapsulating them as static methods within the same class keeps your codebase structured.

```python
class FileUtils:
    @staticmethod
    def read_file(filename):
        # Read file content

    @staticmethod
    def write_file(filename, content):
        # Write content to a file
```

In this example, the `FileUtils` class groups methods related to file operations, providing a clear and organized way to work with files.

By recognizing these scenarios, you can effectively harness the power of static methods in your Python codebase and create more maintainable and organized software. Static methods offer a clean and concise way to encapsulate functionality that doesn't depend on instance-specific data while improving code readability and maintainability.
  
## Static Classes vs Regular Classes  

Static classes in Python are classes that have class-level attributes and methods that can be accessed without creating an instance of the class. They are defined using the `@staticmethod` decorator. On the other hand, regular classes in Python are the ones that require an object of the class to access attribute or methods.

### Python Static Class

```python3
class StaticClass:
    @staticmethod
    def my_static_method():
        print("This is a static method")

# Call static method in class
StaticClass.my_static_method()
```

In the above example, we have defined a static class `StaticClass` with a static method `my_static_method`. We can call this method without creating an instance of the class.
  
## How to use Static Classes in Python

Static classes in Python are classes that are used to group functions that cannot be classified under existing classes. These classes do not require an instance of the class to be created in order to be accessed. Instead, static methods can be called directly from the class itself. Here are some of the top benefits of using static classes:

1. **Namespace organization** - Static classes can be used to organize functions that do not fit well under any existing class. This helps in maintaining a clean and organized code structure.

2. **Code reusability** - Static classes can be reused across multiple modules and functions, making the code reusable and easy to maintain.

3. **Improved code readability** - Static classes make it easier to read and understand the code, as the functions are grouped under a single class and can be accessed directly.

```python
class MathUtils:
    @staticmethod
    def add_numbers(a, b):
        return a + b

result = MathUtils.add_numbers(2, 3)
print(result)
```

In this example, we have created a static class `MathUtils` and defined a static method `add_numbers` that takes two arguments and returns their sum. The static method can be called directly from the class `MathUtils` without creating an instance of the class.

```python3
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]

class TextUtils:
    @staticmethod
    def reverse_and_uppercase(string):
        reversed_string = StringUtils.reverse_string(string)
        return reversed_string.upper()

result = TextUtils.reverse_and_uppercase("Hello World")
print(result)
```

In this example, we have created two static classes `StringUtils` and `TextUtils`. The `StringUtils` class contains a static method `reverse_string` that returns a reversed string. The `TextUtils` class contains a static method `reverse_and_uppercase` that calls the `reverse_string` method from the `StringUtils` class and returns the reversed string in uppercase. 

## Static Variables in Class
 
In Python, static variables are class-level variables that are shared among all instances of the class. These variables are defined within the class but outside any method, and they retain their value across different instances of the class.

Static variables are useful when you want to store data that is shared by all instances of a class or when you want to maintain a count or a common configuration across all instances.

Here are two code examples that demonstrate the usage of static variables in Python classes:

### Example 1: Counting Instances

```python3
class Car:
    # Static variable to keep track of the number of instances
    count = 0

    def __init__(self, name):
        self.name = name
        # Increment the count when a new instance is created
        Car.count += 1

# Creating instances of the Car class
car1 = Car("Tesla")
car2 = Car("BMW")
car3 = Car("Audi")

# Accessing the static variable using the class name
print("Total cars:", Car.count)  # Output: Total cars: 3
```

In the above example, the `count` variable is a static variable that keeps track of the number of `Car` instances created. It is incremented in the constructor (`__init__`) whenever a new instance is created. The static variable is accessed using the class name (`Car.count`).

### Example 2: Common Configuration

```python3
class Circle:
    # Class-level constant for pi
    PI = 3.14159

    def __init__(self, radius):
        self.radius = radius

    def calculate_area(self):
        # Accessing the static variable inside an instance method
        area = Circle.PI * self.radius * self.radius
        return area

# Creating instances of the Circle class
circle1 = Circle(5)
circle2 = Circle(7)

# Calling the instance method to calculate the area
area1 = circle1.calculate_area()
area2 = circle2.calculate_area()

print("Area 1:", area1)  # Output: Area 1: 78.53975
print("Area 2:", area2)  # Output: Area 2: 153.93791

```

In this example, the `PI` variable is a static variable that stores the value of `pi`. It is used inside the calculate_area method to calculate the area of a circle. The static variable is accessed using the class name (`Circle.PI`).

Static variables are shared among all instances of a class and can be accessed using the class name or through an instance of the class. They are a useful tool for managing data that is common to all instances or for maintaining shared configuration across objects.

## The Difference between a Class Method and a Static Method

Now that you're familiar with class methods and static methods, it's time to delve into the world of Python's static class and its distinctive properties.

Abstract class method is defined as a method that is declared but contains no implementation. It is up to the subclass to provide the implementation. An abstract method is defined using the **@abstractmethod** decorator in Python.

Class methods are used to modify the class or its properties. They are defined using the `@classmethod` decorator and are passed the class as its first argument instead of the instance.

Python static methods are called on the class and do not take any special first argument. They are defined using the `@staticmethod` decorator.

### Key Differences Between Class Method vs Static Method in Python

| Class method  | Static method  |
|---|---|
| Decorator: **@classmethod** | Decorator: **@staticmethod** |
| First argument: **cls** (class itself) | No special first argument |
| Can modify class state or properties | Cannot modify class state or properties |
| Useful for class-specific operations | Useful for utility operations unrelated to the class |
| Can access class-level variables | Cannot access class-level variables |

### Example 1: Class method

```python3
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
