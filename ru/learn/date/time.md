> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/date/time

Модуль времени Python - это мощный инструмент для работы с операциями, связанными с временем, в Python. Он предоставляет функции для измерения временных интервалов, форматирования и анализа строк времени и даты, а также обработки часовых поясов. С помощью модуля времени вы можете легко работать со значениями времени и даты и выполнять широкий спектр операций, связанных со временем, в своем коде на Python. Независимо от того, нужно ли вам измерить время выполнения вашего кода или работать со значениями даты и времени, модуль времени Python предоставит вам все необходимое.

## Форматы Времени в Python

В Python вы можете использовать метод `strftime()` из модуля `time` для форматирования значений времени в соответствии с различными кодами формата. Вот некоторые из обычно используемых кодов формата для форматирования времени в Python:

- **%H**: 2-значный час в 24-часовом формате (00-23)
- **%I**: 2-значный час в 12-часовом формате (01-12)
- **%M**: 2-значная минута (00-59)
- **%S**: 2-значная секунда (00-59)
- **%p**: Обозначение AM/PM (AM или PM)

Вы можете сочетать эти коды формата с другими символами, чтобы создать желаемый формат времени. Вот пример того, как получить отформатированное время в Python:

```python
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

## Функция `time.sleep()` в Python

`time.sleep()` - это функция в Python, которая приостанавливает выполнение текущего потока на указанное количество секунд, так что вы легко можете установить свое собственное время ожидания.

Синтаксис `time.sleep()` для времени ожидания или задержки следующий:

```python
import time

time.sleep(seconds)
```

Где `seconds` - это количество секунд, на которое должен быть приостановлен поток.

Функция `sleep()` принимает продолжительность сна в секундах, а не в миллисекундах. Однако вы можете добиться аналогичного эффекта, разделив желаемую продолжительность сна в миллисекундах на 1000, чтобы преобразовать её в секунды.

Использование функции `time.sleep()` поможет вам приостановить выполнение программы на заданный период времени.

## Функция `time.time()` в Python

В Python `time.time()` - это функция, которая возвращает текущее время в секундах с момента Эпохи (1 января 1970 года, 00:00:00 UTC) в виде числа с плавающей точкой.

Вот пример того, как использовать функцию `time.time()` для измерения времени в Python:

```python
import time

start_time = time.time()

# do some time-consuming task here

end_time = time.time()

elapsed_time = end_time - start_time

print(f"The task took {elapsed_time:.2f} seconds to complete.")
```

В этом примере `start_time` и `end_time` получаются путем вызова `time.time()` в начале и конце выполнения затратной по времени задачи, соответственно. Разница между двумя временами дает прошедшее время, которое затем выводится на печать. Вычисленное время выполнения форматируется как строка с двумя десятичными знаками с использованием f-строк.

Вот также пример вычисления времени для создания графа на Python с использованием библиотеки `networkx`:

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

Итак, функция `time.time()` может быть использована для измерения времени в Python.

## Измерение Времени в Миллисекундах

Если вы хотите измерить время в миллисекундах в Python, вы можете использовать функцию `time()` модуля `time` вместе с функцией `perf_counter()`. Вот пример:

```python
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

Вывод:

```python
Current Time in Milliseconds: 1621842353154
Execution Time in Milliseconds: 42
```

В этом примере `time.time()` используется для получения текущего времени в виде числа с плавающей точкой, представляющего количество секунд с начала эпохи. Умножая его на 1000, мы получаем текущее время в миллисекундах.

Для измерения времени выполнения блока кода мы используем `time.perf_counter()` для получения текущего времени высокого разрешения в секундах. Мы фиксируем время начала перед блоком кода и время окончания после блока кода. Вычитая время начала из времени окончания, мы получаем прошедшее время в секундах. Умножая его на 1000, мы получаем время выполнения в миллисекундах.

## Python `timeit()` с Примерами

Модуль `timeit` в Python - это мощный инструмент для измерения времени выполнения небольших фрагментов кода. Он предоставляет простой способ засечь время выполнения кода и сравнить производительность различных подходов. Модуль `timeit` может быть особенно полезен, когда вы хотите сравнить разные реализации и определить, какая из них более эффективна.

### Параметры Python `timeit()`

Функция `timeit` в Python принимает несколько параметров, позволяющих настроить ее поведение:

- **stmt**: Это выражение, время выполнения которого вы хотите измерить. Это может быть строка, содержащая один оператор или несколько операторов, разделенных точками с запятой.
- **setup**: Этот параметр необязателен и используется для настройки среды для измеряемого кода. Это также может быть строка, содержащая одно или несколько утверждений.
- **timer**: Этот параметр указывает функцию таймера, которая будет использоваться. Если не указано, будет использован таймер по умолчанию для текущей платформы.
- **number**: Этот параметр определяет количество выполнений кода. Чем больше выполнений, тем точнее измерение времени.

### Измерение Времени Выполнения Нескольких Строк Кода на Python

Вы можете использовать модуль `timeit` для измерения времени выполнения нескольких строк кода на Python. Вот два примера, использующие разные подходы.

#### Пример 1: **Использование Точек с Запятой**

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

#### Пример 2: **Использование Тройных Кавычек**

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

В обоих примерах мы определяем функцию (`square_numbers`) и затем вызываем её с использованием модуля `timeit`. Код, время выполнения которого измеряется, заключается в тройные кавычки, что позволяет нам охватывать несколько строк.

### Методы `timeit()`

Модуль timeit предоставляет различные методы для измерения времени выполнения. Вот некоторые из них.

#### `timeit.timeit()`

Метод `timeit.timeit()` используется для измерения времени выполнения фрагмента кода. Он принимает код в виде строки, количество выполнений и необязательное утверждение setup.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### `timeit.repeat()`

Метод `timeit.repeat()` позволяет повторять измерение несколько раз и возвращает список времён выполнения.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_times = timeit.repeat(stmt=code_to_measure, number=10000, repeat=5)
print(f"Execution times: {execution_times}")
```

В этом примере код выполняется 10 000 раз, а измерение повторяется 5 раз.

#### `timeit.default_timer()`

Метод `timeit.default_timer()` возвращает текущее время в соответствии с самыми высокоточными часами, доступными на платформе.

```python
import timeit

start_time = timeit.default_timer()

# Code to be measured
result = [i**2 for i in range(1000)]

end_time = timeit.default_timer()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

Используя методы `timeit`, вы можете выбрать тот, который наилучшим образом соответствует вашим потребностям в измерении, и легко сравнить производительность различных реализаций кода.

## Получение Времени в Миллисекундах

Чтобы получить текущее время в миллисекундах с использованием Python, вы можете использовать модуль `time` и его функцию `time()`, которая возвращает количество секунд с начала Эпохи (1 января 1970 года, 00:00:00 UTC). Затем вы можете умножить это значение на 1000, чтобы получить время в миллисекундах:

```python
import time

milliseconds = int(round(time.time() * 1000))
print(milliseconds)
```

Это выведет текущее время в миллисекундах. Обратите внимание, что результат округляется до целого числа с помощью функции `round()` перед тем, как конвертироваться в целое число с помощью `int()`. Это потому что `time.time()` возвращает значение с плавающей точкой с высокой точностью.

## Таймер на Python

Чтобы создать таймер на Python, вы можете использовать встроенный модуль `time`. Вот пример кода, который демонстрирует, как создать таймер:

```python
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

Этот код создаст обратный таймер на 60 секунд и будет печатать оставшееся время на экран каждую секунду, пока таймер не закончится. Вы можете настроить значение t, чтобы установить желаемую длительность таймера.

Используя эту функциональность, вы можете создать функцию таймера для измерения прошедшего времени.

## Функции Времени в Python

В Python модуль `time` предоставляет ряд функций для работы со временем. Вот некоторые из часто используемых функций (помимо `time()` и `sleep()`, о которых мы уже упоминали):

- **ctime()** - эта функция принимает время в секундах и возвращает строковое представление этого времени в формате "День Месяц Дата Время Год".
Пример использования:

```python
import time

current_time = time.time()
time_string = time.ctime(current_time)
print("Current time: ", time_string)
```

- **gmtime()** - эта функция принимает время в секундах и возвращает объект struct_time, представляющий время по Гринвичу.
Пример использования:

```python
import time

