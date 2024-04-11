> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/abstract-class

Em programação orientada a objetos, uma classe abstrata é uma classe que não pode ser instanciada e é projetada para ser uma subclasse, fornecendo uma interface básica para suas classes derivadas. Python é uma linguagem orientada a objetos que suporta classes abstratas por meio do seu módulo [Abstract Base Class](https://docs.python.org/3/library/abc.html) (ABC). Este módulo oferece uma maneira de definir classes abstratas e impor sua interface em suas subclasses. Este artigo explorará o conceito de classes abstratas em Python e como elas são implementadas usando a classe base abstrata de Python.

## Introdução à Classe Abstrata em Python

Em Python, uma **classe abstrata** é uma classe que é projetada para ser herdada por outras classes. Ela não pode ser instanciada por conta própria e seu propósito é fornecer um modelo para outras classes construírem em cima.

Uma classe base abstrata em Python é definida usando o módulo `abc`. Ele nos permite especificar que uma classe deve implementar métodos específicos, mas não fornece uma implementação para esses métodos. Qualquer classe que herde de uma classe base abstrata deve implementar todos os métodos abstratos.

```python3
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

No exemplo acima, `Shape` é uma classe base abstrata que define um método abstrato `area`. `Rectangle` é uma classe concreta que herda de `Shape` e implementa o método `area`.

```python3
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

Neste exemplo, `Animal` é uma classe base abstrata que define um método abstrato `talk`. `Dog` e `Cat` são classes concretas que herdam de `Animal` e implementam o método `talk`.

Em conclusão, classes abstratas em Python fornecem uma maneira de definir um modelo para outras classes construírem em cima. Elas não podem ser instanciadas por si mesmas e fornecem uma maneira de garantir que subclasses implementem métodos específicos. O módulo `abc` oferece uma maneira de definir classes base abstratas em Python.

## Criando Classe Base Abstrata em Python

Uma classe abstrata é uma classe que não pode ser instanciada e é destinada a ser usada como uma classe base para outras classes.

Em Python, o módulo `abc` fornece a classe `ABC`. Ela é usada para criar classes base abstratas.

Para criar uma classe base abstrata, precisamos herdar da classe `ABC` e usar o decorador `@abstractmethod` para declarar métodos abstratos.

### Exemplo de Classe Abstrata

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

Neste exemplo, criamos uma classe base abstrata `Shape` com dois métodos abstratos `area` e `perimeter`. Qualquer classe que herda de `Shape` tem que implementar esses dois métodos.

### Exemplo de Classe Abstrata com Herança

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

Neste exemplo, criamos uma classe base abstrata `Animal` com um método abstrato `sound`. Também criamos uma classe `Dog` que herda de `Animal` e implementa o método `sound`.

> Uma classe que herda de uma classe base abstrata deve implementar todos os métodos abstratos declarados na classe base, a menos que ela também seja uma classe abstrata.

## Classe Abstrata vs Interface em Python

Uma classe abstrata é uma classe Python que não pode ser instanciada, e é usada para definir propriedades e comportamentos comuns que subclasses podem herdar. É definida usando o módulo abc, que significa classe base abstrata. Uma classe abstrata é usada quando queremos definir uma classe base e não queremos que ela seja instanciada. Em vez disso, queremos que ela seja subclasseada por outras classes que fornecerão implementações específicas de seus métodos abstratos.

### Exemplo de uma Classe Base Abstrata em Python

```python3
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

No exemplo acima, Animal é uma classe base abstrata com um método abstrato chamado move(). Dog e Snake são duas subclasses da classe Animal, e elas fornecem suas implementações específicas do método move().

### Interfaces em Python

Uma interface é uma coleção de métodos abstratos que define o comportamento de uma classe. Em Python, não há uma definição estrita de interface como em outras linguagens de programação como Java. Em vez disso, usamos classes abstratas para definir interfaces. Uma interface pode ser considerada como um contrato entre a classe e o mundo externo. Uma classe que implementa uma interface deve fornecer uma implementação para todos os métodos definidos na interface.

#### Exemplo de uma Interface em Python

```python3
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

No exemplo acima, `Shape` é uma interface com dois métodos abstratos chamados `area()` e `perimeter()`. `Rectangle` é uma classe que implementa a interface Shape e fornece sua implementação para os métodos `area()` e `perimeter()`.

## Polimorfismo em Classes Abstratas Python

Uma classe abstrata é uma classe que não pode ser instanciada, mas pode ser usada como base para outras classes. É uma maneira de definir uma interface comum para um grupo de classes relacionadas. Polimorfismo é a capacidade de um objeto assumir muitas formas. Em Python, classes abstratas podem ser usadas para implementar polimorfismo.

```python3
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

## Uso de Classes Base Abstratas (ABC) em Python

Classes abstratas em Python são classes que não podem ser instanciadas e são feitas para serem herdadas por outras classes. Elas são úteis para definir métodos e propriedades comuns que devem ser implementados pelas suas subclasses concretas.

Uma maneira de implementar classes abstratas em Python é usar classes base abstratas (ABCs) do módulo `abc`. Uma ABC é um tipo especial de classe que não pode ser instanciada diretamente, mas pode ser subclassificada. ABCs definem um ou mais métodos abstratos, que são métodos que devem ser implementados por qualquer subclasse concreta.

O exemplo de código a seguir mostra como definir uma classe base abstrata `Animal`, que define dois métodos abstratos `speak` e `move` que devem ser implementados por qualquer subclasse concreta:

```python3
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

Agora, qualquer subclasse concreta de `Animal` deve implementar tanto `speak` quanto `move`.

Outra vantagem do uso de ABCs em Python é que eles podem ser usados para impor um certo contrato de interface nas classes, sem especificar os detalhes de sua implementação.

Por exemplo, se você deseja definir uma função que aceite apenas objetos que possuam um método `draw`, você poderia definir um ABC chamado `Drawable`, que define um método abstrato `draw`:

```python3
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

Neste exemplo, a função `draw_all` aceita uma lista de objetos `Drawable`, que desenha chamando o método `draw` deles. As classes `Rectangle` e `Circle` implementam o método `draw`, portanto, podem ser usadas com a função `draw_all`.

No geral, classes base abstratas em Python proporcionam uma ferramenta poderosa para o design de código, permitindo que você defina funcionalidades comuns que podem ser facilmente estendidas e personalizadas por subclasses concretas.

## Melhores Práticas para Projetar Classes Abstratas em Python

Ao projetar classes abstratas em Python, é importante seguir as melhores práticas para assegurar uma base de código sustentável e legível.

1. Use o módulo `abc` para definir uma classe base abstrata (ABC).

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

2. Use métodos abstratos para especificar o contrato que as classes derivadas devem seguir.

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

Seguir essas melhores práticas garantirá que suas classes abstratas sejam facilmente compreensíveis e mantidas, com contratos claros para que as classes derivadas sigam.
