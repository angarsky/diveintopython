> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/object-instantiation

La instanciación de objetos es un concepto fundamental en la programación orientada a objetos que se refiere al proceso de creación de nuevos objetos a partir de una clase. Este proceso implica el uso de constructores, que son métodos especiales que definen cómo se inicializan los nuevos objetos. Este artículo describe cómo instanciar un objeto en Python y proporciona ejemplos de cómo crear y utilizar estos objetos en tu código.  
  
## Explorando los Constructores de Clase de Python

Un constructor de clase en Python es un método especial que se ejecuta cuando un objeto de una clase es instanciado. Se utiliza para inicializar los atributos de la clase. El método constructor en Python se llama `__init__()` y se define dentro de la clase.

### Cómo Instanciar una Clase Python

Vamos a explorar cómo instanciar una clase en Python.
Para lograr esto, debemos realizar la instanciación de una clase en Python creando una instancia de la clase que invoque a su método constructor. Aquí hay un ejemplo de una clase simple y cómo instanciar un objeto de esa clase.

```python3
class Recipe:
    def __init__(self, name, ingredients):
        self.name = name
        self.ingredients = ingredients

# Instantiate a Recipe object
my_recipe = Recipe("Spaghetti Bolognese", ["spaghetti", "tomato sauce", "ground beef"])

# Access the object's attributes
print("Recipe Name:", my_recipe.name)
print("Ingredients:", my_recipe.ingredients)
```

En el ejemplo anterior, la clase `Receta` tiene un constructor que establece los atributos `nombre` e `ingredientes` para cada nuevo objeto que se instancia. El objeto "mi_receta" se crea con el nombre "Espaguetis a la boloñesa" y una lista de ingredientes. Las sentencias print mostrarán `Nombre de la receta: Espaguetis a la Boloñesa` y `Ingredientes: ['espaguetis', 'salsa de tomate', 'carne picada']`.

## Herencia y constructores en Python

En Python, los constructores juegan un papel crucial en la herencia de clases, permitiendo a las clases hijas heredar y extender atributos y comportamientos de las clases padres.

### Conceptos Básicos de Herencia de Constructores

Las clases hijas heredan el constructor de su clase padre, permitiéndoles reutilizar la lógica de inicialización de la clase padre. Por ejemplo:

```python
class Vehicle:
    def __init__(self, make, model):
        self.make = make
        self.model = model

class Car(Vehicle):
    def __init__(self, make, model, year):
        super().__init__(make, model)
        self.year = year
```

En este ejemplo, la clase Coche hereda de Vehículo y extiende sus atributos.

### Constructor Overriding

Las clases hijas también pueden sobrescribir el constructor de la clase padre para personalizar la inicialización:

```python
class Bike(Vehicle):
    def __init__(self, make, model, wheel_count):
        super().__init__(make, model)
        self.wheel_count = wheel_count
```

### Clases Base Abstractas

Las clases base abstractas te permiten imponer patrones de inicialización a través de una jerarquía de clases. Consulte la página [abstract classes page](/es/learn/classes/abstract_class.md) para obtener más información.

## Profundizando en el Proceso de Instanciación de Objetos de Python

Instanciar un objeto, en Python, significa crear una instancia de una clase. Cuando creas una instancia de una clase, instancias el objeto. En Python, el proceso de instanciar objetos implica crear e inicializar objetos.

Para instanciar una clase Python, necesitas usar el método constructor, que es el método `__init__()`. El método constructor inicializa los atributos o propiedades de un objeto.

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

person1 = Person("John", 25)
print(person1.name)
print(person1.age)
```

En este ejemplo, hemos definido una clase llamada `Persona` con dos atributos, `nombre` y `edad`. Instanciamos un objeto `persona1` y pasamos dos argumentos al método constructor. Finalmente, imprimimos los valores de los atributos nombre y edad.

```python3
class Employee:
    def __init__(self, firstname, lastname, salary):
        self.firstname = firstname
        self.lastname = lastname
        self.salary = salary

    def get_fullname(self):
        return self.firstname + " " + self.lastname

employee1 = Employee("Jane", "Doe", 50000)
print(employee1.firstname)
print(employee1.get_fullname())
print(employee1.salary)
```

En este ejemplo, hemos definido una clase llamada `Empleado` con tres atributos, `nombre`, `apellido` y `salario`. Instanciamos un objeto `empleado1` y pasamos tres argumentos al método constructor. Finalmente, imprimimos los valores de los atributos firstname, get_fullname() y salary.

En Python, instanciar objetos es una forma potente y flexible de crear objetos con comportamientos y atributos específicos.  
  
## Inicializando Objetos Usando el Método `__init__()`.

El método `__init__()` se utiliza en las clases de Python para inicializar los objetos recién creados. Es llamado automáticamente cuando un objeto es creado usando el constructor de la clase.

Este es un ejemplo de una clase con un método `__init__()`:

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("Alice", 25)
print(p1.name)  ### Output Alice

print(p1.age)  ### Output 25
```

