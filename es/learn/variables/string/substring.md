> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/string/substring

Una subcadena es una secuencia de caracteres que forma parte de una cadena más grande. Es una secuencia contigua de caracteres dentro de una cadena, que puede ser extraída o manipulada de manera independiente.

Por ejemplo, en la cadena "Hello, World!", las subcadenas "Hello", "World" y "!" son todas subcadenas de la cadena original.

Repasemos las operaciones y métodos más comunes relacionados con la subcadena.

## División de Cadenas

La división de cadenas es el proceso de crear una nueva subcadena a partir de una cadena existente en Python. Puedes dividir una cadena usando la sintaxis `[inicio:fin]` para extraer una porción de la cadena que comienza en el índice `inicio` y termina en el índice `fin` (no inclusivo). Aquí hay algunos ejemplos:

```python3
my_string = "Hello, world!"

# Get the substring from index 0 to index 4 (not inclusive)
print(my_string[0:4])  # Output: "Hell"

# Get the substring from index 7 to the end of the string
print(my_string[7:])  # Output: "world!"

# Get the substring from index 2 to index 8 (not inclusive) with a step of 2
print(my_string[2:8:2])  # Output: "lo,"

# Get the substring from index 2 to the second-to-last character
print(my_string[2:-1])  # Output: "llo, world"
```

En el primer ejemplo, utilizamos el corte para extraer la subcadena `"Hell"` de la variable `my_string` especificando el índice de inicio `0` y el índice final `4` (no incluido).

En el segundo ejemplo, utilizamos el corte para extraer la subcadena `"world!"` de la variable `my_string` especificando solo el índice de inicio `7` y dejando el índice final en blanco. Esto le indica a Python que extraiga la subcadena desde el índice de inicio hasta el final de la cadena.

En el tercer ejemplo, utilizamos el corte para extraer cada otro carácter de la subcadena `"lo, "`. Esto lo hacemos especificando el índice de inicio `2`, el índice final `8` (no incluido) y un paso de `2`.

En el cuarto ejemplo, utilizamos el corte para extraer la subcadena `"llo, world"` de la variable `my_string` especificando el índice de inicio `2` y el índice final `-1`. El `-1` especifica el penúltimo carácter en la cadena como el índice final.

Para dividir una cadena en un delimitador, también puedes utilizar el método `split()`. Este método toma un argumento, que es el carácter o cadena delimitador que quieres usar para dividir la cadena. Aquí hay un ejemplo:

```python
my_string = "Hello,world"
my_list = my_string.split(",")
print(my_list) # Output: ['Hello', 'world']
```

Puedes eliminar el primer carácter de una cadena en Python usando el rebanado de cadenas. Aquí tienes un ejemplo:

```python
string = "hello"
new_string = string[1:]
print(new_string) # Output: ello
```

El rebanado de cadenas también puede usarse para eliminar el último carácter de una cadena. Aquí hay un ejemplo:

```python
my_string = "Hello World!"
new_string = my_string[:-1]
print(new_string)  # Output: "Hello World"
```

## Subconjunto de Cadena

Para verificar si una cadena de Python contiene una subcadena específica, puedes usar la palabra clave `in` o el método `find()`.

Aquí tienes un ejemplo usando la palabra clave in:

```python3
my_string = "Hello, world!"
if "world" in my_string:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

Aquí hay un ejemplo utilizando el método `find()`:

```python3
my_string = "Hello, world!"
if my_string.find("world") != -1:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

En ambos ejemplos, verificamos si la subcadena `"world"` está presente en la cadena `my_string`. Si se encuentra la subcadena, imprimimos `"Subcadena encontrada!"`, de lo contrario imprimimos `"Subcadena no encontrada."`.

## Inversión de Cadena

Hay varias maneras de invertir una cadena en Python.

Veamos cómo invertir una cadena en python con ejemplos::

- Usando segmentación:

```python
string = "hello"
reversed_string = string[::-1]
print(reversed_string)  # Output: "olleh"
```

- Usando un bucle:

```python3
string = "hello"
reversed_string = ""
for char in string:
    reversed_string = char + reversed_string
print(reversed_string)  # Output: "olleh"
```

- Utilizando la función `reversed()`:

```python
string = "hello"
reversed_string = "".join(reversed(string))
print(reversed_string)  # Output: "olleh"
```

Todos estos métodos producirán el mismo resultado, que es la versión invertida de la cadena original.

## Los Métodos `startswith()` y `endswith()`

En Python, `startswith()` y `endswith()` son dos métodos de cadena que se utilizan para verificar si una cadena comienza o termina con un prefijo o sufijo específico, respectivamente. Aquí hay una visión general de estos métodos:

El método `startswith()` se utiliza para verificar si una cadena comienza con un prefijo específico. El método toma uno o más prefijos como argumento y devuelve `True` si la cadena comienza con alguno de ellos, y `False` en caso contrario. Aquí está la sintaxis para el método `startswith()`:

```python
string.startswith(prefix, start=0, end=len(string))
```

donde:

- `prefix` es el prefijo a verificar.
- `start` es un parámetro opcional que especifica el índice inicial de la cadena a buscar. Por defecto, `start` se establece en 0, lo que significa que se buscará en toda la cadena.
- `end` es un parámetro opcional que especifica el índice final de la cadena a buscar. Por defecto, `end` se establece en la longitud de la cadena.

Aquí hay un ejemplo de cómo usar el método startswith():

```python
s = "Python is a great programming language"
print(s.startswith("Python"))  # True
print(s.startswith("Java"))    # False
print(s.startswith(("Java", "Python")))  # True (checking multiple prefixes)
```

