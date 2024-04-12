> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/date/time

El módulo `time` de Python es una herramienta poderosa para trabajar con operaciones relacionadas con el tiempo en Python. Proporciona funciones para medir intervalos de tiempo, formatear y analizar cadenas de tiempo y fecha, y manejar zonas horarias. Con el módulo `time`, puedes trabajar fácilmente con valores de tiempo y fecha, y realizar una amplia gama de operaciones relacionadas con el tiempo en tu código Python. Ya sea que necesites medir el tiempo de ejecución de tu código o trabajar con valores de fecha y hora, el módulo `time` de Python te tiene cubierto.

## Formatos de Tiempo en Python

En Python, puedes usar el método `strftime()` del módulo `time` para formatear valores de tiempo de acuerdo con varios códigos de formato. Aquí hay algunos códigos de formato comúnmente usados para el formateo de tiempo en Python:

- **%H**: Hora en formato de 2 dígitos en formato de 24 horas (00-23)
- **%I**: Hora en formato de 2 dígitos en formato de 12 horas (01-12)
- **%M**: Minuto en formato de 2 dígitos (00-59)
- **%S**: Segundo en formato de 2 dígitos (00-59)
- **%p**: Designación AM/PM (AM o PM)

Puedes combinar estos códigos de formato con otros caracteres para crear el formato de tiempo deseado. Aquí hay un ejemplo de cómo obtener el tiempo formateado en Python:

```python3
import time

# Get the current time
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%H:%M:%S", current_time)
formatted_time_am_pm = time.strftime("%I:%M:%S %p", current_time)

# Print the formatted time
print("Formatted Time (24-hour format):", formatted_time)
print("Formatted Time (12-hour format):", formatted_time_am_pm)

# Output:
# Formatted Time (24-hour format): 12:34:56
# Formatted Time (12-hour format): 12:34:56 PM
```

## Función `time.sleep()` de Python

La `time.sleep()` es una función de Python que suspende la ejecución del hilo actual por un número especificado de segundos, para que puedas establecer fácilmente tu propio tiempo de espera.

La sintaxis de `time.sleep()` para tiempo de espera o retraso es la siguiente:

```python
import time

time.sleep(seconds)
```

Donde `seconds` es el número de segundos por los cuales el hilo debe ser suspendido.

La función `sleep()` acepta la duración del sueño en segundos, No en milisegundos. Sin embargo, puedes lograr un efecto similar dividiendo el tiempo deseado de duración del sueño en milisegundos por 1000 para convertirlo a segundos.

Usar la función `time.sleep()` te ayudará a pausar la ejecución del programa por el periodo de tiempo definido.

## Función `time.time()` en Python

En Python, `time.time()` es una función que devuelve el tiempo actual en segundos desde la Época (1 de enero de 1970, 00:00:00 UTC) como un número de punto flotante.

Aquí tienes un ejemplo de cómo usar la función `time.time()` para medir el tiempo en Python:

```python
import time

start_time = time.time()

# do some time-consuming task here

end_time = time.time()

elapsed_time = end_time - start_time

print(f"The task took {elapsed_time:.2f} seconds to complete.")
```

En este ejemplo, `start_time` y `end_time` se obtienen llamando a `time.time()` al principio y al final de la tarea que consume tiempo, respectivamente. La diferencia entre los dos tiempos da el tiempo transcurrido, que luego se imprime. El tiempo de ejecución calculado se formatea como una cadena con dos decimales usando f-strings.

Aquí también hay un ejemplo de cálculo de tiempo para la creación de gráficos en Python usando la biblioteca `networkx`:

```python
import networkx as nx
import time

start_time = time.time()

# Create a graph with 100 nodes
G = nx.complete_graph(100)

end_time = time.time()

# Compute the time taken to create the graph
time_taken = end_time - start_time

print(f"Time taken to create the graph: {time_taken:.4f} seconds")
```

Así que la función `time.time()` puede ser utilizada para contar tiempo en Python.

## Medición de Tiempo en Ms

Si quieres medir el tiempo en milisegundos en Python, puedes usar la función `time()` del módulo `time` junto con la función `perf_counter()`. Aquí tienes un ejemplo:

```python3
import time

# Get the current time in milliseconds
current_time_ms = int(time.time() * 1000)
print("Current Time in Milliseconds:", current_time_ms)

# Measure the execution time of a code block in milliseconds
start_time = time.perf_counter()

# Code or operation to measure

end_time = time.perf_counter()
execution_time_ms = int((end_time - start_time) * 1000)
print("Execution Time in Milliseconds:", execution_time_ms)
```