En este ejemplo, la clase `Person` tiene un método `init` que toma dos argumentos: `nombre` y `edad`. Cuando creas un nuevo objeto `Persona`, pasas los valores de estos argumentos, y el método `__init__()` establece las variables de instancia correspondientes.

También puedes tener argumentos opcionales o por defecto en el método `__init__()`:

```python3
class Rectangle:
    def __init__(self, width=0, height=0):
        self.width = width
        self.height = height

r1 = Rectangle()
print(r1.width)  ### Output 0

print(r1.height)  ### Output 0

r2 = Rectangle(10, 20)
print(r2.width)  ### Output 10

print(r2.height)  ### Output 20
```

En este ejemplo, la clase `Rectangle` tiene un método `__init__()` que toma dos argumentos opcionales: `width` y `height`. Si no se proporcionan argumentos, se utilizan los valores por defecto de `0`.
  
## Personalizando la Inicialización de Objetos de Python

En Python, el método `__init__()` es llamado cuando se crea un objeto de una clase. Se utiliza para inicializar los atributos del objeto. Sin embargo, a veces podemos necesitar personalizar la inicialización del objeto especificando nuestros propios parámetros. Esto se puede lograr utilizando los siguientes métodos:

### Crear Clase Python sin `__init__()`

Una forma de personalizar la inicialización de objetos es definir un método personalizado que inicialice los atributos. Este método puede tomar parámetros que se utilizan para establecer los valores de los atributos. He aquí un ejemplo:

```python3
class Car:
    def set_values(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

my_car = Car()
my_car.set_values('Toyota', 'Camry', 2022)
print(my_car.make)  # Output: Toyota
```

En este ejemplo, hemos definido un método personalizado `set_values()` para inicializar los atributos `make`, `model` y `year`. A continuación, llamamos a este método en un objeto de la clase `Car` para establecer los valores de los atributos.

### Creando Clase con `__init__()`

Otra forma de personalizar la inicialización de objetos es utilizar atributos a nivel de clase. Estos atributos pueden ser establecidos en la definición de la clase y usados para inicializar los atributos del objeto. He aquí un ejemplo:

```python3
class Car:
    make = ''
    model = ''
    year = 0

    def __init__(self):
        self.make = Car.make
        self.model = Car.model
        self.year = Car.year

my_car = Car()
my_car.make = 'Toyota'
my_car.model = 'Camry'
my_car.year = 2022
print(my_car.make)  # Output: Toyota
```

En este ejemplo, definimos `make`, `model`, y `year` como atributos de clase y establecimos sus valores por defecto en una cadena vacía y `0`. Luego usamos estos atributos para inicializar los atributos del objeto en el método `__init__()`. Posteriormente podemos modificar los valores de los atributos del objeto como en el ejemplo anterior.  
  
## Creando un Objeto de Clase Python con Inicializadores Flexibles

La programación orientada a objetos nos permite crear objetos con diferentes propiedades. Podemos inicializar un objeto con propiedades fijas o propiedades flexibles pasando diferentes argumentos al constructor. En Python, podemos utilizar el método `__init__()` para inicializar un objeto con propiedades flexibles.

```python3
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

rect = Rectangle(5, 10)
print(rect.width)   # Output: 5
print(rect.height)  # Output: 10
```

En el ejemplo anterior, hemos inicializado el objeto `Rectangle` con las propiedades fijas `width` y `height`. El objeto devuelto por el constructor siempre tendrá las mismas propiedades.

```python3
class Circle:
    def __init__(self, radius, color='red', border=None):
        self.radius = radius
        self.color = color
        self.border = border

circle = Circle(5)
print(circle.radius)  # Output: 5
print(circle.color)   # Output: red
print(circle.border)  # Output: None
```

En el ejemplo anterior, hemos inicializado el objeto `Circle` con las propiedades flexibles `radius`, `color` y `border`. Hemos pasado un único argumento `radio` al constructor, pero también hemos especificado valores por defecto para `color` y `borde`. Esto nos permite crear un objeto `Circle` con sólo un argumento, o tres argumentos, o cualquier número de argumentos intermedios.

## Creación de objetos mediante el método `__new__()`.

El método `__new__()` se utiliza en Python para crear objetos dinámicamente. Permite al desarrollador crear un objeto de clase utilizando el nombre de la clase, y luego se puede añadir atributo después de init de la clase de python.

```python3
class Person:
    pass

dave = Person.__new__(Person)
dave.name = "Dave"
dave.age = 25

print(dave.name)
```

En el ejemplo anterior, creamos una clase llamada `Persona` y utilizamos el método .new() para crear un objeto llamado `dave`. A continuación, añadimos los atributos `nombre` y `edad` a este objeto después de la inicialización.

```python3
class Car:
    def __init__(self, model, make):
        self.model = model
        self.make = make

car = Car.__new__(Car)
car.__init__("Corvette", "Chevrolet")
car.color = "red"

print(car.color)
```

En este ejemplo, creamos una clase llamada `Car` y definimos sus atributos durante la inicialización utilizando `__init__()`. A continuación creamos un objeto llamado `car` utilizando el método `__new__()` y lo inicializamos con los atributos model y make. Finalmente, añadimos el atributo `color` al objeto `car` tras la inicialización.
