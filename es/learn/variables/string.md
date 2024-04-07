> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/string

Previamente hemos tocado el tema de operaciones con variables. En esta parte profundizaremos en las operaciones y métodos más comunes con cadenas de texto. Esta no es la lista completa de posibles manipulaciones de cadenas.

## Declaración de Variable de Cadena

Puedes declarar una variable de cadena asignando un valor de cadena a un nombre de variable utilizando el signo igual `=`. Aquí tienes un ejemplo:

```python
my_string = "Hello, world!"
```

En este ejemplo, hemos declarado una variable de tipo cadena llamada `my_string` y le hemos asignado el valor `"¡Hola, mundo!"`. Observa que el valor de la cadena está encerrado entre comillas.

También puedes declarar una variable de cadena vacía asignando un valor de cadena vacío a un nombre de variable, así:

```python
my_string = ""
```

En este caso, hemos declarado una variable de cadena llamada `my_string` y le hemos asignado un valor de cadena vacío.

## Concatenación de Cadenas

La concatenación de cadenas es el proceso de combinar dos o más cadenas en una sola cadena. En Python, puedes concatenar cadenas usando el operador `+`. Una opción más para agregar una cadena es usando el operador `+=`.

Veamos un ejemplo de cómo agregar una cadena:

```python3
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

En el ejemplo anterior, hemos creado dos variables de cadena `str1` y `str2` que contienen las cadenas "Hello" y "World" respectivamente. Posteriormente, usamos el operador `+` para añadir una cadena a otra, junto con un carácter de espacio, para crear un único resultado de cadena. Finalmente, imprimimos el resultado de sumar en la consola, lo cual produce "Hello World".

## Una Variable en una Cadena

En Python, puedes incluir variables dentro de cadenas usando diferentes métodos. Aquí hay algunas formas comúnmente usadas para lograr esto:

**Concatenación de Cadenas**: puedes concatenar cadenas y variables usando el operador `+`:

```python3
name = "Alice"
age = 30
message = "Hello, my name is " + name + " and I am " + str(age) + " years old."
print(message)
```

**Usando el método `str.format()`**: este método te permite incrustar variables en una cadena usando marcadores de posición `{}`:

```python3
name = "Bob"
age = 25
message = "Hello, my name is {} and I am {} years old.".format(name, age)
print(message)
```

**Usando f-strings (literales de cadena formateados)**: introducidos en Python 3.6, los f-strings proporcionan una manera concisa de incrustar variables directamente dentro de cadenas al prefijar la cadena con `f` y usar `{}` para encerrar variables:

```python
name = "Charlie"
age = 35
message = f"Hello, my name is {name} and I am {age} years old."
print(message)
```

Todos estos métodos logran el mismo resultado, pero a menudo se prefieren las f-strings debido a su legibilidad y facilidad de uso. Te permiten hacer referencia directamente a las variables dentro de la cadena, haciendo el código más limpio y comprensible.

## Longitud de Cadena

Puedes obtener la longitud de una cadena utilizando la función incorporada `len()`. También puedes comprobar si una cadena está vacía usando este método.

Aquí tienes un ejemplo de cómo calcular los caracteres que contiene una cadena:

```python3
my_string = "Hello, world!"
print(len(my_string))  # Output: 13
```

En este ejemplo, la función `len()` devuelve el número de caracteres en la variable `my_string`, que es 13. También puedes usar `len()` para obtener la longitud de una variable de cadena que está vacía o contiene espacios en blanco:

```python3
empty_string = ""
print(len(empty_string))  # Output: 0

whitespace_string = "   "
print(len(whitespace_string))  # Output: 3
```

En ambos casos, la función `len()` devuelve la longitud de la cadena, que es 0 para la cadena vacía y 3 para la cadena que contiene espacios.

## Comparación de Cadenas

En Python, puedes usar varios operadores de comparación para comparar cadenas. Aquí hay algunos ejemplos:

El operador `==`: verifica si dos cadenas son iguales.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 == str2:
    print("The two strings are equal.")
else:
    print("The two strings are not equal.")
# Output: The two strings are not equal.
```

