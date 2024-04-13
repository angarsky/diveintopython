> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/date/datetime

El módulo `datetime` de Python es una herramienta poderosa para trabajar con fechas y horas. Proporciona un rango de funciones y clases para manipular, formatear y analizar fechas y horas en varios formatos. Con `datetime` de Python, puedes realizar fácilmente operaciones aritméticas en fechas y horas, convertir entre diferentes zonas horarias y mucho más. Ya sea que estés trabajando con marcas de tiempo, calendarios o programando tareas, `datetime` puede ayudar a hacer tu código Python más robusto y flexible.

## Formatos de Fecha y Hora en Python

El módulo integrado de `datetime` en Python sirve para trabajar con fechas y horas. Aquí hay algunos formatos comunes de fecha y hora en Python:

1. **YYYY-MM-DD** : Año, mes y día separados por guiones.

2. **YYYY/MM/DD** : Año, mes y día separados por barras inclinadas.

3. **MM/DD/YYYY** : Mes, día y año separados por barras inclinadas.

4. **DD-MM-YYYY** : Día, mes y año separados por guiones.

5. **DD/MM/YYYY** : Día, mes y año separados por barras inclinadas.

6. **YYYY-MM-DD HH:MM:SS** : Año, mes y día separados por guiones, seguido de horas, minutos y segundos separados por puntos.

7. **YYYY-MM-DD HH:MM:SS.mmmmmm** : Año, mes y día separados por guiones, seguido de horas, minutos y segundos separados por puntos, y microsegundos separados por un punto.

## Formateo de Fecha y Hora en Python

En Python, puedes formatear fechas y horas como una cadena de texto utilizando el método `strftime()` de un objeto `datetime`. Este método te permite especificar una cadena de formato que define cómo debe formatearse la fecha o la hora.

Aquí hay una lista de algunos formatos de fecha y hora comúnmente usados en Python:

- **%Y**: año (4 dígitos)

- **%m**: mes (con ceros a la izquierda)

- **%d**: día del mes (con ceros a la izquierda)

- **%H**: hora (reloj de 24 horas)

- **%M**: minuto (con ceros a la izquierda)

- **%S**: segundo (con ceros a la izquierda)

## Cómo Obtener la Fecha y Hora Actuales de un Objeto Datetime en Python

Para extraer la fecha actual de un objeto `datetime` en Python, puedes usar el método `date()`. Aquí tienes un ejemplo de cómo convertir un objeto `datetime` a un objeto `date` accediendo al método `date()` del objeto `datetime`:

```python3
from datetime import datetime

current_datetime = datetime.now()
current_date = current_datetime.date()

print(current_date)
```

Este código dará como resultado la fecha actual en el formato AAAA-MM-DD. Por ejemplo, si ejecutas el código hoy (17 de mayo de 2023), el resultado será 2023-05-17.

Aquí también hay un ejemplo de cómo obtener la fecha y hora actuales:

```python3
from datetime import datetime

# Get the current date and time
current_datetime = datetime.now()

print(current_datetime)  # Output: Current date and time in the format YYYY-MM-DD
```

## Cómo obtener el año actual de un objeto Datetime

Para extraer el año de un objeto datetime en Python, puedes usar el atributo year. Aquí tienes un ejemplo:

```python3
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Extract the year from the datetime object
year = dt.year

print(year) # Output: 2023
```

## Formato de fecha y hora AM/PM en Python

En el módulo `datetime` de Python, puedes formatear un objeto datetime para mostrar la hora en formato AM/PM utilizando las directivas `%I` y `%p` en el método strftime. Aquí hay un ejemplo:

```python3
from datetime import datetime

# Get the current datetime
now = datetime.now()

# Format the time in AM/PM format
formatted_time = now.strftime("%I:%M %p")

# Print the formatted time
print(formatted_time)
```

Este código mostrará la hora actual en el formato "hh:mm AM/PM". Por ejemplo, si la hora actual es las 2:30 PM, la salida será "02:30 PM".

## Formato de Hora del Reloj

En Python, puedes obtener la hora actual en un formato de "hora del reloj" utilizando el módulo `datetime`. Aquí tienes un ejemplo:

```python3
from datetime import datetime

# Get the current time
current_time = datetime.now().time()

# Format the time as a clock time
clock_time = current_time.strftime("%H:%M:%S")

print("Current Clock Time:", clock_time) # Output: Current Clock Time: 12:34:56
```

El método `strftime()` se utiliza para formatear el tiempo como una cadena de hora de reloj. El código de formato `%H` representa la hora (reloj de 24 horas), `%M` representa el minuto y `%S` representa el segundo.

