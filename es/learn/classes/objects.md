> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/objects

If you're looking to deepen your knowledge of programming in Python, it's essential to have a solid understanding of classes and objects. Essentially, a class is a blueprint for creating objects, while objects themselves are instances of these classes. In this guide, we'll explore the world of class objects, and delve into the basics of classes and objects in this powerful language. So whether you're just starting out with Python or seeking to improve your existing skills, read on to learn more about this crucial aspect of the language.  
  
## How to Create an Object in Python  

Classes and objects in Python are fundamental concepts in object-oriented programming. An object is simply an instance of a class.

```python
# Creating a Class
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

    def display(self):
        print(f"The car is a {self.year} {self.make} {self.model}.")
        
# Creating Objects
car1 = Car('Toyota', 'Corolla', 2018)
car2 = Car('Honda', 'Civic', 2019)

car1.display() # The car is a 2018 Toyota Corolla.
car2.display() # The car is a 2019 Honda Civic.
```

In this example, we've created a class called `Car` that has three attributes: `make`, `model`, and `year`. The `__init__()` method is used to initialize the attributes when creating a new object. The `display()` method is used to print information about the car. We've created two objects (`car1` and `car2`) from the `Car` class. We've passed in values for the `make`, `model`, and `year` attributes for each car. We've then called the `display()` method on each object to print information about the car.

To summarize, classes and objects in Python are used to create custom data types that can have attributes and methods. Using class objects in Python allows for more organized and modular code.  
  
## What is an Object in Python  

Class object in Python refers to a blueprint or a template for creating objects. It defines the attributes and methods that an object will have. 
In Python, classes are used to create class objects which can be used to create instances or objects of that class. 

```python
class Car:
    # Class object
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
    
    # Class method
    def get_details(self):
        return f"{self.make} {self.model} ({self.year})"
```

In this example, `Car` is a class object which defines the attributes - `make`, `model` and `year` of a car and a method `get_details()` that returns the details of the car.

```python
class Dog:
    # Class object
    def __init__(self, breed, age):
        self.breed = breed
        self.age = age
        
    # Class method
    def bark(self):
        return "Woof! Woof!"
```

In this example, `Dog` is another class object which defines the attributes - `breed` and `age` of a dog and a method `bark()` that returns the sound of a dog. 
   
## Exploring the Key Features of Class Object  

A class object in Python is a blueprint for creating objects. It defines a set of attributes and methods that all objects created from that class will have.

- Classes: A class is a blueprint for creating objects. It defines the attributes and methods that all objects created from that class will have. 

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

car1 = Car("Toyota", "Camry", 2020)
car2 = Car("Honda", "Accord", 2021)
```

- Objects: An object is an instance of a class. It has all the attributes and methods defined in the class.

```python3
class Player:
    def __init__(self, name, position, number):
        self.name = name
        self.position = position
        self.number = number

p1 = Player("LeBron James", "Small Forward", 23)
print(p1.name, p1.position, p1.number)
```
   
## Troubleshooting Common Issues With Class Object  

When working with class objects, there may be some common issues that can occur. Here are some of the most common issues and their solutions:

1. `AttributeError`: This error occurs when trying to access an attribute that does not exist in the class or object. To solve this error, make sure the attribute exists and has been properly defined.

```python3
class MyClass:
    def __init__(self, val):
        self.value = val

obj = MyClass(5)
print(obj.value)  # Output: 5

# print(obj.foo)  Output: AttributeError: 'MyClass' object has no attribute 'foo'
```

2. `TypeError`: This error occurs when a function or method is called with the wrong number or type of arguments. To solve this error, make sure the function or method is called with the correct number and type of arguments.

```python3
class MyClass:
    def __init__(self, val):
        self.value = val

    def add(self, num):
        return self.value + num

obj = MyClass(5)
print(obj.add(3))  # Output: 8

