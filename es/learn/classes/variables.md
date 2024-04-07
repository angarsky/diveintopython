> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/variables

Python es un potente lenguaje que soporta diferentes tipos de variables y propiedades. En este artículo, hablaremos de variables, atributos y propiedades en Python para ayudarte a entenderlos mejor.  
  
## Entendiendo Variables, Atributos y Propiedades

- **Variables:** Una variable es un nombre que se refiere a un valor. Las variables pueden contener cualquier tipo de objeto.
- **Atributos:** Un atributo es un valor asociado a un objeto. Se puede acceder a los atributos utilizando la notación punto.
- **Propiedades:** Una propiedad es una forma de definir un método como atributo. Las propiedades se crean utilizando el decorador `@property`.

## Variables de Clase Python

En Python, las variables de clase son una poderosa forma de compartir datos entre todas las instancias de una clase. Exploremos cómo crear, acceder y modificar variables de clase.

### Creando una Variable de Clase

Para crear una variable de clase en Python, simplemente la declaras dentro de la clase pero fuera de cualquier método. Las variables de clase son compartidas entre todas las instancias de la clase y pueden ser usadas para almacenar datos que son comunes a todos los objetos creados a partir de la clase.

```python
class Team:
    # Creating a class variable
    team_name = "Python Developers"
```

En este ejemplo, creamos una variable de clase `team_name` para almacenar el nombre del equipo.

### Accediendo a una Variable de Clase en Python

Para acceder a una variable de clase, puedes utilizar el nombre de la clase seguido del nombre de la variable, separados por un punto. Esto te permite recuperar los datos compartidos que se aplican a todas las instancias de la clase.

```python3
class Team:
    team_name = "Python Developers"

# Accessing the class variable using the class name
print("Team Name:", Team.team_name)  # Output: Team Name: Python Developers
```

En este ejemplo, se accede a la variable de clase `nombre_equipo` utilizando el nombre de clase, `Equipo.nombre_equipo`.

### Modificación del valor de una variable de clase

Modificar el valor de una variable de clase es sencillo. Se utiliza el nombre de la clase para hacer referencia a la variable y asignarle un nuevo valor.

```python3
class Team:
    team_name = "Python Developers"

# Modifying the value of the class variable
Team.team_name = "Advanced Python Developers"

# Accessing the modified value
print("Team Name:", Team.team_name)  # Output: Team Name: Advanced Python Developers
```

En este ejemplo, modificamos el valor de la variable de clase `team_name` asignándole un nuevo valor mediante el nombre de la clase. A continuación, se accede al valor actualizado también a través del nombre de la clase.

## Variables de Instancia Python

En Python, las variables de instancia son únicas para cada instancia de una clase. Se definen dentro de los métodos de una clase y son específicas del objeto al que pertenecen. Exploremos cómo crear y asignar valores a las variables de instancia.

### Creando una Variable de Instancia

Para crear una variable de instancia en Python, puedes definirla dentro del método constructor `__init__`. El constructor es un método especial que se llama cuando se crea un objeto de la clase. Dentro del constructor, puedes inicializar variables de instancia para el objeto.

```python
class Person:
    def __init__(self, name, age):
        # Creating instance variables
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)
```

En este ejemplo, definimos dos variables de instancia, name y `age`, dentro del método `__init__` de la clase `Person`. Estas variables son únicas para cada objeto `persona` creado a partir de la clase.

### Asignación de Valores a una Variable de Instancia

Puedes asignar valores a las variables de instancia durante la creación del objeto pasando argumentos al constructor. Además, puede modificar o actualizar los valores de las variables de instancia en cualquier momento después de la creación del objeto.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)

