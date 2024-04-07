> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/objects

Si quieres profundizar tus conocimientos de programación en Python, es esencial que tengas una sólida comprensión de las clases y los objetos. Esencialmente, una clase es un plano para crear objetos, mientras que los objetos son instancias de estas clases. En esta guía, exploraremos el mundo de las clases y objetos, y profundizaremos en los fundamentos de las clases y los objetos en este potente lenguaje. Tanto si estás empezando con Python como si quieres mejorar tus conocimientos, sigue leyendo para aprender más sobre este aspecto crucial del lenguaje.  
  
## Cómo crear un objeto en Python

Las clases y los objetos en Python son conceptos fundamentales en la programación orientada a objetos. Un objeto es simplemente una instancia de una clase.

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

En este ejemplo, hemos creado una clase llamada `Car` que tiene tres atributos: `make`, `model`, y `year`. El método `__init__()` se utiliza para inicializar los atributos cuando se crea un nuevo objeto. El método `display()` se utiliza para imprimir información sobre el coche. Hemos creado dos objetos (`car1` y `car2`) de la clase `Car`. Hemos introducido valores para los atributos `make`, `model` y `year` de cada coche. A continuación, hemos llamado al método `display()` en cada objeto para imprimir la información sobre el coche.

En resumen, las clases y objetos en Python se utilizan para crear tipos de datos personalizados que pueden tener atributos y métodos. El uso de objetos de clase en Python permite un código más organizado y modular.  
  
## Qué es un Objeto en Python

Un objeto de clase en Python se refiere a un plano o plantilla para crear objetos. Define los atributos y métodos que tendrá un objeto.
En Python, las clases se utilizan para crear objetos de clase que se pueden utilizar para crear instancias u objetos de esa clase.

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

En este ejemplo, `Car` es un objeto de clase que define los atributos - `make`, `model` y `year` de un coche y un método `get_details()` que devuelve los detalles del coche.

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

En este ejemplo, `Dog` es otro objeto de clase que define los atributos - `breed` y `age` de un perro y un método `bark()` que devuelve el sonido de un perro.
   
## Explorando las Características Clave de la Clase Objeto

Una clase objeto en Python es un plano para crear objetos. Define un conjunto de atributos y métodos que tendrán todos los objetos creados a partir de esa clase.

- Clases: Una clase es un plano para crear objetos. Define los atributos y métodos que tendrán todos los objetos creados a partir de esa clase.

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

car1 = Car("Toyota", "Camry", 2020)
car2 = Car("Honda", "Accord", 2021)
```

- Objetos: Un objeto es una instancia de una clase. Tiene todos los atributos y métodos definidos en la clase.

```python3
class Player:
    def __init__(self, name, position, number):
        self.name = name
        self.position = position
        self.number = number

p1 = Player("LeBron James", "Small Forward", 23)
print(p1.name, p1.position, p1.number)
```

## Resolución de problemas comunes con el objeto de clase

Cuando se trabaja con objetos de clase, puede haber algunos problemas comunes que pueden ocurrir. Estos son algunos de los problemas más comunes y sus soluciones:

1. `AttributeError`: Este error se produce cuando se intenta acceder a un atributo que no existe en la clase u objeto. Para solucionar este error, asegúrese de que el atributo existe y se ha definido correctamente.

```python3
class MyClass:
    def __init__(self, val):
        self.value = val

obj = MyClass(5)
print(obj.value)  # Output: 5

# print(obj.foo)  Output: AttributeError: 'MyClass' object has no attribute 'foo'
```

2. `TypeError`: Este error se produce cuando se llama a una función o método con un número o tipo de argumentos incorrecto. Para solucionar este error, asegúrese de que la función o método se llama con el número y tipo de argumentos correctos.

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

## Cómo obtener atributos de un objeto

Los tipos de objetos de Python tienen atributos que representan características o comportamientos del objeto. Para obtener todos los atributos de un objeto en Python, puedes usar la función `getattr()` o acceder a ellos directamente usando la notación punto.

### Usando la función `getattr()`.

La función `getattr()` toma dos argumentos, el objeto y el atributo `name,` y devuelve el valor del atributo.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = getattr(my_obj, 'name')
print(name) # Output: 'John'
```

### Acceder directamente a los atributos

