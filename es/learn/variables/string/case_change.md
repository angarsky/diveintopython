> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/string/case-change

Hay algunos métodos en Python que se usan comúnmente para normalizar las entradas de cadenas, convertir cadenas a mayúsculas o minúsculas, y capitalizar la primera letra de una oración o palabra. Estos métodos pueden ser especialmente útiles al tratar con entradas de usuarios o al trabajar con datos de texto que necesitan ser estandarizados o formateados de manera consistente.

## Cadena a minúsculas

Los métodos `lower()` y `upper()` se utilizan para convertir todos los caracteres en una cadena a minúsculas y mayúsculas, respectivamente.

El método `lower()` convierte todos los caracteres en mayúsculas de la cadena a sus equivalentes en minúsculas, mientras que deja los caracteres en minúsculas existentes sin cambios. El método tiene la siguiente sintaxis:

```python
string.lower()
```

Aquí, `string` es la cadena original que se convertirá en minúsculas. El método devuelve una nueva cadena con todos los caracteres en mayúsculas convertidos en minúsculas.

Por ejemplo, considera el siguiente fragmento de código:

```python3
string = "Hello World"
new_string = string.lower()
print(new_string) # Output: hello world
```

En este ejemplo, el método `lower()` se utiliza para convertir todos los caracteres en mayúsculas de la variable de cadena a minúsculas. La cadena en minúsculas resultante se imprime luego utilizando la función `print()`.

## Cadena a mayúsculas

De manera similar, el método `upper()` convierte todos los caracteres en minúsculas de la cadena a sus equivalentes en mayúsculas, mientras deja sin cambios cualquier carácter en mayúsculas existente. El método tiene la siguiente sintaxis:

```python
string.upper()
```

Aquí, `string` es la cadena original que será convertida a mayúsculas. El método devuelve una nueva cadena con todos los caracteres en minúsculas convertidos a mayúsculas.

Por ejemplo, considera el siguiente fragmento de código:

```python3
string = "Hello World"
new_string = string.upper()
print(new_string) # Output: HELLO WORLD
```

En este ejemplo, el método `upper()` se utiliza para convertir todos los caracteres en minúsculas en la variable `string` a mayúsculas. La cadena resultante en mayúsculas se imprime luego utilizando la función print().

## Capitalizar una cadena en Python

El método `capitalize()` solo pone en mayúscula la primera letra de la cadena y deja el resto de las letras en minúsculas. Aquí hay un ejemplo:

```python3
string = "hello world"
capitalized_string = string.capitalize()
print(capitalized_string) # Output: Hello world
```
