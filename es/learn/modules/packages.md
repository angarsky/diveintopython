> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/modules/packages

Con un rico conjunto de bibliotecas y frameworks, Python permite a los desarrolladores escribir código eficiente y mantenible fácilmente. En este paquete de introducción, exploraremos algunas de las características más importantes de Python y cómo se puede utilizar para resolver problemas del mundo real.

## Paquete de Python vs Módulo

En Python, un [módulo](https://docs.python.org/3/glossary.html#term-module) es un archivo que contiene definiciones y declaraciones de Python. Un paquete es una colección de módulos. Un paquete puede tener sub-paquetes, que a su vez pueden contener módulos y sub-paquetes.

Los módulos se pueden importar usando la declaración `import`:

```python
import module_name
```

Los paquetes pueden importarse de manera similar utilizando la instrucción `import`. Por ejemplo, para importar un módulo `module_name` de un paquete `package_name`:

```python
import package_name.module_name
```

Los módulos y paquetes proporcionan una forma eficiente de organizar el código y reducir la duplicación del mismo. Los módulos ofrecen una manera de modularizar el código y reutilizarlo en múltiples archivos. Los paquetes ofrecen una forma de modularizar los módulos y reutilizarlos en múltiples proyectos.

Python proporciona un rico conjunto de módulos integrados y hay miles de módulos de terceros disponibles en internet. Utilizar estos módulos puede ayudar a reducir el tiempo de desarrollo y mejorar la calidad del código.

En resumen, los módulos y paquetes son los bloques de construcción fundamentales de la organización y reutilización del código de Python, los cuales juegan un papel significativo en el desarrollo de aplicaciones complejas de manera rápida y eficiente.

```python3
import math

# use functions from math module
print(math.sqrt(25))
```

```python
import pandas as pd

# read csv file using pandas
df = pd.read_csv('data.csv')

# print first few rows of the dataframe
print(df.head())
```

## Cómo instalar un paquete

Para instalar una versión específica de un [paquete](https://docs.python.org/3/glossary.html#term-package) de Python, puedes utilizar el gestor de paquetes pip. Primero, abre tu símbolo del sistema o terminal y ejecuta el siguiente comando:

```shell
pip install package_name==desired_version
```

Reemplace `package_name` con el nombre del paquete que desea instalar y `desired_version` con el número de versión específico que desea instalar.

Alternativamente, si el paquete está disponible en GitHub, puede instalarlo directamente usando pip especificando la URL del repositorio de GitHub. Ejecute el siguiente comando en su símbolo del sistema o terminal:

```shell
pip install git+https://github.com/username/repository.git
```

Reemplaza `username/repository` con el nombre de usuario de GitHub y el nombre del repositorio del paquete que deseas instalar.

### Instalando una Versión Específica del Paquete `requests`

```shell
pip install requests==2.23.0
```

## Actualizar paquete con `pip`

Pip es un gestor de paquetes para el lenguaje Python que ayuda en la gestión de instalación y actualización de paquetes. Actualizar un paquete es esencial para obtener la última versión, que incluye nuevas características, correcciones de errores y parches de seguridad. Aquí hay dos maneras de actualizar un paquete en Python usando pip.

### Actualizar usando `pip install`

Para actualizar un solo paquete usando pip, abre la línea de comandos o terminal y ejecuta el siguiente comando:

```python
pip install --upgrade package_name
```

### Actualizar con `pip freeze`

Para actualizar todos los paquetes instalados en tu sistema, usa el siguiente comando:

```python
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}
```

Al ejecutar este comando en tu símbolo del sistema, primero reunirá todos los paquetes instalados en tu sistema y luego los actualizará a la última versión.
