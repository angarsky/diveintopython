> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/excel

Sobresalir en Python es un tema de tendencia entre analistas de datos y profesionales, proporcionando una poderosa combinación de dos de las herramientas más esenciales para la manipulación y análisis de datos. El lenguaje de programación flexible de Python puede usarse para automatizar tareas repetitivas de [Excel](https://en.wikipedia.org/wiki/Microsoft_Excel), manipular conjuntos de datos complejos y crear visualizaciones de datos perspicaces. Al integrar Python con Excel, los usuarios pueden aprovechar las fortalezas de ambas aplicaciones para mejorar la productividad, optimizar flujos de trabajo, y obtener perspectivas más profundas sobre sus datos. En este artículo, exploraremos los beneficios de Excel en Python y cómo puede mejorar tus capacidades de análisis de datos.
  
## Cómo Leer un Archivo Excel en Python

Python es un excelente lenguaje para trabajar con Excel. Con la ayuda de la biblioteca de Excel de Python, puedes manipular fácilmente archivos Excel, analizar datos y automatizar tareas. Aquí hay dos ejemplos de cómo usar Python con Excel:

### Leyendo y Escribiendo Archivos Excel con `pandas`

Para leer y escribir archivos Excel con Python, puedes usar la biblioteca [`pandas`](https://pypi.org/project/pandas/). Para instalarla usa `pip install "pandas[excel]"`. Aquí hay un fragmento de código que lee un archivo Excel y lo guarda como un nuevo archivo:

```python
import pandas as pd

df = pd.read_excel('input_file.xlsx')
df['new_column'] = df['old_column'] * 2
df.to_excel('output_file.xlsx', index=False)
```

En este ejemplo, estamos usando la función `read_excel()` para leer un archivo de entrada, luego agregando una nueva columna y multiplicando la columna antigua por `2`, y finalmente guardando el resultado en un nuevo archivo de salida con la función `to_excel()`.

### Manipulando archivos Excel con OpenPyXL

Si necesitas más control sobre tus archivos Excel, puedes usar la librería `OpenPyXL`. Para instalarla usa `pip install openpyxl`. Aquí tienes un ejemplo de cómo agregar una nueva hoja de cálculo a un libro de trabajo existente:

```python
from openpyxl import load_workbook, Workbook

wb = load_workbook('existing_workbook.xlsx')
new_ws = wb.create_sheet('New Worksheet')
new_ws['A1'] = 'Hello, world!'
wb.save('existing_workbook.xlsx')
```

En este ejemplo, estamos cargando un libro de trabajo existente con `load_workbook()`, creando una nueva hoja de cálculo con `create_sheet()`, añadiendo un valor a la celda `A1` y finalmente guardando los cambios con `save()`.

### Lectura y Escritura de Archivos Excel con `xlrd`

[Xlrd](https://pypi.org/project/xlrd/1.0/) es una biblioteca para leer datos e información de formato de archivos Excel en el histórico formato `.xls`. Aquí hay un fragmento de código de ejemplo para leer un archivo Excel usando `xlrd`:

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

En el ejemplo anterior, se utiliza la biblioteca `xlrd` para abrir el archivo de Excel. La función `workbook.sheet_by_name` se utiliza para acceder a la hoja llamada 'Sheet1'. La función `worksheet.cell_value` se utiliza para leer datos de las celdas de la hoja. En el ejemplo, se lee el valor de la celda A1.

## Crear una Nueva Hoja de Excel en Python

Si quieres crear una nueva hoja de Excel en Python, puedes usar el módulo `openpyxl`. Este módulo te permite crear, leer y modificar archivos de Excel.

### Ejemplo de Código 1: `openpyxl`

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

### Ejemplo de Código 2: `xlwt`

```python
import xlwt

# Create a new workbook
workbook = xlwt.Workbook()

# Add a new sheet to the workbook
sheet = workbook.add_sheet("New Sheet")

# Save the workbook
workbook.save("new_excel_sheet.xls")
```

Ambos ejemplos crearán una nueva hoja de Excel con el nombre `New Sheet` y la guardarán en un archivo. Puedes modificar el código para crear hojas con diferentes nombres o agregar datos a las hojas.

## Abrir Excel en Python en Diferente Directorio

Para abrir un archivo Excel desde un directorio diferente en Python, se puede usar el módulo `os` de Python y establecer el directorio de trabajo en el directorio deseado. Luego, usa la biblioteca `pandas` para leer el archivo Excel.

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

En ambos ejemplos, la función `pd.read_excel()` se utiliza para leer el archivo Excel. El primer ejemplo usa `os.chdir()` para cambiar el directorio de trabajo al directorio deseado antes de leer el archivo. El segundo ejemplo lee directamente el archivo Excel desde un directorio específico.

Usando estos códigos, uno puede abrir fácilmente un archivo Excel desde un directorio diferente en Python.
