> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/string/replacement

Con bastante frecuencia necesitamos reemplazar una o más ocurrencias de una subcadena o carácter particular dentro de una cadena por una subcadena o carácter diferente. Esta es una operación comúnmente utilizada en la programación informática y el procesamiento de texto, ya que permite la manipulación de datos de texto de una manera flexible y eficiente. Aquí hay algunos métodos que pueden ayudar con ello.

## Sustitución de Cadenas

En la mayoría de los lenguajes de programación, la sustitución de cadenas se realiza típicamente mediante una combinación de funciones de manipulación de cadenas y expresiones regulares. Por ejemplo, en Python, el método `replace()` puede usarse para reemplazar todas las ocurrencias de una subcadena particular dentro de una cadena:

```python
string.replace(old, new[, count])
```

Aquí, `string` es la cadena original, `old` es la subcadena que necesita ser reemplazada, `new` es la nueva subcadena que sustituirá a la antigua subcadena, y `count` (opcional) es el número de veces que se debe realizar el reemplazo.

El método `replace()` devuelve una nueva cadena con los reemplazos especificados realizados.

Por ejemplo, considere el siguiente fragmento de código:

```python3
string = "Hello World"
new_string = string.replace("Hello", "Hi")
print(new_string) # Output: Hi World
```

En este ejemplo, el método `replace()` se utiliza para reemplazar la subcadena `"Hello"` con `"Hi"` en la variable `string`. La cadena resultante se imprime luego utilizando la función `print()`.

También puedes usar el método `replace()` para reemplazar un solo carácter en una cadena.

Ten en cuenta que la variable de cadena original no se modifica con el método `replace()`; en su lugar, se crea una nueva cadena con los reemplazos especificados.

## El Método `strip()`

Este es un método de cadena integrado que devuelve una copia de la cadena con los caracteres iniciales y finales eliminados. El método `strip()` se puede usar para eliminar caracteres de espacio en blanco como espacios, tabulaciones y saltos de línea. En algunos otros idiomas se conoce como método `trim()`.

Aquí hay un ejemplo de eliminación de espacios:

```python3
string = "  hello world  "
new_string = string.strip()
print(new_string) # Output: "hello world"
```

Como puedes ver, el método `strip()` eliminó los espacios iniciales y finales de la cadena original. Si solo quieres eliminar los espacios iniciales o finales, puedes usar los métodos `lstrip()` o `rstrip()`, respectivamente.

Por ejemplo:

```python3
string = "  hello world  "
new_string = string.lstrip()
print(new_string) # Output: "hello world  "
```

En este caso, solo se eliminaron los espacios iniciales, y los espacios finales permanecieron. De manera similar, si usas `rstrip()` en lugar de `lstrip()`, solo se eliminarían los espacios finales.

## Eliminar caracteres de nueva línea

Puedes eliminar caracteres de nueva línea de una cadena utilizando el método `replace()`. Aquí tienes un ejemplo:

```python3
string_with_newline = "This is a string\nwith a newline character."
string_without_newline = string_with_newline.replace("\n", "")
print(string_without_newline) # Output: This is a stringwith a newline character.
```

En el código anterior, primero definimos una cadena llamada `string_with_newline` que contiene un carácter de nueva línea (`\n`). Luego usamos el método `replace()` para reemplazar todas las ocurrencias del carácter de nueva línea con una cadena vacía (`""`). La cadena resultante, `string_without_newline`, no contiene ningún carácter de nueva línea. Luego imprimimos la cadena resultante usando la función `print()`.
