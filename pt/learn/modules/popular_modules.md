> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/modules/popular-modules

Módulos permitem a implementação fácil de funcionalidades complexas como desenvolvimento web, análise de dados e aprendizado de máquina. Como resultado, programadores de todos os níveis e indústrias dependem fortemente de módulos populares em Python para simplificar seu trabalho e otimizar seu processo de desenvolvimento. Neste artigo, exploraremos alguns dos módulos mais utilizados em Python e os benefícios que eles oferecem.

## O Módulo Random

O módulo Random em Python é um módulo integrado que fornece várias funções para gerar números aleatórios. Ele permite que você realize operações relacionadas à aleatoriedade, como gerar números aleatórios, embaralhar sequências, escolher elementos aleatórios e mais. Leia mais sobre o módulo Random em nossa [página](/pt/learn/modules/popular_modules/random.md).

## O Módulo Requests

O módulo Requests é uma biblioteca Python popular usada para fazer solicitações HTTP. Ele oferece uma maneira simples e elegante de enviar solicitações HTTP/1.1 usando Python. Leia mais sobre esse módulo em nosso [guia](/pt/learn/modules/popular_modules/requests.md).

## O Módulo Math

O módulo math do Python fornece um conjunto de funções matemáticas pré-definidas. Ele consiste em várias operações matemáticas como trigonométricas, logarítmicas e outras funções matemáticas. O módulo math em Python pode ser usado importando-o para o programa usando a palavra-chave `import`.

### Como Importar o Módulo Math em Python

```python
import math
```

Após importar o módulo [math](https://docs.python.org/3/library/math.html), todas as suas funções podem ser referenciadas usando o prefixo `math`.

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

Desta forma, o módulo math em Python pode ser usado para realizar operações matemáticas importando o módulo e referindo-se às suas funções.

## O Módulo de Registro (Logging)

O módulo [logging](https://docs.python.org/3/library/logging.html) em Python é um módulo integrado que permite aos desenvolvedores registrar mensagens em um programa. É útil para depuração, medição de desempenho e relatório de erros. O módulo `logging` em Python oferece diferentes níveis de registro, incluindo `DEBUG`, `INFO`, `WARNING`, `ERROR` e `CRITICAL`.

```python
import logging

logging.basicConfig(level=logging.DEBUG, format='%(asctime)s - %(name)s - %(levelname)s - %(message)s')
logging.debug('Debugging Information')
logging.info('Informational Message')
logging.warning('Warning Message')
logging.error('Error Message')
logging.critical('Critical Error Message')
```

No exemplo de código acima, importamos o módulo `logging` em Python e configuramos o `logging` básico usando o método `basicConfig()`. Definimos o nível de `logging` como `DEBUG` e especificamos um `format` personalizado para as mensagens de log. Em seguida, registramos mensagens de diferentes níveis (debug, info, warning, error e critical) usando os métodos `debug()`, `info()`, `warning()`, `error()` e `critical()`, respectivamente.

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

No exemplo de código acima, criamos uma instância de um `logger` usando o método `getLogger()` e definimos seu nível para `DEBUG`. Também definimos um `formatter` personalizado para as mensagens de log. Adicionamos dois manipuladores ao `logger` - um manipulador de arquivo para escrever as mensagens de log em um arquivo (`my_log.log`) e um manipulador de fluxo para imprimir as mensagens de log no console. Definimos o nível de registro para ambos os manipuladores como `DEBUG`. Em seguida, registramos mensagens de diferentes níveis (debug, info, warning, error e critical) usando os métodos do logger (`debug()`, `info()`, `warning()`, `error()` e `critical()`).

Em resumo, o módulo `logging` em Python é uma ferramenta poderosa para depuração e monitoramento de programas. Com seus vários níveis de `logging` e opções de configuração flexíveis, permite que os desenvolvedores registrem mensagens de diferentes níveis e as armazenem em vários formatos, como arquivos ou saída padrão.

## Módulos de Gráficos em Python

A biblioteca de Gráficos Python oferece uma maneira simples de criar e manipular gráficos em Python. Pode ser usada para criar gráficos bidimensionais e tridimensionais. Algumas das bibliotecas de Gráficos Python populares são Matplotlib, Seaborn, Plotly e Bokeh.

Matplotlib é uma biblioteca de Gráficos Python amplamente utilizada que pode criar uma variedade de gráficos 2D e 3D. Aqui está um exemplo de como traçar um gráfico de linhas usando Matplotlib:

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

Isso criará um gráfico de linha simples com `X-axis` rotulado como `X-axis` e `Y-axis` rotulado como `Y-axis`.

Plotly é outra biblioteca gráfica de Python popular que pode criar visualizações interativas. Aqui está um exemplo de como criar um gráfico de dispersão interativo usando Plotly:

```python
import plotly.express as px
import pandas as pd

df = pd.read_csv('data.csv')

fig = px.scatter(df, x='X', y='Y', color='Category', size='Size', hover_data=['X', 'Y'])

fig.show()
```

Isso criará um gráfico de dispersão interativo com pontos coloridos com base em 'Categoria' e dimensionados com base em 'Tamanho'. Passar o mouse sobre um ponto exibirá as coordenadas do ponto.

Em conclusão, as bibliotecas gráficas do Python oferecem uma variedade de ferramentas de visualização para criar e manipular gráficos em Python. Algumas bibliotecas populares são Matplotlib, Seaborn, Plotly e Bokeh.
