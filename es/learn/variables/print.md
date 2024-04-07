> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/print

Imprimir se refiere al proceso de mostrar la salida de un programa en la consola o terminal. Es una operación esencial que te permite comunicarte con el usuario o depurar tu código al mostrar los valores de las variables, los resultados de cálculos u otra información.
También existe algo llamado formateo, que a menudo se utiliza al imprimir. El formateo de cadenas (también conocido como interpolación) es el proceso de insertar variables o valores en una cadena.

## Impresión

Para imprimir una variable en Python, puedes usar la función `print()`.

La función `print()` toma uno o más argumentos separados por comas y los muestra en la consola o terminal.

Veamos ejemplos de cómo imprimir una variable y una cadena en Python:

```python
# Print a string
print("Hello, Python!")

# Print an integer
print(43)

# Print a floating-point number
print(3.14)
```

Python también permite imprimir múltiples variables:

```python
# Print multiple items
print("The answer is:", 42)
```

También puedes usar diversas opciones con la función `print()`, como especificar el separador entre elementos, terminar la salida con un carácter de nueva línea y redirigir la salida a un archivo u otro flujo.

## Formateo

Hay varias maneras de formatear cadenas en Python, vamos a verlas una por una con ejemplos.

- Usando f-strings: Este método implica el uso de marcadores de posición en una cadena, que luego son reemplazados por valores dentro de llaves `{}` precedidas por la letra `f`. Por ejemplo:

```python
# Print using formatted strings
name = "Tom"
age = 32
print(f"My name is {name} and I am {age} years old.")
```

Las `f-strings` (o literales de cadena formateados) son una característica introducida en Python 3.6 que proporciona una forma conveniente de incrustar expresiones dentro de literales de cadena, utilizando una sintaxis que comienza con la letra 'f'.

Con las `f-strings`, puedes incrustar expresiones dentro de literales de cadena al encerrarlas en llaves `{}`. Las expresiones dentro de las llaves se evalúan en tiempo de ejecución, y sus valores se insertan en la cadena. Así que esto ayuda a imprimir para ayudar a múltiples variables en una cadena.

- Utilizando el método `format()` y llaves: Puedes usar `{}` dentro de una cadena para indicar dónde deseas insertar los valores de las variables, y luego usar el método `format()` para sustituir los valores reales. Aquí hay un ejemplo:

```python3
name = "John"
age = 30
location = "New York"

print("My name is {}, I'm {} years old, and I live in {}.".format(name, age, location))
```

Este código mostrará: `My name is John, I'm 30 years old, and I live in New York.`

En este ejemplo, la cadena `"My name is {}, I'm {} years old, and I live in {}."` contiene tres llaves `{}` para indicar dónde se deben insertar los valores de las variables. El método `format()` es llamado en la cadena, y las variables `name`, `age` y `location` son pasadas como argumentos al método.

- Usando el operador `%`: Este método implica usar marcadores de posición en una cadena, que luego son reemplazados por valores usando el operador `%`. Por ejemplo:

```python3
name = "John"
age = 25
print("My name is %s and I'm %d years old." % (name, age)) # Output: My name is John and I'm 25 years old.
```

Aquí, `%s` es un marcador de posición para una cadena, y `%d` es un marcador de posición para un entero.

## Plantilla de Cadena

Las plantillas de cadena proporcionan una forma de crear cadenas que incluyen marcadores de posición para valores que se completarán más tarde. Esto puede ser útil cuando quieres generar cadenas dinámicas basadas en alguna entrada.

Para usar plantillas de cadena en Python, puedes usar la clase `string.Template`. Aquí hay un ejemplo:

```python3
from string import Template

name = "Alice"
age = 30

# Create a string template with placeholders for the name and age
template_str = "My name is ${name} and I am ${age} years old."

# Create a template object from the template string
template = Template(template_str)

# Substitute the values for the placeholders
result = template.substitute(name=name, age=age)

print(result)  # Output: My name is Alice and I am 30 years old.
```

En el ejemplo anterior, primero creamos una plantilla de cadena con espacios reservados para el nombre y la edad usando la sintaxis `${}`. Luego, creamos un objeto `Template` a partir de la cadena de plantilla y usamos el método `substitute` para reemplazar los espacios reservados con valores reales. Finalmente, imprimimos la cadena resultante.

Ten en cuenta que necesitas pasar los valores para los espacios reservados como argumentos de palabras clave al método `substitute`.
