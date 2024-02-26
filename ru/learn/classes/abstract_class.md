> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/classes/abstract-class

В объектно-ориентированном программировании абстрактный класс - это класс, который не может быть инстанцирован и предназначен для наследования, обеспечивая базовый интерфейс для своих производных классов. Python является объектно-ориентированным языком, который поддерживает абстрактные классы с помощью модуля [Abstract Base Class](https://docs.python.org/3/library/abc.html) (ABC). Этот модуль предоставляет способ определения абстрактных классов и обязывает их подклассы следовать их интерфейсу. Эта статья исследует концепцию абстрактных классов в Python и то, как они реализованы с использованием абстрактного базового класса Python.

## Введение в Абстрактный Класс Python

В Python **абстрактный класс** - это класс, который предназначен для наследования другими классами. Он не может быть инстанцирован сам по себе и его цель - предоставить шаблон для построения других классов.

Абстрактный базовый класс в Python определяется с использованием модуля `abc`. Он позволяет нам указать, что класс должен реализовывать определенные методы, но не предоставляет реализацию для этих методов. Любой класс, наследующий от абстрактного базового класса, должен реализовать все абстрактные методы.

```python
from abc import ABC, abstractmethod

class Shape(ABC):
    @abstractmethod
    def area(self):
        pass

class Rectangle(Shape):
    def __init__(self, width, height):
        self.width = width
        self.height = height

    def area(self):
        return self.width * self.height

r = Rectangle(5, 6)
print(r.area())    ### Output 30

```

В приведенном выше примере, `Shape` — это абстрактный базовый класс, который определяет абстрактный метод `area`. `Rectangle` — это конкретный класс, который наследуется от `Shape` и реализует метод `area`.

```python
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def talk(self):
        pass

class Dog(Animal):
    def talk(self):
        return "Woof!"

class Cat(Animal):
    def talk(self):
        return "Meow"

c = Cat()
print(c.talk())    ### Output Meow

d = Dog()
print(d.talk())    ### Output Woof!

```

В этом примере `Animal` является абстрактным базовым классом, который определяет абстрактный метод `talk`. `Dog` и `Cat` являются конкретными классами, которые наследуют от `Animal` и реализуют метод `talk`.

В заключение, абстрактные классы в Python предоставляют способ определения шаблона для других классов, на основе которого они могут быть построены. Они не могут быть инстанциированы самостоятельно и обеспечивают способ гарантировать, что подклассы реализуют специфические методы. Модуль `abc` предоставляет способ определения абстрактных базовых классов в Python.

## Создание Абстрактного Базового Класса в Python

Абстрактный класс - это класс, который не может быть инстанциирован и предназначен для использования в качестве базового класса для других классов.

В Python модуль `abc` предоставляет класс `ABC`. Он используется для создания абстрактных базовых классов.

Чтобы создать абстрактный базовый класс, необходимо наследоваться от класса `ABC` и использовать декоратор `@abstractmethod` для объявления абстрактных методов.

### Пример Абстрактного Класса

```python
from abc import ABC, abstractmethod

class Shape(ABC):

    @abstractmethod
    def area(self):
        pass

    @abstractmethod
    def perimeter(self):
        pass
```

В этом примере мы создали абстрактный базовый класс `Shape` с двумя абстрактными методами `area` и `perimeter`. Любой класс, наследующий от `Shape`, должен реализовать эти два метода.

### Пример Абстрактного Класса с Наследованием

```python

from abc import ABC, abstractmethod

class Animal(ABC):

    @abstractmethod
    def sound(self):
        pass

class Dog(Animal):

    def sound(self):
        return 'Woof'
```

В этом примере мы создали абстрактный базовый класс `Animal` c абстрактным методом `sound`. Мы также создали класс `Dog`, который наследуется от `Animal` и реализует метод `sound`.

> Класс, наследующий от абстрактного базового класса, должен реализовать все абстрактные методы, объявленные в базовом классе, если только он также не является абстрактным классом.

## Абстрактный Класс Python vs Интерфейс

Абстрактный класс в Python - это класс, который не может быть инстанцирован, и он используется для определения общих свойств и поведений, которые могут наследовать подклассы. Он определяется с использованием модуля abc, что означает абстрактный базовый класс. Абстрактный класс используется, когда мы хотим определить базовый класс, и мы не хотим, чтобы он был инстанцирован. Вместо этого мы хотим, чтобы его наследовали другие классы, которые предоставят конкретные реализации его абстрактных методов.

### Пример Python Абстрактного Базового Класса

```python
from abc import ABC, abstractmethod
 
class Animal(ABC):
     
    @abstractmethod
    def move(self):
        pass
 
class Dog(Animal):
     
    def move(self):
        print("I am walking on four legs")
         
class Snake(Animal):
     
    def move(self):
        print("I am slithering")
         
d = Dog()
d.move()
 
s = Snake()
s.move()
```

В приведенном выше примере, Animal является абстрактным базовым классом с абстрактным методом под названием move(). Dog и Snake являются двумя подклассами класса Animal, и они предоставляют свои конкретные реализации метода move().

### Интерфейсы в Python

Интерфейс - это набор абстрактных методов, который определяет поведение класса. В Python нет строгого определения интерфейса, как в других программных языках, например, в Java. Вместо этого мы используем абстрактные классы для определения интерфейсов. Интерфейс может рассматриваться как контракт между классом и внешним миром. Класс, реализующий интерфейс, должен предоставить реализацию для всех методов, определенных в интерфейсе.

#### Пример Интерфейса на Python

```python
from abc import ABC, abstractmethod
 
class Shape(ABC):
     
    @abstractmethod
    def area(self):
        pass
 
    @abstractmethod
    def perimeter(self):
        pass
 
class Rectangle(Shape):
     
    def __init__(self, length, width):
        self.length = length
        self.width = width
     
    def area(self):
        return self.length * self.width
     
    def perimeter(self):
        return 2 * (self.length + self.width)

r = Rectangle(10, 5)
print("Area of Rectangle:", r.area())  # Area of Rectangle: 50
print("Perimeter of Rectangle:", r.perimeter()) # Perimeter of Rectangle: 30
```

В приведенном выше примере, `Shape` является интерфейсом с двумя абстрактными методами, называемыми `area()` и `perimeter()`. `Rectangle` - это класс, который реализует интерфейс `Shape` и предоставляет свою реализацию для методов `area()` и `perimeter()`.

## Полиморфизм в Абстрактных Классах Python

Абстрактный класс - это класс, который не может быть инстанциирован, но он может быть использован в качестве базы для других классов. Это способ определить общий интерфейс для группы связанных классов. Полиморфизм - это способность объекта принимать множество форм. В Python абстрактные классы могут быть использованы для реализации полиморфизма.

```python
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def move(self):
        pass

class Dog(Animal):
    def move(self):
        print("Dog is running")

class Cat(Animal):
    def move(self):
        print("Cat is jumping")

d = Dog()
c = Cat()

d.move() ### This will print "dog is running"
c.move() ### This will print "cat is jumping"

```

## Использование Абстрактных Базовых Классов в Python

Абстрактные классы в Python - это классы, которые не могут быть инстанцированы и предназначены для наследования другими классами. Они полезны для определения общих методов и свойств, которые должны быть реализованы их конкретными подклассами.

Один из способов реализации абстрактных классов в Python - использование абстрактных базовых классов (ABC) из модуля `abc`. ABC - это специальный тип класса, который не может быть инстанциирован напрямую, но может быть подклассифицирован. ABC определяют один или несколько абстрактных методов, которые должны быть реализованы любым конкретным подклассом.

Следующий пример кода показывает, как определить абстрактный базовый класс `Animal`, который определяет два абстрактных метода `speak` и `move`, которые должны быть реализованы любым конкретным подклассом:

```python
from abc import ABC, abstractmethod

class Animal(ABC):
    @abstractmethod
    def speak(self):
        pass
    
    @abstractmethod
    def move(self):
        pass

class Cat(Animal):
    def speak(self):
        print('meow')
    
    def move(self):
        print('running')
```

Теперь любой конкретный подкласс `Animal` должен реализовать как `speak`, так и `move`.

Еще одним преимуществом использования ABC в Python является то, что они могут использоваться для обеспечения соблюдения определенного контракта интерфейса классами, без указания деталей их реализации.

Например, если вы хотите определить функцию, которая принимает только объекты с методом `draw`, вы можете определить ABC под названием `Drawable`, который определяет абстрактный метод `draw`:

```python
from abc import ABC, abstractmethod

class Drawable(ABC):
    @abstractmethod
    def draw(self):
        pass
        
def draw_all(drawables):
    for drawable in drawables:
        drawable.draw()

class Rectangle(Drawable):
    def draw(self):
        print('Drawing a rectangle')
    
    
class Circle(Drawable):
    def draw(self):
        print('Drawing a circle')
    
draw_all([Rectangle(), Circle()])
```

В этом примере функция `draw_all` принимает список объектов `Drawable`, которые она рисует, вызывая их метод `draw`. Классы `Rectangle` и `Circle` оба реализуют метод `draw`, поэтому они могут быть использованы с функцией `draw_all`.

В целом, абстрактные базовые классы в Python предоставляют мощный инструмент для проектирования кода, позволяя определять общую функциональность, которую можно легко расширить и настроить конкретными подклассами.

## Лучшие Практики Проектирования Абстрактных Классов в Python

При проектировании абстрактных классов в Python важно следовать лучшим практикам, чтобы обеспечить поддерживаемость и читаемость кодовой базы.

1. Используйте модуль `abc` для определения абстрактного базового класса (ABC).

```python
import abc

class Shape(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def area(self):
        pass
    
class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius
        
    def area(self):
        return 3.14 * self.radius ** 2
```

2. Используйте абстрактные методы для указания контракта, которому должны следовать производные классы.

```python
import abc

class Vehicle(metaclass=abc.ABCMeta):
    @abc.abstractmethod
    def start_engine(self):
        pass
    
class Car(Vehicle):
    def start_engine(self):
        print("Engine started")

class Bike(Vehicle):
    pass

my_car = Car()
my_car.start_engine()    # "Engine started"

# my_bike = Bike()    TypeError: Can't instantiate abstract class Bike with abstract methods start_engine
```

Следование этим лучшим практикам обеспечит легкое понимание и поддержку ваших абстрактных классов, с четкими контрактами, которым должны следовать производные классы.
