> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/nested

Las funciones anidadas son una **herramienta poderosa** disponible en la programación de Python que permite definir funciones dentro de otras funciones. Tal concepto de anidar una función dentro de otra puede crear un código más organizado y manejable. Con la ayuda de funciones anidadas, el código se vuelve más fácil de leer y también es más eficiente. En este artículo, vamos a examinar más de cerca qué son las funciones anidadas y por qué se utilizan en Python.

## Entendiendo las Funciones Anidadas de Python

Las funciones anidadas en Python se refieren a la creación de funciones dentro de otra función. En otras palabras, una función puede ser definida dentro de otra función, y puede acceder a las variables declaradas en su función exterior.

Las funciones anidadas son útiles en situaciones en las que necesitamos definir una función auxiliar que solo es necesaria dentro del alcance de la función exterior. Las funciones anidadas mejoran la legibilidad y ayudan a modularizar el código.

### Dos Ejemplos de Funciones Anidadas en Python

```python3
def outer_function(x):
    def inner_function(y):
        return x + y
    return inner_function

add_five = outer_function(5)
print(add_five(3)) # Output: 8
```

En este ejemplo, definimos dos funciones: la `outer_function` y la `inner_function`. La `outer_function` toma un argumento `x` y devuelve la `inner_function`. La `inner_function`, a su vez, toma un argumento `y` y devuelve la suma de `x` y `y`.

Asignamos la salida de `outer_function(5)` a la variable `add_five`, que se convierte en una función que suma `5` a su argumento. Cuando llamamos a `add_five(3)`, obtenemos `8` como resultado.

```python3
def outer_function():
    x = 1
    def inner_function():
        y = 2
        return x + y
    return inner_function()

print(outer_function()) # Output: 3
```

En este ejemplo, definimos una `outer_function` que inicializa una variable `x` en 1 y retorna el resultado de la `inner_function`. La `inner_function` inicializa una variable `y` en `2` y retorna la suma de `x` y `y`.

Cuando llamamos a `outer_function()`, obtenemos `3` como resultado, que es la suma de `x` y `y`. La `inner_function` es llamada dentro del alcance de la `outer_function`, y tiene acceso a la variable `x` declarada en la `outer_function`.

## Ventajas de Usar Funciones Anidadas en Python

Las funciones anidadas dentro del código de Python ofrecen una gama de beneficios, capacitando a los desarrolladores para crear una estructura de programación más robusta y adaptable, mejorar la legibilidad del código y elaborar código modular que es más simple de mantener.

### Encapsulación y Modularidad

Una ventaja principal de las funciones anidadas radica en su capacidad para definir funciones auxiliares dentro del alcance de una función específica. Al hacerlo, evita saturar el espacio de nombres global y promueve la organización del código. Considere el siguiente ejemplo:

```python
def double_odd_numbers(numbers):
    def is_odd(num):
        return num % 2 != 0
    
    def double(num):
        return num * 2
    
    return [double(num) for num in numbers if is_odd(num)]
```

En esta instancia, `double_odd_numbers` engloba las funciones `is_odd` y `double`, simplificando la comprensión ya que estas funciones son utilizadas únicamente dentro del contexto de la función principal.

### Creación de Cierres

Otra ventaja notable de las funciones anidadas es su capacidad para generar cierres. Esto permite que las funciones anidadas accedan y manipulen variables de su función envolvente. Por ejemplo:

```python3
def power_function(base):
    def exponent_power(exponent):
        result = 1
        for _ in range(exponent):
            result *= base
        return result
    
    return exponent_power

square = power_function(2)
cube = power_function(3)

print(square(3))  # Output: 8
print(cube(2))    # Output: 9
```

En este escenario, `power_function` produce una nueva función, `exponent_power`, capaz de calcular la potencia de una base elevada a un exponente dado. Utilizando esta estructura anidada, funciones como `square` y `cube` adquieren acceso a la variable base de la función envolvente, simplificando la creación de nuevas funciones con diferentes valores base.

Al aprovechar las funciones anidadas, los desarrolladores de Python pueden mejorar la modularidad del código, la legibilidad y explotar poderosas funcionalidades de cierre para crear estructuras de código más versátiles y eficientes.

## Creando Funciones Anidadas en Python

Las funciones anidadas en Python se refieren al proceso de crear una función dentro de otra función. Este proceso permite una mejor organización y legibilidad del código. Para crear una función anidada en Python, sigue estos pasos:

1. **Crear** la función externa.
2. **Definir** la función interna dentro de la función externa.
3. **Llamar** a la función interna dentro de la función externa o devolverla.

En conclusión, crear funciones anidadas en Python es una técnica útil para organizar y simplificar el código. Permite una mejor legibilidad y puede agilizar procesos complejos.

## Ejemplos de Funciones Anidadas de Python en Aplicaciones del Mundo Real

Las funciones anidadas son funciones **dentro de otras funciones**. Estas funciones son particularmente útiles en la programación. Se pueden utilizar en aplicaciones del mundo real en Python. Por ejemplo, una función anidada podría definir una función que llama a otra función. O, una función anidada podría definir una función que utiliza una función previamente definida. Además, una función anidada podría proporcionar un ámbito local.

```python3
def parent_function(x):
    def child_function(y):
        return y * 2
    return x + child_function(x)

print(parent_function(5))
```