# Modifying the values of instance variables
person.name = "Bob"
person.age = 35
```

En este ejemplo, primero creamos un objeto `persona` con valores iniciales para `nombre` y `edad`. Posteriormente, modificamos los valores de estas variables de instancia asignándoles directamente nuevos valores.

Las variables de instancia son una parte esencial de la programación orientada a objetos, ya que permiten que los objetos tengan sus propios datos y estados. Estas variables pueden almacenar información específica de cada objeto, facilitando el trabajo con diferentes instancias de la misma clase.

## Atributos y Propiedades de las Clases de Python

En Python, los atributos y propiedades de clase funcionan de forma similar a las variables, pero ofrecen más funcionalidad y control. Profundicemos en cómo definir y utilizar atributos y propiedades de clase.

### Definición de Atributos de Clase

Los atributos de clase son compartidos entre todas las instancias de una clase. Se declaran dentro de la clase pero fuera de cualquier método. Se puede acceder a los atributos de clase utilizando el nombre de la clase, y son particularmente útiles para almacenar datos comunes a todos los objetos creados a partir de la clase.

```python
class Animal:
    # Defining a class attribute
    kingdom = "Animalia"
```

En este ejemplo, definimos un atributo de clase `reino` para almacenar la clasificación de reino de todos los animales. A los atributos de clase se accede utilizando el nombre de la clase, como `Animal.kingdom`.

### Uso de Propiedades

Las propiedades en Python son métodos especiales que actúan como atributos. Se crean usando el decorador `@property` para definir un método como atributo, proporcionando funcionalidad adicional como getters, setters y deleters.

```python3
class Circle:
    def __init__(self, radius):
        self._radius = radius

    @property
    def radius(self):
        return self._radius

    @radius.setter
    def radius(self, value):
        if value > 0:
            self._radius = value

# Creating an instance of the Circle class
circle = Circle(5)

# Accessing and modifying attributes using properties
print("Radius:", circle.radius)  # Output: Radius: 5
circle.radius = 7
print("Modified Radius:", circle.radius)  # Output: Modified Radius: 7
```

En este ejemplo, utilizamos propiedades para controlar el acceso al atributo `radius`. El decorador `@property` define un método getter, mientras que `@radius.setter` define un método setter.

Los atributos y propiedades de las clases Python ofrecen poderosas formas de mejorar el comportamiento de tus clases y objetos. Te permiten encapsular datos y proporcionar un acceso controlado a los atributos, haciendo tu código más robusto y fácil de mantener.

## Variables Privadas en Clases Python

En Python, las variables privadas son atributos o propiedades que están destinadas a ser utilizadas sólo dentro de la clase y no deben ser accedidas o modificadas desde fuera de la clase. Se denotan añadiendo un guión bajo doble `__` antes del nombre de la variable o propiedad.

### Definición de Variables Privadas

Para definir una variable privada en Python, puedes utilizar el prefijo de doble guión bajo `__` antes del nombre de la variable. Esto indica que la variable no debe ser accedida o modificada desde fuera de la clase.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)
```

En este ejemplo, definimos una variable privada `__private_value` dentro de la clase `MyClass`. Está destinado a ser utilizado sólo dentro de la clase.

### Acceso a Variables Privadas

Sólo se puede acceder a las variables privadas desde dentro de la propia clase. Intentar acceder a ellas desde fuera de la clase resultará en un AttributeError. Sin embargo, puede acceder a ellas utilizando métodos o propiedades de la clase.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

    def get_private_value(self):
        return self.__private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)

# Accessing private variable using a class method
private_value = obj1.get_private_value()
```

En este ejemplo, creamos un método `get_private_value` dentro de la clase para acceder a la variable privada `__private_value`.

Las variables privadas son valiosas para encapsular datos y asegurar que no sean modificados involuntariamente desde código externo. Ayudan a mantener la integridad de tu clase y sus datos.

## Variables Globales de Python

En Python, las variables globales son variables a las que se puede acceder desde cualquier parte del programa, ya sea dentro de una función, clase o cualquier otro ámbito. Las variables globales se definen fuera de cualquier función o clase, haciéndolas accesibles desde cualquier lugar.

### Definiendo Variables Globales

Para definir una variable global en Python, basta con declararla fuera de cualquier función o clase. Esto permite que la variable pueda ser accedida y modificada desde cualquier parte del código.

```python
global_var = 10
```

En este ejemplo, definimos una variable global `global_var` con el valor `10`. Esta variable puede ser accedida y modificada desde cualquier parte del programa.

### Uso de Variables Globales

Las variables globales pueden ser utilizadas dentro de funciones, clases, o cualquier otro ámbito sin necesidad de declaraciones especiales. Puede acceder y modificar variables globales directamente desde estos ámbitos.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

# Creating an instance of the MyClass class
obj = MyClass()

# Accessing the global variable from within the class
print(obj.instance_var)  # Output: 10
```

