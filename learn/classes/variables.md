> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/variables

Python is a powerful language that supports different types of variables and properties. In this article, we will discuss variables, attributes, and properties in Python to help you understand them better.  
  
## Understanding Variables, Attributes, and Properties   

- **Variables:** A variable is a name that refers to a value. Variables can hold any type of object.
- **Attributes:** An attribute is a value associated with an object. Attributes can be accessed using the dot notation.
- **Properties:** A property is a way to define a method as an attribute. Properties are created using the `@property` decorator.

## Python Class Variables

In Python, class variables are a powerful way to share data among all instances of a class. Let's explore how to create, access, and modify class variables.

### Creating a Class Variable

To create a class variable in Python, you simply declare it within the class but outside of any methods. Class variables are shared among all instances of the class and can be used to store data that is common to all objects created from the class.

```python
class Team:
    # Creating a class variable
    team_name = "Python Developers"
```

In this example, we create a class variable `team_name` to store the name of the team.

### Accessing a Class Variable in Python

To access a class variable, you can use the class name followed by the variable name, separated by a dot. This allows you to retrieve the shared data that applies to all instances of the class.

```python3
class Team:
    team_name = "Python Developers"

# Accessing the class variable using the class name
print("Team Name:", Team.team_name)  # Output: Team Name: Python Developers
```

In this example, the `team_name` class variable is accessed using the class name, `Team.team_name`.

### Modifying a Value of a Class Variable

Modifying the value of a class variable is straightforward. You use the class name to reference the variable and assign a new value to it.

```python3
class Team:
    team_name = "Python Developers"

# Modifying the value of the class variable
Team.team_name = "Advanced Python Developers"

# Accessing the modified value
print("Team Name:", Team.team_name)  # Output: Team Name: Advanced Python Developers
```

In this example, we modified the value of the `team_name` class variable by assigning a new value to it using the class name. The updated value is then accessed through the class name as well.

## Python Instance Variables

In Python, instance variables are unique to each instance of a class. They are defined within the methods of a class and are specific to the object they belong to. Let's explore how to create and assign values to instance variables.

### Creating an Instance Variable

To create an instance variable in Python, you can define it within the constructor method `__init__`. The constructor is a special method that gets called when an object of the class is created. Inside the constructor, you can initialize instance variables for the object.

```python
class Person:
    def __init__(self, name, age):
        # Creating instance variables
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)
```

In this example, we define two instance variables, name and `age`, within the `__init__` method of the `Person` class. These variables are unique to each `person` object created from the class.

### Assigning Values to an Instance Variable

You can assign values to instance variables during the object's creation by passing arguments to the constructor. Additionally, you can modify or update the values of instance variables at any time after the object is created.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)

# Modifying the values of instance variables
person.name = "Bob"
person.age = 35
```

In this example, we first create a `person` object with initial values for `name` and `age`. Later, we modify the values of these instance variables by directly assigning new values to them.

Instance variables are an essential part of object-oriented programming, as they allow objects to have their own data and state. These variables can store information specific to each object, making it easy to work with different instances of the same class.

## Python Class Attributes and Properties

In Python, class attributes and properties work similarly to variables, but they offer more functionality and control. Let's delve into how to define and utilize class attributes and properties.

### Defining Class Attributes

Class attributes are shared among all instances of a class. They are declared within the class but outside of any methods. Class attributes can be accessed using the class name, and they are particularly useful for storing data common to all objects created from the class.

```python
class Animal:
    # Defining a class attribute
    kingdom = "Animalia"
```

In this example, we define a class attribute `kingdom` to store the kingdom classification for all animals. Class attributes are accessed using the class name, such as `Animal.kingdom`.

### Using Properties

Properties in Python are special methods that act like attributes. They are created using the `@property` decorator to define a method as an attribute, providing additional functionality like getters, setters, and deleters.

```python3
class Circle:
    def __init__(self, radius):
        self._radius = radius

    @property
    def radius(self):
        return self._radius

    @radius.setter
    def radius(self, value):
        if value > 0:
            self._radius = value

