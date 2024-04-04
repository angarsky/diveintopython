> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/super-class

En este artículo, profundizaremos en las complejidades de las Súper Clases de Python. Prepárate para desbloquear todo el potencial de desarrollo de Python por el dominio de los elementos vitales de la Super Clase en Python.  
  
## Entendiendo las Super Clases de Python

La función `super()` en python se utiliza para llamar a un método en una clase padre desde una clase hija. La función `super()` ayuda a crear una jerarquía entre clases en Python que es fácil de mantener y entender. En Python 3, `super()` se utiliza comúnmente para inicializar clases abstractas.

### Uso de `super()` en clases Python

```python3
class MyParentClass:
    def do_something(self):
        print("Parent class doing something.")

class MyChildClass(MyParentClass):
    def do_something(self):
        super().do_something()
        print("Child class doing something.")
        
child = MyChildClass()
child.do_something()
```

En conclusión, `super()` es una potente función de Python que proporciona una forma limpia y concisa de llamar a los métodos de la clase padre desde una clase hija. Ayuda a crear una jerarquía clara entre las clases y a mantener un código limpio.  
  
## Clase Abstracta en Python

Una clase abstracta es una clase que no puede ser instanciada y está destinada a ser subclasificada por otras clases. La función `super()` se utiliza para acceder y llamar a métodos de una clase padre o superclase en Python. Aquí hay dos ejemplos de código que ilustran el uso de `super()` en las clases abstractas de Python.

### Definir una Clase Abstracta

```python3
import abc

class MyAbstractClass(metaclass=abc.ABCMeta):
    
    def __init__(self):
        super().__init__()
        print("Initializing MyAbstractClass")
        
    @abc.abstractmethod
    def my_method(self):
        pass
        
class MySubclass(MyAbstractClass):
    
    def __init__(self):
        super().__init__()
        print("Initializing MySubclass")
        
    def my_method(self):
        print("Calling my_method in MySubclass")
        
my_obj = MySubclass()
my_obj.my_method()

# Output:
# Initializing MyAbstractClass
# Initializing MySubclass
# Calling my_method in MySubclass
```

En este ejemplo, definimos una clase abstracta `MyAbstractClass` con un método abstracto `my_method()`. La clase tiene un método `__init__` que utiliza `super()` para llamar al método `__init__` de la superclase. Luego definimos una subclase `MiSubclase` que sobrescribe el método `__init__` e implementa el método `my_method()`. Cuando instanciamos un objeto de `MiSubclase`, ambos métodos `__init__` son llamados en orden, y el método `my_method()` de `MiSubclase` es llamado.

### Definir una Clase Padre

```python3
class MyParentClass:
    
    def my_method(self):
        print("Calling my_method in MyParentClass")
        
class MyChildClass(MyParentClass):
    
    def my_method(self):
        super().my_method()
        print("Calling my_method in MyChildClass")
        
my_obj = MyChildClass()
my_obj.my_method()

# Output:
# Calling my_method in MyParentClass
# Calling my_method in MyChildClass
```

En este ejemplo, definimos una clase padre `MyParentClass` con un método `my_method()`. Luego definimos una clase hija `MiClaseHija` que sobrescribe `mi_método()` y utiliza `super()` para llamar al mismo método de la clase padre. Cuando instanciamos un objeto de `MyChildClass`, el método `my_method()` de la clase padre es llamado primero, seguido por el mismo método en la clase hija.  
  
## El papel de `super()` en la herencia de clases

En Python, `super()` es una función incorporada que da acceso a los métodos de una clase padre a través de la herencia. Se utiliza para llamar a un método de la clase padre sin nombrar explícitamente la clase padre. También se utiliza en las clases abstractas de Python 3 para llamar al método `super().__init__()`.

```python3
class Parent:
    def __init__(self, name):
        self.name = name

class Child(Parent):
    def __init__(self, name, age):
        super().__init__(name) # Call Parent class __init__ method
        self.age = age

child = Child("John", 10)
print(child.name) # Output: John
```

En el ejemplo anterior, la clase `Child` hereda la clase `Parent` e inicializa el atributo `name` utilizando la función `super()`.

```python3
from abc import ABC, abstractmethod

class Parent(ABC):
    @abstractmethod
    def calculate(self, x, y):
        pass

class Child(Parent):
    def __init__(self, name):
        self.name = name
        super().__init__() # Call Parent class __init__ method

    def calculate(self, x, y):
        return x + y

child = Child("John")
print(child.calculate(4, 5)) # Output: 9
```

En el ejemplo anterior, la clase `Parent` es una clase abstracta. La clase `Child` hereda la clase `Parent` e inicializa la clase padre usando el método `super().__init__()`. El método `calculate()` se implementa en la clase `Child`.