En este ejemplo, se accede a la variable global `global_var` y se asigna a una variable de instancia dentro de la clase `MyClass`.

### Modificación de Variables Globales

Modificar el valor de una variable global es sencillo. Puedes acceder y actualizar su valor desde cualquier parte del programa.

```python3
global_var = 10

def modify_global_variable():
    global global_var
    global_var = 20

# Modifying the global variable
modify_global_variable()

# Accessing the modified global variable
print(global_var)  # Output: 20
```

En este ejemplo, creamos una función `modify_global_variable` que utiliza la palabra clave `global` para modificar el valor de la variable global `global_var`. Este cambio se refleja cuando se accede a la variable fuera de la función.

Las variables globales de Python son útiles para compartir datos que necesitan ser accedidos a través de diferentes partes de tu programa. Sin embargo, es esencial usarlas con criterio, ya que el uso excesivo de variables globales puede hacer que el código sea más difícil de mantener y entender.

## Comprobando si una Clase Tiene un Atributo

En Python, puedes comprobar si una clase tiene un atributo específico usando la función incorporada `hasattr()`. Esta función te permite determinar si una clase tiene un atributo en particular, convirtiéndola en una valiosa herramienta para la comprobación dinámica de atributos.

### Usando `hasattr()`

Para utilizar `hasattr()`, proporcione el objeto (en este caso, la clase o una instancia de la clase) y el nombre del atributo como argumentos. La función devuelve un valor booleano, indicando si el atributo existe en la clase.

```python3
class MyClass:
    var = 10

obj = MyClass()

# Checking if the class has an attribute
if hasattr(obj, 'var'):
    print('Object has var attribute')
else:
    print('Object does not have var attribute')
```

En este ejemplo, definimos una clase `MyClass` con un atributo `var`. Usando `hasattr()`, comprobamos si la instancia `obj` tiene el atributo `var`.

### Manejo de la Existencia de Atributos

`hasattr()` te ayuda a escribir código más robusto permitiéndote comprobar la existencia de atributos antes de acceder a ellos o modificarlos. Esto puede prevenir errores inesperados en tu programa.

```python
class MyClass:
    var = 10

obj = MyClass()

# Checking if the class has an attribute
if hasattr(obj, 'var'):
    # Accessing the attribute
    value = getattr(obj, 'var')
    print(f'Attribute var exists with value: {value}')
else:
    print('Object does not have var attribute')
```

En este ejemplo extendido, si `hasattr()` confirma que el atributo `var` existe, usamos `getattr()` para acceder al valor del atributo de forma segura.

Usar `hasattr()` puede aumentar la fiabilidad de tu código y mejorar el manejo de errores cuando trabajas con atributos dinámicos en clases Python. Es una técnica útil para la validación de atributos.

## Imprimiendo y Recuperando Atributos de Clases en Python

En Python, puedes querer listar y acceder a todos los atributos de una clase. No hay un método incorporado para imprimir todos los atributos, pero puedes usar un bucle y la función dir() para lograrlo. Exploremos cómo imprimir y recuperar los atributos de una clase.

### Usando `dir()`

La función `dir()` en Python devuelve una lista de todos los atributos de un objeto. Aunque esto incluye atributos internos y métodos, puedes filtrarlos para obtener una lista de atributos de clase.

```python
class MyClass:
    var1 = 10
    var2 = 'hello'
    var3 = True

# List of all attributes (including internal ones)
attributes = dir(MyClass)

# Filtering and printing only class attributes
for attr in attributes:
    if not attr.startswith('__'):
        value = getattr(MyClass, attr)
        print(f'{attr}: {value}')
```