# Creating an instance of the Circle class
circle = Circle(5)

# Accessing and modifying attributes using properties
print("Radius:", circle.radius)  # Output: Radius: 5
circle.radius = 7
print("Modified Radius:", circle.radius)  # Output: Modified Radius: 7
```

In this example, we use properties to control access to the `radius` attribute. The `@property` decorator defines a getter method, while `@radius.setter` defines a setter method.

Python class attributes and properties offer powerful ways to enhance the behavior of your classes and objects. They enable you to encapsulate data and provide controlled access to attributes, making your code more robust and maintainable.

## Private Variables in Python Classes

In Python, private variables are attributes or properties that are intended to be used only within the class and should not be accessed or modified from outside the class. They are denoted by adding a double underscore `__` before the variable or property name.

### Defining Private Variables

To define a private variable in Python, you can use the double underscore prefix `__` before the variable name. This indicates that the variable should not be accessed or modified from outside the class.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)
```

In this example, we define a private variable `__private_value` within the `MyClass` class. It's intended to be used only within the class.

### Accessing Private Variables

Private variables can only be accessed from within the class itself. Attempting to access them from outside the class will result in an AttributeError. However, you can still access them using class methods or properties.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

    def get_private_value(self):
        return self.__private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)

# Accessing private variable using a class method
private_value = obj1.get_private_value()
```

In this example, we create a method `get_private_value` within the class to access the private variable `__private_value`.

Private variables are valuable for encapsulating data and ensuring that it is not unintentionally modified from external code. They help maintain the integrity of your class and its data.

## Python Global Variables

In Python, global variables are variables that can be accessed from any part of the program, whether it's inside a function, class, or any other scope. Global variables are defined outside of any function or class, making them accessible everywhere.

### Defining Global Variables

To define a global variable in Python, you simply declare it outside of any function or class. This allows the variable to be accessed and modified from anywhere in the code.

```python
global_var = 10
```

In this example, we define a global variable `global_var` with the value `10`. This variable can be accessed and modified from anywhere in the program.

### Using Global Variables

Global variables can be used within functions, classes, or any other scope without the need for special declarations. You can access and modify global variables directly from within these scopes.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

# Creating an instance of the MyClass class
obj = MyClass()

# Accessing the global variable from within the class
print(obj.instance_var)  # Output: 10
```

In this example, the global variable `global_var` is accessed and assigned to an instance variable within the `MyClass` class.

### Modifying Global Variables

Modifying the value of a global variable is straightforward. You can access and update its value from any part of the program.

```python3
global_var = 10

def modify_global_variable():
    global global_var
    global_var = 20

# Modifying the global variable
modify_global_variable()

# Accessing the modified global variable
print(global_var)  # Output: 20
```

In this example, we create a function `modify_global_variable` that uses the `global` keyword to modify the value of the global variable `global_var`. This change is reflected when accessing the variable outside the function.

Python global variables are useful for sharing data that needs to be accessed across different parts of your program. However, it's essential to use them judiciously, as excessive use of global variables can make code harder to maintain and understand.

## Checking if a Class Has an Attribute

In Python, you can check if a class has a specific attribute using the built-in function `hasattr()`. This function allows you to determine whether a class has a particular attribute, making it a valuable tool for dynamic attribute checking.

### Using `hasattr()`

To use `hasattr()`, provide the object (in this case, the class or an instance of the class) and the attribute name as arguments. The function returns a Boolean value, indicating whether the attribute exists in the class.

```python3
class MyClass:
    var = 10

obj = MyClass()

# Checking if the class has an attribute
if hasattr(obj, 'var'):
    print('Object has var attribute')
else:
    print('Object does not have var attribute')
```

In this example, we define a class `MyClass` with an attribute `var`. Using `hasattr()`, we check whether the `obj` instance has the `var` attribute.

