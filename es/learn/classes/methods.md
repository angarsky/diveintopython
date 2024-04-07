> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/methods

Este artículo explora los entresijos del trabajo con métodos y funciones en clases en Python. Específicamente, profundizamos en los conceptos importantes del constructor de clase (o método `__init__`), métodos abstractos de clase, y la diferencia entre métodos de clase y métodos estáticos. Así que si estás buscando elevar tu comprensión de las funciones en una clase, ¡sigue leyendo!  
  
## Dominando el Constructor de Clase de Python

Podemos definir funciones en una clase, conocidas como métodos. El constructor de clase o método `__init__` es un método especial que se llama cuando se crea un objeto de la clase. Se utiliza para inicializar las variables de instancia de una clase.

Un método abstracto de clase es un método que se declara pero no contiene implementación. Se utiliza como plantilla para otros métodos que se definen en una subclase.

Un método de clase es un método vinculado a la clase y no a la instancia de la clase. Se puede acceder a él utilizando el nombre de la clase.

Un método estático es un método que está vinculado a la clase y no a la instancia de la clase. No toma ningún argumento como self o cls.

### Ejemplo 1: Constructor de Clase

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("John", 36)

print(p1.name)
print(p1.age)

# Output:
# John
# 36
```

En el ejemplo anterior, hemos definido una clase `Persona` con un constructor que inicializa los atributos nombre y edad de la clase. A continuación, creamos un objeto de la clase `p1` y accedemos a sus atributos utilizando la notación de puntos.

### Ejemplo 2: Método de clase vs Método estático

```python3
class Calculator:
    @classmethod
    def add(cls, num1, num2):
        return num1 + num2
    
    @staticmethod
    def multiply(num1, num2):
        return num1 * num2

print(Calculator.add(2,3))
print(Calculator.multiply(2,3))
# Output:
# 5
# 6
```

En este ejemplo, definimos una clase `Calculator` con dos métodos: `add` como método de clase y `multiply` como método estático. Accedimos a estos métodos utilizando el nombre de la clase `Calculator` sin crear un objeto de la clase. Utilizamos los decoradores `@classmethod` y `@staticmethod` para definir estos métodos.  

## Método de clase abstracta de Python

Un método de clase abstracta es un método que se declara en una clase base abstracta pero que no tiene implementación. Se utiliza para definir un método que debe ser implementado por cualquier clase que herede de la clase abstracta. Los métodos de clase abstracta se crean utilizando el decorador `@abstractmethod`. Este es un ejemplo de un método de clase abstracta en Python:

```python3
from abc import ABC, abstractmethod

class Shape(ABC):
    def __init__(self, type):
        self.type = type

    @abstractmethod
    def area(self):
        pass

class Square(Shape):
    def __init__(self, side):
        super().__init__("Square")
        self.side = side

    def area(self):
        return self.side ** 2

my_square = Square(5)
print(my_square.area()) # Output: 25
```

## Sobrecarga de métodos

La sobrecarga de métodos es una característica de Python que permite a una clase tener múltiples métodos con el mismo nombre pero con diferentes parámetros. Esta característica ayuda a proporcionar flexibilidad y reutilización al diseño del código. Es diferente de la sobrecarga de métodos que permite a una subclase proporcionar su implementación de un método definido en su superclase.

```python
class Example:
    def method(self, a):
        print("Method with one parameter:", a)
    
    def method(self, a, b):
        print("Method with two parameters:", a, b)  
```

```python
class Example:
    def method(self, a=None, b=None, c=None):
        if a != None and b == None and c == None:
            print("Method with one parameter:", a)
        
        elif a != None and b != None and c == None:
            print("Method with two parameters:", a, b)
            
        elif a != None and b != None and c != None:
            print("Method with three parameters:", a, b, c)
```

En el primer ejemplo, definimos una clase con dos métodos con el mismo nombre pero con parámetros diferentes. Python no soporta la sobrecarga de métodos directamente, por lo que la última definición de método sobrescribe a la anterior. Así, cuando creamos un objeto de la clase y llamamos al `method`, obtendremos la salida de la última definición de método.

En el segundo ejemplo, definimos una clase con un único `método` que toma múltiples parámetros opcionales. Podemos utilizar sentencias condicionales para comprobar el número de parámetros pasados e `imprimir` la salida en consecuencia. Este enfoque proporciona reutilización al código ya que podemos llamar al mismo `método` con diferentes parámetros.  
  
## Métodos Públicos, Privados y Protegidos en Python

En Python, podemos diferenciar entre métodos públicos, privados y protegidos basándonos en su nivel de acceso.

- **Métodos públicos** son aquellos a los que se puede acceder desde cualquier lugar dentro o fuera de la clase.
- **Métodos privados** en una clase de Python son aquellos a los que sólo se puede acceder desde dentro de la clase.
- **Métodos protegidos** son aquellos a los que sólo se puede acceder desde dentro de la clase y sus subclases.

### Métodos Públicos

Los métodos públicos son accesibles desde cualquier lugar dentro o fuera de la clase. Desempeñan un papel importante en la interacción con los atributos y la funcionalidad de la clase. Cuando los desarrolladores crean un método sin ningún prefijo de guión bajo, se convierte automáticamente en un método público.

```python3
class MyClass:
    def public_method(self):
        print("This is a public method")

obj = MyClass()
obj.public_method()  # Accessing the public method
```

Como se muestra en el ejemplo, el `public_method()` es accesible fuera de la clase `MyClass`. Estos métodos permiten al código externo interactuar directamente con las funcionalidades de la clase.

### Métodos Privados de Python

Los métodos privados en Python están diseñados para ser accedidos sólo desde dentro de la clase en la que están definidos. Se indican anteponiendo al nombre del método un doble guión bajo `__`.

```python3
class MyClass:
    def __private_method(self):
        print("This is a private method")

