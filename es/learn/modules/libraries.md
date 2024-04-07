> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/modules/libraries

Los desarrolladores suelen utilizar las palabras 'Módulo' y 'Biblioteca' para referirse a códigos y funciones preescritos que ofrecen una amplia gama de características y funcionalidades que pueden agregarse a programas de Python. Un módulo es un archivo único que contiene código de Python, mientras que una biblioteca es una colección de módulos relacionados que proporcionan una funcionalidad más extensa y resuelven dominios de problemas específicos. Las bibliotecas generalmente se distribuyen y se instalan por separado, mientras que los módulos pueden ser creados y usados dentro de su propio base de código.

## Cómo Instalar Bibliotecas de Python

Para `instalar` bibliotecas de Python, necesitas usar el gestor de paquetes de python `pip`. Abre la línea de comandos e introduce el siguiente comando:

```shell
pip install <library_name>
```

## Ejemplos de Bibliotecas en Python

Las bibliotecas de Python son componentes cruciales de la programación en Python y están disponibles en el Python Package Index (PyPI), que actualmente tiene más de 220,000 bibliotecas.

### Biblioteca Pandas

La biblioteca `pandas` se utiliza principalmente para tareas de análisis de datos. El siguiente ejemplo de código muestra cómo `instalar` e `importar` la biblioteca `pandas`:

```shell
# installing the pandas library
pip install pandas

# importing pandas 
import pandas as pd
```

### Biblioteca NumPy

La biblioteca NumPy se utiliza para computación científica. Así es como se puede `install` e `import` la biblioteca NumPy:

```shell
# installing the numpy library
pip install numpy

# importing numpy
import numpy as np
```

En conclusión, las bibliotecas de Python son componentes esenciales de la programación en Python que proporcionan características y funcionalidades adicionales. Para utilizar estas bibliotecas, necesitas `instalarlas` utilizando el gestor de paquetes PIP, como se muestra en los ejemplos anteriores.

## Biblioteca vs Paquetes

Cuando se trata de programación en Python, hay dos términos que a menudo se usan indistintamente, pero no son lo mismo - Bibliotecas y Paquetes. Aunque ambos sirven para el mismo propósito de proporcionar funcionalidad al usuario, hay algunas diferencias distintas entre ellos.

### ¿Qué es una Biblioteca de Python?

Una biblioteca es una colección de módulos que se unen para proporcionar un conjunto particular de funciones. Por lo general, se utiliza para realizar tareas específicas, como cálculos matemáticos, manipulación de archivos o conexión a una base de datos. Una de las bibliotecas más populares en Python es la biblioteca NumPy, que proporciona soporte para grandes arreglos y matrices multidimensionales.

#### Ejemplo de Uso de la Biblioteca `numpy`

```python3
import numpy as np

arr = np.array([1, 2, 3, 4, 5])
print(arr)
```

### Paquetes

Los paquetes, por otro lado, son una colección de bibliotecas. Son una forma de agrupar múltiples bibliotecas juntas para su fácil instalación y uso. Uno de los paquetes más comúnmente usados en Python es el paquete SciPy, que contiene una colección de bibliotecas para el cálculo científico.

#### Ejemplo de Uso del Paquete `scipy`

```python3
from scipy import constants

print(constants.pi)
```

En resumen, las bibliotecas son conjuntos más pequeños de funcionalidad que están dedicados a una tarea particular, mientras que los paquetes son colecciones de bibliotecas que se han agrupado para facilitar su uso e instalación. Tanto las bibliotecas como los paquetes son componentes esenciales de la programación en Python y la elección de cuál utilizar depende de la tarea en cuestión.

## Biblioteca de Python vs Módulo