### Handling Attribute Existence

`hasattr()` helps you write more robust code by allowing you to check the existence of attributes before accessing or modifying them. This can prevent unexpected errors in your program.

```python
class MyClass:
    var = 10

obj = MyClass()

# Checking if the class has an attribute
if hasattr(obj, 'var'):
    # Accessing the attribute
    value = getattr(obj, 'var')
    print(f'Attribute var exists with value: {value}')
else:
    print('Object does not have var attribute')
```

In this extended example, if `hasattr()` confirms that the `var` attribute exists, we use `getattr()` to access the attribute's value safely.

Using `hasattr()` can enhance the reliability of your code and improve error handling when working with dynamic attributes in Python classes. It's a useful technique for attribute validation.

## Printing and Retrieving Class Attributes in Python

In Python, you may want to list and access all attributes of a class. There's no built-in method for printing all attributes, but you can use a loop and the dir() function to achieve this. Let's explore how to print and retrieve class attributes.

### Using `dir()`

The `dir()` function in Python returns a list of all attributes of an object. While this includes internal attributes and methods, you can filter them out to obtain a list of class attributes.

```python
class MyClass:
    var1 = 10
    var2 = 'hello'
    var3 = True

# List of all attributes (including internal ones)
attributes = dir(MyClass)

# Filtering and printing only class attributes
for attr in attributes:
    if not attr.startswith('__'):
        value = getattr(MyClass, attr)
        print(f'{attr}: {value}')
```

In this example, we use `dir(MyClass)` to obtain a list of all attributes. We then filter out internal attributes and print the names and values of class attributes.

This technique allows you to get an overview of the attributes within a class.

### Using `vars()`

While `vars()` is more commonly used to access instance variables, it can be applied to classes as well. It returns the `__dict__` attribute of an object, which contains the class attributes.

```python
class MyClass:
    var1 = 10
    var2 = 'hello'
    var3 = True

# Using vars() to retrieve class attributes
class_attrs = vars(MyClass)

for attr, value in class_attrs.items():
    print(f'{attr}: {value}')
```

In this example, we use `vars(MyClass)` to retrieve the class attributes and print their names and values.

Both `dir()` and `vars()` provide methods to access and display class attributes, allowing you to better understand and work with your classes.

## Class Private Variables

In Python, class private variables are variables that are intended to be used only within the class and should not be accessed or modified from outside the class. These variables are denoted with a double underscore prefix `__`. Let's explore how to create and work with class private variables.

### Creating Class Private Variables

To create a class private variable in Python, add a double underscore `__` before the variable name within the class. This convention signifies that the variable should not be accessed directly from outside the class.

```python
class MyClass:
    __private_var = 10
```

In this example, we create a class private variable `__private_var`.

### Accessing Class Private Variables

Attempting to access a class private variable from outside the class will result in an AttributeError. Private variables are intended to be used only within the class to encapsulate data.

```python3
class MyClass:
    __private_var = 10

    def get_private_var(self):
        return self.__private_var

obj = MyClass()

# Accessing the private variable using a class method
print(obj.get_private_var())  # Output: 10
```

In this example, we define a method `get_private_var` within the class to access the private variable `__private_var`.

### The Role of Class Private Variables

Private variables play a crucial role in encapsulating data and maintaining the integrity of a class's internal state. They prevent external code from unintentionally modifying or accessing sensitive data within the class.

```python
class BankAccount:
    def __init__(self, account_number, balance):
        self.__account_number = account_number
        self.__balance = balance

    def withdraw(self, amount):
        if amount > 0 and amount <= self.__balance:
            self.__balance -= amount
        else:
            print("Invalid withdrawal amount")

# Creating an instance of the BankAccount class
account = BankAccount("123456789", 1000)

# Attempting to directly access private variables (results in AttributeError)
# print(account.__account_number)
# print(account.__balance)

# Performing a withdrawal using a class method
account.withdraw(500)
```