En este ejemplo, utilizamos `dir(MiClase)` para obtener una lista de todos los atributos. A continuación, filtramos los atributos internos e imprimimos los nombres y valores de los atributos de la clase.

Esta técnica permite obtener una visión general de los atributos dentro de una clase.

### Usando `vars()`

Aunque `vars()` se utiliza más comúnmente para acceder a variables de instancia, también puede aplicarse a clases. Devuelve el atributo `__dict__` de un objeto, que contiene los atributos de la clase.

```python
class MyClass:
    var1 = 10
    var2 = 'hello'
    var3 = True

# Using vars() to retrieve class attributes
class_attrs = vars(MyClass)

for attr, value in class_attrs.items():
    print(f'{attr}: {value}')
```

En este ejemplo, utilizamos `vars(MiClase)` para recuperar los atributos de la clase e imprimir sus nombres y valores.

Tanto `dir()` como `vars()` proporcionan métodos para acceder y mostrar los atributos de la clase, permitiéndote entender y trabajar mejor con tus clases.

## Variables Privadas de la Clase

En Python, las variables privadas de clase son variables que están destinadas a ser utilizadas sólo dentro de la clase y no deben ser accedidas o modificadas desde fuera de la clase. Estas variables se denotan con un prefijo de doble guión bajo `__`. Exploremos cómo crear y trabajar con variables privadas de clase.

### Creando Variables Privadas de Clase

Para crear una variable privada de clase en Python, añade un doble guión bajo `__` antes del nombre de la variable dentro de la clase. Esta convención significa que la variable no debe ser accedida directamente desde fuera de la clase.

```python
class MyClass:
    __private_var = 10
```

En este ejemplo, creamos una variable privada de clase `__private_var`.

### Acceso a Variables Privadas de Clase

Intentar acceder a una variable privada de clase desde fuera de la clase resultará en un AttributeError. Las variables privadas están destinadas a ser utilizadas sólo dentro de la clase para encapsular datos.

```python3
class MyClass:
    __private_var = 10

    def get_private_var(self):
        return self.__private_var

obj = MyClass()

# Accessing the private variable using a class method
print(obj.get_private_var())  # Output: 10
```

En este ejemplo, definimos un método `get_private_var` dentro de la clase para acceder a la variable privada `__private_var`.

### El papel de las variables privadas de clase

Las variables privadas juegan un papel crucial en la encapsulación de datos y el mantenimiento de la integridad del estado interno de una clase. Evitan que código externo modifique o acceda involuntariamente a datos sensibles dentro de la clase.

```python
class BankAccount:
    def __init__(self, account_number, balance):
        self.__account_number = account_number
        self.__balance = balance

    def withdraw(self, amount):
        if amount > 0 and amount <= self.__balance:
            self.__balance -= amount
        else:
            print("Invalid withdrawal amount")

# Creating an instance of the BankAccount class
account = BankAccount("123456789", 1000)

# Attempting to directly access private variables (results in AttributeError)
# print(account.__account_number)
# print(account.__balance)

# Performing a withdrawal using a class method
account.withdraw(500)
```

En este ejemplo, la clase `BankAccount` define variables privadas `__account_number` y `__balance` para encapsular datos sensibles de la cuenta. Estas variables privadas son accedidas y modificadas usando métodos de la clase como `withdraw`.

Las variables privadas son un aspecto fundamental de la encapsulación de datos y control de acceso en la programación orientada a objetos, asegurando que la integridad de los datos de una clase se mantiene.

## Variables Globales de la Clase Python

En Python, las variables globales de clase son variables accesibles desde cualquier parte del programa. Se definen fuera de cualquier función o clase, haciéndolas globalmente disponibles. Exploremos cómo crear y trabajar con variables globales de clase.

### Creando Variables Globales de Clase

Para crear una variable global de clase en Python, define la variable fuera de cualquier función o clase. Las variables globales están disponibles para todas las partes de tu programa.

```python
global_var = 10
```

