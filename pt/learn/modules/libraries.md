> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/modules/libraries

Desenvolvedores frequentemente usam as palavras 'Módulo' e 'Biblioteca' para se referirem a códigos e funções pré-escritos que oferecem uma vasta gama de recursos e funcionalidades que podem ser adicionados a programas Python. Um módulo é um único arquivo contendo código Python, enquanto uma biblioteca é uma coleção de módulos relacionados que fornecem funcionalidades mais extensas e resolvem domínios de problemas específicos. Bibliotecas geralmente são distribuídas e instaladas separadamente, enquanto módulos podem ser criados e usados dentro do seu próprio código.

## Como Instalar Bibliotecas Python

Para `install` bibliotecas Python, você precisa usar o gerenciador de pacotes python `pip`. Abra o prompt de comando e insira o seguinte comando:

```shell
pip install <library_name>
```

## Exemplos de Bibliotecas em Python

As bibliotecas Python são componentes cruciais da programação Python e estão disponíveis no Índice de Pacotes Python (PyPI), que atualmente possui mais de 220.000 bibliotecas.

### Biblioteca Pandas

A biblioteca `pandas` é usada principalmente para tarefas de análise de dados. O seguinte exemplo de código mostra como `install` e `import` a biblioteca `pandas`:

```shell
# installing the pandas library
pip install pandas

# importing pandas 
import pandas as pd
```

### Biblioteca NumPy

A biblioteca NumPy é utilizada para computação científica. Aqui está como `install` e `import` a biblioteca NumPy:

```shell
# installing the numpy library
pip install numpy

# importing numpy
import numpy as np
```

Em conclusão, as bibliotecas de Python são componentes essenciais da programação em Python que fornecem recursos e funcionalidades adicionais. Para utilizar essas bibliotecas, você precisa `instalar` elas usando o gerenciador de pacotes PIP, conforme mostrado nos exemplos acima.

## Biblioteca vs Pacotes

Quando se trata de programação em Python, existem dois termos que são frequentemente usados de forma intercambiável, mas não são o mesmo - Bibliotecas e Pacotes. Embora ambos sirvam o mesmo propósito de fornecer funcionalidade ao usuário, existem algumas diferenças distintas entre eles.

### O que é uma Biblioteca Python?

Uma biblioteca é uma coleção de módulos que se unem para fornecer um conjunto específico de funções. É geralmente usada para realizar tarefas específicas, como cálculos matemáticos, manipulação de arquivos ou conexão com um banco de dados. Uma das bibliotecas mais populares em Python é a biblioteca NumPy, que oferece suporte para grandes arrays e matrizes multidimensionais.

#### Exemplo de Uso da Biblioteca `numpy`

```python3
import numpy as np

arr = np.array([1, 2, 3, 4, 5])
print(arr)
```

### Pacotes

Pacotes, por outro lado, são uma coleção de bibliotecas. Eles são uma maneira de agrupar várias bibliotecas juntas para facilitar a instalação e o uso. Um dos pacotes mais comumente usados em Python é o pacote SciPy, que contém uma coleção de bibliotecas para computação científica.

#### Exemplo de Uso do Pacote `scipy`

```python3
from scipy import constants

print(constants.pi)
```

Em resumo, Bibliotecas são conjuntos menores de funcionalidades dedicadas a uma tarefa específica, enquanto Pacotes são coleções de bibliotecas agrupadas para facilitar o uso e a instalação. Tanto Bibliotecas quanto pacotes são componentes essenciais da programação em Python e a escolha de qual usar depende da tarefa em questão.

## Biblioteca Python vs Módulo