Al aplicar el método `strftime()` con el código de formato apropiado, puedes obtener la hora actual en un formato de hora de reloj.

## Una manera de convertir Datetime a String en Python

Para convertir un objeto `datetime` de Python a una cadena, puedes utilizar el método `strftime()`. El método `strftime()` toma una cadena de formato como argumento y devuelve una representación en cadena del objeto datetime de acuerdo con el formato especificado.

Aquí tienes un ejemplo de cómo formatear la fecha y hora actuales:

```python3
import datetime

now = datetime.datetime.now()  # Get the current datetime object
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")  # Format the datetime object
print(formatted_date)  # Print the formatted datetime string
```

## La Conversión de Cadena a Datetime

Puedes usar el módulo `datetime` en Python para convertir una cadena a un objeto datetime en Python. Aquí tienes un ejemplo de conversión de cadena a tiempo:

```python3
from datetime import datetime

# define the format of the input string
input_format = '%Y-%m-%d %H:%M:%S'

# input string
input_string = '2022-05-14 10:30:00'

# convert the input string to a datetime object
dt_object = datetime.strptime(input_string, input_format)

# print the datetime object
print(dt_object)
```

En este ejemplo, utilizamos el método `datetime.strptime()` de Python para convertir la cadena de entrada en un objeto datetime. El método `strptime()` toma dos argumentos: la cadena de entrada y el formato de la cadena de entrada. La cadena de formato utiliza diversos códigos de formato para especificar el formato de la cadena de entrada. En este caso, el código de formato `%Y` representa el año, `%m` representa el mes, `%d` representa el día, `%H` representa la hora, `%M` representa el minuto y `%S` representa el segundo.

La variable `dt_object` ahora contiene un objeto datetime que representa la fecha y hora en la cadena de entrada. Luego, puedes realizar varias operaciones en el objeto datetime, como formatearlo de una manera diferente o realizar operaciones aritméticas sobre él.

El mismo algoritmo se puede usar para convertir una cadena en un objeto `date`.

Veamos el ejemplo de conversión de una cadena a un objeto `date` en Python:

```python3
from datetime import datetime

date_string = "2023-05-22"

# Convert string to date object
my_date = datetime.strptime(date_string, "%Y-%m-%d").date()

print(my_date)  # Output: 2023-05-22
```

## Los métodos `datetime.now()` y `datetime.today()`

En Python, puedes usar el módulo integrado `datetime` para trabajar con valores de fecha y hora. Para obtener la fecha y hora actuales, puedes usar el método `datetime.now()`.

En el siguiente ejemplo primero obtenemos la fecha y la hora y luego lo imprimimos:

```python
from datetime import datetime

now = datetime.now()
print("Current date and time:", now)
```

Esto mostrará la fecha y hora actuales en el formato AAAA-MM-DD HH:MM:SS.ssssss.

Hay otra manera de obtener la fecha y hora actuales, puedes usar el método `datetime.today()`. Aquí tienes un ejemplo:

```python
import datetime

now = datetime.datetime.today()
print(now) # This will output the current date and time in the format YYYY-MM-DD HH:MM:SS.mmmmmm.
```

Si deseas mostrar solo la hora actual sin la fecha, puedes usar el método `strftime()` para formatear la salida antes de imprimirla:

```python
import datetime
current_time = datetime.datetime.now().strftime("%H:%M:%S")
print("Current time:", current_time)
```

Esto generará la hora actual en el formato HH:MM:SS.

## Cómo Extraer la Fecha de un Objeto `datetime`

En Python, puedes extraer la parte de la fecha de un objeto datetime utilizando el método `.date()`. Aquí tienes un ejemplo:

```python
import datetime

# create a datetime object
dt = datetime.datetime(2023, 5, 14, 10, 30, 0)

# extract the date portion
date = dt.date()

# print the date
print(date)  # output: 2023-05-14
```

## Conversión de Fecha y Hora a Epoch

Puedes convertir un objeto `datetime` de Python a tiempo epoch (es decir, el número de segundos desde el 1 de enero de 1970, 00:00:00 UTC) utilizando el método `timestamp()`. Veamos el ejemplo de cómo convertir un objeto `datetime` de Python a un timestamp:

```python3
import datetime

# Create a datetime object for May 14, 2023 at 12:34:56 UTC
dt = datetime.datetime(2023, 5, 14, 12, 34, 56)

# Convert the datetime object to epoch time
epoch_time = int(dt.timestamp())

print(epoch_time)  # Output: 1687877696
```

## Conversión de Epoch a Datetime

Puedes convertir un tiempo epoch de Unix (es decir, el número de segundos desde el 1 de enero de 1970, 00:00:00 UTC) a un objeto `datetime` de Python usando el método `datetime.fromtimestamp()`.