Salida:

```python
Current Time in Milliseconds: 1621842353154
Execution Time in Milliseconds: 42
```

En este ejemplo, `time.time()` se utiliza para recuperar la hora actual como un número de punto flotante que representa el número de segundos desde la época. Al multiplicarlo por 1000, obtenemos la hora actual en milisegundos.

Para medir el tiempo de ejecución de un bloque de código, usamos `time.perf_counter()` para obtener la hora actual de alta resolución en segundos. Capturamos la hora de inicio antes del bloque de código y la hora de finalización después del bloque de código. Al restar la hora de inicio de la hora de finalización, obtenemos el tiempo transcurrido en segundos. Multiplicarlo por 1000 nos da el tiempo de ejecución en milisegundos.

## Python `timeit()` con Ejemplos

El módulo `timeit` de Python es una herramienta poderosa para medir el tiempo de ejecución de pequeños fragmentos de código. Proporciona una manera simple de medir el tiempo de ejecución del código y comparar el rendimiento de diferentes enfoques. El módulo `timeit` puede ser particularmente útil cuando quieres comparar diferentes implementaciones y determinar cuál es más eficiente.

### Parámetros de Python `timeit()`

La función `timeit` en Python toma varios parámetros que te permiten personalizar su comportamiento:

- **stmt**: Esta es la declaración que quieres medir. Puede ser una cadena que contenga una única declaración o múltiples declaraciones separadas por puntos y comas.
- **setup**: Este parámetro es opcional y se utiliza para configurar el entorno para el código a medir. También puede ser una cadena que contenga una o más declaraciones.
- **timer**: Este parámetro especifica la función de temporizador a utilizar. Si no se especifica, se utilizará el temporizador predeterminado para la plataforma actual.
- **number**: Este parámetro determina el número de ejecuciones del código. Cuantas más ejecuciones, más precisa será la medición del tiempo.

### Midiendo Múltiples Líneas en Código Python

Puedes usar el módulo `timeit` para medir múltiples líneas de código Python. Aquí hay dos ejemplos usando diferentes enfoques.

#### Ejemplo 1: **Usando Puntos y Comas**

```python
import timeit

code_to_measure = """
def square_numbers():
    result = []
    for i in range(1000):
        result.append(i ** 2)
    return result

square_numbers()
"""

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### Ejemplo 2: **Usando Comillas Triples**

```python
import timeit

code_to_measure = '''
def square_numbers():
    result = []
    for i in range(1000):
        result.append(i ** 2)
    return result

square_numbers()
'''

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

En ambos ejemplos, definimos una función (`square_numbers`) y luego la llamamos usando el módulo `timeit`. El código a medir está encerrado en comillas triples, lo que nos permite abarcar múltiples líneas.

### Métodos `timeit()`

El módulo timeit proporciona diferentes métodos para medir el tiempo de ejecución. Aquí hay algunos de ellos.

#### `timeit.timeit()`

El método `timeit.timeit()` se utiliza para medir el tiempo de ejecución de un fragmento de código. Toma el código como una cadena, el número de ejecuciones y una declaración de configuración opcional.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### `timeit.repeat()`

El método `timeit.repeat()` te permite repetir la medición varias veces y devuelve una lista de tiempos de ejecución.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_times = timeit.repeat(stmt=code_to_measure, number=10000, repeat=5)
print(f"Execution times: {execution_times}")
```

En este ejemplo, el código se ejecuta 10,000 veces, y la medición se repite 5 veces.

#### `timeit.default_timer()`

El método `timeit.default_timer()` devuelve la hora actual de acuerdo con el reloj de la más alta resolución disponible en la plataforma.

```python
import timeit

start_time = timeit.default_timer()

# Code to be measured
result = [i**2 for i in range(1000)]

end_time = timeit.default_timer()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

Usando los métodos `timeit`, puedes elegir el que mejor se ajuste a tus necesidades de medición y comparar fácilmente el rendimiento de diferentes implementaciones de código.

## Obteniendo el Tiempo en Milisegundos

Para obtener el tiempo actual en milisegundos usando Python, puedes usar el módulo `time` y su función `time()`, que devuelve el número de segundos desde la Época (1 de enero de 1970, 00:00:00 UTC). Luego puedes multiplicar este valor por 1000 para obtener el tiempo en milisegundos:

```python
import time

milliseconds = int(round(time.time() * 1000))
print(milliseconds)
```

Esto imprimirá la hora actual en milisegundos. Ten en cuenta que el resultado se redondea a un entero usando la función `round()` antes de convertirlo a un entero usando `int()`. Esto se debe a que `time.time()` devuelve un valor de punto flotante con alta precisión.

## Un Temporizador en Python

Para crear un temporizador en Python, puedes usar el módulo integrado `time`. Aquí tienes un fragmento de código de ejemplo que demuestra cómo crear un temporizador:

```python3
import time

def countdown(t):
    while t:
        mins, secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins, secs)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1
    print('Timer completed!')

# Set the time for the timer (in seconds)
t = 60

# Call the countdown function with the time value as the argument
countdown(t)
```

Este código creará un temporizador regresivo de 60 segundos e imprimirá el tiempo restante en la pantalla cada segundo hasta que el temporizador se complete. Puedes ajustar el valor de `t` para establecer la duración deseada del temporizador.

Usando esta funcionalidad puedes crear una función de temporizador para medir el tiempo transcurrido.

## Funciones de Tiempo en Python

En Python, el módulo `time` proporciona un rango de funciones para trabajar con el tiempo. Aquí algunas funciones comúnmente utilizadas (aparte de `time()` y `sleep()` que ya hemos mencionado):

- **ctime()** - Esta función toma un tiempo en segundos y retorna una representación en cadena de ese tiempo en el formato "Día Mes Fecha Hora Año".
Ejemplo de uso:

```python3
import time

current_time = time.time()
time_string = time.ctime(current_time)
print("Current time: ", time_string)
```

- **gmtime()** - Esta función toma un tiempo en segundos y devuelve un objeto struct_time que representa la hora UTC.
Ejemplo de uso:

```python3
import time

current_time = time.time()
utc_time = time.gmtime(current_time)
print("UTC time: ", utc_time)
```

Hay muchas más funciones disponibles en el módulo de tiempo de Python para trabajar con el tiempo, incluyendo `localtime()`, `strftime()` y `strptime()`.

## La Función `perf_counter()` del Módulo Time

En Python, la función `perf_counter()` del módulo `time` se utiliza para medir el tiempo transcurrido con la mayor resolución disponible en el sistema. Proporciona un cronómetro más preciso en comparación con la función regular `time()`. Aquí hay un ejemplo de cómo usar `perf_counter()`:

```python
import time

start_time = time.perf_counter()

# Code to be measured
for i in range(1000):
    # Perform some computation
    result = i ** 2

end_time = time.perf_counter()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

Al usar `perf_counter()`, puedes medir el tiempo de ejecución de un bloque específico de código con alta precisión. Esta función se utiliza comúnmente para el perfilado de rendimiento y fines de evaluación comparativa.

## La función `monotonic()` del Módulo Time

En Python, la función `monotonic()` del módulo `time` se utiliza para obtener un reloj monótono, que es un reloj que aumenta continuamente y no se ve afectado por los ajustes del sistema de tiempo. Es adecuado para medir intervalos y determinar el tiempo transcurrido entre eventos. Aquí tienes un ejemplo de cómo usar `monotonic()`:

```python
import time

start_time = time.monotonic()

# Code to be measured
for i in range(1000):
    # Perform some computation
    result = i ** 2

end_time = time.monotonic()

elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")
```

Usar `monotonic()` asegura que el tiempo transcurrido se calcule en base a un reloj monótono, no afectado por cambios en el sistema de tiempo, como ajustes del reloj o cambios de zona horaria. Proporciona una medida confiable del tiempo transcurrido para mediciones de rendimiento y propósitos de evaluación comparativa.

## Cómo Detener la Ejecución de un Programa Después de un Periodo de Tiempo Determinado

Si quieres detener la ejecución de un programa de Python después de cierta cantidad de tiempo, puedes usar el módulo `signal` junto con un temporizador. El módulo `signal` te permite manejar varios señales, incluyendo una señal de temporizador, para controlar el comportamiento del programa. Aquí hay un ejemplo que demuestra cómo detener el programa después de una duración especificada:

```python3
import signal
import time

# Define the handler function for the alarm signal
def timeout_handler(signum, frame):
    raise TimeoutError("Program execution timed out")

# Set the duration (in seconds) after which the program should be stopped
duration = 10

