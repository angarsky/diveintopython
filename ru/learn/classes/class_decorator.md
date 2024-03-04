> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/classes/class-decorator

Декораторы классов являются мощным инструментом программирования, используемым для изменения поведения классов. Один из таких декораторов - это декоратор класса, который можно использовать для добавления функциональности классу. Другой тип декоратора - это декоратор метода класса, который можно использовать для модификации методов класса. Кроме того, декоратор свойства класса может быть использован для создания вычисляемых свойств для классов. Эти декораторы могут быстро и легко изменять поведение классов, что делает их бесценными для разработчиков.

## Введение в Декоратор Классов Python

Декоратор класса - это тип декоратора, который используется для модификации или улучшения поведения класса. Он используется для добавления или удаления функциональности из класса без изменения его определения.

Некоторые распространенные типы декораторов классов включают в себя:

- **Декоратор класса**: Декоратор класса, который модифицирует поведение класса, добавляя или удаляя свойства, методы или атрибуты.

- **Декоратор метода класса**: Декоратор Python, который модифицирует метод класса, изменяя его поведение или добавляя дополнительную функциональность.

- **Декоратор свойства класса**: Декоратор класса, который модифицирует свойство класса, добавляя или удаляя атрибуты или методы.

Вот два примера использования декораторов классов:

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

В первом примере декоратор класса используется для добавления нового метода, `square()`, к объекту `MyClass`. Во втором примере `class_method_decorator` используется для изменения поведения метода `class_method()` в объекте `MyClass`.
  
## Понимание Декоратора Метода Класса  

Декоратор метода класса используется для определения метода, который привязан к классу, а не к экземпляру класса. Он принимает параметр `cls` вместо `self`. Этот декоратор используется для определения методов, которые связаны с классом, а не с его экземпляром.

```python
class MyClass:
    counter = 0

    @classmethod
    def increment_counter(cls):
        cls.counter += 1

MyClass.increment_counter()
print(MyClass.counter)  # Output: 1
```

В приведенном выше примере метод `increment_counter` украшен декоратором `@classmethod`, что делает его методом класса. Он увеличивает переменную класса `counter` на 1.

## Исследование Декоратора Свойств Класса

В Python декоратор класса - это функция, которая может использоваться для изменения или добавления новой функциональности к классу. Существуют разные типы декораторов классов, включая декоратор метода класса и декоратор свойства класса.

Декоратор метода класса - это функция, которая изменяет метод класса и ожидает в качестве первого аргумента объект класса. Вот пример:

```python
class MyClass:
    my_var = "hello"

    @classmethod
    def my_method(cls):
        print(cls.my_var)

MyClass.my_method() 

```

Декоратор свойства класса - это функция, которая изменяет свойство класса и возвращает новый объект свойства. Вот пример:

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

В заключение, декоратор класса, декоратор метода класса и декоратор свойства класса являются мощными инструментами, которые могут использоваться для изменения или расширения функционала классов.

## Преимущества Использования Декоратора Класса

Декоратор класса - это функция, которая изменяет определение класса, так что возвращается модифицированный класс. **Декораторы классов** стали популярны благодаря своей способности добавлять функциональность к существующему классу без прямого изменения оригинального класса.

Декораторы в Python используются для расширения и модификации поведения или свойств функции, метода или класса. Вот некоторые преимущества использования декоратора класса:

1. **Декоратор метода класса:** Декораторы в Python предоставляют простой способ модификации поведения метода класса каким-либо образом. Декораторы метода класса могут использоваться для проверки входных данных, вывода или модификации поведения перед ответами метода класса.

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

2. **Декоратор свойств класса:** декоратор класса может быть использован для определения свойств класса простым и понятным способом. Например, его можно использовать для вычисления атрибутов, которые недоступны в момент первоначального определения класса.

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

## Лучшие Практики Использования Декоратора Методов Класса

Декоратор класса широко используется для расширения поведения класса или его метода. Декораторы методов класса Python используются для модификации существующего поведения метода класса путем добавления дополнительной функциональности. Декоратор свойств класса Python позволяет вам определить свойство на уровне класса, которое будет доступно всем экземплярам этого класса.

Вот некоторые лучшие практики, которые следует иметь в виду при использовании декоратора методов класса и декоратора свойств класса:

1. Используйте `@classmethod` для определения декоратора метода класса.

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

2. Используйте `@property` для определения декоратора свойств класса.

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

В заключение, декоратор класса, декоратор метода класса и декоратор свойства класса являются мощными инструментами, которые могут помочь вам изменить поведение класса или его методов. Следуйте этим лучшим практикам, чтобы писать чистый, читабельный и поддерживаемый код.

## Использование Декоратора Свойств Класса

Одним из наиболее частых практических применений декоратора свойств класса является работа с запросами к базе данных.

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

В приведенном выше примере, свойство `email_id property` показывает только адрес электронной почты пользователя без части `@domain.com`. Это может быть полезно при работе с базами данных, где часто необходимо фильтровать или группировать данные на основе идентификатора.

Еще один распространенный пример использования декоратора свойства класса заключается в целях валидации.

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

В приведенном выше примере, свойство `age` проверяется на то, что оно находится в пределах допустимого диапазона.