current_time = time.time()
utc_time = time.gmtime(current_time)
print("UTC time: ", utc_time)
```

В модуле времени Python доступно еще много функций для работы со временем, включая `localtime()`, `strftime()` и `strptime()`.

## Функция `perf_counter()` из Модуля Time

В Python функция `perf_counter()` из модуля `time` используется для измерения прошедшего времени с наивысшим доступным разрешением на системе. Она обеспечивает более точный таймер по сравнению с обычной функцией `time()`. Вот пример того, как использовать `perf_counter()`:

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

Используя `perf_counter()`, вы можете измерить время выполнения определенного блока кода с высокой точностью. Эта функция обычно используется для профилирования производительности и целей бенчмаркинга.

## Функция `monotonic()` Модуля Time

В Python функция `monotonic()` из модуля `time` используется для получения монотонных часов, которые являются часами, которые постоянно увеличиваются и не подвержены корректировкам системного времени. Она подходит для измерения интервалов и определения прошедшего времени между событиями. Вот пример того, как использовать `monotonic()`:

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

Использование `monotonic()` гарантирует, что прошедшее время рассчитывается на основе монотонных часов, не подверженных изменениям системного времени, таким как корректировки часов или изменения часовых поясов. Это обеспечивает надежное измерение прошедшего времени для измерений производительности и целей бенчмаркинга.

## Как Остановить Выполнение Программы после Определенного Периода Времени

Если вы хотите остановить выполнение программы на Python после определенного времени, вы можете использовать модуль `signal` вместе с таймером. Модуль `signal` позволяет обрабатывать различные сигналы, включая сигнал таймера, для управления поведением программы. Вот пример, демонстрирующий, как остановить программу после указанной длительности:

```python
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

В этом примере программа устанавливает будильник с помощью `signal.alarm(duration)`, где duration - желаемая продолжительность в секундах. Когда будильник срабатывает после указанной продолжительности, он вызывает исключение `TimeoutError`, которое перехватывается блоком try-except. В блоке except вы можете обработать завершение программы или вывести сообщение, указывающее, что программа была остановлена.

> Примечание: модуль signal не доступен на всех платформах, и его поведение может различаться. Кроме того, этот метод может не подходить для прерывания длительных или вычислительно сложных задач. Для более сложных сценариев вам может потребоваться рассмотреть техники многопроцессорности или многопоточности для достижения желаемого поведения.

## Как Измерить Время Выполнения Функции в Python

Чтобы измерить время выполнения определённой функции в Python, вы можете использовать модуль `time` и декоратор. Вот пример того, как вы можете измерить время работы функции с помощью декоратора:

```python
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

В этом примере функция `timer_decorator` является декоратором, который оборачивает целевую функцию (`my_function`) функционалом измерения времени. Декоратор записывает время начала до вызова функции и время окончания после завершения функции. Он вычисляет затраченное время и выводит его.

Применяя декоратор `@timer_decorator` к `my_function`, функция автоматически таймирована при вызове.

Вы можете использовать этот декоратор на любой функции, время выполнения которой вы хотите измерить, применяя декоратор `@timer_decorator` выше определения функции.

> Примечание: В примере используется вызов функции `time.sleep(2)`, чтобы симулировать длительную операцию. Замените его на фактический код или операцию, время выполнения которой вы хотите измерить.

## Как Получить Текущее Время

Если вы хотите знать, который сейчас час, вы можете использовать функцию `time()` модуля `time`. Вот пример получения текущего времени в Python:

```python
import time

current_time = time.time()
print("Current Time (in seconds since the epoch):", current_time)
```

В этом примере `time.time()` возвращает текущее время в виде числа с плавающей точкой, представляющего количество секунд с начала эпохи. Таким образом, мы можем получить текущее время Unix в Python.

## Функция `time.strftime()`

Функция `strftime()` в модуле `time` Python используется для форматирования объекта `time.struct_time` или кортежа времени в строковое представление на основе указанных кодов формата. Вот пример:

```python
import time

# Get the current time as a time tuple
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_time)

# Print the formatted time
print("Formatted Time:", formatted_time) # Output: Formatted Time: 2023-05-22 12:34:56
```

## Вывод Времени в Python

Чтобы вывести текущее время в Python, вы можете использовать модуль `time` или модуль `datetime`. Вот пример использования модуля `time`:

```python
import time

current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)

print("Current Time (using time module):", formatted_time)
```

## Как Получить Текущее Время

Чтобы получить текущее время в Python, вы можете использовать либо модуль `time`, либо модуль `datetime`. Вот как вы можете получить текущее время, используя модуль `time`:

```python
import time

current_time = time.localtime()
print("Current Time (using time module):", time.strftime("%H:%M:%S", current_time))
```

Вот также пример того, как получить текущее время в миллисекундах:

```python
import time

current_time_ms = int(time.time() * 1000)
print("Current Time (in milliseconds using time module):", current_time_ms)
```

## Генерация Временной Метки в Python

Вы можете использовать модуль `time` для генерации временной метки. Вот пример:

```python
import time

timestamp = int(time.time())
print("Timestamp (using time module):", timestamp)
```
