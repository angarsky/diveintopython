> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/excel

Excel в Python является популярной темой среди аналитиков данных и профессионалов, предлагая мощное сочетание двух наиболее важных инструментов для манипуляции и анализа данных. Гибкий язык программирования Python можно использовать для автоматизации повторяющихся задач [Excel](https://en.wikipedia.org/wiki/Microsoft_Excel), манипуляции с сложными наборами данных и создания информативных визуализаций данных. Интегрируя Python с Excel, пользователи могут использовать преимущества обеих программ для повышения производительности, оптимизации рабочих процессов и получения более глубоких инсайтов из своих данных. В этой статье мы исследуем преимущества использования Excel в Python и как это может улучшить ваши возможности анализа данных.

## Как Считать Файл Excel в Python

Python - отличный язык для работы с Excel. С помощью библиотеки Python Excel можно легко манипулировать файлами Excel, анализировать данные и автоматизировать задачи. Вот два примера использования Python с Excel:

### Чтение и Запись Файлов Excel с Помощью `pandas`

Для чтения и записи файлов Excel с помощью Python можно использовать библиотеку [`pandas`](https://pypi.org/project/pandas/). Для установки используйте команду `pip install "pandas[excel]"`. Вот фрагмент кода, который считывает файл Excel и сохраняет его как новый файл:

```python
import pandas as pd

df = pd.read_excel('input_file.xlsx')
df['new_column'] = df['old_column'] * 2
df.to_excel('output_file.xlsx', index=False)
```

В этом примере мы используем функцию `read_excel()` для чтения входного файла, затем добавляем новую колонку и умножаем старую колонку на `2`, и, наконец, сохраняем результат в новом выходном файле с помощью функции `to_excel()`.

### Манипулирование Файлами Excel с Помощью Openpyxl

Если вам нужен больший контроль над вашими файлами Excel, вы можете использовать библиотеку `OpenPyXL`. Для установки используйте `pip install openpyxl`. Вот пример того, как добавить новый лист в существующую книгу:

```python
from openpyxl import load_workbook, Workbook

wb = load_workbook('existing_workbook.xlsx')
new_ws = wb.create_sheet('New Worksheet')
new_ws['A1'] = 'Hello, world!'
wb.save('existing_workbook.xlsx')
```

В этом примере мы загружаем существующую рабочую книгу с помощью `load_workbook()`, создаем новый рабочий лист с помощью `create_sheet()`, добавляем значение в ячейку `A1` и, наконец, сохраняем изменения с помощью `save()`.

### Чтение и Запись Файлов Excel с Помощью `xlrd`

[Xlrd](https://pypi.org/project/xlrd/1.1.0/) - это библиотека для чтения данных и информации о форматировании из файлов Excel в историческом формате `.xls`. Вот пример кода для чтения файла Excel с использованием `xlrd`:

```python
import xlrd

# specify path and filename of Excel file
file_path = 'path/to/file/excel_file.xls'

# open workbook
workbook = xlrd.open_workbook(file_path)

# get sheet by name
worksheet = workbook.sheet_by_name('Sheet1')

# read data from cells
cell_value = worksheet.cell_value(0, 0)
```

В приведенном выше примере библиотека `xlrd` используется для открытия файла Excel. Функция `workbook.sheet_by_name` используется для доступа к листу с именем 'Sheet1'. Функция `worksheet.cell_value` используется для чтения данных из ячеек листа. В примере читается значение ячейки A1.

## Создание Нового Листа Excel в Python

Если вы хотите создать новый лист Excel в Python, вы можете использовать модуль `openpyxl`. Этот модуль позволяет создавать, читать и изменять файлы Excel.

### Пример Кода 1: `openpyxl`

```python
import openpyxl

# Create a new Excel workbook
workbook = openpyxl.Workbook()

# Activate the first sheet
sheet = workbook.active

# Rename the first sheet
sheet.title = "New Sheet"

# Save the workbook
workbook.save("new_excel_sheet.xlsx")
```

### Пример Кода 2: `xlwt`

```python
import xlwt

# Create a new workbook
workbook = xlwt.Workbook()

# Add a new sheet to the workbook
sheet = workbook.add_sheet("New Sheet")

# Save the workbook
workbook.save("new_excel_sheet.xls")
```

Оба этих примера создадут новый лист Excel с названием `New Sheet` и сохранят его в файл. Вы можете изменить код для создания листов с другими названиями или добавления данных в листы.

## Открыть Excel в Python из Другой Директории

Чтобы открыть файл Excel из другой директории в Python, можно использовать модуль `os` Python и установить рабочую директорию в желаемую директорию. Затем используйте библиотеку `pandas` для чтения файла Excel.

```python
import os
import pandas as pd

### set working directory to desired directory

os.chdir('/path/to/directory')

### read Excel file using pandas

df = pd.read_excel('excel_file.xlsx')
```

```python
import pandas as pd

### read Excel file from a specific directory using pandas

df = pd.read_excel('/path/to/directory/excel_file.xlsx')
```

В обоих примерах функция `pd.read_excel()` используется для чтения файла Excel. Первый пример использует `os.chdir()`, чтобы изменить рабочий каталог на желаемый перед чтением файла. Второй пример сразу же читает файл Excel из определенного каталога.

Используя эти коды, можно легко открыть файл Excel из другого каталога в Python.