También puede acceder directamente a los atributos de un objeto utilizando la notación de puntos.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = my_obj.name
print(name) # Output: 'John'
```

En conclusión, la obtención de atributos de los tipos de objetos de Python puede hacerse utilizando la función `getattr()` o accediendo a ellos directamente utilizando la notación punto.  

## Explorando la Herencia y Búsqueda de Atributos

Los atributos pueden ser heredados de clases padre a clases hijo. La herencia de atributos permite a las clases hijas acceder y utilizar atributos definidos en sus clases padre. Python proporciona una función integrada `issubclass()` para comprobar si una clase dada es una subclase de otra clase.

### Ejemplo de una clase en Python

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

En este ejemplo, `Estudiante` es una clase hija de `Persona`. La clase `Student` hereda los atributos `name` y `age` de la clase `Person`.

### Herencia de atributos

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

En este ejemplo, `A` es la clase padre, `B` es la clase hija y `C` es la clase nieta. El atributo `x` definido en la clase `A` es heredado por las clases `B` y `C`.

### Orden de búsqueda de atributos

```python3
class A:
    x = 10

class B(A):
    x = 20

class C(B):
    pass

print(C.x)   ### Output 20

```

En este ejemplo, `A` es la clase padre, `B` es la clase hija y `C` es la clase nieta. Ambas clases `A` y `B` tienen un atributo llamado `x`. En este caso, el orden de búsqueda del atributo es desde la clase actual (que es `C`), a su clase padre `B` y finalmente a la clase abuela `A`. El valor de `x` encontrado en el ancestro más cercano (`B`) se imprime como salida.

## Cómo imprimir todos los atributos de un objeto

Para obtener los atributos de un objeto en Python, puedes utilizar la función incorporada `dir`. Para imprimir los atributos de un objeto, necesitas iterar sobre la salida de la función `dir` y usar la función `getattr` para obtener los valores de los atributos. Aquí tienes dos ejemplos de código:

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

En ambos ejemplos, la función `dir` se utiliza para obtener una lista de todos los atributos del objeto. El primer ejemplo utiliza un simple bucle for para iterar sobre la lista e `imprimir` cada atributo junto con su `valor` utilizando la función `getattr`. El segundo ejemplo utiliza una comprensión de lista para filtrar los atributos "invocables" (como los métodos) y los atributos que empiezan por dos guiones bajos (que se consideran privados). La lista de atributos resultante se imprime con la función `getattr`.  
  
## Cómo comprobar el tipo de objeto en Python

En Python, puedes comprobar el `tipo` de un objeto usando la función `type()`. Esta función devuelve el `tipo` del objeto que pasas como argumento. Aquí hay dos ejemplos para ilustrar cómo usar la función `type()`:

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

Usar la función `type()` te permite obtener el `type` de cualquier objeto Python de forma rápida y sencilla. Esto puede ser útil cuando quieras depurar tu código o escribir sentencias condicionales basadas en el `tipo` de un objeto.  
  
## Serializar Objeto

La serialización en Python se refiere al proceso de convertir un objeto Python en un flujo de bytes. Esto puede ser útil cuando se transfieren datos entre diferentes sistemas o se guarda el estado de un programa en el disco. El módulo de serialización más común en Python es `pickle`, que puede serializar la mayoría de los objetos Python.  

Aquí hay dos ejemplos de cómo usar [pickle](https://docs.python.org/3/library/pickle.html) para serializar un objeto en Python:

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

En el primer caso, creamos un objeto diccionario y lo volcamos a un fichero usando `pickle.dump()`. En el segundo caso, creamos una instancia de `MyClass` y la serializamos a una cadena de bytes usando `pickle.dumps()`.

Usar `pickle` para serializar objetos Python es fácil y potente. Sin embargo, ten en cuenta que `pickle` no es seguro y no debe ser utilizado para serializar o deserializar datos no confiables.  
  
## Error: Python Object has no Attribute

Cuando encuentras un mensaje de error que dice `Python Object has no Attribute` en Python, significa que estás intentando acceder a un atributo o método que no existe en ese objeto. Puede deberse a un error tipográfico en el nombre del atributo o al uso de una variable incorrecta para acceder al atributo.

Aquí hay dos ejemplos de cómo puede ocurrir este error y cómo solucionarlo:

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

Explicación: En este ejemplo, estamos intentando acceder al atributo 'color', que no existe en el objeto `my_car`.

Para solucionar este error, es necesario añadir el atributo `color` a la clase `Car` o utilizar un atributo existente.

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

Explicación: En este ejemplo, estamos intentando añadir un `valor` de cadena a la variable `total`, lo que produce un error porque el método `numeric()` sólo funciona con valores numéricos.

Para solucionar este error, puedes utilizar la función `isinstance()` para comprobar `si` el `valor` es numérico antes de añadirlo a la variable `total`.

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

## Cómo listar los métodos disponibles en una clase

En Python, puedes listar todos los métodos disponibles en tu clase usando las funciones `dir()` o `vars()`. Estas funciones te permiten introspeccionar tu clase y ver todos los métodos y atributos que contiene.

### Usando la función `dir()`.

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

### Uso de la función `vars()`.

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

El uso de estas funciones puede ayudarle a comprender cómo está estructurada una clase y cómo interactuar con ella.