## El Poder de la Superclase

La función `super()` en Python se utiliza para llamar a un método de una superclase desde una subclase. Es muy potente y útil, y puede simplificar las jerarquías de herencia cuando se utiliza adecuadamente.

En Python 3, `super()` toma dos argumentos: el primero es la subclase que llama a `super()`, y el segundo es la instancia de la subclase o la propia clase. Por ejemplo:

```python3
class A:
    def __init__(self):
        print("I am in A's __init__")

class B(A):
    def __init__(self):
        super().__init__()
        print("I am in B's __init__")

b = B()  
# Output
# I am in A's __init__
# I am in B's __init__

```

En este ejemplo, `super().__init__()` llama al método `__init__()` de la clase `A`, la superclase de `B`. De esta forma, tanto `A` como `B` se inicializan cuando se crea un nuevo objeto de `B`.

Otro caso es el de las clases abstractas que contienen `super().__init__()` en su método `__init__()`:

```python3
from abc import ABC, abstractmethod

class MyAbstractClass(ABC):
    def __init__(self):
        super().__init__()

    @abstractmethod
    def my_abstract_method(self):
        pass

class MyClass(MyAbstractClass):
    def __init__(self):
        super().__init__()

    def my_abstract_method(self):
        print("I am implementing my abstract method")

c = MyClass()  

```

En este ejemplo, `MyAbstractClass` es una clase abstracta que define un `abstractmethod()` llamado `my_abstract_method()`. La clase `MyClass` hereda de `MyAbstractClass` y define su propia implementación de `my_abstract_method()`. Cuando se crea un nuevo objeto de `MyClass`, su método `__init__()` llama a `super().__init__()`, que inicializa la clase abstracta `MyAbstractClass`.

En general, la función `super()` es una poderosa herramienta en Python que puede simplificar las jerarquías de herencia y agilizar la inicialización de objetos.  
  
## Implementación de Herencia Múltiple con la Superclase

Python soporta herencia múltiple, lo que significa que una clase puede heredar de múltiples clases padre. En tales casos, la función `super()` juega un papel crucial en la gestión del orden en que los métodos de las clases padre son llamados. Cuando se trata de herencias múltiples, puede utilizar `super()` para navegar por el orden de resolución de métodos (MRO) de manera efectiva.

Ejemplo:

```python3
class A:
    def some_method(self):
        print("Method from class A")

class B:
    def some_method(self):
        print("Method from class B")

class C(A, B):
    def some_method(self):
        super().some_method()
        print("Method from class C")

obj = C()
obj.some_method()
```

Salida:

```python
Method from class A
Method from class C
```

En este ejemplo, la clase `C` hereda tanto de `A` como de `B`. La función `super()` ayuda a llamar al método de la clase `A` en el MRO, seguido de su propio método.

## Orden de Resolución de Métodos (MRO)

El Orden de Resolución de Métodos (MRO) es un concepto crítico en las herencias múltiples. Python utiliza el algoritmo de linealización C3 para determinar el orden en que los métodos son llamados. Entender el MRO puede ayudarte a predecir cómo funciona `super()` en jerarquías de herencia complejas.

Ejemplo:

```python3
class A:
    def some_method(self):
        print("Method from class A")

class B(A):
    def some_method(self):
        print("Method from class B")

class C(A):
    def some_method(self):
        print("Method from class C")

class D(B, C):
    def some_method(self):
        super().some_method()
        print("Method from class D")

obj = D()
obj.some_method()
```

Salida:

```python
Method from class B
Method from class C
Method from class D
```

En este ejemplo, `D` hereda tanto de `B` como de `C`, y el MRO asegura el orden correcto de las llamadas a los métodos.

Incluir estas secciones en tu artículo te proporcionará una comprensión completa de cómo funciona `super()` en diferentes escenarios de herencia y la importancia del Orden de Resolución de Métodos en Python.

## Herencia Multinivel con la Superclase

La herencia multinivel es un patrón común en la programación orientada a objetos, donde una subclase hereda de otra subclase. En tales escenarios, `super()` te permite acceder y extender el comportamiento de la clase padre sin acoplar estrechamente tu código a nombres de clase específicos.

Ejemplo:

```python3
class Grandparent:
    def speak(self):
        print("Grandparent speaks")

class Parent(Grandparent):
    def speak(self):
        super().speak()
        print("Parent speaks")

class Child(Parent):
    def speak(self):
        super().speak()
        print("Child speaks")

obj = Child()
obj.speak()
```

Salida:

```python
Grandparent speaks
Parent speaks
Child speaks
```

Aquí, la función `super()` asegura que cada nivel de la jerarquía de clases contribuye al comportamiento final.
