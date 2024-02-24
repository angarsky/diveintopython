> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/date/datetime

Модуль datetime в Python - это мощный инструмент для работы с датами и временем. Он предоставляет ряд функций и классов для манипулирования, форматирования и разбора дат и времени в различных форматах. С помощью datetime в Python вы можете легко выполнять арифметические операции с датами и временем, конвертировать различные часовые пояса и многое другое. Будь то работа с временными отметками, календарями или задачами планирования, datetime может помочь сделать ваш код на Python более надежным и гибким.

## Форматы Дат и Времени в Python

Встроенный модуль `datetime` в Python предназначен для работы с датами и временем. Вот некоторые общие форматы datetime в Python:

1. **YYYY-MM-DD** : Год, месяц и день, разделенные тире.

2. **YYYY/MM/DD** : Год, месяц и день, разделенные слешами.

3. **MM/DD/YYYY** : Месяц, день и год, разделенные слешами.

4. **DD-MM-YYYY** : День, месяц и год, разделенные тире.

5. **DD/MM/YYYY** : День, месяц и год, разделенные слешами.

6. **YYYY-MM-DD HH:MM:SS** : Год, месяц и день, разделенные тире, за которыми следуют часы, минуты и секунды, разделенные двоеточиями.

7. **YYYY-MM-DD HH:MM:SS.mmmmmm** : Год, месяц и день, разделенные тире, за которыми следуют часы, минуты и секунды, разделенные двоеточиями, и микросекунды, разделенные точкой.

## Форматирование Дат и Времени в Python

В Python вы можете форматировать даты и время в виде строки с использованием метода `strftime()` объекта `datetime`. Этот метод позволяет вам указать строку формата, которая определяет, как должна быть отформатирована дата или время.

Вот список некоторых часто используемых форматов даты и времени в Python:

- **%Y**: год (4 цифры)

- **%m**: месяц (с ведущим нулем)

- **%d**: день месяца (с ведущим нулем)

- **%H**: час (24-часовой формат)

- **%M**: минута (с ведущим нулем)

- **%S**: секунда (с ведущим нулем)

## Как Получить Текущую Дату и Время из Объекта Datetime в Python

Чтобы извлечь текущую дату из объекта `datetime` в Python, вы можете использовать метод `date()`. Вот пример того, как конвертировать объект `datetime` в объект `date`, обратившись к методу `date()` объекта `datetime`:

```python
from datetime import datetime

current_datetime = datetime.now()
current_date = current_datetime.date()

print(current_date)
```

Этот код выведет текущую дату в формате ГГГГ-ММ-ДД. Например, если вы запустите код сегодня (17 мая 2023 года), результат будет 2023-05-17.

Вот также пример получения текущей даты и времени:

```python
from datetime import datetime

# Get the current date and time
current_datetime = datetime.now()

print(current_datetime)  # Output: Current date and time in the format YYYY-MM-DD
```

## Как Получить Текущий Год из Объекта Datetime

Чтобы извлечь год из объекта datetime в Python, можно использовать атрибут year. Вот пример:

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Extract the year from the datetime object
year = dt.year

print(year) # Output: 2023
```

## Формат Времени Am/Pm в Python

В модуле `datetime` Python вы можете форматировать объект datetime для отображения времени в формате AM/PM, используя директивы `%I` и `%p` в методе strftime. Вот пример:

```python
from datetime import datetime

# Get the current datetime
now = datetime.now()

# Format the time in AM/PM format
formatted_time = now.strftime("%I:%M %p")

# Print the formatted time
print(formatted_time)
```

Этот код выведет текущее время в формате "чч:мм AM/PM". Например, если текущее время 2:30 PM, вывод будет "02:30 PM".

## Формат Времени Часов

В Python вы можете получить текущее время в формате "времени часов" с использованием модуля `datetime`. Вот пример:

```python
from datetime import datetime

# Get the current time
current_time = datetime.now().time()

# Format the time as a clock time
clock_time = current_time.strftime("%H:%M:%S")