obj = MyClass()
obj.__private_method()  # Attempting to access the private method (Raises an error)
```

Al intentar acceder a un método privado desde fuera de la clase se produce un AttributeError. La manipulación de nombres en Python hace que el nombre del método prefijado con doble guión bajo sea más difícil de acceder directamente desde código externo. Estos métodos se utilizan para operaciones internas de la clase, mejorando la encapsulación y previniendo el mal uso accidental o la sobreescritura.

### Métodos Protegidos

Los métodos protegidos se indican anteponiendo al nombre del método un guión bajo `_`. Se puede acceder a ellos desde la propia clase y sus subclases.

```python3
class MyClass:
    def _protected_method(self):
        print("This is a protected method")

class SubClass(MyClass):
    def access_protected(self):
        self._protected_method()  # Accessing the protected method from a subclass

obj = SubClass()
obj.access_protected()  # Accessing the protected method from the subclass
```

Los métodos protegidos proporcionan una forma de permitir a las subclases acceder a ciertos métodos mientras se evita el acceso directo desde código externo. Sin embargo, a diferencia de otros lenguajes, Python no impone restricciones estrictas de visibilidad.

## Métodos Getter y Setter de Python

Python ofrece métodos getter y setter para controlar el acceso a las variables de instancia privadas de las clases. Los métodos getter y setter son importantes porque sin ellos, las variables de instancia privadas no serían accesibles fuera de la clase.

El método getter permite acceder al valor de una variable de instancia privada desde fuera de una clase, y el método setter permite establecer el valor de una variable de instancia privada desde fuera de una clase.

He aquí una simple clase de ejemplo con métodos getter y setter:

```python3
class MyClass:
    def __init__(self):
        self._value = None

    def get_value(self):
        return self._value

    def set_value(self, value):
        self._value = value

obj = MyClass()
obj.set_value(10)
print(obj.get_value())
```

Ahora, puedes utilizar estos métodos para acceder y establecer el valor del atributo `value` de `MyClass`.

```python3
class MyClass:
    def __init__(self):
        self._value = None

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

obj = MyClass()
obj.value = 10
print(obj.value) 
```

Ahora, puedes utilizar la propiedad `value` de `MyClass` para obtener y establecer el valor del atributo `value`:

En conclusión, los métodos getter y setter proporcionan una forma controlada de acceder y establecer los valores de las variables de instancia privadas en las clases Python.  
  
## Método vs Función

En Python, tanto los métodos como las funciones se utilizan para realizar una tarea específica. Sin embargo, tienen algunas diferencias.

### Funciones

Las funciones se definen fuera de la clase y pueden ser llamadas en cualquier parte del código usando su nombre. Toman parámetros de entrada y `devuelven` un valor. Aquí hay un ejemplo de una función que toma dos números como entrada y devuelve su suma:

```python3
def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)
print(result)  # Output: 8
```

Para utilizar esta función, podemos llamarla y proporcionar los parámetros de entrada:

### Métodos

Los métodos, por otro lado, se definen dentro de las clases y son llamados en instancias de esa clase. Tienen acceso a los atributos de la instancia y pueden modificar su estado.

Aquí hay un ejemplo de un método que toma un parámetro de entrada y modifica el estado de la instancia:

```python3
class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model
        self.speed = 0

    def accelerate(self, speed):
        self.speed += speed

my_car = Car("Toyota", "Corolla")
my_car.accelerate(20)
print(my_car.speed)  # Output: 20
```

En este ejemplo, el método `accelerate()` se define dentro de la clase `Car` y se llama a una instancia de la clase `Car`. Acelera la velocidad del coche añadiendo el parámetro de entrada al atributo `speed` de la instancia.

En resumen, las funciones son bloques de código independientes que toman parámetros de entrada y devuelven un valor, mientras que los métodos se definen dentro de las clases y se invocan sobre instancias de esa clase, con acceso a los atributos de la instancia y la posibilidad de modificar su estado.  
  
## Anular Método de Clase

La sobreescritura de métodos es una característica de la programación orientada a objetos que permite a una subclase proporcionar una implementación diferente de un método que ya está definido en su superclase. En Python, la sobreescritura de métodos es sencilla y se consigue definiendo un método en la subclase con el mismo nombre que el método en la superclase.

```python3
class Parent:
  def my_method(self):
    print("Parent method called")

class Child(Parent):
  def my_method(self):
    print("Child method called")

obj = Child()
obj.my_method() ### prints Child method called

```

En este ejemplo, la clase `Child` extiende la clase `Parent` y sobrescribe el método `my_method()`. Cuando creamos un objeto de la clase `Child` y llamamos a `my_method()`, se imprimirá `Child method called` en lugar de `Parent method called`.

```python3
class Animal:
  def move(self):
    print("Animal is moving")

class Bird(Animal):
  def move(self):
    super().move()
    print("Bird is flying")

obj = Bird()
obj.move() ### prints "Animal is moving" and "Bird is flying

```

En este ejemplo, la clase `Bird` extiende la clase `Animal` y anula el método de la clase `move()`. Sin embargo, también llama a la implementación de la superclase de `move()` primero usando la función `super()`, y luego añade su propia implementación de `Bird is flying`. La salida será `Animal se mueve` y `Pájaro vuela`.

Usar la sobreescritura de métodos en Python permite una mayor flexibilidad y personalización en el comportamiento de tus clases.
