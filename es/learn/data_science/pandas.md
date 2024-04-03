> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/data-science/pandas

Pandas es una biblioteca de código abierto y poderosa en Python, diseñada específicamente para la manipulación y análisis de datos. Proporciona a desarrolladores y científicos de datos estructuras de datos flexibles y versátiles de alto nivel llamadas DataFrame y Series, permitiéndoles trabajar de manera eficiente con datos estructurados. Desarrollado por Wes McKinney, pandas se presenta como una herramienta fundamental en el campo de la ciencia de datos y análisis, simplificando enormemente el proceso de limpieza, exploración y visualización de datos. Ya sea que estés lidiando con grandes conjuntos de datos de diversas fuentes o realizando complejas transformaciones y análisis de datos, pandas ofrece una amplia gama de funcionalidades que atienden a un amplio espectro de operaciones de datos, convirtiéndolo en una herramienta indispensable en el ecosistema de programación de Python para análisis de datos y tareas relacionadas.

## ¿Qué es `pandas` en Python

Pandas incluye varias características clave que lo hacen increíblemente poderoso para el análisis de datos:

1. Objeto Dataframe para la manipulación de datos con indexación integrada.
2. Herramientas para leer y escribir datos entre estructuras de datos en memoria y diferentes formatos de archivo.
3. Alineación de datos y manejo integrado de datos faltantes.
4. Reorganización y pivoteo de conjuntos de datos.
5. Cortes basados en etiquetas, indexación y subconjunto de grandes conjuntos de datos.
6. Inserción y eliminación de columnas en la estructura de datos.
7. Motor group by que permite operaciones de dividir-aplicar-combinar en conjuntos de datos.
8. Fusión y unión de alta performance de conjuntos de datos.

### Métodos `read_csv()` y `to_csv()`

