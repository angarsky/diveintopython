> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/functions/recursion

**Programación recursiva** es una técnica en programación donde una función **se llama a sí misma repetidamente** hasta que alcanza un caso base o terminal. Es una herramienta poderosa al tratar con ciertos tipos de problemas que pueden ser naturalmente definidos de manera recursiva. En Python, podemos implementar esta técnica a través de funciones recursivas.

## Funciones Recursivas en Python

Las funciones recursivas son funciones que **se llaman a sí mismas** durante la ejecución para resolver un problema desglosándolo en subproblemas más pequeños. La recursividad en Python involucra dos pasos principales: definir el(los) caso(s) base y el(los) caso(s) recursivo(s).

### Ejemplo 1: Cálculo del Factorial Usando Recursión

```python3
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# driver code
num = 5
print("Factorial of", num, "is", factorial(num))
```

En este ejemplo, la función `factorial()` recibe un entero `n` como entrada y calcula **recursivamente** el **factorial** de `n` multiplicándolo con el factorial de `n-1`. El caso base es cuando `n` es igual a `0`, en cuyo caso la función devuelve `1`.

### Ejemplo 2: Cálculo de la Serie de Fibonacci Usando Recursión

```python3
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return (fibonacci(n-1) + fibonacci(n-2))

# driver code
num_terms = 10

if num_terms <= 0:
    print("Invalid input")
else:
    print("Fibonacci series:")
    for i in range(num_terms):
        print(fibonacci(i), end=" ")
```

En este ejemplo, la función `fibonacci()` toma un entero `n` como entrada y calcula recursivamente el término `n` de la **serie de Fibonacci** sumando los dos términos anteriores. El caso base es cuando `n` es `0` o `1`, en cuyo caso la función devuelve `n`. El código principal imprime los primeros `num_terms` de la serie de Fibonacci, donde `num_terms` es un valor ingresado por el usuario.

## Consejos y Mejores Prácticas para la Programación Recursiva en Python

1. **Definir claramente el caso base**: El caso base es la condición bajo la cual la función debe dejar de llamarse a sí misma recursivamente y devolver un valor. Asegúrate de que el caso base esté claramente definido y que la función eventualmente lo alcance para evitar recursión infinita.

2. **Presta atención a la profundidad de la recursión**: La profundidad de la recursión se refiere al número de veces que una función se llama a sí misma recursivamente. Python tiene un **límite de profundidad de recursión default de 1000**, así que asegúrate de mantener tus funciones recursivas dentro del límite o ajusta el límite de profundidad de la recursión utilizando el módulo sys.

3. **Considera usar memoización**: La memoización es una técnica utilizada para almacenar en caché los resultados de llamadas a funciones costosas y reutilizarlos cuando los mismos inputs ocurren nuevamente. Esto puede mejorar significativamente el rendimiento de las funciones recursivas en Python al evitar cálculos duplicados.

4. **Prueba y depura cuidadosamente**: Las funciones recursivas pueden ser difíciles de depurar debido a su naturaleza compleja. Asegúrate de probar tu función con varios valores de entrada y tómate tu tiempo para entender cómo funciona antes de desplegarla a producción.

## Ejemplo: Búsqueda Binaria

```python
def binary_search(arr, target, low, high):
    # base case
    if low > high:
        return -1
    # recursive case
    mid = (low + high) // 2
    if arr[mid] == target:
        return mid
    elif arr[mid] > target:
        return binary_search(arr, target, low, mid-1)
    else:
        return binary_search(arr, target, mid+1, high)
```

Esta función recursiva realiza una **búsqueda binaria** en un arreglo ordenado **llamándose a sí misma** con subarreglos más pequeños hasta que encuentra el objetivo o alcanza el caso base donde el índice bajo es mayor que el índice alto.

## Errores Comunes y Trampas en la Recursión de Python

Las funciones recursivas de Python pueden ser una herramienta poderosa para resolver problemas complejos, pero también pueden ser propensas a errores comunes y trampas. Aquí hay algunos errores comunes a evitar cuando se usa la recursión de Python:

1. **Bucles infinitos**: Es fácil crear bucles infinitos en funciones recursivas si no tienes un caso base que finalmente rompa la recursión. Asegúrate de definir un caso base que detenga la recursión.

2. **Desbordamiento de pila**: La recursión puede crear mucho sobrecoste de memoria, lo que puede llevar a errores de desbordamiento de pila. Ten cuidado al usar la recursión con grandes conjuntos de datos.

## Mejorando las Funciones Recursivas de Python para Mayor Eficiencia y Rendimiento

La mejora recursiva se refiere al proceso de optimizar una función recursiva de Python para una mejor eficiencia y rendimiento. Esto implica identificar áreas que pueden ser afinadas, como reducir la complejidad espacial o utilizar memoización para reducir el número de llamadas recursivas.

A continuación se presentan dos ejemplos de cómo mejorar las funciones recursivas de Python para una mayor eficiencia:

### Memoización

La memoización es el proceso de almacenar resultados previamente calculados para evitar el cálculo repetido. Esto puede reducir significativamente el tiempo de ejecución de una función recursiva.

```python
def fibonacci(n, memo={}):
    if n <= 1:
        return n
    elif n in memo:
        return memo[n]
    else:
        memo[n] = fibonacci(n-1, memo) + fibonacci(n-2, memo)
        return memo[n]
```

En el código anterior, el diccionario `memo` se utiliza para almacenar los números de Fibonacci previamente calculados. Cuando la función es llamada con un `n` previamente calculado, se devuelve el valor de `memo` en lugar de que la función realice otra llamada recursiva.

### Optimización de Recursión de Cola

La optimización de recursión de cola es una forma de optimizar funciones recursivas para que usen menos espacio en la pila de llamadas.

```python3
def sum_n(n, acc=0):
    if n == 0:
        return acc
    else:
        return sum_n(n-1, acc+n)

# Example usage
print(sum_n(5)) # Outputs: 15
```

En el código anterior, `sum_n()` es una **función recursiva** que calcula la suma de todos los números del `1` a `n`. El argumento acc es un **acumulador** que almacena los resultados intermedios del cálculo.

En cada llamada recursiva, la función agrega el valor actual de `n` al acumulador y pasa el resultado a la siguiente llamada recursiva, sin mantener el marco de pila de la llamada anterior en memoria. De esta manera, la función utiliza una cantidad constante de memoria en la pila de llamadas y evita el riesgo de desbordamiento de pila para valores grandes de `n`.

> Ten en cuenta que la optimización de recursión de cola solo se puede aplicar a funciones recursivas que tienen una llamada de cola, es decir, una llamada recursiva que ocurre al final de la ejecución de la función.