# Register the handler function to be called when the alarm signal is received
signal.signal(signal.SIGALRM, timeout_handler)

# Set the alarm to trigger after the specified duration
signal.alarm(duration)

try:
    # Code to be executed
    while True:
        # Perform some computation
        time.sleep(1)  # Simulate some work

except TimeoutError:
    print("Program execution stopped after the specified duration")
```

En este ejemplo, el programa establece una alarma usando `signal.alarm(duration)`, donde duration es la duración deseada en segundos. Cuando se activa la alarma después de la duración especificada, se genera una excepción `TimeoutError`, que es capturada por el bloque try-except. En el bloque except, puedes manejar la terminación del programa o imprimir un mensaje para indicar que el programa se detuvo.

> Nota: el módulo signal no está disponible en todas las plataformas, y su comportamiento puede variar. Además, este método puede no ser adecuado para interrumpir tareas de larga duración o que requieran mucha computación. Para escenarios más complejos, podrías necesitar considerar técnicas de multiprocesamiento o multihilo para lograr el comportamiento deseado.

## Cómo Medir el Tiempo de Ejecución de una Función en Python

Para medir el tiempo de ejecución de una función específica en Python, puedes usar el módulo `time` y un decorador. Aquí tienes un ejemplo de cómo puedes medir el tiempo de una función usando un decorador:

```python3
import time

def timer_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        elapsed_time = end_time - start_time
        print("Elapsed Time: {:.6f} seconds".format(elapsed_time))
        return result
    return wrapper

# Example function to be timed
@timer_decorator
def my_function():
    time.sleep(2)  # Simulating some time-consuming operation
    return "Finished"

# Call the function
my_function() # Output: Elapsed Time: 2.001987 seconds
```

En este ejemplo, la función `timer_decorator` es un decorador que envuelve la función objetivo (`my_function`) con funcionalidad de temporización. El decorador registra el tiempo de inicio antes de invocar la función y el tiempo de finalización después de que la función se completa. Calcula el tiempo transcurrido e imprime el resultado.

Al aplicar el decorador `@timer_decorator` a la `my_function`, la función se cronometra automáticamente cuando se llama.

Puedes usar este decorador en cualquier función que quieras cronometrar aplicando el decorador `@timer_decorator` encima de la definición de la función.

> Nota: El ejemplo usa la llamada a la función `time.sleep(2)` para simular una operación que consume tiempo. Reemplázala con el código real u operación que quieras cronometrar.

## Cómo obtener la hora actual

Si quieres saber qué hora es ahora, puedes usar la función `time()` del módulo `time`. Aquí tienes un ejemplo de cómo obtener la hora actual en Python:

```python
import time

current_time = time.time()
print("Current Time (in seconds since the epoch):", current_time)
```

En este ejemplo, `time.time()` devuelve la hora actual como un número de punto flotante que representa la cantidad de segundos desde la época. Así, de esta manera podemos obtener la hora Unix actual en Python.

## La Función `time.strftime()`

La función `strftime()` en el módulo `time` de Python se utiliza para formatear un objeto `time.struct_time` o una tupla de tiempo en una representación de cadena basada en los códigos de formato especificados. Aquí hay un ejemplo:

```python
import time

# Get the current time as a time tuple
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_time)

# Print the formatted time
print("Formatted Time:", formatted_time) # Output: Formatted Time: 2023-05-22 12:34:56
```

## Imprimiendo Hora en Python

Para imprimir la hora actual en Python, puedes usar el módulo `time` o el módulo `datetime`. Aquí tienes un ejemplo de cómo usar el módulo `time`:

```python
import time

current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)

print("Current Time (using time module):", formatted_time)
```

## Cómo Obtener la Hora Actual

Para recuperar la hora actual en Python, puedes usar el módulo `time` o el módulo `datetime`. Así es como puedes obtener la hora actual utilizando el módulo `time`:

```python
import time

current_time = time.localtime()
print("Current Time (using time module):", time.strftime("%H:%M:%S", current_time))
```

Aquí también hay un ejemplo de cómo obtener la hora actual en milisegundos:

```python
import time

current_time_ms = int(time.time() * 1000)
print("Current Time (in milliseconds using time module):", current_time_ms)
```

## Generando una Marca de Tiempo en Python

Puedes usar el módulo `time` para generar una marca de tiempo. Aquí tienes un ejemplo:

```python
import time

timestamp = int(time.time())
print("Timestamp (using time module):", timestamp)
```