En este ejemplo, creamos una variable global de clase `global_var`.

### Acceso a Variables Globales de Clase

Las variables globales de clase pueden ser accedidas y utilizadas desde cualquier parte de su programa, incluyendo dentro de clases y funciones.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

obj = MyClass()

# Accessing the class global variable from within a class
print(obj.instance_var)  # Output: 10
```

En este ejemplo, definimos una variable global de clase `global_var` y accedemos a ella desde dentro de la clase `MyClass`.

### El papel de las variables globales de clase

Las variables globales de clase proporcionan una manera de compartir datos a través de diferentes partes de su programa. A menudo se utilizan para almacenar información que es relevante para toda la aplicación.

```python3
user_name = "John"

class User:
    def __init__(self, name):
        self.name = name

# Accessing the class global variable from within a class
new_user = User(user_name)
print(new_user.name)  # Output: John
```

En este ejemplo, la variable global de clase `user_name` almacena el nombre de un usuario y es accesible desde dentro de la clase `User`.

Las variables globales de clase juegan un papel importante a la hora de hacer que los datos estén disponibles en diferentes partes de tu programa, permitiéndote compartir información y mantener la coherencia en todo tu código base.

## Atributos y Propiedades Públicas, Protegidas y Privadas en Python

En Python, los atributos y propiedades pueden tener diferentes niveles de visibilidad y control de acceso basados en convenciones de nomenclatura. Estos niveles incluyen public, protected y private.

### Atributos y Propiedades Públicos

Los atributos y propiedades públicos no tienen restricciones de nombre. Son accesibles desde cualquier parte de tu código, tanto dentro como fuera de la clase. Por defecto, si un atributo o propiedad no tiene un nombre con un prefijo de doble guión bajo, se considera público.

```python3
class Person:
    def __init__(self, name):
        self.name = name  # Public attribute

class Circle:
    def __init__(self, radius):
        self.radius = radius  # Public attribute

class MyClass:
    def __init__(self, value):
        self.value = value  # Public attribute

# Accessing public attributes and properties
person = Person("Alice")
print(person.name)  # Output: Alice

circle = Circle(5)
print(circle.radius)  # Output: 5

obj = MyClass(42)
print(obj.value)  # Output: 42
```

En los ejemplos anteriores, atributos como `name`, `radius` y `value` son públicos y se puede acceder a ellos desde fuera de las clases.

### Atributos y Propiedades Protegidos

En Python, los atributos y propiedades pueden ser marcados como protegidos anteponiendo a sus nombres un guión bajo. Esta es una convención de nomenclatura que sugiere que estos atributos no deben ser accedidos directamente desde fuera de la clase, aunque todavía se puede acceder a ellos.

```python3
class Employee:
    def __init__(self, name, _salary):
        self.name = name
        self._salary = _salary  # Protected attribute

    def _get_salary(self):
        return self._salary  # Protected method

# Accessing protected attributes and methods
employee = Employee("Bob", 50000)
print(employee._salary)  # Output: 50000
print(employee._get_salary())  # Output: 50000
```

En la clase `Employee`, `_salary` está marcado como atributo protegido. Aunque es accesible, el guión bajo indica que no se debe acceder a él directamente.

### Atributos y Propiedades Privadas

Los atributos y propiedades se pueden hacer privados en Python anteponiendo a sus nombres un guión bajo doble. Esta convención de nomenclatura implica que estos atributos no deben ser accedidos directamente desde fuera de la clase. Intentar hacerlo resultará en una transformación de nombres.

```python3
class BankAccount:
    def __init__(self, account_number, __balance):
        self.account_number = account_number
        self.__balance = __balance  # Private attribute

    def __get_balance(self):
        return self.__balance  # Private method

# Attempting to access private attributes and methods
account = BankAccount("123456789", 1000)

# Results in an AttributeError
# print(account.__balance)
# print(account.__get_balance())
```

En la clase `BankAccount`, `__balance` es un atributo privado, y `__get_balance` es un método privado. Intentar acceder a ellos desde fuera de la clase resulta en un AttributeError.
