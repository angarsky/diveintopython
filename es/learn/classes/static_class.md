> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/static-class

Python ofrece varios tipos de clases, incluyendo las clases estáticas de Python, que te permiten definir funcionalidad a nivel de clase sin necesidad de crear instancias. Una de las ventajas de usar una clase estática es que te permite agrupar funciones relacionadas dentro de una clase, integrando clases estáticas Python en tus proyectos Python, puedes aprovechar los beneficios de la funcionalidad organizada a nivel de clase que no depende de instancias de clase. Para crear un método estático en una clase, puedes utilizar el decorador `@staticmethod`. Una vez creado, puedes llamar al método estático directamente desde la clase sin crear una instancia de la misma. En este artículo, exploraremos el concepto de clases estáticas y cómo crear y llamar a un método estático en una clase.  
  
## Entendiendo las Clases Estáticas de Python

Una clase estática de Python es una clase que no requiere que se cree una instancia. Se crea usando el decorador `@staticmethod` en la definición de una clase. Un método estático no tiene acceso a la instancia, y tampoco puede modificar la propia clase.

### Cómo Usar una Clase Estática de Python y Llamar a un Método Estático en la Clase

Además de entender el concepto de método estático, es crucial comprender el significado de una clase estática en Python.

```python3
class MyClass:
    @staticmethod
    def static_method():
        print("This is a static method in a class")
        
MyClass.static_method()   # Output: This is a static method in a class
```

En el ejemplo anterior, `static_method()` es un método estático en `MyClass`. Puede ser llamado usando el nombre de la clase sin una instancia de la clase.

```python3
class Calculator:
    @staticmethod
    def add_numbers(x, y):
        return x + y
        
result = Calculator.add_numbers(3, 5)
print(result)   # Output: 8
```

En el ejemplo anterior, el método estático `add_numbers()` de la clase `Calculator` puede ser llamado directamente usando el nombre de la clase `Calculator`. Toma dos argumentos `x` e `y` y devuelve su suma.

En general, las clases estáticas y métodos estáticos proporcionan una manera de representar la funcionalidad que no depende de ninguna instancia o variables de clase, y se puede utilizar sin crear una instancia de una clase.  
  
## Qué es un método estático en Python

Python nos permite crear clases estáticas y métodos estáticos dentro de una clase. Un método estático en Python no requiere que se cree una instancia de la clase antes de ser utilizado. Mientras tanto, un método estático de una clase Python es un método cuyo primer parámetro es la propia clase en lugar de la instancia de la clase.

Para crear clases estáticas y métodos estáticos, simplemente usamos el decorador `@staticmethod` en Python.

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

En el ejemplo anterior, hemos creado una **clase estática** llamada **Math** que contiene dos **métodos estáticos** llamados **sumar** y **restar**. Podemos llamar a estos métodos directamente desde la clase sin necesidad de crear una instancia de la clase.

```python
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

En este ejemplo, creamos una clase `Persona` con una **variable de clase** llamada `cuenta` que registrará el número de instancias de la clase creadas. También hemos creado un **método estático de clase Python** llamado `total_personas` que devolverá el número total de personas creadas. Podemos llamar a este método estático directamente desde la clase.
  
## Cómo llamar a un método estático en una clase

Para llamar a un método estático en una clase, necesitas definir un método estático usando un decorador incorporado `@staticmethod`. Un método estático no requiere ninguna instancia para ser llamado, en su lugar, se asocia con la propia clase.

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

En los ejemplos anteriores, podemos ver cómo definir y llamar a un método estático utilizando el decorador `@staticmethod` en Python.  

## Cuándo usar métodos estáticos

Los métodos estáticos en Python son una característica poderosa que puede mejorar significativamente la organización y mantenimiento del código. Sin embargo, es esencial entender cuándo y dónde usarlos eficazmente. Aquí hay algunos escenarios comunes donde los métodos estáticos pueden ser beneficiosos:

### Funciones de Utilidad

Los métodos estáticos son ideales para funciones de utilidad que no están ligadas a una instancia específica de una clase. Estas funciones proporcionan funcionalidad que puede ser usada en varias partes de tu código base. Al encapsularlas en un método estático, aseguras una estructura limpia y modular, haciendo tu código más mantenible.

```python
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]
```

En este ejemplo, el método `reverse_string` es una función de utilidad que se puede utilizar para invertir una cadena. No requiere acceso a datos específicos de la instancia y puede invocarse directamente en la clase.

### Métodos de Fábrica

Los métodos estáticos se pueden utilizar para crear instancias de una clase. Esto es particularmente útil cuando se desea encapsular la lógica para la creación de objetos dentro de la propia clase. Los métodos de fábrica simplifican el proceso de inicialización de objetos y proporcionan interfaces claras y concisas para la creación de objetos.

```python
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    @staticmethod
    def create_square(side_length):
        return Rectangle(side_length, side_length)
