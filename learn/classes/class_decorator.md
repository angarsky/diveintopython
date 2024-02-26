> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/classes/class-decorator

Class decorators are a powerful programming tool used to modify the behavior of classes. One such decorator is the class decorator, which can be used to add functionality to a class. Another type of decorator is the class method decorator, which can be used to modify class methods. Additionally, the class property decorator can be used to create computed properties for classes. These decorators can quickly and easily modify the behavior of classes, making them invaluable to developers.  
  
## Introduction to Python Class Decorator  

A class decorator is a type of decorator that is used to modify or enhance the behavior of a class. It is used to add or remove functionality from a class without changing its definition. 

Some common types of class decorators include:

- **Class decorator**: A class decorator that modifies the behavior of a class by adding or removing properties, methods, or attributes. 

- **Class method decorator**: A Python decorator that modifies a class method by changing its behavior or adding additional functionality.

- **Class property decorator**: A class decorator that modifies a class property by adding or removing attributes or methods.

Here are two examples of using class decorators:

```python
def add_method(cls):
    def square(self, x):
        return x * x
    cls.square = square
    return cls

@add_method
class MyClass:
    pass

obj = MyClass()
print(obj.square(5))

```

```python
def class_method_decorator(cls):
    def new_method(self):
        print("Class method has been decorated")
        return cls.original_method(self)
    cls.original_method = cls.class_method
    cls.class_method = new_method
    return cls

@class_method_decorator
class MyClass:
    @classmethod
    def class_method(cls):
        print("Class method has been called")
        return None

obj = MyClass()
obj.class_method() 

```

In the first example, a class decorator is used to add a new method, `square()`, to the `MyClass` object. In the second example, a `class_method_decorator` is used to modify the behavior of the `class_method()` method in the `MyClass` object.  
  
## Understanding Class Method Decorator  

The class method decorator is used to define a method that is bound to the class and not the instance of the class. It takes a `cls` parameter instead of `self`. This decorator is used to define methods that are related to the class and not an instance of the class.

```python
class MyClass:
    counter = 0

    @classmethod
    def increment_counter(cls):
        cls.counter += 1

MyClass.increment_counter()
print(MyClass.counter)  # Output: 1
```

In the above example, `increment_counter` method is decorated with `@classmethod` which makes it a class method. It increments the `counter` class variable by 1.
  
## Exploring Class Property Decorator  

In Python, a class decorator is a function that can be used to modify or add new functionality to a class. There are different types of class decorators including class method decorator and class property decorator.

A class method decorator is a function that modifies a method of a class and expects the first argument to be the class object. Here's an example:

```python
class MyClass:
    my_var = "hello"

    @classmethod
    def my_method(cls):
        print(cls.my_var)

MyClass.my_method() 

```

A class property decorator is a function that modifies a class property and returns a new property object. Here's an example:

```python
class MyClass:
    def __init__(self, my_var):
        self._my_var = my_var

    @property
    def my_var(self):
        return self._my_var

    @my_var.setter
    def my_var(self, value):
        self._my_var = value

my_obj = MyClass("hello")
print(my_obj.my_var) 

my_obj.my_var = "world"
print(my_obj.my_var) 

```

In summary, class decorator, class method decorator, and class property decorator are powerful tools that can be used to modify or extend the functionality of classes.  
  
## Benefits of Using Class Decorator  

A Class decorator is a feature which is simply a function that alters a class definition, so it is returned as the modified class. **Class decorators** have become popular for its ability to add functionality to an existing class without modifying the original class directly.

Python decorators are used to extend and modify the behavior or properties of a function, method, or class. Here are some benefits of using class decorator:

1. **Class Method Decorator:** Python decorators provide an easy way to modify the behavior of a class method in some manner. Class method decorators can be used to verify inputs, output or modify behavior before class method responses.

```python
class Pizza:
    def __init__(self, toppings):
        self.toppings = toppings

    @classmethod
    def recommend(cls):
        """Recommend some pizza toppings."""
        return cls(['mozzarella', 'tomatoes'])

print(Pizza.recommend().toppings)
### Output

```

2. **Class Property Decorator:** class decorator can be used to define class properties in a concise and easy to read manner. For instance, they can be used to compute attributes that are not available when the class is first defined.

```python
class Person:
    def __init__(self, name):
        self.name = name
 
    @property
    def name(self):
        return self._name
 
    @name.setter
    def name(self, value):
        if not isinstance(value, str):
            raise TypeError('Expected a string')
        self._name = value.title()
 
person = Person('jessica')
print(person.name)
### Output

```
  
## Best Practices for Using Class Method Decorator  

Class decorator is widely used to extend the behavior of a class or its method. Class method Python decorators are used to modify the existing behavior of a class method by adding additional functionality. Python class property decorator allows you to define a class-level property that will be available to all instances of that class.

Here are some best practices to keep in mind while using class method decorator and class property decorator:

1. Use `@classmethod` to define a class method decorator.

```python
class MyClass:

    def __init__(self, value):
        self.value = value

    @classmethod
    def from_string(cls, string):
        value = int(string)
        return cls(value)

obj = MyClass.from_string('10')
print(obj.value) ### Output

```

2. Use `@property` to define a class property decorator.

```python
class MyClass:

    def __init__(self, value):
        self._value = value

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, new_val):
        if new_val < 0:
            raise ValueError("Value cannot be negative")
        else:
            self._value = new_val

obj = MyClass(10)
print(obj.value) # Output 10

# obj.value = -1 Raises valueerror

```

In conclusion, class decorator, class method decorator, and class property decorator are powerful tools that can help you modify the behavior of a class or its methods. Keep these best practices in mind to write clean, readable, and maintainable code.  
  
## Usage of Class Property Decorator  

One of the most common real-world applications of class property decorator is working with database queries. 

```python
class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email

    @property
    def email_id(self):
        return self.email.split('@')[0]

user = User('Foo', 'foo@example.com')
print(user.email_id) # Outputs foo
```

In the above example, the `email_id property` only exposes the user's email address without the `@domain.com` part. This can be useful when working with databases, where it is often necessary to filter or group data based on an identifier.

Another common example of using class property decorator is for validation purposes. 

```python
class User:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    @property
    def age(self):
        return self._age

    @age.setter
    def age(self, value):
        if not isinstance(value, int):
            raise TypeError('Age must be an integer')
        if value < 0 or value > 130:
            raise ValueError('Age must be between 0 and 130')
        self._age = value

user = User('Foo', 25)
print(user.age) # Outputs 25

# user.age = 150 Throws ValueError: Age must be between 0 and 130
```

In the above example, the `age` property is validated to ensure that it is within a valid range.
