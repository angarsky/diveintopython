> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/classes/typical-errors

Las clases de Python son un concepto esencial para programadores principiantes y avanzados. Se utilizan para agrupar variables y métodos para crear objetos que pueden ser reutilizados en todo el programa. Sin embargo, incluso los programadores de Python más experimentados están obligados a cometer algunos errores en el camino. En este artículo, exploraremos algunos de los errores típicos en Python que los desarrolladores encuentran cuando trabajan con clases.  
  
## Errores comunes en las clases de Python

Cuando se trabaja con clases Python, es común cometer errores que pueden conducir a resultados inesperados o errores. Aquí están algunos de los errores más comunes y cómo evitarlos:

### Olvidar añadir el parámetro `self

Cuando se define un método en una clase, es importante incluir el parámetro `self` como primer argumento. Este parámetro representa la instancia de la clase y permite al método acceder y modificar sus atributos.

```python
class MyClass:
    def my_method(self):
        # do something
        pass
```

### Overriding Built-in Methods

Python tiene muchos métodos y funciones incorporados que las clases pueden sobrescribir para personalizarlos. Sin embargo, es importante evitar hacerlo sin entender las implicaciones, ya que puede conducir a un comportamiento inesperado.

```python
class MyClass:
    def __len__(self):
        # do something
        pass
```

Si comprendes estos errores comunes y los evitas, podrás escribir clases Python más eficientes, funcionales y eficaces.  
  
## Errores de Sintaxis y Nombres en Clases Python.

Las clases en Python son una gran manera de organizar y estructurar tu código. Sin embargo, los errores de sintaxis y de nombre pueden causar problemas con tu clase. Aquí hay algunos consejos y ejemplos sobre cómo evitar estos errores:

### Errores de Sintaxis

Los errores de sintaxis ocurren cuando hay algo mal en la estructura del código. Aquí hay algunos errores comunes de sintaxis que puedes encontrar mientras trabajas con clases Python:

- **Faltan dos puntos**: Es esencial añadir dos puntos al final de la definición de la clase.

```python
# Incorrect Syntax
# class MyClass
#     def __init__(self):
#         pass

# Correct Syntax
class MyClass:
    def __init__(self):
        pass
```

- Bloques indentados**: Todo el código de una clase debe estar sangrado al mismo nivel. Asegúrese de utilizar un número coherente de espacios para las sangrías.

```python
# Incorrect Indentation
# class MyClass:
# def __init__(self):
# pass

# Correct Indentation
class MyClass:
    def __init__(self):
        pass
```

### Nombre Errores

Los errores de nombre ocurren cuando intentas usar una variable o función que no está definida en el ámbito de tu clase. Aquí hay algunos errores de nombre comunes que puedes encontrar mientras trabajas con clases Python:

- Variables no definidas**: Asegúrate de definir todas las variables que quieras usar en la clase.

```python
# Incorrect Variable Name
# class MyClass:
#     def __init__(self):
#         self.my_variable = my_other_variable

# Correct Variable Name
class MyClass:
    def __init__(self):
        self.my_variable = 10
```

- **NameError: name is not defined**: Asegúrese de definir todas las funciones que desea utilizar en la clase.

```python
# Incorrect Function Name
class MyClass:
    def __init__(self):
        self.my_variable = 10

    # def my_function(self):
    #     my_other_function()

# Correct Function Name
class MyClass:
    def __init__(self):
        self.my_variable = 10

    def my_function(self):
        print("Hello World")
```

En resumen, los errores de sintaxis y de nombre pueden causar problemas al trabajar con clases Python. Asegúrate de revisar tu código cuidadosamente y presta atención a estos errores.  
  
## Errores de Atributo y Tipo en Clases Python

Python es un lenguaje de programación orientado a objetos donde todo es un objeto o un tipo de datos. Mientras se trabaja con clases Python, a veces los desarrolladores encuentran errores de atributo y tipo que pueden impedir la ejecución del código. Estos errores pueden ocurrir debido a muchas razones como sintaxis incorrecta, tipos de datos erróneos, variables mal escritas, etc.

