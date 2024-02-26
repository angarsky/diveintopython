> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/csv

Файлы CSV (Comma Separated Values) являются одним из наиболее распространенных форматов данных в науке о данных, машинном обучении и аналитике. Python - мощный язык программирования, который предоставляет несколько инструментов и библиотек для работы с файлами [CSV](https://en.wikipedia.org/wiki/Comma-separated_values). В этой статье мы рассмотрим основы работы с файлами CSV в Python, включая чтение, запись и манипулирование данными. Также будут рассмотрены некоторые продвинутые темы, такие как работа с большими файлами CSV, обработка отсутствующих данных и выполнение операций над данными CSV с использованием библиотек NumPy и Pandas.

## Открытие Файла CSV и Чтение Данных с Помощью Python

Для открытия и чтения файла CSV в Python вы можете использовать встроенный модуль [csv](https://docs.python.org/3/library/csv.html).

```python
import csv

with open('example.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)
```

В этом примере мы используем функцию `csv.reader()` для чтения содержимого CSV-файла с именем `example.csv`. Затем мы проходимся по строкам файла, используя цикл `for`, и выводим каждую `row` в консоль.

```python
import csv

with open('example.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Name', 'Age', 'Gender'])
    writer.writerow(['John', '25', 'Male'])
    writer.writerow(['Jane', '30', 'Female'])
```

В этом примере мы используем функцию `csv.writer()` для записи `data` в файл CSV с именем `example.csv`. Мы создаем новый файл в режиме `w` и указываем `newline=''`, чтобы избежать лишних разрывов строк. Затем мы используем функцию `writerow()`, чтобы записать каждую `row` из `data` в файл.

Используя эти примеры кода, вы можете легко обеспечить **чтение CSV** или **загрузку CSV**.

## Как Сохранить в Файл CSV на Python

Сохранение данных в файле CSV - обычная задача в Python. Файлы CSV легко читать и могут быть легко открыты в любом программном обеспечении для работы с электронными таблицами. В Python мы можем использовать модуль `csv` для записи в файл CSV. Вот несколько примеров того, как сохранить в файл CSV на Python.

Этот пример демонстрирует, как записать простой список значений в файл CSV.

```python
import csv

# Example data
data = [['Name', 'Age', 'Gender'], ['Alice', '25', 'Female'], ['Bob', '30', 'Male'], ['Charlie', '35', 'Male']]

# Open csv file in write mode
with open('example.csv', mode='w') as file:
    writer = csv.writer(file)
    # Write data to csv file
    writer.writerows(data)
```

В приведенном выше коде:

1. Мы `import` модуль `csv`.
2. Мы создаем простой список значений под названием `data`.
3. Мы открываем CSV-файл в режиме записи, используя функцию `open()` и указываем `mode` как `'w'`.
4. Мы создаем объект `csv.writer` и передаем ему файловый объект.
5. Мы используем метод `writerows()` для записи данных в CSV-файл.

Этот пример показывает, как записать словарь значений в CSV-файл.

```python
import csv

# Example data
data = [{'Name': 'Alice', 'Age': '25', 'Gender': 'Female'},
        {'Name': 'Bob', 'Age': '30', 'Gender': 'Male'},
        {'Name': 'Charlie', 'Age': '35', 'Gender': 'Male'}]

# Open csv file in write mode
with open('example.csv', mode='w', newline='') as file:
    fieldnames = ['Name', 'Age', 'Gender']
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    # Write data to csv file
    for item in data:
        writer.writerow(item)
```

В приведенном выше коде:

1. Мы `import` модуль `csv`.
2. Мы создаем список словарей под названием `data`.
3. Мы открываем CSV-файл в режиме записи, используя функцию `open()` и указываем `mode` как `'w'`. Также мы устанавливаем `newline` в `''`, чтобы предотвратить вставку пустых строк между каждой строкой.
4. Мы создаем объект `csv.DictWriter` и передаем ему файловый объект в `writer`. Также мы предоставляем `fieldnames` в виде списка.
5. Мы используем метод `writeheader()` для записи `fieldnames` в CSV-файл.
6. Мы используем метод `writerow()` для записи каждой `row` данных в CSV-файл.

Используя модуль `csv` в Python, вы можете легко сохранить свои данные в CSV-файл. Примеры могут быть изменены, чтобы соответствовать вашим конкретным требованиям.

## Как конвертировать JSON в CSV с Помощью Python

Конвертация [json](https://docs.python.org/3/library/json.html) `data` в формат CSV является обычной задачей при обработке `data`. Python предлагает простой и эффективный способ конвертации данных JSON в формат CSV, используя встроенные модули, такие как `json` и `csv`.

### Использование модулей JSON и CSV

```python
import json
import csv

# Load JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Open CSV file for writing
with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)

    # Write header row
    writer.writerow(data[0].keys())

    # Write data rows
    for item in data:
        writer.writerow(item.values())
```

### Использование Библиотеки Pandas

```python
import pandas as pd

# Load JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Convert to dataframe
df = pd.DataFrame(data)

# Write to CSV file
df.to_csv('data.csv', index=False)
```

В обоих этих примерах мы загружаем данные JSON из файла, преобразуем их в объект Python, а затем записываем в файл CSV с использованием модуля `csv` или библиотеки [pandas](https://pypi.org/project/pandas/). С помощью этих методов вы можете легко конвертировать данные JSON в формат CSV на Python.

## Чтение CSV с помощью Pandas

Pandas - это мощная библиотека для анализа данных с открытым исходным кодом для Python, которая предлагает простые в использовании структуры данных для манипуляции и анализа данных. В `pandas` чтение и манипулирование файлами CSV происходит просто и эффективно.

### Загрузка CSV с помощью Pandas

Для загрузки файла CSV с Pandas мы используем `read_csv()`. Давайте посмотрим, как мы можем загрузить файл CSV с использованием Pandas:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
print(df.head())
```

### Разбор Csv-Файла с Помощью Pandas

После загрузки CSV-файла нам нужно разобрать данные, чтобы извлечь необходимую информацию. Pandas предоставляет множество операций для разбора и манипуляции с данными CSV. Вот пример того, как разобрать данные с использованием Pandas:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
df = df[df['column_name'] == 'required_value']
print(df.head())
```

### Запись Dataframe в CSV с Использованием Pandas

После обработки данных CSV мы можем захотеть записать новый DataFrame в новый CSV-файл. Pandas предоставляет простой способ записи DataFrame в CSV-файлы используя `to_csv()`. Вот пример:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
# Perform operations to extract the required data
new_df = df[df['column_name'] == 'required_value']
# Write the new DataFrame to a new CSV file
new_df.to_csv('new_file.csv', index=False)
```

## Экспорт в CSV

Экспорт `data` в CSV (значения, разделённые запятыми), является обычной задачей при обработке `data`. Вот два способа экспорта `data` в CSV на Python:

### Использование Модуля CSV

Модуль csv - это встроенный модуль в Python, который позволяет читать и записывать файлы CSV. Вот пример экспорта словаря в файл CSV с использованием модуля `csv`:

```python
import csv

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}

with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(data.keys())
    writer.writerows(zip(*data.values()))

# This code creates a CSV file with the following format:
# 
# 
# name,age
# John,20
# Jane,25
# Adam,30
```

### Использование Модуля Pandas

Вот пример экспорта pandas DataFrame в файл CSV.

```python
import pandas as pd

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}
df = pd.DataFrame(data)

df.to_csv('data.csv', index=False)
```

Этот код создает CSV-файл с таким же форматом, как в предыдущем примере. Параметр `index=False` используется для удаления столбца индекса строки по умолчанию из CSV-файла.

## Чтение CSV Файла Построчно

Для построчного чтения CSV-файла в Python мы можем использовать встроенный модуль `csv`.

### Построчное Чтение CSV Файла

```python
import csv

with open('example.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        print(row)
```

В приведенном выше примере мы открываем файл CSV `example.csv` и присваиваем его переменной `csvfile`. Затем мы создаем объект `csv.reader`, по которому мы можем итерировать построчно, используя цикл `for`. Каждая `row` в цикле представлена как список значений.

### Запись в Новую Строку в CSV

```python
import csv

with open('example.csv', mode='a', newline='') as csvfile:
    writer = csv.writer(csvfile)
    row = ['value1', 'value2', 'value3']
    writer.writerow(row)
```

В приведенном выше примере мы открываем CSV файл `example.csv` в режиме 'добавления' (`append`) и присваиваем его переменной `csvfile`. Затем мы создаем объект `csv.writer`, который мы можем использовать для записи новой строки в CSV файл с помощью метода `writerow()`. Переменная `row` - это список значений для записи в новую строку в CSV файле.

Используя эти простые примеры, мы можем легко читать и записывать в CSV файлы построчно на Python.

## Как Прочитать Один Столбец CSV на Python

Чтобы прочитать один столбец CSV на Python, вы можете использовать функцию `csv.DictReader()` для чтения CSV файлов в виде словарей. Вот два примера:

```python
import csv

with open('example.csv') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row['column_name'])
```

В этом примере кода мы сначала `import` модуль `csv`. Затем мы используем оператор `with` для открытия CSV файла `example.csv`. Создаем объект `DictReader` под названием `reader`, используя файл CSV `file`. Затем мы итерируем через каждую `row` в `reader` и `print` значение `column_name` в каждой строке.

```python
import pandas as pd

data = pd.read_csv('example.csv')
column_data = data['column_name']
print(column_data)
```

В этом примере кода мы сначала `import` модуль `pandas` и создаем `DataFrame` с названием `data`, используя функцию `read_csv()` и передавая имя файла CSV `example.csv`. Затем мы присваиваем данные в `column_name` новой переменной `column_data`. В конце мы `print` `column_data`.