El operador `!=`: verifica si dos cadenas no son iguales.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 != str2:
    print("The two strings are not equal.")
else:
    print("The two strings are equal.")
# Output: The two strings are not equal.
```

El operador `<`: verifica si la primera cadena es menor que la segunda cadena en orden lexicográfico.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 < str2:
    print("The first string comes before the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before the second string.
```

El operador `>`: comprueba si la primera cadena es mayor que la segunda cadena en orden lexicográfico.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 > str2:
    print("The first string comes after the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

El operador `<=`: verifica si la primera cadena es menor o igual que la segunda cadena en orden lexicográfico.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 <= str2:
    print("The first string comes before or is equal to the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before or is equal to the second string.
```

El operador `>=`: verifica si la primera cadena es mayor o igual que la segunda cadena en orden lexicográfico.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 >= str2:
    print("The first string comes after or is equal to the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

Tenga en cuenta que cuando se comparan cadenas en Python, la comparación se realiza en orden lexicográfico, lo que significa que la comparación se basa en los valores ASCII de los caracteres en las cadenas.

## Cadena Multilínea

Puede crear una cadena de múltiples líneas encerrando el texto en comillas triples, ya sean comillas simples triples (''') o comillas dobles triples (""").

Por ejemplo:

```python3
multiline_string = '''
This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
'''

print(multiline_string)
```

```python
# Output:

This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
```

Tenga en cuenta que cualquier espacio en blanco, incluidos los saltos de línea, en la cadena entrecomillada triple se incluirá en la cadena. Si desea excluir el espacio en blanco al principio o al final de una línea, puede usar métodos de cadena como `strip()` o `rstrip()`.

## Cadena Binaria

Una cadena binaria se puede representar usando el prefijo `0b` seguido de una secuencia de dígitos `0` y `1`. Por ejemplo, la cadena binaria `1101` puede representarse como `0b1101`. Aquí hay algunos ejemplos de cómo crear y manipular cadenas binarias en Python:

- Crear una cadena binaria:

```python
binary_str = '0b1101'
```

- Convirtiendo un entero decimal a una cadena binaria:

```python
decimal_num = 13
binary_str = bin(decimal_num)
```

- Convirtiendo una cadena binaria a un entero decimal:

```python
binary_str = '0b1101'
decimal_num = int(binary_str, 2)
```

- Operaciones a nivel de bits en cadenas binarias:

```python3
binary_str1 = '0b1101'
binary_str2 = '0b1010'

# Bitwise AND
result = int(binary_str1, 2) & int(binary_str2, 2)
print(bin(result))  # Output: 0b1000

# Bitwise OR
result = int(binary_str1, 2) | int(binary_str2, 2)
print(bin(result))  # Output: 0b1111

# Bitwise XOR
result = int(binary_str1, 2) ^ int(binary_str2, 2)
print(bin(result))  # Output: 0b0111
```

Tenga en cuenta que cuando realizamos operaciones a nivel de bits, necesitamos convertir las cadenas binarias a enteros decimales utilizando la función `int()` con un segundo argumento que especifica la base (`2` en este caso), y luego convertir el resultado de vuelta a una cadena binaria usando la función `bin()`.

## Iterar sobre Caracteres

Hay varias formas de iterar sobre los caracteres en una cadena en Python. Aquí hay algunos ejemplos:

- Usando un bucle `for`:

```python3
my_string = "Hello, world!"
for char in my_string:
    print(char)
```

- Usando un bucle `while`:

```python3
my_string = "Hello, world!"
i = 0
while i < len(my_string):
    print(my_string[i])
    i += 1
```

- Usando una comprensión de lista:

```python3
my_string = "Hello, world!"
char_list = [char for char in my_string]
print(char_list)
```

- Usando la función `map()`:

```python3
my_string = "Hello, world!"
char_list = list(map(str, my_string))
print(char_list)
```

- Usando la función `enumerate()`:

```python
my_string = "Hello, world!"
for index, char in enumerate(my_string):
    print(f"Character at index {index}: {char}")
```

Todos estos métodos te permitirán iterar sobre los caracteres en una cadena y realizar operaciones sobre ellos. ¡Elige el que mejor se adapte a tus necesidades!
