> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/modules/popular-modules

Los módulos permiten la implementación fácil de funcionalidades complejas como desarrollo web, análisis de datos y aprendizaje automático. Como resultado, programadores de todos los niveles e industrias dependen en gran medida de módulos populares en Python para simplificar su trabajo y agilizar su proceso de desarrollo. En este artículo, exploraremos algunos de los módulos más utilizados en Python y los beneficios que ofrecen.

## El Módulo Random

El módulo Random en Python es un módulo incorporado que proporciona varias funciones para generar números aleatorios. Te permite realizar operaciones relacionadas con la aleatoriedad, como generar números aleatorios, mezclar secuencias, elegir elementos al azar y más. Lee más sobre el módulo Random en nuestra [página](/es/learn/modules/popular_modules/random.md).

## El Módulo Requests

El módulo Requests es una biblioteca popular de Python utilizada para hacer solicitudes HTTP. Proporciona una manera simple y elegante de enviar solicitudes HTTP/1.1 usando Python. Lee más sobre este módulo en nuestra [guía](/es/learn/modules/popular_modules/requests.md).
  
## El Módulo Math  

El módulo math de Python proporciona un conjunto de funciones matemáticas predefinidas. Consiste en varias operaciones matemáticas como funciones trigonométricas, logarítmicas y otras funciones matemáticas. El módulo math en Python puede ser utilizado importándolo en el programa usando la palabra clave `import`.

### Cómo Importar el Módulo Math en Python

```python
import math
```

Después de importar el módulo [math](https://docs.python.org/3/library/math.html), todas sus funciones pueden referenciarse usando el prefijo `math`.

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

De esta manera, el módulo de matemáticas en Python puede ser utilizado para realizar operaciones matemáticas al importar el módulo y referirse a sus funciones.

## El Módulo de Registro

El módulo de [registro](https://docs.python.org/3/library/logging.html) en Python es un módulo incorporado que permite a los desarrolladores registrar mensajes en un programa. Es útil para depuración, medición de rendimiento, y reporte de errores. El módulo `logging` en Python ofrece diferentes niveles de registro, incluyendo `DEBUG`, `INFO`, `WARNING`, `ERROR`, y `CRITICAL`.

```python
import logging

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logging.debug('Debugging Information')
logging.info('Informational Message')
logging.warning('Warning Message')
logging.error('Error Message')
logging.critical('Critical Error Message')
```

En el ejemplo de código anterior, hemos importado el módulo `logging` en Python y configurado la configuración básica de `logging` usando el método `basicConfig()`. Hemos definido el nivel de `logging` como `DEBUG` y especificado un `format` personalizado para los mensajes del registro. Luego hemos registrado mensajes de diferentes niveles (debug, info, advertencia, error y crítico) utilizando los métodos `debug()`, `info()`, `warning()`, `error()` y `critical()`, respectivamente.

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

En el ejemplo de código anterior, hemos creado una instancia de un `logger` utilizando el método `getLogger()` y establecido su nivel en `DEBUG`. También hemos definido un `formatter` personalizado para los mensajes del log. Hemos agregado dos manejadores al `logger` - un manejador de archivos para escribir los mensajes del log en un archivo (`my_log.log`) y un manejador de flujo para imprimir los mensajes del log en la consola. Hemos establecido el nivel de registro para ambos manejadores en `DEBUG`. Luego hemos registrado mensajes de diferentes niveles (debug, información, advertencia, error y crítico) utilizando los métodos del logger (`debug()`, `info()`, `warning()`, `error()` y `critical()`).

En resumen, el módulo `logging` en Python es una herramienta poderosa para depurar y monitorear programas. Con sus varios niveles de `logging` y opciones de configuración flexibles, permite a los desarrolladores registrar mensajes de diferentes niveles y almacenarlos en varios formatos, como archivos o salida estándar.

## Módulos de Gráficos en Python

La biblioteca de Gráficos de Python proporciona una manera simple de crear y manipular gráficos en Python. Se puede utilizar para crear gráficos tanto bidimensionales como tridimensionales. Algunas de las bibliotecas de Gráficos de Python más populares son Matplotlib, Seaborn, Plotly y Bokeh.

Matplotlib es una biblioteca de Gráficos de Python ampliamente utilizada que puede crear una variedad de gráficos 2D y 3D. Aquí hay un ejemplo de cómo trazar un gráfico de línea usando Matplotlib:

```python3
import matplotlib.pyplot as plt

x = [1, 2, 3, 4]
y = [10, 20, 15, 25]

plt.plot(x, y)
plt.xlabel('X-axis')
plt.ylabel('Y-axis')
plt.title('Line Graph')

plt.show()
```

Esto creará un gráfico de líneas simple con `X-axis` etiquetado como `X-axis` y `Y-axis` etiquetado como `Y-axis`.

Plotly es otra biblioteca popular de gráficos de Python que puede crear visualizaciones interactivas. Aquí tienes un ejemplo de cómo crear un gráfico de dispersión interactivo usando Plotly:

```python
import plotly.express as px
import pandas as pd

df = pd.read_csv('data.csv')

fig = px.scatter(df, x='X', y='Y', color='Category', size='Size', hover_data=['X', 'Y'])

fig.show()
```

Esto creará un diagrama de dispersión interactivo con puntos coloreados basados en 'Categoría' y dimensionados basados en 'Tamaño'. Pasar el cursor sobre un punto mostrará las coordenadas del punto.

En conclusión, las bibliotecas de Gráficos de Python ofrecen una variedad de herramientas de visualización para crear y manipular gráficos en Python. Algunas bibliotecas populares son Matplotlib, Seaborn, Plotly y Bokeh.
