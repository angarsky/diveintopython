> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/regex/syntax

Las expresiones regulares (regex) son una herramienta poderosa para la coincidencia de patrones y extracción de datos en el procesamiento de texto. El módulo `re` de Python proporciona un conjunto completo de funciones para trabajar con expresiones regulares. Este artículo se sumerge en la sintaxis de las expresiones regulares en Python, acompañado por ejemplos prácticos para ayudarte a comprender mejor los conceptos.

## Sintaxis de Expresión Regular

Las expresiones regulares utilizan una secuencia de caracteres para definir un patrón de búsqueda. Aquí tienes un rápido resumen de algunos elementos comunes de la sintaxis de regex en Python:

- **`.`** (Punto): Coincide con cualquier carácter único excepto nueva línea `'
'`.
- **`^`** (Símbolo de intercalación): Coincide con el inicio de la cadena.
- **`$`** (Dólar): Coincide con el final de la cadena.
- **`*`** (Asterisco): Coincide con 0 o más repeticiones del elemento precedente.
- **`+`** (Más): Coincide con 1 o más repeticiones del elemento precedente.
- **`?`** (Signo de interrogación): Coincide con 0 o 1 repetición del elemento precedente.
- **`{m,n}`** (Llaves): Coincide de m a n repeticiones del elemento precedente.
- **`[]`** (Corchetes): Coincide con cualquier carácter único contenido dentro de los corchetes.
- **`|`** (Tubo): Actúa como un OR lógico entre expresiones.
- **`()`** (Paréntesis): Agrupa patrones juntos.

A continuación, se muestra una tabla que resume estos elementos:

| Símbolo | Descripción |
|---------|-------------|
| `.` | Coincide con cualquier carácter excepto nueva línea |
| `^` | Coincide con el inicio de la cadena |
| `$` | Coincide con el final de la cadena |
| `*` | Coincide con 0 o más repeticiones |
| `+` | Coincide con 1 o más repeticiones |
| `?` | Coincide con 0 o 1 repetición |
| `{m,n}` | Coincide de m a n repeticiones |
| `[]` | Coincide con cualquier carácter dentro de los corchetes |
| `|` | OR lógico |
| `()` | Agrupa patrones |

## Ejemplos Prácticos

Vamos a aplicar estos elementos en ejemplos prácticos utilizando el módulo `re` de Python:

1. **Encontrando todas las instancias de 'a' en una cadena:**

```python
import re
re.findall('a', 'Mary had a little lamb')
```

2. **Buscando cualquier carácter entre 'a' y 'z':**

```python
re.findall('[a-z]', 'Hello World!')
```

3. **Coincidencia de cualquier dígito en una cadena:**

```python
re.findall('\d', 'The room number is 42.')
```

4. **Encontrar tres dígitos consecutivos:**

```python
re.findall('\d{3}', 'Call 911 for emergency')
```

5. **Buscando palabras que comiencen con 'S':**

```python
re.findall(r'S\w+', 'The Sun is shining in the Sky.')
```

6. **Coincidir una palabra al inicio de una cadena:**

```python
re.match('^Hello', 'Hello, world!')
```

7. **Encontrar secuencias de caracteres que no sean espacios en blanco:**

```python
re.findall('\S+', 'Hello, world! How are you?')
```

8. **Reemplazando todos los dígitos por un símbolo de numeral (#):**

```python
re.sub('\d', '#', 'Password123')
```

9. **Dividir una cadena por cualquier espacio en blanco:**

```python
re.split('\s+', 'Split this string by spaces')
```

10. **Verificando si una cadena termina con 'world':**

```python
bool(re.search('world$', 'Hello, world'))
```

Estos ejemplos muestran la versatilidad y el poder de las expresiones regulares en Python para diversas tareas de procesamiento de texto. Al dominar la sintaxis y aplicarla a través de ejemplos prácticos, puedes aprovechar las expresiones regulares para buscar, coincidir y manipular cadenas de manera eficiente en tus proyectos de Python.