En este ejemplo, `child_function` es una función anidada. Está definida dentro de `parent_function`. `parent_function` toma un parámetro `x`. Luego usa `child_function` para duplicar `x`. Finalmente, devuelve la suma de `x` y `child_function(x)`. Cuando ejecutamos `parent_function(5)`, obtenemos 15 como resultado.

```python3
def adder(a):
    def inner(x):
        return x + a
    return inner

x = adder(3)
y = adder(5)
print(x(5))
print(y(5))
```

En este ejemplo, `inner` es una función anidada. Se define dentro de `adder`. `adder` toma un parámetro a. `adder` devuelve `inner`. `inner` toma un parámetro `x`. Devuelve la suma de `x` y `a`. Cuando llamamos a `adder(3)`, obtenemos `inner`. Almacenamos `inner` como `x`. Lo mismo ocurre con `adder(5)` que almacenamos como `y`. Cuando llamamos a `x(5)`, obtenemos 8 como resultado. Cuando llamamos a `y(5)`, obtenemos 10 como resultado.

```python
def exponential(x):
    def square(y):
        return y * y
    return square(x) * square(x)

print(exponential(2))
```

En este ejemplo, `square` es una función anidada. Está definida dentro de `exponential`. `exponential` recibe un parámetro `x`. `exponential` devuelve el cuadrado de `x` elevado a la cuarta potencia. `square` toma un parámetro `y`. Devuelve el cuadrado de `y`. Cuando ejecutamos `exponential(2)`, obtenemos 16 como resultado.

## Mejores prácticas para usar funciones anidadas en Python

Las funciones anidadas se refieren a definir una función dentro de otra función en Python. Esto puede ser útil para la organización y encapsulación del código. Las mejores prácticas para usar funciones anidadas incluyen evitar una anidación excesiva, asegurar que cada función tenga un propósito claro y específico, y usar los ámbitos de las variables adecuadamente.

Para usar funciones anidadas en Python, define la función exterior y luego define la función interior dentro de ella. La función interior tiene acceso a las variables dentro de la función exterior, pero no viceversa. Aquí hay dos ejemplos:

```python3
# Example 1: Power function using nested functions
def power_function(num):
    def inner_power(power):
        return num ** power
    return inner_power

# Example usage
square_function = power_function(2)
cube_function = power_function(3)
print(square_function(5))  # Output: 32
print(cube_function(5))  # Output: 243
```

```python3
# Example 2: Functions in a loop
def generate_functions():
    functions = []
    for i in range(5):
        def inner_function(num):
            return num + i
        functions.append(inner_function)
    return functions

# Example usage
functions_list = generate_functions()
for j, f in enumerate(functions_list):
    print(f(j))  # Output: 4 5 6 7 8
```

En el primer ejemplo, se crea una función de potencia utilizando funciones anidadas. La función externa toma un número y devuelve la función interna, que calcula la potencia de ese número. La función interna se define dentro del alcance de la función externa, permitiéndole acceder al parámetro `num` y calcular la potencia.

En el segundo ejemplo, se genera una lista de funciones utilizando un bucle y funciones anidadas. La función interna se define dentro del bucle, dándole acceso a la variable de bucle `i`. La lista resultante de funciones puede entonces ser utilizada para realizar cálculos usando diferentes valores de `i`.

## Diferencias Entre Funciones Anidadas y Funciones Anónimas en Python  

Las funciones anidadas son funciones que se definen dentro de otra función. Estas funciones solo son accesibles desde dentro de la función contenedora externa. Por otro lado, las funciones anónimas son funciones sin nombre que se definen utilizando la palabra clave lambda. Estas funciones pueden definirse en cualquier lugar del programa y pueden pasarse como argumentos a otras funciones.

### Función Anidada

```python3
def outer_func(x):
   def inner_func(y):
       return x*y
   return inner_func

result = outer_func(5)
print(result(7))  # Output: 35
```

En este ejemplo, la función `inner_func` se define dentro de `outer_func`, convirtiéndola en una función anidada. Luego devolvemos `inner_func` como resultado de llamar a `outer_func`. La variable `result` se asigna a la función interna con `x` establecido en `5`. Luego llamamos a `result` con `y` igual a `7` para obtener la salida de `35`.

### Función Anónima

```python
list_nums = [1, 2, 3, 4, 5]
new_list = list(map(lambda x: x*2, list_nums))
print(new_list)  # Output: [2, 4, 6, 8, 10]
```

En este ejemplo, utilizamos una función anónima definida por la palabra clave `lambda` y la pasamos como un argumento a la función `map`. Esta función multiplica cada elemento de `list_nums` por `2` y retorna una nueva lista con los resultados mapeados almacenados en `new_list`.

## Errores Comunes a Evitar al Usar Funciones Anidadas en la Programación de Python

Para evitar errores comunes al usar funciones anidadas en la programación de Python, es importante asegurarse de que los nombres de las funciones y las variables **no se repitan** dentro de una función anidada y su función principal, ya que esto puede causar confusión y errores.

Otros errores comunes a evitar incluyen llamar incorrectamente a una función dentro de otra función, y usar bucles de manera incorrecta dentro de funciones anidadas. Además, se debe tener cuidado al usar técnicas de programación funcional y funciones de potencia en funciones anidadas.

Por ejemplo, el siguiente código ilustra un error común cuando una variable se define tanto en una función principal como en una función anidada:

```python
def parent_func():
    num = 2
    def nested_func():
        num = num * 2 # This will raise an UnboundLocalError when the function will be called
        return num
    return nested_func()
```