print("Current Clock Time:", clock_time) # Output: Current Clock Time: 12:34:56
```

Метод `strftime()` используется для форматирования времени в виде строки времени часов. Код формата `%H` представляет час (24-часовой формат), `%M` представляет минуту, а `%S` представляет секунду.

Применяя метод `strftime()` с соответствующим кодом формата, вы можете получить текущее время в формате времени часов.

## Способ Преобразования Datetime в Строку в Python

Чтобы преобразовать объект `datetime` в Python в строку, вы можете использовать метод `strftime()`. Метод `strftime()` принимает строку формата в качестве аргумента и возвращает строковое представление объекта datetime в соответствии с указанным форматом.

Вот пример того, как отформатировать текущую дату и время:

```python
import datetime

now = datetime.datetime.now()  # Get the current datetime object
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")  # Format the datetime object
print(formatted_date)  # Print the formatted datetime string
```

## Преобразование Строки в Дату и Время

Вы можете использовать модуль `datetime` в Python для преобразования строки в объект datetime в Python. Вот пример преобразования строки во время:

```python
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

В этом примере мы используем метод `datetime.strptime()` Python для преобразования входной строки в объект datetime. Метод `strptime()` принимает два аргумента: входную строку и формат входной строки. Строка формата использует различные коды форматирования для указания формата входной строки. В данном случае код формата `%Y` представляет год, `%m` представляет месяц, `%d` представляет день, `%H` представляет час, `%M` представляет минуту, а `%S` представляет секунду.

Переменная `dt_object` теперь содержит объект datetime, который представляет дату и время во входной строке. Затем вы можете выполнять различные операции с объектом datetime, такие как форматирование его другим способом или выполнение арифметических операций над ним.

Тот же алгоритм можно использовать для преобразования строки в объект `date`.

Давайте посмотрим на пример преобразования строки в объект `date` на Python:

```python
from datetime import datetime

date_string = "2023-05-22"

# Convert string to date object
my_date = datetime.strptime(date_string, "%Y-%m-%d").date()

print(my_date)  # Output: 2023-05-22
```

## Методы `datetime.now()` и `datetime.today()`

В Python вы можете использовать встроенный модуль `datetime` для работы с датой и временем. Чтобы получить текущую дату и время, вы можете использовать метод `datetime.now()`.

В следующем примере мы сначала получаем дату и время, а затем печатаем их:

```python
from datetime import datetime

now = datetime.now()
print("Current date and time:", now)
```

Это выведет текущую дату и время в формате ГГГГ-ММ-ДД ЧЧ:ММ:СС.сссссс.

Есть еще один способ получить текущую дату и время, вы можете использовать метод `datetime.today()`. Вот пример:

```python
import datetime

now = datetime.datetime.today()
print(now) # This will output the current date and time in the format YYYY-MM-DD HH:MM:SS.mmmmmm.
```

Если вы хотите отобразить только текущее время без даты, вы можете использовать метод `strftime()` для форматирования вывода перед печатью:

```python
current_time = datetime.datetime.now().strftime("%H:%M:%S")
print("Current time:", current_time)
```

Это выведет текущее время в формате ЧЧ:ММ:СС.

## Как Извлечь Дату из Объекта `datetime`

В Python вы можете извлечь часть даты из объекта datetime, используя метод `.date()`. Вот пример:

```python
import datetime

# create a datetime object
dt = datetime.datetime(2023, 5, 14, 10, 30, 0)

# extract the date portion
date = dt.date()

# print the date
print(date)  # output: 2023-05-14
```

## Преобразование Даты и Времени в Эпоху

Вы можете преобразовать объект `datetime` в Python в время эпохи (т.е. количество секунд с 1 января 1970 г., 00:00:00 по UTC), используя метод `timestamp()`. Давайте посмотрим на пример, как преобразовать объект datetime Python в метку времени:

```python
import datetime

# Create a datetime object for May 14, 2023 at 12:34:56 UTC
dt = datetime.datetime(2023, 5, 14, 12, 34, 56)

# Convert the datetime object to epoch time
epoch_time = int(dt.timestamp())

print(epoch_time)  # Output: 1687877696
```

## Преобразование Epoch в Datetime

Вы можете преобразовать время Unix epoch (то есть количество секунд с 1 января 1970 года, 00:00:00 UTC) в объект Python `datetime`, используя метод `datetime.fromtimestamp()`.

Вот пример того, как преобразовать время Unix в datetime в Python:

```python
import datetime

# Unix epoch time for May 14, 2023 at 12:34:56 UTC
epoch_time = 1687877696

# Convert the epoch time to a datetime object
dt = datetime.datetime.fromtimestamp(epoch_time)

print(dt)  # Output: 2023-05-14 12:34:56
```

Если вы хотите преобразовать временную метку в объект `datetime` в определенном часовом поясе в Python, вы можете использовать библиотеки, такие как `pytz` или `dateutil`, чтобы установить желаемый часовой пояс.

## Разбор в Модуле `datetime`

Чтобы разобрать строку даты или времени в объект `datetime`, вы можете использовать метод `datetime.datetime.strptime()`.

Метод `strptime()` принимает два аргумента: строку, которую вы хотите разобрать, и строку формата, которая указывает формат входной строки. Строка формата использует специальные коды для представления различных частей даты и времени, таких как `%Y` для года, `%m` для месяца, `%d` для дня, `%H` для часа, `%M` для минуты и `%S` для секунды.

Вот пример того, как разобрать строку даты в формате "YYYY-MM-DD":

```python
import datetime

date_string = "2023-05-14"
date_object = datetime.datetime.strptime(date_string, "%Y-%m-%d")

print(date_object)
```

## Часовые Пояса и Модуль Datetime в Python

Вы можете использовать модуль `datetime` для работы с датами, временем и часовыми поясами в Python.

Для работы с часовыми поясами вам нужно использовать библиотеку `pytz`. Эта библиотека предоставляет обширную базу данных часовых поясов и инструменты для работы с ними.

Вот пример того, как вы можете работать с часовыми поясами с помощью модуля `datetime` и библиотеки `pytz` в Python:

```python
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

В этом примере мы сначала создаем объект `datetime` во временной зоне UTC, используя метод `datetime.datetime.now()` и передавая в качестве параметра `tz` объект временной зоны `pytz.utc`. Затем мы выводим на печать дату и время в UTC.

Далее, мы создаем объект `pytz.timezone`, представляющий местную временную зону (America/New_York), а затем используем метод `astimezone()` для конвертации объекта даты и времени UTC в местную временную зону. В конце мы выводим на печать местные дату и время.

## Модуль Datetime и Класс Timedelta

Модуль `datetime` в Python предоставляет различные классы для работы с датами, временем и временными интервалами. Один из классов, доступных в модуле, - `timedelta`, который представляет собой продолжительность или разницу между двумя датами или временами.

Вот пример того, как использовать `timedelta`:

```python
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

Вот также пример того, как найти разницу во времени или разницу между временами в Python:

```python
import datetime

# create two datetime objects
start_time = datetime.datetime(2023, 5, 15, 10, 30, 0)
end_time = datetime.datetime(2023, 5, 15, 14, 45, 0)

# calculate the time difference
delta = end_time - start_time

# print the result
print(delta)  # prints: 4:15:00
```

Таким образом, вы можете измерить время выполнения любого фрагмента кода.

Чтобы рассчитать разницу во времени в секундах, вы можете использовать метод `total_seconds()`.

Класс `timedelta` предоставляет несколько других аргументов, которые можно использовать для указания различных единиц времени, включая `weeks`, `hours`, `minutes`, `seconds`, `microseconds` и `milliseconds`.

## Как Сравнивать Объекты Datetime

В Python вы можете сравнивать объекты `datetime` с помощью операторов сравнения (`<`, `>`, `<=`, `>=`, `==`, `!=`).

