> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/class-decorator

Los decoradores de clases son una poderosa herramienta de programación utilizada para modificar el comportamiento de las clases. Uno de estos decoradores es el decorador de clase, que se puede utilizar para añadir funcionalidad a una clase. Otro tipo de decorador es el decorador de métodos de clase, que se puede utilizar para modificar los métodos de clase. Además, el decorador de propiedades de clase se puede utilizar para crear propiedades computadas para las clases. Estos decoradores pueden modificar rápida y fácilmente el comportamiento de las clases, lo que los hace muy valiosos para los desarrolladores.  
  
## Introducción al Decorador de Clases de Python

Un decorador de clase es un tipo de decorador que se utiliza para modificar o mejorar el comportamiento de una clase. Se utiliza para añadir o eliminar funcionalidad de una clase sin cambiar su definición.

Algunos tipos comunes de decoradores de clase incluyen:

- **Decorador de clase**: Un decorador de clase que modifica el comportamiento de una clase añadiendo o eliminando propiedades, métodos o atributos.

- **Decorador de método de clase**: Un decorador de Python que modifica un método de clase cambiando su comportamiento o añadiendo funcionalidad adicional.

- **Decorador de propiedades de clase**: Un decorador de clase que modifica una propiedad de clase añadiendo o eliminando atributos o métodos.

Aquí tienes dos ejemplos de uso de decoradores de clase:

```python3
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

En el primer ejemplo, se utiliza un decorador de clase para añadir un nuevo método, `square()`, al objeto `MyClass`. En el segundo ejemplo, se utiliza un `class_method_decorator` para modificar el comportamiento del método `class_method()` en el objeto `MyClass`.  
  
## Entendiendo el Decorador de Métodos de Clase

El decorador de métodos de clase se utiliza para definir un método que está vinculado a la clase y no a la instancia de la clase. Toma un parámetro `cls` en lugar de `self`. Este decorador se utiliza para definir métodos que están relacionados con la clase y no con una instancia de la clase.

```python
class MyClass:
    counter = 0

    @classmethod
    def increment_counter(cls):
        cls.counter += 1

MyClass.increment_counter()
print(MyClass.counter)  # Output: 1
```

En el ejemplo anterior, el método `increment_counter` está decorado con `@classmethod` lo que lo convierte en un método de clase. Incrementa la variable de clase `counter` en 1.
  
## Explorando el Decorador de Propiedades de Clase

En Python, un decorador de clase es una función que se puede utilizar para modificar o añadir nuevas funcionalidades a una clase. Hay diferentes tipos de decoradores de clase, incluyendo el decorador de método de clase y el decorador de propiedad de clase.

Un decorador de método de clase es una función que modifica un método de una clase y espera que el primer argumento sea el objeto de la clase. He aquí un ejemplo:

```python3
class MyClass:
    my_var = "hello"

    @classmethod
    def my_method(cls):
        print(cls.my_var)

MyClass.my_method() 

```

Un decorador de propiedades de clase es una función que modifica una propiedad de clase y devuelve un nuevo objeto de propiedad. He aquí un ejemplo:

```python3
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

En resumen, el decorador de clases, el decorador de métodos de clases y el decorador de propiedades de clases son potentes herramientas que pueden utilizarse para modificar o ampliar la funcionalidad de las clases.  
  
## Beneficios de Usar el Decorador de Clases

Un decorador de clase es una característica que es simplemente una función que altera la definición de una clase, por lo que se devuelve como la clase modificada. **Los decoradores de clase** se han hecho populares por su capacidad de añadir funcionalidad a una clase existente sin modificar directamente la clase original.

Los decoradores de Python se utilizan para extender y modificar el comportamiento o las propiedades de una función, método o clase. Aquí hay algunos beneficios de usar decoradores de clase:

1. **Decorador de método de clase:** Los decoradores de Python proporcionan una manera fácil de modificar el comportamiento de un método de clase de alguna manera. Los decoradores de métodos de clase se pueden utilizar para verificar las entradas, salidas o modificar el comportamiento antes de las respuestas de los métodos de clase.

```python3
class Pizza:
    def __init__(self, toppings):
        self.toppings = toppings

    @classmethod
    def recommend(cls):
        """Recommend some pizza toppings."""
        return cls(['mozzarella', 'tomatoes'])

print(Pizza.recommend().toppings)

```

2. **Decorador de propiedades de clase:** el decorador de clase puede utilizarse para definir propiedades de clase de forma concisa y fácil de leer. Por ejemplo, se pueden utilizar para calcular atributos que no están disponibles cuando la clase se define por primera vez.

```python3
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

```

## Mejores prácticas para usar el decorador de métodos de clase

El decorador de clase es ampliamente utilizado para extender el comportamiento de una clase o su método. Los decoradores Python de método de clase se utilizan para modificar el comportamiento existente de un método de clase añadiendo funcionalidad adicional. El decorador de propiedades de clase de Python te permite definir una propiedad a nivel de clase que estará disponible para todas las instancias de esa clase.

Estas son algunas de las mejores prácticas a tener en cuenta al utilizar el decorador de método de clase y el decorador de propiedad de clase:

1. Usa `@classmethod` para definir un decorador de método de clase.

```python3
class MyClass:

    def __init__(self, value):
        self.value = value

    @classmethod
    def from_string(cls, string):
        value = int(string)
        return cls(value)

obj = MyClass.from_string('10')
print(obj.value) 

```

2. Utilice `@property` para definir un decorador de propiedades de clase.

```python3
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

En conclusión, el decorador de clases, el decorador de métodos de clases y el decorador de propiedades de clases son herramientas poderosas que pueden ayudarte a modificar el comportamiento de una clase o de sus métodos. Ten en cuenta estas buenas prácticas para escribir código limpio, legible y fácil de mantener.  
  
## Uso del Decorador de Propiedades de Clase

Una de las aplicaciones más comunes en el mundo real del decorador de propiedades de clase es trabajar con consultas a bases de datos.

```python3
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

En el ejemplo anterior, la propiedad `email_id` sólo expone la dirección de correo electrónico del usuario sin la parte `@dominio.com`. Esto puede ser útil cuando se trabaja con bases de datos, donde a menudo es necesario filtrar o agrupar los datos en función de un identificador.

Otro ejemplo común del uso del decorador de propiedades de clase es para propósitos de validación.

```python3
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

En el ejemplo anterior, la propiedad `age` se valida para garantizar que se encuentra dentro de un rango válido.