```

En este ejemplo, el método estático `create_square` es un método de fábrica que simplifica la creación de instancias cuadradas de `Rectangle`.

### Cacheo y Memoización

Los métodos estáticos pueden ser utilizados con fines de almacenamiento en caché o memoización. Cuando se necesita almacenar y reutilizar resultados calculados, los métodos estáticos pueden ayudar a mantener una caché dentro de la clase, haciendo los cálculos posteriores más eficientes.

```python
class MathUtils:
    _fib_cache = {0: 0, 1: 1}

    @staticmethod
    def fibonacci(n):
        if n not in MathUtils._fib_cache:
            MathUtils._fib_cache[n] = MathUtils.fibonacci(n - 1) + MathUtils.fibonacci(n - 2)
        return MathUtils._fib_cache[n]
```

En este ejemplo, el método estático `fibonacci` calcula los números Fibonacci con memoización para optimizar el rendimiento.

### Organización del código

Utilice métodos estáticos para agrupar funciones relacionadas dentro de una clase. Esto mejora la organización y legibilidad del código. Cuando las funciones comparten un propósito común pero no dependen de datos específicos de instancia, encapsularlas como métodos estáticos dentro de la misma clase mantiene tu código estructurado.

```python
class FileUtils:
    @staticmethod
    def read_file(filename):
        # Read file content

    @staticmethod
    def write_file(filename, content):
        # Write content to a file
```

En este ejemplo, la clase `FileUtils` agrupa métodos relacionados con operaciones con archivos, proporcionando una forma clara y organizada de trabajar con archivos.

Al reconocer estos escenarios, puedes aprovechar eficazmente el poder de los métodos estáticos en tu código Python y crear un software más fácil de mantener y organizado. Los métodos estáticos ofrecen una forma limpia y concisa de encapsular funcionalidad que no depende de datos específicos de instancia, al tiempo que mejoran la legibilidad y mantenibilidad del código.
  
## Clases Estáticas vs Clases Regulares

Las clases estáticas en Python son clases que tienen atributos a nivel de clase y métodos a los que se puede acceder sin crear una instancia de la clase. Se definen usando el decorador `@staticmethod`. Por otro lado, las clases regulares en Python son aquellas que requieren un objeto de la clase para acceder a sus atributos o métodos.

### Clase estática en Python

```python3
class StaticClass:
    @staticmethod
    def my_static_method():
        print("This is a static method")

# Call static method in class
StaticClass.my_static_method()
```

En el ejemplo anterior, hemos definido una clase estática `StaticClass` con un método estático `my_static_method`. Podemos llamar a este método sin crear una instancia de la clase.
  
## Cómo usar clases estáticas en Python

Las clases estáticas en Python son clases que se utilizan para agrupar funciones que no pueden clasificarse bajo clases existentes. Estas clases no requieren que se cree una instancia de la clase para poder ser accedidas. En su lugar, los métodos estáticos pueden ser llamados directamente desde la propia clase. Éstos son algunos de los principales beneficios del uso de clases estáticas:

1. **Organización del espacio de nombres** - Las clases estáticas pueden utilizarse para organizar funciones que no encajan bien en ninguna clase existente. Esto ayuda a mantener una estructura de código limpia y organizada.

2. **Reutilización del código** - Las clases estáticas pueden reutilizarse en múltiples módulos y funciones, haciendo que el código sea reutilizable y fácil de mantener.

3. **Mejora de la legibilidad del código** - Las clases estáticas facilitan la lectura y comprensión del código, ya que las funciones se agrupan en una única clase y se puede acceder a ellas directamente.

```python
class MathUtils:
    @staticmethod
    def add_numbers(a, b):
        return a + b