Aquí hay un ejemplo de cómo convertir el tiempo Unix a datetime en Python:

```python
import datetime

# Unix epoch time for May 14, 2023 at 12:34:56 UTC
epoch_time = 1687877696

# Convert the epoch time to a datetime object
dt = datetime.datetime.fromtimestamp(epoch_time)

print(dt)  # Output: 2023-05-14 12:34:56
```

Si quieres convertir un sello de tiempo a un objeto `datetime` en una zona horaria específica en Python, puedes usar bibliotecas como `pytz` o `dateutil` para establecer la zona horaria deseada.

## Interpretación en un Módulo `datetime`

Para interpretar una cadena de fecha o tiempo en un objeto `datetime`, puedes usar el método `datetime.datetime.strptime()`.

El método `strptime()` toma dos argumentos: la cadena que quieres interpretar y una cadena de formato que especifica el formato de la cadena de entrada. La cadena de formato utiliza códigos especiales para representar diferentes partes de la fecha y la hora, tales como `%Y` para el año, `%m` para el mes, `%d` para el día, `%H` para la hora, `%M` para el minuto y `%S` para el segundo.

Aquí hay un ejemplo de cómo interpretar una cadena de fecha en el formato "AAAA-MM-DD":

```python3
import datetime

date_string = "2023-05-14"
date_object = datetime.datetime.strptime(date_string, "%Y-%m-%d")

print(date_object)
```

## Husos horarios y módulo DateTime en Python

Puedes usar el módulo `datetime` para trabajar con fechas, horas y husos horarios en Python.

Para trabajar con husos horarios, necesitas usar la biblioteca `pytz`. Esta biblioteca proporciona una amplia base de datos de husos horarios y herramientas para trabajar con ellos.

Aquí tienes un ejemplo de cómo puedes trabajar con husos horarios usando el módulo `datetime` y la biblioteca `pytz` en Python:

```python3
import datetime
import pytz

# create a datetime object in UTC timezone
utc_datetime = datetime.datetime.now(tz=pytz.utc)
print("UTC datetime:", utc_datetime)

# convert the datetime object to a different timezone
local_timezone = pytz.timezone('America/New_York')
local_datetime = utc_datetime.astimezone(local_timezone)
print("Local datetime:", local_datetime)
```

En este ejemplo, primero creamos un objeto `datetime` en la zona horaria UTC usando el método `datetime.datetime.now()` y pasando el objeto de zona horaria `pytz.utc` como el parámetro `tz`. Luego imprimimos la fecha y hora UTC.

A continuación, creamos un objeto `pytz.timezone` que representa la zona horaria local (America/Nueva_York), y luego usamos el método `astimezone()` para convertir el objeto datetime UTC a la zona horaria local. Finalmente, imprimimos la fecha y hora local.

## Módulo DateTime y Clase Timedelta

El módulo `datetime` en Python proporciona varias clases para trabajar con fechas, horas e intervalos de tiempo. Una de las clases disponibles en el módulo es `timedelta`, que representa una duración o diferencia entre dos fechas o tiempos.

Aquí hay un ejemplo de cómo usar `timedelta`:

```python3
import datetime

# create a datetime object for the current time
now = datetime.datetime.now()

# create a timedelta object representing a duration of 1 day
one_day = datetime.timedelta(days=1)

# calculate a new datetime object that is 1 day in the future
tomorrow = now + one_day

# print the result
print(tomorrow)
```

Aquí también un ejemplo de cómo encontrar la diferencia de tiempo o el delta de tiempo en Python:

```python3
import datetime

# create two datetime objects
start_time = datetime.datetime(2023, 5, 15, 10, 30, 0)
end_time = datetime.datetime(2023, 5, 15, 14, 45, 0)

# calculate the time difference
delta = end_time - start_time

# print the result
print(delta)  # prints: 4:15:00
```

De esta forma puedes medir el tiempo de ejecución de cualquier fragmento de código.

Para calcular la diferencia de tiempo en segundos, puedes usar el método `total_seconds()`.

La clase `timedelta` proporciona varios otros argumentos que se pueden usar para especificar diferentes unidades de tiempo, incluyendo `weeks`, `hours`, `minutes`, `seconds`, `microseconds` y `milliseconds`.

## Cómo Comparar Objetos Datetime

En Python, puedes comparar objetos `datetime` utilizando los operadores de comparación (`<`, `>`, `<=`, `>=`, `==`, `!=`).

Veamos el ejemplo de cómo comparar fechas en Python:

```python3
from datetime import datetime

# create datetime objects
date1 = datetime(2021, 9, 1)
date2 = datetime(2021, 9, 2)

# compare datetime objects
if date1 < date2:
    print("date1 is before date2")
else:
    print("date1 is after date2")
```

Como resultado de comparar fechas, obtenemos "date1 es antes que date2".

También puedes comparar objetos `datetime` con objetos `date`. En ese caso, el objeto `date` se trata como si tuviera una hora de medianoche. Por ejemplo:

```python3
from datetime import datetime, date

# create datetime and date objects
date1 = datetime(2021, 9, 1, 10, 30)
date2 = date(2021, 9, 2)

# compare datetime and date objects
if date1 < date2:
    print("date1 is before date2")
else:
    print("date1 is after date2")
```

## Cómo agregar días a un objeto Datetime

Para agregar tiempo a un objeto `datetime` de Python, puedes usar la clase `timedelta` del módulo `datetime`.

Aquí hay un fragmento de código de ejemplo que muestra cómo agregar 3 días a la fecha actual:

```python3
from datetime import datetime, timedelta

current_date = datetime.now()
print("Current date:", current_date)

new_date = current_date + timedelta(days=3)
print("New date:", new_date)
```

Puedes ajustar la cantidad de días a agregar cambiando el valor del argumento days al crear el objeto `timedelta`.

## Módulo Datetime y método `isoformat()` en Python

El método `isoformat()` se utiliza para obtener la representación en cadena de un objeto de fecha o tiempo en formato ISO 8601. Aquí hay un ejemplo:

```python3
import datetime

# create a datetime object for May 14, 2023 at 2:30 PM
dt = datetime.datetime(2023, 5, 14, 14, 30)

# get the ISO 8601 string representation of the datetime object
iso_str = dt.isoformat()

print(iso_str)  # output: 2023-05-14T14:30:00
```

En el formato ISO 8601, la fecha y la hora se separan mediante la letra "T", y la hora se proporciona en formato de 24 horas. La representación en cadena del objeto datetime obtenido usando el método `isoformat()` no incluye información de la zona horaria. Si necesitas incluir información de la zona horaria, puedes usar el método `strftime()` con una cadena de formato adecuada.

## El Método `datetime.utcnow()`

En Python, el módulo `datetime` proporciona un método llamado `datetime.utcnow()` que devuelve la fecha y hora actuales como un objeto datetime en UTC (Tiempo Universal Coordinado).

He aquí un ejemplo:

```python
import datetime

now_utc = datetime.datetime.utcnow()
print(now_utc)
```

Esto mostrará la fecha y hora UTC actual en el formato `YYYY-MM-DD HH:MM:SS.mmmmmm`.

Vale la pena mencionar que `datetime.utcnow()` devuelve la hora UTC actual, que no tiene en cuenta ningún desplazamiento de zona horaria. Si quieres convertir esta hora a una zona horaria local, necesitarás usar el método `datetime.astimezone()`.

## Cómo Imprimir un Objeto Datetime en Python

Para imprimir un objeto `datetime` en un formato específico en Python, puedes usar el método `strftime()` del módulo `datetime`. Este método te permite formatear un objeto datetime en una representación de cadena.

He aquí un ejemplo de cómo imprimir un objeto datetime en un formato específico:

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Format and print the datetime object
formatted_datetime = dt.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_datetime)
```

En este ejemplo, creamos un objeto `datetime` `dt` que representa una fecha y hora específicas. Luego, utilizamos el método `strftime()` para formatearlo como una cadena. La cadena de formato `"%Y-%m-%d %H:%M:%S"` especifica el formato deseado para la cadena de fecha y hora. `%Y` representa el año con cuatro dígitos, `%m` representa el mes con relleno de cero, `%d` representa el día con relleno de cero, `%H` representa la hora en formato de 24 horas, `%M` representa el minuto y `%S` representa el segundo.

La salida será la cadena de fecha y hora formateada:

```python
2023-05-17 12:34:56
```

Puedes personalizar la cadena de formato basada en tus requisitos específicos. Para más detalles sobre los códigos de formato de `strftime()`, puedes consultar la documentación de Python: [Códigos de Formato de strftime() y strptime()](https://docs.python.org/3/library/datetime.html#strftime-strptime-behavior).

## Clase Date del Módulo Datetime

El módulo `datetime` proporciona la clase `date`, que te permite trabajar específicamente con fechas (sin considerar el tiempo). Aquí tienes un ejemplo de cómo usar la clase `date`:

```python3
from datetime import date

# Create a date object for May 22, 2023
my_date = date(2023, 5, 22)

# Get individual components of the date
year = my_date.year
month = my_date.month
day = my_date.day

print(year, month, day)  # Output: 2023 5 22
```