# print(obj.add("3"))  Output: TypeError: unsupported operand type(s) for +: 'int' and 'str'
```

## How to Get Attributes of Object  

Python object types have attributes that represent characteristics or behaviors of the object. To get all attributes of object in Python, you can use the `getattr()` function or access them directly using the dot notation.

### Using `getattr()` function

The `getattr()` function takes two arguments, the object and attribute `name,` and returns the value of the attribute.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = getattr(my_obj, 'name')
print(name) # Output: 'John'
```

### Accessing attributes directly

You can also access the attributes of an object directly using the dot notation.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = my_obj.name
print(name) # Output: 'John'
```

In conclusion, getting attributes of Python object types can be done by using the `getattr()` function or by accessing them directly using the dot notation.  

## Exploring Attribute Inheritance and Searching  

Attributes can be inherited from parent classes to child classes. Attribute inheritance allows child classes to access and use attributes defined in their parent classes. Python provides a built-in function `issubclass()` to check whether a given class is a subclass of another class.

### Example of a Class in Python

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

class Student(Person):
    def __init__(self, name, age, student_id):
        super().__init__(name, age)
        self.student_id = student_id
```

In this example, `Student` is a child class of `Person`. The `Student` class inherits the `name` and `age` attributes from the `Person` class.

### Attribute inheritance

```python
class A:
    x = 10

class B(A):
    pass

class C(B):
    pass

print(B.x)   # 10

print(C.x)   # 10

```

In this example, `A` is the parent class, `B` is the child class and `C` is the grandchild class. The `x` attribute defined in the `A` class is inherited by both `B` and `C` classes.

### Attribute search order

```python3
class A:
    x = 10

class B(A):
    x = 20

class C(B):
    pass

print(C.x)   ### Output 20

```

In this example, `A` is the parent class, `B` is the child class and `C` is the grandchild class. Both `A` and `B` classes have an attribute named `x`. In this case, the attribute search order is from the current class (which is `C`), to its parent class `B` and finally to the grandparent class `A`. The value of `x` found in the closest ancestor (`B`) is printed as the output. 

## How to Print all Object Attributes  

To get attributes of an object in Python, you can use the built-in `dir` function. To print object attributes, you need to iterate over the output of the `dir` function and use the `getattr` function to get the values of the attributes. Here are two code examples:

```python
class MyClass:
    def __init__(self, foo, bar):
        self.foo = foo
        self.bar = bar
        
my_obj = MyClass(5, "hello")

### using the dir function

for attr in dir(my_obj):
    print(f"{attr}: {getattr(my_obj, attr)}")
```

```python
class Person:
    def __init__(self, name, age, city):
        self.name = name
        self.age = age
        self.city = city
        
person_obj = Person("John", 30, "New York")

### using list comprehension

attrs = [attr for attr in dir(person_obj) if not callable(getattr(person_obj, attr)) and not attr.startswith("__")]
for attr in attrs:
    print(f"{attr}: {getattr(person_obj, attr)}")
```

In both examples, the `dir` function is used to get a list of all the attributes of the object. The first example uses a simple for loop to iterate over the list and `print` each attribute along with its `value` using the `getattr` function. The second example uses a list comprehension to filter out any `callable` attributes (such as methods) and any attributes that start with two underscores (which are considered private). The resulting list of attributes is then printed using `getattr`.  
  
## How to Check the Type of Object in Python  

In Python, you can check the `type` of an object by using the `type()` function. This function returns the `type` of the object that you pass as an argument. Here are two examples to illustrate how to use the `type()` function:

```python3
# Checking the type of an integer
number = 42
print(type(number))  # Output: <class 'int'>
```

```python3
# Checking the type of a list
fruits = ['apple', 'banana', 'cherry']
print(type(fruits))  # Output: <class 'list'>
```

Using the `type()` function allows you to get the `type` of any Python object quickly and easily. This can be useful when you want to debug your code or write conditional statements based on the `type` of an object.  
  
## Serialize Object  