result = MathUtils.add_numbers(2, 3)
print(result)
```

En este ejemplo, hemos creado una clase estática `MathUtils` y definido un método estático `add_numbers` que toma dos argumentos y devuelve su suma. El método estático se puede llamar directamente desde la clase `MathUtils` sin crear una instancia de la clase.

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

En este ejemplo, hemos creado dos clases estáticas `StringUtils` y `TextUtils`. La clase `StringUtils` contiene un método estático `reverse_string` que devuelve una cadena invertida. La clase `TextUtils` contiene un método estático `reverse_and_uppercase` que llama al método `reverse_string` de la clase `StringUtils` y devuelve la cadena invertida en mayúsculas.

## Variables estáticas en la clase
 
En Python, las variables estáticas son variables a nivel de clase que se comparten entre todas las instancias de la clase. Estas variables se definen dentro de la clase pero fuera de cualquier método, y conservan su valor a través de diferentes instancias de la clase.

Las variables estáticas son útiles cuando se desea almacenar datos que son compartidos por todas las instancias de una clase o cuando se desea mantener un recuento o una configuración común a través de todas las instancias.

Aquí hay dos ejemplos de código que demuestran el uso de variables estáticas en clases Python:

### Ejemplo 1: Contando Instancias

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

En el ejemplo anterior, la variable `count` es una variable estática que lleva la cuenta del número de instancias `Car` creadas. Se incrementa en el constructor (`__init__`) cada vez que se crea una nueva instancia. Se accede a la variable estática utilizando el nombre de la clase (`Car.count`).

### Ejemplo 2: Configuración Común

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

En este ejemplo, la variable `PI` es una variable estática que almacena el valor de `pi`. Se utiliza dentro del método calcular_área para calcular el área de un círculo. Se accede a la variable estática utilizando el nombre de la clase (`Circle.PI`).

Las variables estáticas se comparten entre todas las instancias de una clase y se puede acceder a ellas utilizando el nombre de la clase o a través de una instancia de la clase. Son una herramienta útil para gestionar datos comunes a todas las instancias o para mantener una configuración compartida entre objetos.

## La diferencia entre un método de clase y un método estático

Ahora que estás familiarizado con los métodos de clase y los métodos estáticos, es hora de profundizar en el mundo de la clase estática de Python y sus propiedades distintivas.

Un método abstracto de clase se define como un método que se declara pero no contiene implementación. Corresponde a la subclase proporcionar la implementación. Un método abstracto se define utilizando el decorador **@abstractmethod** de Python.

Los métodos de clase se utilizan para modificar la clase o sus propiedades. Se definen utilizando el decorador `@classmethod` y se les pasa la clase como primer argumento en lugar de la instancia.

Los métodos estáticos de Python se llaman sobre la clase y no toman ningún primer argumento especial. Se definen utilizando el decorador `@staticmethod`.

### Diferencias clave entre método de clase y método estático en Python

| Método de clase | Método estático                                                |
|---|----------------------------------------------------------------|
| Decorador: **@classmethod** | Decorador: **@staticmethod**                                   |
| Primer argumento: **cls** (clase en sí) | No hay primer argumento especial                               |
| Puede modificar el estado o propiedades de la clase | No puede modificar el estado o propiedades de la clase         | No puede modificar el estado o propiedades de la clase | No puede modificar el estado o propiedades de la clase
| Útil para operaciones específicas de la clase | Útil para operaciones de utilidad no relacionadas con la clase | Útil para operaciones de utilidad no relacionadas con la clase | Útil para operaciones de utilidad no relacionadas con la clase
| Puede acceder a variables de nivel de clase | No puede acceder a variables de nivel de clase                 | No puede acceder a variables de nivel de clase | No puede acceder a variables de nivel de clase

### Ejemplo 1: Método de clase

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

### Ejemplo 2: Método estático

```python
class Formatter:
    @staticmethod
    def format_string(string):
        return string.upper()

print(Formatter.format_string('hello')) # Output: 'HELLO'
```