En Python, un [módulo](https://docs.python.org/3/tutorial/modules.html) es un archivo que contiene código Python, mientras que una biblioteca es una colección de módulos relacionados. Las bibliotecas típicamente tienen un amplio alcance y brindan funcionalidades que no están disponibles en los módulos integrados.

Las bibliotecas de Python son colecciones de módulos que ofrecen una amplia gama de funcionalidades que se construyen sobre los módulos integrados. Se utilizan para simplificar tareas complejas al proporcionar un conjunto de funciones preescritas que se pueden utilizar en el proceso de desarrollo. Algunas de las bibliotecas de Python más populares son NumPy, Pandas y Matplotlib.

Por otro lado, los módulos de Python son archivos separados que contienen código Python que se puede importar en su código. Se utilizan para separar el código en piezas más pequeñas y manejables. Algunos de los módulos de Python más populares son os, sys y datetime.

### Un Ejemplo de Uso de un Módulo

```python
import os

current_working_directory = os.getcwd()
print(f"The current directory is: {current_working_directory}")
```

### Un Ejemplo de Uso de una Biblioteca

```python3
import numpy as np

### Create a two-dimensional array using numpy library

my_array = np.array([[1, 2], [3, 4]])
print(my_array)
```

En conclusión, tanto las bibliotecas como los módulos de Python son importantes en la programación en Python. Los módulos se utilizan para organizar el código, haciéndolo más manejable mientras que las bibliotecas proporcionan funcionalidades adicionales que hacen la programación más fácil y eficiente.

## Cómo Importar una Biblioteca en Python

Para importar una biblioteca en Python, necesitas usar la sentencia `import`. Esta sentencia te permite usar las funciones, clases y variables definidas de la biblioteca externa en tu programa. La sintaxis para importar una biblioteca es:

```python
import library_name
```

Aquí, `library_name` es el nombre de la biblioteca que deseas importar. Una vez que importes la biblioteca, puedes acceder a sus funciones y clases utilizando la notación de punto.

```python3
import math

result = math.sqrt(25)
print(result) 

import requests

response = requests.get('https://www.example.com')
print(response.status_code) 

```

En el primer ejemplo, importamos la biblioteca integrada [math](https://docs.python.org/3/library/math.html) y utilizamos su función `sqrt` para calcular la raíz cuadrada de 25. En el segundo ejemplo, importamos la popular biblioteca `requests` para realizar una solicitud HTTP e `imprimir` el código de estado de la `respuesta`.

Al importar bibliotecas externas, puedes extender la funcionalidad de tu código Python y ahorrar tiempo reutilizando el código existente.

## Bibliotecas GUI de Python

Python tiene varias bibliotecas GUI para elegir. Las más utilizadas son:

1. **Tkinter**: Esta es una [biblioteca estándar de Python](https://docs.python.org/3/library/tkinter.html) y viene preinstalada con Python. Es adecuada para aplicaciones GUI de tamaño pequeño a mediano.

```python
import tkinter as tk

root = tk.Tk()

label = tk.Label(root, text="Hello World!")
label.pack()

root.mainloop()
```

2. **PyQt**: Esta es una [biblioteca de interfaz gráfica multiplataforma](https://pypi.org/project/PyQt5/) que viene con un conjunto completo de widgets. Es adecuada para aplicaciones de escritorio a gran escala.

```python
from PyQt5.QtWidgets import QApplication, QLabel

app = QApplication([])
label = QLabel("Hello World!")
label.show()

app.exec_()
```

Otras bibliotecas de interfaz gráfica de usuario (GUI) populares en Python incluyen WxPython, PyGTK y PySide.

Al elegir una biblioteca de GUI, es importante considerar factores como la facilidad de uso, la complejidad del proyecto y la plataforma en la que se implementará la aplicación.

## Cómo Imprimir una Lista de Bibliotecas

Para imprimir una lista de bibliotecas de Python, puedes utilizar el módulo integrado `pkg_resources`, que proporciona una forma sencilla de interactuar con los metadatos de los paquetes instalados.

### Obtener Lista de Bibliotecas con `pkg_resources`

```python
import pkg_resources
for package in pkg_resources.working_set:
    print(package.project_name)
```

### Obtener la Lista de Librerías con `subprocess`

```python3
import subprocess
output = subprocess.check_output(['pip', 'freeze'])
for line in output.splitlines():
    print(line.decode('utf-8').split('==')[0])
```