Serialization in Python refers to the process of converting a Python object into a byte stream. This can be useful when transferring data between different systems or saving a program state to disk. The most common serialization module in Python is `pickle`, which can serialize most Python objects.  

Here are two examples of how to use [pickle](https://docs.python.org/3/library/pickle.html) to serialize an object in Python:

```python
import pickle
my_dict = {'key': 'value'}
with open('serialized_dict.pickle', 'wb') as f:
    pickle.dump(my_dict, f)

class MyClass:
    def __init__(self, value):
        self.value = value

my_object = MyClass('hello')
serialized_object = pickle.dumps(my_object)
```

In the first case, we create a dictionary object and dump it to a file using `pickle.dump()`. In the second case, we create a `MyClass` instance and serialize it to a byte string using `pickle.dumps()`. 

Using `pickle` for Python object serializing is easy and powerful. However, please note that `pickle` is not secure and should not be used to serialize or deserialize untrusted data.  
  
## Error: Python Object has no Attribute  

When you encounter an error message that says `Python Object has no Attribute` in Python, it means that you are trying to access an attribute or method that does not exist in that object. It could be due to a typo in the attribute name or using the wrong variable to access the attribute.

Here are two examples of how this error can occur and how to fix it:

```python
class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model

my_car = Car('Toyota', 'Camry')
print(my_car.color)

# Output:
# 
# AttributeError: 'Car' object has no attribute 'color'
```

Explanation: In this example, we are trying to access the attribute 'color', which does not exist in the `my_car` object.

To fix this error, you need to either add the `color` attribute to the `Car` class or use an existing attribute.

```python3
class Car:
    def __init__(self, make, model, color):
        self.make = make
        self.model = model
        self.color = color

my_car = Car('Toyota', 'Camry', 'red')
print(my_car.color)

# Output:
# 
# 'red'
```

```python
def get_average(numbers):
    total = 0
    for num in numbers:
        total += num
    return total / len(numbers)

my_nums = [1, 2, 3, '4', 5] 
average = get_average(my_nums)

# Output:
# 
# TypeError: unsupported operand type(s) for +=: 'int' and 'str'
```

Explanation: In this example, we are trying to add a string `value` to the `total` variable, which results in an error because the `numeric()` method only works with numerical values.

To fix this error, you can use the `isinstance()` function to check `if` the `value` is numerical before adding it to the `total` variable.

```python3
def get_average(numbers):
    total = 0
    count = 0
    for num in numbers:
        if isinstance(num, (int, float)):
            total += num
            count += 1
    return total / count

my_nums = [1, 2, 3, '4', 5] 
average = get_average(my_nums)
print(average)

# Output:
# 
# 2.75
```
  
## How to List Available Methods in Class  

In Python, you can list all available methods in your class using the `dir()` or `vars()` function. These functions allow you to introspect your class and see all the methods and attributes it contains. 

### Using `dir()` Function

```python3
class MyClass:
    def __init__(self):
        self.my_var = "Hello world"
        
    def my_method(self):
        print("My Method")

print(dir(MyClass))

# Output:
# 
# ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', 
# '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__',
# '__hash__', '__init__', '__le__', '__lt__', '__module__', '__ne__',
# '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', 
# '__sizeof__', '__str__', '__subclasshook__', '__weakref__',
#  'my_method']
```

### Using `vars()` Function

```python3
class MyClass:
    def __init__(self):
        self.my_var = "Hello world"
        
    def my_method(self):
        print("My Method")

print(vars(MyClass))

# Output:
# 
# {'__module__': '__main__', '__init__': <function MyClass.__init__ at 0x7f1f9f0bd430>, 
#  'my_method': <function MyClass.my_method at 0x7f1f9f0bd4c0>, '__dict__':
# <u>attribute '__dict__' of 'MyClass' objects</u>, '__weakref__':
# <u>attribute '__weakref__' of 'MyClass' objects</u>, '__doc__': None}
```

Using these functions can help you to understand how a class is structured and how to interact with it.  