Una de las razones por las cuales la biblioteca [pandas](https://pypi.org/project/pandas/) es altamente considerada en la comunidad de ciencia de datos es su capacidad para leer y escribir datos fácilmente. Esto incluye trabajar con archivos CSV, un formato de datos común en el análisis de datos. Aquí hay ejemplos simples que ilustran cómo leer datos de un archivo CSV en un DataFrame de `pandas`, y cómo escribir estos datos de nuevo a un archivo CSV.

> Nota: Es importante `importar` la biblioteca `pandas` antes de ejecutar estos fragmentos de código. Esto se hace típicamente con la línea `import pandas as pd`.

### Ejemplo: Leyendo datos desde un archivo CSV

```python
import pandas as pd

# Load data from a CSV file into a DataFrame
data = pd.read_csv('example.csv')
print(data.head())
```

### Ejemplo: Escribiendo datos en un archivo CSV

```python
# Assuming 'data' is a DataFrame that you have previously created and manipulated
data.to_csv('modified_example.csv', index=False)
```

### Trabajando con DataFrames

En el núcleo de la biblioteca `pandas` se encuentra el objeto DataFrame, que puede considerarse como una tabla de datos relacional, con filas y columnas. Así es cómo puedes crear un DataFrame desde cero e inspeccionar su contenido.

### Ejemplo: Crear DataFrame()`

```python3
import pandas as pd
# Creating a DataFrame from a dictionary
df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': ['a', 'b', 'c']
})
print(df)
```

Salida:

```python

   A  B
0  1  a
1  2  b
2  3  c
```

## Cómo instalar `pandas` en Python

Para comenzar, necesitas instalar Pandas. Esto se puede hacer usando pip o conda, dependiendo de tu entorno de Python.

### Usando pip

Si estás usando pip, abre tu terminal o símbolo del sistema y ejecuta el siguiente comando:

```python
pip install pandas
```

### Uso de conda

Para aquellos que prefieren Conda, el comando difiere ligeramente:

```python
conda install pandas
```

> Nota: Asegúrate de que tu conexión a internet esté activa, ya que estos comandos descargan `pandas` de los respectivos repositorios.

### Importar Pandas

Una vez instalado, puedes `importar` `pandas` en tu script de Python o sesión interactiva para confirmar que está listo para usar. Aquí están los pasos básicos:

1. Abre tu IDE de Python o la terminal.
2. Escribe la sentencia `import` para incorporar `pandas` a tu espacio de nombres.
3. Opcionalmente, es común asignar un alias a `pandas` como `pd` por conveniencia.

Así es como lo haces:

```python
import pandas as pd
```

Esta simple línea de código hace toda la funcionalidad de `pandas` disponible en tu script como `pd`.

### Resumen

Instalar `pandas` en Python enriquece tu caja de herramientas con una librería robusta para la manipulación y análisis de datos. Ya sea usando pip o conda, la instalación es amigable y rápida. Recuerda `importar` `pandas` con `import pandas as pd` al principio de tu script para acceder a sus funcionalidades. Empezar con tareas simples como leer y guardar en archivos CSV puede servir como una sólida base para tareas más complejas de análisis de datos usando pandas.

¡Feliz análisis de datos!

## Ejemplos de Uso Básico de Pandas

Con `pandas` exitosamente instalado e importado, ahora estás listo para sumergirte en algunas tareas básicas de manipulación de datos.

### Método `read_csv()` para Cargar Datos

Cargar datos desde un archivo CSV es uno de los pasos iniciales más comunes en el análisis de datos. Aquí te mostramos cómo puedes usar `pandas` para lograr esto:

```python
import pandas as pd

# Load data from a CSV file
df = pd.read_csv('path_to_your_file.csv')

# Display the first few rows of the DataFrame
print(df.head())
```

### Método `to_csv()` para Guardar Datos

Después de manipular o analizar tus datos, es posible que quieras guardar los resultados. Pandas también facilita esto:

```python
import pandas as pd

# Assuming 'df' is your DataFrame variable
df.to_csv('path_to_save_file.csv', index=False)
```

> Nota: Establecer `index=False` evita que `pandas` escriba los índices de filas en el archivo CSV.

### Método `head()`

Para inspeccionar rápidamente las primeras filas de un DataFrame, puedes usar el método `head()`. Esto es extremadamente útil para tener una idea de los datos sin mostrar todo el conjunto de datos.

```python
# Displaying the first 3 rows of the DataFrame
print(df.head(3))
```

La salida es la misma que la creación del dataframe ya que el dataframe contiene solo 3 filas.

> Nota: Explorar la documentación de `pandas` en Python puede proporcionar ideas sobre funcionalidades y métodos más avanzados disponibles en la biblioteca `pandas`.

## Concepto de DataFrame en `pandas`

En el mundo del análisis y manipulación de datos usando Python, los dataframes de `pandas` se establecen como una piedra angular, permitiendo a los usuarios manejar y analizar datos de manera eficiente. Un DataFrame, en su esencia, es una estructura de datos tabular de dos dimensiones, mutable en tamaño y potencialmente heterogénea, con ejes etiquetados (filas y columnas). Este poderoso concepto permite un manejo de datos más intuitivo y conciso, cerrando la brecha entre la facilidad de uso encontrada en entornos de alto nivel y las capacidades del lenguaje de programación Python.

### Convertir un Diccionario a DataFrame de `pandas`

Una tarea común en el análisis de datos es convertir estructuras de datos existentes en DataFrames de `pandas` para aprovechar las potentes características de manipulación y análisis de datos de pandas. Un caso particularmente útil es convertir un diccionario en un DataFrame de `pandas`. Esto se puede lograr fácilmente utilizando el constructor `DataFrame` proporcionado por pandas:

```python3
import pandas as pd

# Sample dictionary
data_dict = {'Name': ['Alice', 'Bob', 'Charlie'],
             'Age': [25, 30, 35],
             'City': ['New York', 'Paris', 'London']}

# Convert dictionary to pandas DataFrame
df = pd.DataFrame(data_dict)

print(df)
```

Este fragmento de código demuestra una forma sencilla de transformar un diccionario donde las claves se convierten en encabezados de columnas y los valores en datos de fila en un DataFrame de `pandas`.

### Convirtiendo una Lista en un Dataframe de `pandas`

De manera similar, convertir una lista en un DataFrame de `pandas` es otra tarea que los analistas de datos suelen encontrar. Ya sea que tengas una lista de tuplas, listas o una lista plana única, `pandas` puede manejar estas variaciones con facilidad:

### Convirtiendo una lista de listas

Aquí te mostramos cómo convertir una lista de listas en un DataFrame. Cada lista interna se convierte en una fila en el DataFrame.

```python3
import pandas as pd

# Sample list of lists
data_list = [['Alice', 25, 'New York'],
             ['Bob', 30, 'Paris'],
             ['Charlie', 35, 'London']]

# Convert list to pandas DataFrame
df_list = pd.DataFrame(data_list, columns=['Name', 'Age', 'City'])

print(df_list)
```

> Nota: Al convertir listas a un DataFrame de `pandas`, especificar los nombres de las columnas es opcional. Sin embargo, hacerlo mejora la legibilidad y la facilidad de manejo de datos.

### Características Adicionales de DataFrame de `pandas`

Los DataFrames de Pandas están equipados con una amplia gama de métodos y propiedades, lo que hace que la manipulación y análisis de datos no solo sea posible, sino también altamente eficiente. Aquí hay algunas características notables:

- **Manipulación de datos**: Ordenar, fusionar, concatenar, remodelar y tablas dinámicas.
- **Análisis de datos**: Realizar análisis estadístico, manejar datos faltantes y filtrar datos.
- **Visualización de datos**: Aunque principalmente a través de la integración con bibliotecas como Matplotlib, haciendo la visualización preliminar de datos sencilla.

### `head()` y `tail()` para una Inspección Rápida de Datos

Estos son dos métodos muy útiles para inspeccionar rápidamente un DataFrame de `pandas`:

- `head(n)` muestra las primeras `n` filas del DataFrame.
- `tail(n)` muestra las últimas `n` filas.

```python
# Display the first 3 rows
print(df.head(3))

# Display the last 3 rows
print(df.tail(3))
```

## Módulo Snowflake

El módulo Snowflake en Python, conocido como `snowflake-connector-python`, proporciona una manera poderosa y eficiente de `conectar` aplicaciones Python con Snowflake Data Cloud. Permite ejecutar consultas y manejar datos dentro de Snowflake usando Python, lo que lo convierte en una herramienta valiosa para analistas y científicos de datos que trabajan frecuentemente con bibliotecas de análisis de datos como `pandas`.

Integrar `snowflake-connector-python` con `pandas` es una práctica común que ofrece capacidades de manipulación y transformación de datos sin interrupciones, facilitando los procesos de extracción, transformación y carga (ETL) de flujos de trabajo de datos.

### Instalando el Conector de Snowflake

Antes de sumergirte en ejemplos de código, asegúrate de tener el conector de Snowflake instalado en tu entorno Python. Esto se puede hacer usando pip:

```python
pip install snowflake-connector-python
```

### Estableciendo una Conexión

Para usar el módulo Snowflake, el primer paso es establecer una conexión usando los detalles de tu `account` Snowflake:

```python
from snowflake.connector import connect

# Define your connection parameters
conn = connect(user='YOUR_USERNAME',
               password='YOUR_PASSWORD',
               account='YOUR_ACCOUNT',
               warehouse='YOUR_WAREHOUSE',
               database='YOUR_DATABASE',
               schema='YOUR_SCHEMA')

print("Successfully connected to Snowflake!")
```

> Nota: Reemplaza `YOUR_USERNAME`, `YOUR_PASSWORD`, `YOUR_ACCOUNT`, etc., con tus credenciales reales de Snowflake.

### Consultando Datos con el Método `execute()`

Ejecutar una consulta es sencillo con el método `execute()`. Aquí te mostramos cómo realizar una operación SELECT:

```python
# Create a cursor object
cur = conn.cursor()

# Execute a query
cur.execute("SELECT * FROM YOUR_TABLE LIMIT 10")

# Fetch the results
results = cur.fetchall()

for row in results:
    print(row)
```

> Nota: No olvides reemplazar `YOUR_TABLE` con el nombre de tu tabla actual en Snowflake.

### Integrando con Pandas

La integración con `pandas` te permite convertir `results` de consultas directamente en un DataFrame de `pandas`, ofreciendo un entorno familiar y potente para el análisis de datos.

### Método `fetch_pandas_all()`

Después de ejecutar una consulta, usa el método `fetch_pandas_all()` para obtener los `results` como un DataFrame de `pandas`:

```python
import pandas as pd

# Assuming `cur` is your cursor from a successful query
df = cur.fetch_pandas_all()

print(df.head())
```

### Mejores Prácticas

1. Siempre cierra tu conexión y cursor cuando hayas terminado para liberar recursos:

```python
cur.close()
conn.close()
```

2. Gestione de forma segura sus credenciales utilizando variables de entorno o herramientas de gestión de secretos en lugar de codificarlas directamente en sus scripts.

3. Utilice consultas parametrizadas o los métodos proporcionados por el conector para prevenir la inyección SQL y asegurar que sus consultas sean seguras.

Al aprovechar `snowflake-connector-python` junto con `pandas`, los desarrolladores de Python y entusiastas de los datos pueden interactuar eficientemente con Snowflake, ejecutar consultas y analizar datos dentro de un potente ecosistema de ciencia de datos.

## Herramienta Group by en `pandas`

La biblioteca `pandas` es una herramienta fundamental para la manipulación y análisis de datos en Python. Proporciona numerosas funciones para operaciones de datos eficientes. Una de las funcionalidades clave es el método `groupby`, que permite agrupar datos de una manera flexible. En este artículo, profundizaremos en cómo utilizar la función `pandas groupby` para gestionar y analizar datos agrupados de manera efectiva.

### Entendiendo `groupby()` en Pandas

El método `groupby()` en la biblioteca pandas es instrumental para segmentar datos en grupos basados en algún criterio. Un DataFrame de pandas puede agruparse por una o más columnas o incluso una combinación de Series y columnas de pandas. Esta función es vital para realizar análisis estadístico, resumen de datos y diversas transformaciones.

### Cómo Usar `groupby()`

Usar la función `groupby()` en pandas implica unos simples pasos:

1. Identifique la(s) clave(s) por las cuales desea agrupar.
2. Aplique la función `groupby()` en su DataFrame de pandas.
3. Especifique las funciones de agregación para resumir los datos agrupados.

> Nota: Las funciones de agregación incluyen operaciones como mean(), sum(), max(), min(), y muchas más.

### Ejemplo: Agrupación Básica

Empecemos con un ejemplo simple para agrupar un DataFrame de pandas por una sola columna.

```python3
import pandas as pd

# Sample DataFrame
data = {'Category': ['A', 'B', 'A', 'C', 'B', 'C', 'A', 'B'],
        'Values': [10, 20, 15, 10, 25, 30, 5, 40]}
df = pd.DataFrame(data)

# Grouping by 'Category' column and calculating mean
grouped_df = df.groupby('Category').mean()

print(grouped_df)
```

Este código agrupa el DataFrame por la columna 'Category' y calcula la media de los 'Values' para cada categoría.

### Ejemplo: Agrupación por Múltiples Claves

También puedes agrupar por múltiples columnas para un análisis más detallado.

```python
# Additional column for demonstration
data['Subcategory'] = ['X', 'Y', 'X', 'Y', 'X', 'Y', 'Y', 'X']
df = pd.DataFrame(data)

# Grouping by both 'Category' and 'Subcategory' columns
grouped_df = df.groupby(['Category', 'Subcategory']).sum()

print(grouped_df)
```

Aquí, el DataFrame se agrupa tanto por 'Category' como por 'Subcategory', y se calcula la suma de 'Values' para cada grupo.

### Mejores Prácticas para Usar `groupby()`

1. **Limpiar los Datos Antes de Agrupar**: Asegúrate de que tus datos no tengan valores faltantes o inconsistencias que podrían afectar tu agrupación.
2. **Usar Agregaciones Apropiadas**: Selecciona funciones de agregación que tengan sentido para tus datos y objetivos de análisis.
3. **Aprovechar los Datos Agrupados**: Usa el objeto agrupado para un análisis adicional o visualización para obtener insights.

> Nota: Recuerda que el resultado de una operación de `groupby` no es un DataFrame, sino un objeto GroupBy. Puedes convertirlo en un DataFrame aplicando un método de agregación.
