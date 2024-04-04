> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/abstract-class

En programación orientada a objetos, una clase abstracta es una clase que no puede ser instanciada y está diseñada para ser subclase, proporcionando una interfaz básica para sus clases derivadas. Python es un lenguaje orientado a objetos que soporta clases abstractas a través de su módulo [Abstract Base Class](https://docs.python.org/3/library/abc.html) (ABC). Este módulo proporciona una forma de definir clases abstractas e imponer su interfaz a sus subclases. Este artículo explorará el concepto de clases abstractas en Python y cómo se implementan utilizando la clase base abstracta de Python.  
  
## Introducción a las clases abstractas en Python

En Python, una **clase abstracta** es una clase que está diseñada para ser heredada por otras clases. No puede ser instanciada por sí misma y su propósito es proporcionar una plantilla para que otras clases construyan sobre ella.

Una clase base abstracta en Python se define utilizando el módulo `abc`. Nos permite especificar que una clase debe implementar métodos específicos, pero no proporciona una implementación para esos métodos. Cualquier clase que herede de una clase base abstracta debe implementar todos los métodos abstractos.

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

En el ejemplo anterior, `Shape` es una clase base abstracta que define un método abstracto `area`. Rectangle" es una clase concreta que hereda de "Shape" e implementa el método "area".

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

En este ejemplo, `Animal` es una clase base abstracta que define un método abstracto `talk`. Perro" y "Gato" son clases concretas que heredan de "Animal" e implementan el método "hablar".

En conclusión, las clases abstractas en Python proporcionan una manera de definir una plantilla para que otras clases se basen en ella. No pueden ser instanciadas por sí mismas y proporcionan una forma de asegurar que las subclases implementen métodos específicos. El módulo `abc` proporciona una forma de definir clases base abstractas en Python.  
  
## Creando una Clase Base Abstracta en Python

Una clase abstracta es una clase que no puede ser instanciada y está destinada a ser utilizada como clase base para otras clases.

En Python, el módulo `abc` proporciona la clase `ABC`. Se utiliza para crear clases base abstractas.

Para crear una clase base abstracta, necesitamos heredar de la clase `ABC` y usar el decorador `@abstractmethod` para declarar métodos abstractos.

### Ejemplo de Clase Abstracta

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

En este ejemplo, hemos creado una clase base abstracta `Shape` con dos métodos abstractos `area` y `perimeter`. Cualquier clase que herede de `Shape` tiene que implementar estos dos métodos.

### Ejemplo de Clase Abstracta con Herencia

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

En este ejemplo, hemos creado una clase base abstracta `Animal` con un método abstracto `sonido`. También hemos creado una clase `Dog` que hereda de `Animal` e implementa el método `sound`.

> Una clase que hereda de una clase base abstracta debe implementar todos los métodos abstractos declarados en la clase base, a menos que también sea una clase abstracta.  
  
## Python Clase Abstracta vs Interfaz

Una clase abstracta es una clase Python que no puede ser instanciada, y se utiliza para definir propiedades y comportamientos comunes que las subclases pueden heredar. Se define utilizando el módulo abc, que significa clase base abstracta. Una clase abstracta se utiliza cuando queremos definir una clase base, y no queremos que sea instanciada. En su lugar, queremos que sea subclasificada por otras clases que proporcionarán implementaciones específicas de sus métodos abstractos.

### Ejemplo de Clase Base Abstracta en Python

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

En el ejemplo anterior, Animal es una clase base abstracta con un método abstracto llamado move(). Dog y Snake son dos subclases de la clase Animal, y proporcionan sus implementaciones específicas del método move().

### Interfaces en Python

Una interfaz es una colección de métodos abstractos que definen el comportamiento de una clase. En Python, no existe una definición estricta de interfaz como en otros lenguajes de programación como Java. En su lugar, utilizamos clases abstractas para definir interfaces. Una interfaz puede ser considerada como un contrato entre la clase y el mundo exterior. Una clase que implementa una interfaz debe proporcionar una implementación para todos los métodos definidos en la interfaz.

#### Ejemplo de interfaz en Python

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

En el ejemplo anterior, `Shape` es una interfaz con dos métodos abstractos llamados `area()` y `perimeter()`. Rectangle" es una clase que implementa la interfaz Shape y proporciona su implementación para los métodos "area()` y "perimeter()`.  
  
## Polimorfismo en las clases abstractas de Python

Una clase abstracta es una clase que no puede ser instanciada, pero que puede ser utilizada como base para otras clases. Es una forma de definir una interfaz común para un grupo de clases relacionadas. El polimorfismo es la capacidad de un objeto de adoptar muchas formas. En Python, las clases abstractas se pueden utilizar para implementar el polimorfismo.

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

## Uso de las clases base abstractas de Python (ABC)

Las clases abstractas en Python son clases que no pueden ser instanciadas, y están pensadas para ser heredadas por otras clases. Son útiles para definir métodos y propiedades comunes que deben ser implementados por sus subclases concretas.

Una forma de implementar clases abstractas en Python es utilizar clases base abstractas (ABC) del módulo `abc`. Una ABC es un tipo especial de clase que no puede ser instanciada directamente, pero puede ser subclasificada. Las ABCs definen uno o más métodos abstractos, que son métodos que deben ser implementados por cualquier subclase concreta.

El siguiente ejemplo de código muestra cómo definir una clase base abstracta `Animal`, que define dos métodos abstractos `speak` y `move` que deben ser implementados por cualquier subclase concreta:

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

Ahora, cualquier subclase concreta de `Animal` debe implementar tanto `speak` como `move`.

Otra ventaja del uso de ABCs en Python es que se pueden utilizar para hacer cumplir ciertos contratos de interfaz en las clases, sin especificar sus detalles de implementación.

Por ejemplo, si quieres definir una función que sólo acepte objetos que tengan un método `draw`, podrías definir un ABC llamado `Drawable`, que define un método abstracto `draw`:

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

En este ejemplo, la función `draw_all` acepta una lista de objetos `Drawable`, que dibuja llamando a su método `draw`. Las clases `Rectangle` y `Circle` implementan el método `draw`, por lo que pueden usarse con la función `draw_all`.

En general, las clases base abstractas en Python proporcionan una poderosa herramienta para el diseño de código, ya que permiten definir una funcionalidad común que puede ser fácilmente extendida y personalizada por subclases concretas.  
   
## Mejores prácticas para diseñar clases abstractas en Python

Cuando se diseñan clases abstractas en Python, es importante seguir las mejores prácticas para asegurar un código base legible y mantenible.

1. Usa el módulo `abc` para definir una clase base abstracta (ABC).

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

2. Utilice métodos abstractos para especificar el contrato que deben seguir las clases derivadas.

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


Siguiendo estas buenas prácticas se asegurará de que sus clases abstractas son fácilmente comprensibles y mantenibles, con contratos claros para las clases derivadas a seguir.