Aquí hay algunos errores comunes de atributo y tipo que los desarrolladores enfrentan mientras trabajan con clases Python junto con sus soluciones:

### SyntaxError: sintaxis inválida

Los errores de sintaxis se producen cuando hay un error en la sintaxis del código. Este error puede impedir la ejecución del código y detener el programa. Para resolver este error, los desarrolladores deben comprobar las variables, parámetros, declaraciones de clases y declaraciones de métodos del código.

```python
# class Dog:
#    def __init__(self name, age, breed):
#       self.name = name
#       self.age = age
#       self.breed = breed
```

Añade una coma entre `self` y `name` en los parámetros del método `__init__`.

```python
# Solution:
class Dog:
   def __init__(self, name, age, breed):
      self.name = name
      self.age = age
      self.breed = breed
```

### NameError: el nombre no está definido

Los errores de nombre se producen cuando se realiza una operación o función sobre una variable desde otra área de visibilidad.

```python
class Circle:
    pi = 3.14
 
    def __init__(self, radius):
        self.radius = radius
 
    def area(self):
        return pi * self.radius * self.radius
 
 
    def circumference(self):
        return 2 * pi * self.radius

# c = Circle(4)
# print(c.area())
```

Añade el nombre de la clase antes de la variable `pi` para acceder a las variables globales de la clase.

```python3
# Solution
class Circle:
    pi = 3.14
 
    def __init__(self, radius):
        self.radius = radius
 
    def area(self):
        return Circle.pi * self.radius * self.radius
 
 
    def circumference(self):
        return 2 * Circle.pi * self.radius

c = Circle(4)
print(c.area())
```

En resumen, es importante comprender los errores de atributo y de nombre al trabajar con clases Python. Los desarrolladores pueden corregir estos errores identificando el problema e implementando la solución correcta.  
  
## Errores Lógicos en Clases Python

Los errores lógicos en las clases Python ocurren cuando hay un error en la lógica algorítmica del código implementado. Estos errores pueden no dar lugar a un error en tiempo de ejecución, pero pueden conducir a una salida inesperada o no deseada.

```python3
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width
        # Incorrect calculation of area
        self.area = length + width
        
    def get_area(self):
        return self.area

r = Rectangle(5, 4)
print(r.get_area())  # Output: 9
```

En este ejemplo, el método `__init__` calcula incorrectamente el área del rectángulo. El área debería calcularse como `longitud * anchura`, pero el código proporcionado los suma en su lugar.

```python3
class Calculator:
    def __init__(self):
        self.result = 0
    
    def add(self, num1, num2):
        self.result = num1 + num2
        
    def divide(self, divisor):
        # Invalid condition; dividing by zero is not allowed
        if divisor == 0:
            return "Cannot divide by zero"
        else:
            self.result /= divisor
        return self.result

c = Calculator()
c.add(5, 7)
print(c.divide(0))  # Output: "Cannot divide by zero"
```

En este ejemplo, el método `divide` permite incorrectamente la división por cero. En su lugar, debería devolver un mensaje de error si el divisor es cero.

Para evitar errores lógicos en las clases Python, es importante planificar cuidadosamente la lógica algorítmica y probar a fondo el código. Además, el uso de herramientas como la depuración y la revisión de código puede ayudar a detectar y corregir errores lógicos más rápidamente.  
  
## Mejora de la estabilidad

Con el fin de mejorar la estabilidad en Python, hay varios consejos que se pueden seguir:

1. **Evita usar variables globales** - Las variables globales pueden dificultar la comprensión del flujo de tu código y pueden conducir a efectos secundarios inesperados. En su lugar, utiliza variables locales o pasa variables como argumentos a funciones.

```python
### BAD - using global variable

count = 0

def increment():
    global count
    count += 1

### BETTER - using local variable

def increment(count):
    count += 1
    return count
```

2. **Manejar excepciones** - Durante la ejecución del programa pueden producirse errores inesperados, por lo que es importante manejarlos con elegancia utilizando bloques try/except.

```python
try:
    ### code that may raise an exception
    pass

except Exception:
    ### handle the exception
    pass

```

Siguiendo estos consejos, puedes mejorar la estabilidad y fiabilidad de tu código Python.