Em Python, um [módulo](https://docs.python.org/3/tutorial/modules.html) é um arquivo contendo código Python enquanto uma biblioteca é uma coleção de módulos relacionados. Bibliotecas tipicamente têm um escopo amplo e fornecem funcionalidades que não estão disponíveis nos módulos integrados.

Bibliotecas Python são coleções de módulos que oferecem uma ampla gama de funcionalidades construídas em cima dos módulos integrados. Elas são usadas para simplificar tarefas complexas ao fornecer um conjunto de funções pré-escritas que podem ser usadas no processo de desenvolvimento. Algumas das bibliotecas Python populares são NumPy, Pandas e Matplotlib.

Por outro lado, módulos Python são arquivos separados que contêm código Python que pode ser importado para o seu código. Eles são usados para separar o código em partes menores e mais gerenciáveis. Alguns dos módulos Python populares são os, sys e datetime.

### Um Exemplo de Uso de um Módulo

```python
import os

current_working_directory = os.getcwd()
print(f"The current directory is: {current_working_directory}")
```

### Um Exemplo de Uso de uma Biblioteca

```python3
import numpy as np

### Create a two-dimensional array using numpy library

my_array = np.array([[1, 2], [3, 4]])
print(my_array)
```

Em conclusão, tanto as bibliotecas quanto os módulos Python são importantes na programação Python. Os módulos são usados para organizar o código, tornando-o mais gerenciável enquanto as bibliotecas fornecem funcionalidades adicionais que tornam a programação mais fácil e eficiente.  
  
## Como Importar uma Biblioteca em Python  

Para importar uma biblioteca em Python, você precisa usar a declaração `import`. Esta declaração permite que você use as funções definidas, classes e variáveis da biblioteca externa em seu programa. A sintaxe para importar uma biblioteca é:

```python
import library_name
```

Aqui, `library_name` é o nome da biblioteca que você quer importar. Uma vez que você importe a biblioteca, você pode acessar suas funções e classes usando a notação de ponto.

```python3
import math

result = math.sqrt(25)
print(result) 

import requests

response = requests.get('https://www.example.com')
print(response.status_code) 

```

No primeiro exemplo, importamos a biblioteca incorporada [math](https://docs.python.org/3/library/math.html) e usamos sua função `sqrt` para calcular a raiz quadrada de 25. No segundo exemplo, importamos a popular biblioteca `requests` para fazer uma requisição HTTP e `print` o código de status da `response`.

Ao importar bibliotecas externas, você pode estender a funcionalidade do seu código Python e economizar tempo reutilizando o código existente.

## Bibliotecas GUI Python

Python possui várias bibliotecas GUI para escolher. As mais comumente usadas são:

1. **Tkinter**: Esta é uma [biblioteca padrão Python](https://docs.python.org/3/library/tkinter.html) e vem pré-instalada com Python. É adequada para aplicações GUI de pequeno a médio porte.

```python
import tkinter as tk

root = tk.Tk()

label = tk.Label(root, text="Hello World!")
label.pack()

root.mainloop()
```

2. **PyQt**: Esta é uma [biblioteca GUI multiplataforma](https://pypi.org/project/PyQt5/) que vem com um conjunto abrangente de widgets. É adequada para aplicações desktop de grande escala.

```python
from PyQt5.QtWidgets import QApplication, QLabel

app = QApplication([])
label = QLabel("Hello World!")
label.show()

app.exec_()
```

Outras bibliotecas GUI Python populares incluem WxPython, PyGTK e PySide.

Ao escolher uma biblioteca GUI, é importante considerar fatores como facilidade de uso, complexidade do projeto e a plataforma na qual a aplicação será implantada.

## Como Imprimir uma Lista de Bibliotecas

Para imprimir uma lista de bibliotecas Python, você pode usar o módulo integrado `pkg_resources`, que oferece uma maneira simples de interagir com os metadados dos pacotes instalados.

### Obter Lista de Bibliotecas com o `pkg_resources`

```python
import pkg_resources
for package in pkg_resources.working_set:
    print(package.project_name)
```

### Obtenha a Lista de Bibliotecas com o `subprocess`

```python3
import subprocess
output = subprocess.check_output(['pip', 'freeze'])
for line in output.splitlines():
    print(line.decode('utf-8').split('==')[0])
```
