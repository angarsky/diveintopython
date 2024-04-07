> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/statements/match

Las declaraciones switch son una característica popular en muchos lenguajes de programación, permitiendo a los desarrolladores manejar de manera limpia y eficiente múltiples casos condicionales. Sin embargo, Python no incluye una declaración switch incorporada. En este artículo, exploraremos varias formas de implementar funcionalidad similar a switch en Python, utilizando diversas técnicas y bibliotecas. Ya seas un desarrollador experimentado o apenas estés comenzando, esta guía proporcionará valiosos conocimientos sobre este importante concepto de programación.

## Declaración Match

La declaración `match` fue introducida en Python 3.10 para proporcionar una forma concisa y legible de expresar lógica condicional. Te permite comparar un valor contra un conjunto de patrones y ejecutar código correspondiente basado en la coincidencia.

Para usar `match` en Python, puedes crear una declaración `case` para cada patrón con el que coincidir. Aquí hay un fragmento de código de ejemplo que demuestra la declaración match case de python:

```python
def describe_number(num):
    match num:
        case 0:
            return "Zero"
        case 1:
            return "Single"
        case _:
            return "Multiple"
```

En este ejemplo, la función `describe_number` toma un parámetro `num` y devuelve una cadena basada en el valor de `num`. Si `num` es `0`, devuelve ``Zero``. Si `num` es `1`, devuelve `Single`. De lo contrario, devuelve `Multiple` usando un patrón de coincidencia comodín con `_`.

Aquí hay otro ejemplo de caso de instrucción en Python:

```python
def calculate_discount(total_amount):
    match total_amount:
        case amount if amount < 1000:
            return amount * 0.05
        case amount if amount >= 1000 and amount < 5000:
            return amount * 0.10
        case amount if amount >= 5000:
            return amount * 0.15
```

En este ejemplo, la función `calculate_discount` toma un parámetro `total_amount` y devuelve el descuento correspondiente basado en el valor de `total_amount`. La instrucción `match` tiene tres declaraciones `case` con condiciones específicas, cada una devolviendo el porcentaje de descuento aplicable.

En conclusión, la instrucción `match` es una adición poderosa al lenguaje Python que simplifica las declaraciones condicionales. Puede mejorar la legibilidad y ayudarte a escribir código más conciso.

## Instrucción Switch

Desafortunadamente, Python no tiene una instrucción nativa de switch case. Sin embargo, hay varios métodos para emular su funcionalidad a través de otros constructos como las declaraciones if-elif-else o diccionarios.

```python3
def switch_case(argument):
    if argument == 0:
        return "Zero"
    elif argument == 1:
        return "One"
    elif argument == 2:
        return "Two"
    else:
        return "Invalid argument"

print(switch_case(2)) # Output: Two
```

```python3
def switch_case(argument):
    return {
        0: "Zero",
        1: "One",
        2: "Two"
    }.get(argument, "Invalid argument")

print(switch_case(2)) # Output: Two
```

Aunque no tan conciso como una sentencia de `switch case`, estas alternativas pueden proporcionar una lógica y legibilidad similares en tu código Python.
