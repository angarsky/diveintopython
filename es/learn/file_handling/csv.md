> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/csv

Los archivos CSV (Valores Separados por Comas) son uno de los formatos de datos más comunes utilizados en ciencia de datos, aprendizaje automático y analítica. Python es un lenguaje de programación poderoso que provee varias herramientas y bibliotecas para trabajar con archivos [CSV](https://en.wikipedia.org/wiki/Comma-separated_values). En este artículo, exploraremos los conceptos básicos de trabajar con archivos CSV en Python, incluyendo leer, escribir y manipular datos. También cubriremos algunos temas avanzados, como manejar archivos CSV grandes, tratar con datos faltantes y realizar operaciones en datos CSV usando las bibliotecas NumPy y Pandas.

## Abrir Archivo CSV y Leer Datos con Python

Para abrir y leer un archivo CSV en Python, puedes usar el módulo integrado [csv](https://docs.python.org/3/library/csv.html).

```python
import csv

with open('example.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)
```

En este ejemplo, utilizamos la función `csv.reader()` para leer el contenido del archivo CSV llamado `example.csv`. Luego recorremos las filas del archivo usando un bucle `for` e `imprimimos` cada `row` en la consola.

```python
import csv

with open('example.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Name', 'Age', 'Gender'])
    writer.writerow(['John', '25', 'Male'])
    writer.writerow(['Jane', '30', 'Female'])
```

En este ejemplo, utilizamos la función `csv.writer()` para escribir `data` en un archivo CSV llamado `example.csv`. Creamos un nuevo archivo con el modo `w` y especificamos `newline=''` para evitar saltos de línea extra. Luego utilizamos la función `writerow()` para escribir cada `row` de `data` en el archivo.

Al utilizar estos ejemplos de código, puedes proporcionar fácilmente **lectura de CSV** o **carga de CSV**.

## Cómo Guardar en un Archivo CSV en Python

Guardar datos en un archivo CSV es una tarea común en Python. Los archivos CSV son fáciles de leer y se pueden abrir fácilmente en cualquier software de hoja de cálculo. En Python, podemos usar el módulo `csv` para escribir en un archivo CSV. Aquí hay algunos ejemplos de cómo guardar en un archivo CSV en Python.

Este ejemplo demuestra cómo escribir una simple lista de valores en un archivo CSV.

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

En el código anterior:

1. Importamos el módulo `csv`.
2. Creamos una lista simple de valores llamada `data`.
3. Abrimos el archivo CSV en modo de escritura usando la función `open()` y especificamos el `mode` como `'w'`.
4. Creamos un objeto `csv.writer` y pasamos el objeto de archivo al escritor.
5. Utilizamos el método `writerows()` para escribir los datos en el archivo CSV.

Este ejemplo muestra cómo escribir un diccionario de valores en un archivo CSV.

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

En el código anterior:

1. Importamos el módulo `csv`.
2. Creamos una lista de diccionarios llamada `data`.
3. 3. Abrimos el fichero CSV en modo escritura utilizando la función `open()` y especificamos el `mode` como `'w'`. También establecemos `newline` como `''` para evitar que se inserten filas en blanco entre cada fila.
4. 4. Creamos un objeto `csv.DictWriter` y le pasamos el objeto fichero al `writer`. También proporcionamos los `fieldnames` como una lista.
5. Usamos el método `writeheader()` para escribir los `fieldnames` en el fichero CSV.
6. 6. Usamos el método `writerow()` para escribir cada `row` de datos en el fichero CSV.

Usando el módulo `csv` de Python, puedes guardar fácilmente tus datos en un archivo CSV. Estos ejemplos pueden ser modificados para satisfacer sus necesidades específicas.  
  
## Cómo convertir JSON a CSV con Python

Convertir `datos` [json](https://docs.python.org/3/library/json.html) a formato CSV es una tarea común en el procesamiento de `datos`. Python ofrece una forma fácil y eficiente de convertir `datos` JSON a formato CSV utilizando módulos integrados como `json` y `csv`.

### Uso de los módulos JSON y CSV

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

### Usando la biblioteca Pandas

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

En ambos ejemplos, cargamos los datos JSON desde un archivo, los convertimos en un objeto Python, y luego los escribimos en un archivo CSV utilizando el módulo `csv` o la librería [pandas](https://pypi.org/project/pandas/). Con estos métodos, puedes convertir fácilmente datos JSON a formato CSV en Python.  
  
## Leer CSV con Pandas

Pandas es una potente librería de análisis de datos de código abierto para Python que ofrece estructuras de datos fáciles de usar para la manipulación y el análisis de datos. En `pandas`, leer y manipular archivos CSV es simple y eficiente.

### Cargar CSV con Pandas

Para cargar un fichero CSV con Pandas, usamos `read_csv()`. Veamos como podemos cargar un fichero CSV usando Pandas:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
print(df.head())
```

### Análisis de archivo CSV usando Pandas

Después de cargar el archivo CSV, necesitamos analizar los datos para extraer la información requerida. Pandas ofrece una gran cantidad de operaciones para analizar y manipular datos CSV. Aquí hay un ejemplo de cómo analizar datos usando Pandas:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
df = df[df['column_name'] == 'required_value']
print(df.head())
```

### Escribir DataFrame a CSV usando Pandas

Después de procesar los datos CSV, es posible que queramos escribir el nuevo DataFrame en un nuevo archivo CSV. Pandas proporciona una forma fácil de escribir el DataFrame en archivos CSV usando `to_csv()`. Aquí hay un ejemplo:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
# Perform operations to extract the required data
new_df = df[df['column_name'] == 'required_value']
# Write the new DataFrame to a new CSV file
new_df.to_csv('new_file.csv', index=False)
```

## Exportar a CSV

Exportar `data` a CSV (Valores Separados por Comas) es una tarea común en el procesamiento de `data`. Aquí hay dos maneras de exportar `data` a CSV en Python:

### Usando el módulo csv

El módulo csv es un módulo incorporado en Python que permite la lectura y escritura de archivos CSV. Aquí hay un ejemplo de cómo exportar un diccionario a un archivo CSV usando el módulo `csv`:

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

### Usando el módulo pandas

Aquí hay un ejemplo de cómo exportar un DataFrame de pandas a un archivo CSV.

```python
import pandas as pd

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}
df = pd.DataFrame(data)

df.to_csv('data.csv', index=False)
```

Este código crea un archivo CSV con el mismo formato que el ejemplo anterior. El parámetro `index=False` se utiliza para eliminar la columna de índice de fila por defecto del archivo CSV.

## Leer CSV Línea por Línea

Para leer un archivo CSV en Python línea por línea, podemos usar el `csv` incorporado.

### Leyendo CSV Línea por Línea

```python
import csv

with open('example.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        print(row)
```

En el ejemplo anterior, abrimos el archivo CSV `example.csv` y lo asignamos a la variable `csvfile`. Luego creamos un objeto `csv.reader`, sobre el cual podemos iterar línea por línea usando un bucle `for`. Cada `row` en el bucle está representada como una lista de valores.

### Escribiendo en Nueva Línea en CSV

```python
import csv

with open('example.csv', mode='a', newline='') as csvfile:
    writer = csv.writer(csvfile)
    row = ['value1', 'value2', 'value3']
    writer.writerow(row)
```

En el ejemplo anterior, abrimos el archivo CSV `example.csv` en modo de 'append' (`mode`) y lo asignamos a la variable `csvfile`. Luego creamos un objeto `csv.writer`, que podemos usar para escribir una nueva línea en el archivo CSV utilizando el método `writerow()`. La variable `row` es una lista de valores para escribir en la nueva línea del archivo CSV.

Usando estos ejemplos simples, podemos leer y escribir fácilmente en archivos CSV línea por línea en Python.

## Cómo Leer una Columna CSV en Python

Para leer una columna CSV en Python, puedes usar la función `csv.DictReader()` para leer archivos CSV como diccionarios. Aquí hay dos ejemplos:

```python
import csv

with open('example.csv') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row['column_name'])
```

En este ejemplo de código, primero `import` el módulo `csv`. Luego utilizamos la sentencia `with` para abrir el archivo CSV `example.csv`. Creamos un objeto `DictReader` llamado `reader` usando el archivo CSV `file`. Luego iteramos a través de cada `fila` en `reader` e `imprimimos` el valor de `column_name` en cada fila.

```python
import pandas as pd

data = pd.read_csv('example.csv')
column_data = data['column_name']
print(column_data)
```

En este ejemplo de código, primero `import` el módulo `pandas` y creamos un `DataFrame` llamado `data` usando la función `read_csv()` y pasando el nombre del archivo CSV `example.csv`. Luego, asignamos los datos en `column_name` a una nueva variable `column_data`. Finalmente, hacemos `print` de `column_data`.