In this example, the `BankAccount` class defines private variables `__account_number` and `__balance` to encapsulate sensitive account data. These private variables are accessed and modified using class methods like `withdraw`.

Private variables are a fundamental aspect of data encapsulation and access control in object-oriented programming, ensuring that the integrity of a class's data is maintained.

## Python Class Global Variables

In Python, class global variables are variables that are accessible from any part of the program. They are defined outside of any function or class, making them globally available. Let's explore how to create and work with class global variables.

### Creating Class Global Variables

To create a class global variable in Python, define the variable outside of any function or class. Global variables are available to all parts of your program.

```python
global_var = 10
```

In this example, we create a class global variable `global_var`.

### Accessing Class Global Variables

Class global variables can be accessed and used from any part of your program, including within classes and functions.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

obj = MyClass()

# Accessing the class global variable from within a class
print(obj.instance_var)  # Output: 10
```

In this example, we define a class global variable `global_var` and access it from within the `MyClass` class.

### The Role of Class Global Variables

Class global variables provide a way to share data across different parts of your program. They are often used to store information that is relevant to the entire application.

```python3
user_name = "John"

class User:
    def __init__(self, name):
        self.name = name

# Accessing the class global variable from within a class
new_user = User(user_name)
print(new_user.name)  # Output: John
```

In this example, the class global variable `user_name` stores the name of a user and is accessible from within the `User` class.

Class global variables play a significant role in making data available across different parts of your program, allowing you to share information and maintain consistency throughout your codebase.

## Public, Protected, and Private Attributes and Properties in Python

In Python, attributes and properties can have different levels of visibility and access control based on naming conventions. These levels include public, protected, and private.

### Public Attributes and Properties

Public attributes and properties have no name restrictions. They are accessible from anywhere in your code, both within and outside the class. By default, if an attribute or property does not have a name with a double underscore prefix, it is considered public.

```python3
class Person:
    def __init__(self, name):
        self.name = name  # Public attribute

class Circle:
    def __init__(self, radius):
        self.radius = radius  # Public attribute

class MyClass:
    def __init__(self, value):
        self.value = value  # Public attribute

# Accessing public attributes and properties
person = Person("Alice")
print(person.name)  # Output: Alice

circle = Circle(5)
print(circle.radius)  # Output: 5

obj = MyClass(42)
print(obj.value)  # Output: 42
```

In the examples above, attributes like `name`, `radius`, and `value` are public and can be accessed from outside the classes.

### Protected Attributes and Properties

In Python, attributes and properties can be marked as protected by prefixing their names with a single underscore. This is a naming convention that suggests that these attributes should not be accessed directly from outside the class, although they can still be accessed.

```python3
class Employee:
    def __init__(self, name, _salary):
        self.name = name
        self._salary = _salary  # Protected attribute

    def _get_salary(self):
        return self._salary  # Protected method

# Accessing protected attributes and methods
employee = Employee("Bob", 50000)
print(employee._salary)  # Output: 50000
print(employee._get_salary())  # Output: 50000
```

In the `Employee` class, `_salary` is marked as a protected attribute. Although it's accessible, the single underscore indicates that it should not be accessed directly.

### Private Attributes and Properties

Attributes and properties can be made private in Python by prefixing their names with a double underscore. This naming convention implies that these attributes should not be accessed directly from outside the class. Attempting to do so will result in a name mangling transformation.

```python3
class BankAccount:
    def __init__(self, account_number, __balance):
        self.account_number = account_number
        self.__balance = __balance  # Private attribute

    def __get_balance(self):
        return self.__balance  # Private method

# Attempting to access private attributes and methods
account = BankAccount("123456789", 1000)

# Results in an AttributeError
# print(account.__balance)
# print(account.__get_balance())
```

In the `BankAccount` class, `__balance` is a private attribute, and `__get_balance` is a private method. Attempting to access them from outside the class results in an AttributeError.
