> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/string/convert

En el proceso de trabajar con datos, a menudo es necesario convertir un tipo de dato en otro. En Python, puedes convertir diferentes tipos de datos a una cadena y viceversa utilizando varias funciones de conversión. Esta parte describirá cómo hacerlo.

## Convertir a Cadena

Para convertir un objeto que no es una cadena a una cadena en Python, puedes usar la función `str()`. Aquí hay algunos ejemplos de cómo convertir datos:

```python3
# convert an integer to a string
num = 42
str_num = str(num)
print(str_num)  # outputs "42"
print(type(str_num))  # outputs "<class 'str'>"

# convert a float to a string
pi = 3.14159
str_pi = str(pi)
print(str_pi)  # outputs "3.14159"
print(type(str_pi))  # outputs "<class 'str'>"

# convert a boolean to a string
flag = True
str_flag = str(flag)
print(str_flag)  # outputs "True"
print(type(str_flag))  # outputs "<class 'str'>"
```

Tenga en cuenta que si intenta convertir un objeto que no tiene una representación en cadena definida, puede obtener una excepción de `TypeError`.

## Unicode a Cadena

En Python, puede convertir una cadena Unicode a una cadena regular (también conocida como cadena de bytes) utilizando el método `encode`.

Aquí hay un ejemplo:

```python3
unicode_string = "Hello, World! 🌍"
byte_string = unicode_string.encode("utf-8")
print(byte_string) # Output: b'Hello, World! \xf0\x9f\x8c\x8d'
```

En este ejemplo, el método `encode` se utiliza para convertir el `unicode_string` en una cadena de bytes codificada en formato UTF-8. La variable `byte_string` resultante contiene la representación en bytes de la cadena original.

Nota que el prefijo `b` en la salida indica que el valor es una cadena de bytes, en lugar de una cadena regular. Si quieres convertir la cadena de bytes de vuelta a una cadena regular, puedes usar el método decode:

```python
new_unicode_string = byte_string.decode("utf-8")
print(new_unicode_string) # Output: Hello, World! 🌍
```

En este ejemplo, se utiliza el método `decode` para convertir la cadena de bytes de nuevo a una cadena Unicode codificada en formato UTF-8. La variable resultante `new_unicode_string` contiene la cadena original.

## Conversión de Cadena a Lista

Para convertir una cadena en una lista de sus letras individuales en Python, puedes usar la función incorporada `list()`. Aquí hay un ejemplo:

```python
my_string = "hello"
letters_list = list(my_string)
print(letters_list)
```

Esto dará como resultado:

```python
['h', 'e', 'l', 'l', 'o']
```

Alternativamente, podrías usar un bucle para iterar sobre la cadena y añadir cada letra a una nueva lista:

```python3
my_string = "hello"
letters_list = []
for letter in my_string:
    letters_list.append(letter)
print(letters_list)
```

Esto también generará:

```python
['h', 'e', 'l', 'l', 'o']
```

## Conversión de Cadena a Booleano

Puedes convertir una cadena a un valor booleano usando la función incorporada `bool()`.

Por defecto, las siguientes cadenas se consideran como `True`:

- Cualquier cadena no vacía
- La cadena "True" (sin distinguir mayúsculas de minúsculas)

Por otro lado, las siguientes cadenas se consideran como `False`:

- Una cadena vacía
- La cadena "False" (sin distinguir mayúsculas de minúsculas)
- Cualquier valor numérico igual a 0 (es decir, "0" o "0.0")

Aquí tienes algunos ejemplos:

```python
>>> bool("hello")
True
>>> bool("")
False
>>> bool("True")
True
>>> bool("false")
False
>>> bool("0")
False
>>> bool("1")
True
```

Si tienes una cadena que no es uno de los valores anteriores y quieres tratarla como un booleano, puedes definir tus propias reglas de conversión usando una sentencia `if` o una expresión condicional.

## Cadena a Hexadecimal

Puedes convertir una cadena a su representación hexadecimal en Python usando el método `encode()` y la codificación `'hex'`. Veamos cómo codificar con un ejemplo:

```python3
string = "Hello, world!"
hex_string = string.encode('hex')

print(hex_string) # Output: 48656c6c6f2c20776f726c6421
```

En Python 3, el método `hex()` puede utilizarse para convertir una cadena a su representación hexadecimal. Aquí hay un ejemplo:

```python
string = "Hello, world!"
hex_string = ''.join([hex(ord(c))[2:] for c in string])

print(hex_string) #Output: 48656c6c6f2c20776f726c6421
```

## El método `join()`

Este método te permite unir elementos de un iterable (como una lista, tupla o cadena) en una sola cadena utilizando una cadena separadora.

La sintaxis para usar el método `join()` es la siguiente:

```python
separator_string.join(iterable)
```

Aquí, `separator_string` es la cadena que quieres usar para separar los elementos en el iterable, y `iterable` es la secuencia de elementos que quieres unir.

Por ejemplo, si tienes una lista de cadenas y quieres unirlas en una sola cadena separada por comas, podrías usar el siguiente código:

```python3
my_list = ['mango', 'pineapple', 'banana']
separator = ', '
result = separator.join(my_list)
print(result)  # Output: "mango, pineapple, banana"
```

En este ejemplo, el método `join()` se llama en la cadena separadora, con la lista `my_list` como argumento iterable. La cadena resultante se asigna a la variable result y se imprime en la consola.

Nota que el método `join()` también puede usarse con otros tipos de iterables, como tuplas o conjuntos. Además, puedes usar una cadena vacía como separador si quieres unir los elementos sin ninguna separación.