El método `endswith()` se utiliza para verificar si un texto termina con un sufijo específico. El método toma uno o más sufijos como argumento y devuelve `True` si el texto termina con alguno de ellos, y `False` de lo contrario. Aquí está la sintaxis para el método `endswith()`:

```python
string.endswith(suffix, start=0, end=len(string))
```

donde:

- `suffix` es el sufijo a verificar.
- Los parámetros `start` y `end` tienen el mismo significado que en el método `startswith()`.

Aquí hay un ejemplo de cómo usar el método endswith():

```python3
s = "Python is a great programming language"
print(s.endswith("language"))  # True
print(s.endswith("Python"))    # False
print(s.endswith(("Python", "language")))  # True (checking multiple suffixes)
```

En ambos métodos, puedes pasar una tupla de prefijos o sufijos para verificar múltiples posibilidades. Los parámetros `start` y `end` son opcionales y pueden usarse para buscar solo una parte de la cadena.

## El método `split()`

También es un método incorporado en Python que se utiliza para dividir y analizar una cadena en una lista de subcadenas basadas en un separador especificado. Por defecto, el separador utilizado es el espacio en blanco.

Aquí hay un ejemplo:

```python3
s = "Hello World! How are you?"

words = s.split()

print(words)   # Output: ['Hello', 'World!', 'How', 'are', 'you?']
```

En el ejemplo anterior, el método `split()` se llama en la cadena `s`, que contiene palabras separadas por espacios en blanco. La lista resultante words contiene todas las palabras de la cadena original como elementos separados.

También puedes especificar un separador diferente usando el método `split()`. Por ejemplo:

```python3
s = "mango,pineapple,banana"

fruits = s.split(",")

print(fruits)   # Output: ['mango', 'pineapple', 'banana']
```

En este ejemplo, el método `split()` se llama en la cadena `s`, que contiene nombres de frutas separados por comas. La lista resultante fruits contiene todos los nombres de frutas como elementos separados, utilizando la coma como separador.

## La función `string.find()`

Esta es una función integrada en Python que devuelve el índice de la primera aparición de una subcadena dentro de una cadena dada. Si la subcadena no se encuentra, devuelve `-1`. La sintaxis para usar `string.find()` es la siguiente:

```python
string.find(substring, start=0, end=len(string))
```

donde `string` es la cadena en la que buscar, `substring` es la cadena a buscar, `start` es el índice de inicio de la búsqueda (por defecto es 0), y `end` es el índice de finalización de la búsqueda (por defecto es la longitud de la cadena).

Aquí hay un ejemplo:

```python
sentence = "The quick brown fox jumps over the lazy dog"
print(sentence.find("fox"))   # Output: 16
print(sentence.find("cat"))   # Output: -1
```

En la primera línea, definimos una cadena de texto sentence. Luego usamos la función `find()` para buscar la subcadena `"fox"` en la cadena de texto `sentence`. Dado que `"fox"` se encuentra en el índice 16 en la cadena de texto `sentence`, la función `find()` devuelve `16`. En la segunda línea, buscamos la subcadena `"cat"`, la cual no se encuentra en la cadena de texto `sentence`, por lo tanto, la función `find()` devuelve `-1`.

## El Método `replace()`

En Python, las cadenas son inmutables, lo que significa que no puedes cambiar una cadena una vez que ha sido creada. Sin embargo, puedes crear una nueva cadena que contenga una versión modificada de la cadena original.

Para eliminar un carácter específico o una subcadena de una cadena en Python, puedes usar el método `replace()` o el rebanado de cadenas.

Aquí tienes un ejemplo de cómo usar el método replace() para eliminar un carácter específico:

```python3
my_string = "Hello, World!"
new_string = my_string.replace("o", "")
print(new_string) # Output: Hell, Wrld!
```

Aquí, reemplazamos el caracter `"o"` por una cadena vacía, eliminándolo efectivamente de la cadena original.

## Truncamiento de Cadenas

Puedes truncar una cadena especificando la longitud máxima de la cadena que deseas conservar.

He aquí un ejemplo:

```python3
text = "This is a long text that needs to be truncated."
max_length = 20
truncated_text = text[:max_length] + "..." if len(text) > max_length else text
print(truncated_text) # Output: This is a long text...
```

En este ejemplo, primero definimos una cadena `text` que queremos truncar. También especificamos la longitud máxima de la cadena truncada usando la variable `max_length`.

Luego usamos el corte para obtener los primeros caracteres `max_length` de la cadena. Si la longitud de la cadena original es mayor que `max_length`, añadimos una elipsis al final de la cadena truncada mediante la concatenación de cadenas. Si la longitud de la cadena original es menor o igual a `max_length`, simplemente asignamos la cadena original a la variable `truncated_text`.

Finalmente, imprimimos la cadena truncada usando la función `print()`.

## El Método `count()`

Puedes usar el método integrado `count` para contar el número de ocurrencias de una subcadena dentro de una cadena.

Aquí hay un contador de la subcadena `"is"`:

```python3
string = "Hello, world! This is a sample string."
substring = "is"

count = string.count(substring)

print(count) # Output: 2
```

En este ejemplo, tenemos una cadena `"Hello, world! This is a sample string."` y queremos contar el número de ocurrencias de la subcadena `"is"`. Usamos el método count para contar el número de veces que aparece la subcadena en la cadena.

La salida de este programa será `2`, porque la subcadena `"is"` aparece dos veces en la cadena.