Давайте посмотрим на пример того, как сравнивать даты в Python:

```python
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

В результате сравнения дат мы получаем "date1 раньше, чем date2".

Вы также можете сравнивать объекты `datetime` с объектами `date`. В этом случае объект `date` рассматривается так, как если бы время было полночь. Например:

```python
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

## Как Добавить Дни к Объекту Datetime

Чтобы добавить время к объекту `datetime` в Python, вы можете использовать класс `timedelta` из модуля `datetime`.

Вот пример кода, который показывает, как добавить 3 дня к текущей дате:

```python
from datetime import datetime, timedelta

current_date = datetime.now()
print("Current date:", current_date)

new_date = current_date + timedelta(days=3)
print("New date:", new_date)
```

Вы можете изменить количество дней для добавления, изменив значение аргумента days при создании объекта `timedelta`.

## Модуль Datetime и Метод `isoformat()` в Python

Метод `isoformat()` используется для получения строкового представления объекта даты или времени в формате ISO 8601. Вот пример:

```python
import datetime

# create a datetime object for May 14, 2023 at 2:30 PM
dt = datetime.datetime(2023, 5, 14, 14, 30)

# get the ISO 8601 string representation of the datetime object
iso_str = dt.isoformat()

print(iso_str)  # output: 2023-05-14T14:30:00
```

В формате ISO 8601 дата и время разделяются буквой "T", а время указывается в 24-часовом формате. Строковое представление объекта datetime, полученное с использованием метода `isoformat()`, не включает информацию о часовом поясе. Если вам нужно включить информацию о часовом поясе, вы можете использовать метод `strftime()` с соответствующей строкой формата.

## Метод `datetime.utcnow()`

В Python модуль `datetime` предоставляет метод под названием `datetime.utcnow()`, который возвращает текущую дату и время в виде объекта datetime в UTC (Всемирное координированное время).

Вот пример:

```python
import datetime

now_utc = datetime.datetime.utcnow()
print(now_utc)
```

Это выведет текущую дату и время UTC в формате `YYYY-MM-DD HH:MM:SS.mmmmmm`.

Стоит отметить, что `datetime.utcnow()` возвращает текущее время UTC, которое не учитывает разницу временных зон. Если вы хотите преобразовать это время в местную временную зону, вам нужно будет использовать метод `datetime.astimezone()`.

## Как Распечатать Объект Datetime в Python

Чтобы распечатать объект `datetime` в конкретном формате в Python, вы можете использовать метод `strftime()` из модуля `datetime`. Этот метод позволяет форматировать объект datetime в строковое представление.

Вот пример печати объекта datetime в определенном формате:

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Format and print the datetime object
formatted_datetime = dt.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_datetime)
```

В этом примере мы создаем объект `datetime` `dt`, представляющий определенную дату и время. Затем мы используем метод `strftime()` для форматирования его в строку. Строка формата `"%Y-%m-%d %H:%M:%S"` указывает желаемый формат для строки datetime. `%Y` представляет год из четырех цифр, `%m` представляет месяц с дополнением нулями, `%d` представляет день с дополнением нулями, `%H` представляет час в 24-часовом формате, `%M` представляет минуту, а `%S` представляет секунду.

Выходными данными будет отформатированная строка datetime:

```python
2023-05-17 12:34:56
```

Вы можете настроить строку формата в соответствии с вашими специфическими требованиями. Для получения дополнительной информации о кодах формата для `strftime()`, вы можете обратиться к документации Python: [Коды формата strftime() и strptime()](https://docs.python.org/3/library/datetime.html#strftime-strptime-behavior).

## Класс Date Модуля Datetime

Модуль `datetime` предоставляет класс `date`, который позволяет работать специально с датами (не учитывая время). Вот пример того, как использовать класс `date`:

```python
from datetime import date

# Create a date object for May 22, 2023
my_date = date(2023, 5, 22)

# Get individual components of the date
year = my_date.year
month = my_date.month
day = my_date.day

print(year, month, day)  # Output: 2023 5 22
```
