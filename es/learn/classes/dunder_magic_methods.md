> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/dunder-magic-methods

Los métodos **Dunder** (doble guión bajo) o **magic** son métodos especiales en Python que permiten personalizar clases y objetos. Estos métodos se llaman **mágicos** porque pueden cambiar el comportamiento del código de formas inesperadas. Entender e implementar estos métodos puede mejorar enormemente la funcionalidad y flexibilidad de tus programas Python.  
  
## Construyendo Objetos y Expresiones

En Python, los objetos son instancias de clases, que definen los atributos y métodos del objeto. El proceso de crear un objeto en Python implica definir una clase, que especifica la estructura y el comportamiento del objeto, y luego crear instancias de esa clase.

### Definición de Clases en Python

Para definir una clase en Python, se utiliza la palabra clave `class`, seguida del nombre de la clase. Por ejemplo, el siguiente código define una clase simple llamada `Persona`:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def say_hello(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")
```

El método `__init__` es un método especial que se llama cuando se crea una instancia de la clase. Inicializa los atributos del objeto.

### Método mágico `__init__` de Python

El método `__init__` es un método mágico especial que se llama cuando se crea una instancia de una clase. Inicializa los atributos del objeto. En el ejemplo anterior, el método `__init__` toma dos parámetros, `name` y `age`, que se utilizan para inicializar los atributos `name` y `age` del objeto.

### Creando Instancias de Clases en Python

Para crear una instancia de una clase, se llama a la clase como si fuera una función, pasando cualquier argumento que el método `__init__` dunder requiera. Por ejemplo, el siguiente código crea dos instancias de la clase `Persona`:

```python
# Defining a car class
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
    
    def describe_car(self):
        print(f"The car is a {self.year} {self.make} {self.model}.")
    
    
# Creating an instance of Car class
car1 = Car("Honda", "Accord", 2021)

# Calling the describe_car method
car1.describe_car()

# Output: The car is a 2021 Honda Accord.
```

```python
# Defining a book class
class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages
    
    def describe_book(self):
        print(f"The book '{self.title}' is written by {self.author} and has {self.pages} pages.")
        

# Creating an instance of Book class
book1 = Book("The Alchemist", "Paulo Coelho", 208)

# Calling the describe_book method
book1.describe_book()

# Output: The book 'The Alchemist' is written by Paulo Coelho and has 208 pages.
```

## Creación de objetos iteradores

Un iterador es un objeto que permite la iteración secuencial (bucle) sobre una colección de elementos, un elemento cada vez. En Python, puedes crear objetos iteradores usando clases o funciones.

### Clase Generadora de Python

Puedes crear un iterador utilizando la clase generador en Python. La clase generador es un tipo de objeto que se utiliza para crear objetos iterables utilizando la sentencia `yield`.

```python3
class MyGenerator:
    def __init__(self):
        self.num = 0

    def __iter__(self):
        return self
    
    def __next__(self):
        if self.num <= 5:
            value = self.num
            self.num += 1
            return value
        else:
            raise StopIteration
def my_generator():
    num = 0
    while num <= 5:
        yield num
        num += 1

# Using the generator class
gen = MyGenerator()
for x in gen:
    print(x)

# Using the function generator
gen = my_generator()
for x in gen:
    print(x)
```

En este ejemplo, `MyGenerator` es una clase generadora que hereda de la clase incorporada `object`. Define un método `__init__()` que inicializa el atributo `num` a 0. También define el método `__iter__()` que devuelve el objeto iterador (`self` en este caso) y el método mágico `__next__()` que genera el siguiente valor de la secuencia.

También puedes crear un iterador usando un generador de funciones de Python. Un generador de funciones es una función que contiene la sentencia `yield`.

En este ejemplo, la función `my_generator` es un generador de funciones que utiliza la sentencia `yield` para generar el siguiente valor de la secuencia.

En los dos ejemplos anteriores, puedes crear un objeto iterador de la siguiente manera:

Ambos ejemplos de código mostrarán los valores `0`, `1`, `2`, `3`, `4`, y `5` cuando se itere sobre ellos.  
  
## Manejo de referencias a atributos

Las referencias a atributos se utilizan para acceder a los atributos de un objeto en Python. Se puede acceder a ellas usando la sintaxis de la notación de puntos y también se puede acceder dinámicamente usando la función `getattr()`.

La función `getattr()` toma dos argumentos - el objeto cuyo atributo necesita ser accedido y el nombre del atributo como cadena. Si no se encuentra el atributo, se produce un error `AttributeError`.

```python3

class Dog:
    def __init__(self, name, breed):
        self.name = name
        self.breed = breed

my_dog = Dog("Max", "German Shepherd")
print(my_dog.name) ### Output

my_cat = {"name": "Fluffy", "breed": "Persian"}
cat_name = getattr(my_cat, "name")
print(cat_name) ### Output
```

En el primer caso, creamos una clase `Dog` y accedemos al atributo `name` utilizando la sintaxis de notación por puntos.

En el segundo caso, creamos un objeto diccionario `mi_gato` y accedemos al atributo `nombre` dinámicamente usando la función `getattr()`. Almacenamos el valor del atributo en `cat_name` y lo imprimimos.  
  
## Representando Objetos como Cadenas con el Método Mágico

En Python, podemos representar objetos como cadenas usando el método `__repr__()`. Este método es llamado cuando usamos la función `repr()` o cuando imprimimos un objeto usando la función `print()`.

```python
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        
    def __repr__(self):
        return f"Point({self.x}, {self.y})"
        
p = Point(2, 3)
print(p)  ### Output
```

En el código anterior, hemos definido una clase `Point` con atributos `x` y `y`. También hemos definido un método `__repr__()` dunder que devuelve una representación de cadena del objeto `Point`. Cuando imprimimos el objeto `p`, éste llama al método mágico `__repr__()` para obtener su representación en cadena.

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
        
    def __repr__(self):
        return f"Car(make={self.make}, model={self.model}, year={self.year})"
        
c = Car("Toyota", "Camry", 2021)
print(c)  ### Output
```

En este ejemplo, hemos definido una clase `Car` con los atributos `make`, `model` y `year`. También hemos definido un método `__repr__()` que devuelve una representación en forma de cadena del objeto `Car`. Cuando imprimimos el objeto `c`, éste llama al método `__repr__()` para obtener su representación en cadena.  
  
## Limpiando Objetos con el Método Dunder

En Python, los objetos son automáticamente recolectados cuando ya no son necesarios. Sin embargo, a veces puede ser necesario definir acciones de limpieza adicionales para un objeto. Esto puede hacerse usando el método `__del__`, que es llamado cuando el objeto está a punto de ser destruido.

Este método dunder es útil para liberar recursos como archivos, conexiones de red, u otros objetos a nivel de sistema que no son gestionados automáticamente por Python.

```python
class MyClass:
    def __init__(self):
        self.file = open('example.txt', 'r')

    def __del__(self):
        self.file.close()
```

En este ejemplo, el constructor `MyClass` crea un objeto fichero y lo almacena en la variable de instancia `file`. Cuando se destruye el objeto, se llama al método `__del__`, que cierra el fichero.
  
## Realizando Comparaciones con Métodos Dunder

Python proporciona múltiples formas de comparar valores, variables o expresiones. Algunos operadores comúnmente usados para realizar comparaciones incluyen `==`, `!=`, `>`, `<`, `>=`, `<=`, `in`, y `is`.

### Python Compara Cadenas

El método `__lt__()` se utiliza para implementar el operador de comparación menor que en Python. Devuelve `True` si la primera cadena es menor que la segunda y `False` en caso contrario.

```python3
string1 = "apple"
string2 = "banana"
if string1.__lt__(string2):
    print("string1 is less than string2")
else:
    print("string1 is greater than or equal to string2")

# Output:
#string1 is less than string2
```

```python3
fruits = ["apple", "banana", "orange", "kiwi"]
sorted_fruits = sorted(fruits, key=lambda x: x.__lt__("c"))
print(sorted_fruits)
# Output:

# ['orange', 'kiwi', 'apple', 'banana']
```

En el ejemplo anterior, hemos ordenado la lista de frutas en orden ascendente en función de si el primer carácter de cada cadena es menor o mayor que `c`. lambda x: x.__lt__(`c`)` devuelve `Verdadero` si el primer carácter de `x` es menor que `c` y `Falso` en caso contrario.
