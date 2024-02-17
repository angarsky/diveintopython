> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/modules/popular-modules

Модули позволяют легко реализовывать сложные функциональности, такие как веб-разработка, анализ данных и машинное обучение. В результате программисты всех уровней и отраслей в значительной степени полагаются на популярные модули в Python для упрощения своей работы и оптимизации процесса разработки. В этой статье мы рассмотрим некоторые из наиболее широко используемых модулей в Python и преимущества, которые они предлагают.

## Модуль Random

Модуль Random в Python является встроенным модулем, который предоставляет различные функции для генерации случайных чисел. Он позволяет выполнять операции, связанные со случайностью, такие как генерация случайных чисел, перемешивание последовательностей, выбор случайных элементов и другое. Подробнее о модуле Random читайте на нашей [странице](/learn/modules/popular_modules/random.md).

## Модуль Requests

Модуль Requests является популярной библиотекой Python, используемой для выполнения HTTP-запросов. Он предоставляет простой и элегантный способ отправки HTTP/1.1 запросов с использованием Python. Подробнее об этом модуле читайте в нашем [руководстве](/learn/modules/popular_modules/requests.md).

## Модуль Math

Модуль math в Python предоставляет набор предопределенных математических функций. Он состоит из различных математических операций, таких как тригонометрические, логарифмические и другие математические функции. Модуль math в Python можно использовать, импортировав его в программу с помощью ключевого слова `import`.

### Как Импортировать Модуль Math в Python

```python
import math
```

После импорта модуля [math](https://docs.python.org/3/library/math.html), ко всем его функциям можно обращаться, используя префикс `math`.

```python
import math

number = 25
sqrt = math.sqrt(number)

print(f"Square root of {number} is {sqrt}")

# Output:
# Square root of 25 is 5.0
```

```python
import math

number = 5
factorial = math.factorial(number)

print(f"Factorial of {number} is {factorial}")

# Output:
# Factorial of 5 is 120
```

Таким образом, модуль math в Python может использоваться для выполнения математических операций путем импортирования модуля и ссылки на его функции.

## Модуль Logging

Модуль [logging](https://docs.python.org/3/library/logging.html) в Python является встроенным модулем, который позволяет разработчикам записывать сообщения в программе. Он полезен для отладки, измерения производительности и отчетности об ошибках. Модуль `logging` в Python предоставляет различные уровни логирования, включая `DEBUG`, `INFO`, `WARNING`, `ERROR` и `CRITICAL`.

```python
import logging

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logging.debug('Debugging Information')
logging.info('Informational Message')
logging.warning('Warning Message')
logging.error('Error Message')
logging.critical('Critical Error Message')
```

В приведенном выше примере кода мы импортировали модуль `logging` в Python и настроили базовую конфигурацию `logging` с использованием метода `basicConfig()`. Мы определили уровень логирования как `DEBUG` и указали пользовательский `format` для сообщений журнала. Затем мы зарегистрировали сообщения различных уровней (debug, info, warning, error и critical) с использованием методов `debug()`, `info()`, `warning()`, `error()` и `critical()` соответственно.

```python
import logging

logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')

file_handler = logging.FileHandler('my_log.log')
file_handler.setLevel(logging.DEBUG)
file_handler.setFormatter(formatter)

stream_handler = logging.StreamHandler()
stream_handler.setLevel(logging.DEBUG)
stream_handler.setFormatter(formatter)

logger.addHandler(file_handler)
logger.addHandler(stream_handler)

logger.debug('Debugging Information')
logger.info('Informational Message')
logger.warning('Warning Message')
logger.error('Error Message')
logger.critical('Critical Error Message')
```

В приведенном выше примере кода мы создали экземпляр `logger` с использованием метода `getLogger()` и установили его уровень в `DEBUG`. Также мы определили пользовательский `formatter` для сообщений журнала. К `logger` мы добавили два обработчика - обработчик файла для записи сообщений журнала в файл (`my_log.log`) и обработчик потока для вывода сообщений журнала в консоль. Уровень логирования [logging](https://docs.python.org/3/library/logging.html) для обоих обработчиков мы установили в `DEBUG`. Затем мы зарегистрировали сообщения различного уровня (debug, info, warning, error и critical) с использованием методов `logger` (`debug()`, `info()`, `warning()`, `error()` и `critical()`).

В итоге, модуль `logging` в Python - мощный инструмент для отладки и мониторинга программ. С его различными уровнями логирования и гибкими настройками конфигурации он позволяет разработчикам записывать сообщения различных уровней и сохранять их в различных форматах, например, в файлах или стандартном выводе.

## Графические Модули в Python

Графическая библиотека Python предоставляет простой способ создания и управления графикой в Python. Она может использоваться как для создания двухмерной, так и трехмерной графики. Среди популярных графических библиотек Python можно выделить Matplotlib, Seaborn, Plotly и Bokeh.

Matplotlib - широко используемая графическая библиотека Python, позволяющая создавать разнообразные 2D и 3D графики. Вот пример того, как с помощью Matplotlib построить линейный график:

```python
import matplotlib.pyplot as plt

x = [1, 2, 3, 4]
y = [10, 20, 15, 25]

plt.plot(x, y)
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Line Graph')

plt.show()
```

Это создаст простой линейный график с обозначением оси `X-axis` как `X-axis` и оси `Y-axis` как `Y-axis`.

Plotly — это еще одна популярная библиотека Python для создания графики, которая может создавать интерактивные визуализации. Вот пример того, как создать интерактивную точечную диаграмму с использованием Plotly:

```python
import plotly.express as px
import pandas as pd

df = pd.read_csv('data.csv')

fig = px.scatter(df, x='X', y='Y', color='Category', size='Size', hover_data=['X', 'Y'])

fig.show()
```

Это создаст интерактивную точечную диаграмму, где точки окрашены в зависимости от 'Категории' и размера в зависимости от 'Размера'. При наведении курсора на точку будет отображаться координата точки.

В заключение, библиотеки графики Python предоставляют разнообразие инструментов визуализации для создания и манипулирования графикой в Python. Среди популярных библиотек Matplotlib, Seaborn, Plotly и Bokeh.
