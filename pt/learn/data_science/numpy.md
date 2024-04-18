> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/data-science/numpy

NumPy, abreviação de Numerical Python, é um pacote fundamental para computação científica de alta performance e análise de dados em Python. Ele fornece um objeto de array multidimensional eficiente chamado ndarray, que permite cálculos aritméticos rápidos orientados a arrays. Além de seu objeto de array central, o NumPy também oferece uma ampla gama de funções matemáticas para realizar operações nesses arrays, desde álgebra linear básica e operações estatísticas até transformadas de Fourier complexas. Ao fornecer ferramentas para operar eficientemente em grandes conjuntos de dados, o NumPy serve como a espinha dorsal de uma infinidade de aplicações científicas e de engenharia, tornando-se uma ferramenta indispensável para pesquisadores, cientistas de dados e qualquer pessoa envolvida em computações intensivas de dados. Com sua combinação de poder, flexibilidade e velocidade, o NumPy se tornou um pilar no ecossistema de computação científica Python, interagindo bem com outras bibliotecas e plataformas para fornecer um ambiente robusto para cálculos numéricos.
  
## O que é `numpy` em Python  

Numpy, abreviação de Numerical Python, é uma parte integral do ambiente de computação científica em Python. É uma biblioteca que fornece suporte para arrays, junto com uma rica coleção de funções matemáticas para realizar várias operações nesses arrays. A biblioteca [numpy](https://pypi.org/project/numpy/) em Python é amplamente usada em análise de dados, aprendizado de máquina e engenharia por sua eficiência e funcionalidade. Ela é projetada para manipular grandes arrays e matrizes multi-dimensionais, tornando-se uma ferramenta indispensável para desenvolvedores e pesquisadores trabalhando em domínios intensivos de dados.

### Importância do Numpy

A biblioteca `numpy` em Python oferece várias características que a tornam essencial para computações numéricas:

1. **Objeto de array multidimensional de alta performance**: Arrays Numpy são mais compactos, rápidos e convenientes para operações matemáticas do que listas Python tradicionais.
2. **Ampla coleção de funções matemáticas**: Estas funções permitem operações eficientes em arrays sem a necessidade de loops explícitos.
3. **Capacidades de broadcasting de arrays**: Numpy pode processar arrays de diferentes formatos durante operações aritméticas, tornando o código mais limpo e rápido.
4. **Ferramentas para integrar código C/C++ e Fortran**: É fácil incorporar código compilado diretamente em aplicações Python para ainda mais velocidade.

> Nota: As poderosas estruturas de dados e ferramentas computacionais do Numpy são a base sobre a qual bibliotecas como Pandas, Matplotlib, SciPy e scikit-learn são construídas.

## Como Começar a Usar `numpy`  

### Instalando o NumPy

Para começar a usar o NumPy em seus projetos Python, o primeiro passo é **instalar o numpy**. O NumPy pode ser instalado usando vários gerenciadores de pacotes, mas o método mais comum e direto é através do `pip`, o instalador de pacotes do Python. Aqui está um guia passo a passo sobre **como instalar `numpy` em python**:

1. Abra sua linha de comando ou terminal.
2. Digite o seguinte comando e pressione Enter:

```pythonbash
pip install numpy
```

Este comando busca o pacote NumPy do PyPI (Python Package Index) e o instala no seu ambiente Python.

> Nota: Certifique-se de que seu pip está atualizado para evitar quaisquer problemas de instalação. Você pode atualizar o pip usando o comando `pip install --upgrade pip`.

### Como Importar o NumPy em Python

Uma vez que o download e a instalação do `numpy` estejam completos, você precisará `importar` ele no seu script Python para começar a utilizar suas funcionalidades. Aqui está como você pode fazer isso:

```python
import numpy as np
```

Usar `np` como um alias para NumPy é uma convenção amplamente aceita e isso ajuda a manter seu código limpo e legível.

### Trabalhando com NumPy

Após instalar e importar o NumPy, você pode começar a usá-lo para realizar diversas computações numéricas. Aqui estão alguns exemplos para iniciar:

### `np.array()`

Uma das operações fundamentais no NumPy é a criação de arrays. Use a função `np.array()` para criar um array do NumPy:

```python3
import numpy as np
my_array = np.array([1, 2, 3, 4, 5])
print(my_array)
```

Este código resultará em um array unidimensional contendo os números de 1 a 5.

### `np.arange()`

Outra função útil para gerar arrays é `np.arange()`, que cria arrays com valores que incrementam regularmente.

```python3
import numpy as np
range_array = np.arange(0, 10, 2)
print(range_array)
```

Este trecho de código cria um array começando do 0 até (mas não incluindo) `10,` com um passo de 2, resultando em `[0, 2, 4, 6, 8]`.

### Funções Essenciais no NumPy

Existem inúmeras funções disponíveis no NumPy; abaixo está uma breve visão geral de algumas funções frequentemente usadas e seus propósitos.

| Função | Descrição |
| ---------|-------------|
| `np.array()` | Cria um array. |
| `np.arange()` | Retorna um array com intervalos uniformemente espaçados. |
| `np.zeros()` | Retorna um novo array de uma determinada forma e tipo, preenchido com zeros. |
| `np.ones()` | Retorna um novo array de uma determinada forma e tipo, preenchido com uns. |
| `np.linspace()` | Retorna um array de números uniformemente espaçados ao longo de um intervalo especificado. |

Essas funções básicas e exemplos fornecem uma base sólida para começar sua jornada com o NumPy. Conforme você se torna mais confortável com estas operações, você descobrirá que o NumPy é uma ferramenta incrivelmente poderosa para computação numérica em Python.

## Arrays no NumPy

Os arrays desempenham um papel crucial em Python, especialmente para o cálculo numérico, que é facilitado e tornado mais eficiente pela biblioteca Numpy. Um array `numpy` é uma grade de valores, todos do mesmo tipo, e é indexado por uma tupla de inteiros não negativos. O número de dimensões é o rank do array; a forma de um array é uma tupla de inteiros que dá o tamanho do array ao longo de cada dimensão.

### Entendendo Arrays NumPy

Os arrays Numpy vêm com muitas propriedades integradas que facilitam a execução de cálculos complexos. Algumas propriedades importantes são resumidas na tabela abaixo:

| Propriedade | Descrição |
|----------|-------------|
| dtype | O tipo de dados dos elementos do array |
| shape | As dimensões do array (linhas, colunas) |
| size | O número total de elementos no array |
| ndim | O número de dimensões (ou eixos) do array |

Estas propriedades ajudam a entender a estrutura e o tipo de dados que o seu array Numpy está manipulando, levando a uma manipulação e análise de dados mais eficientes e eficazes.

### Criando um Array NumPy

Para começar a trabalhar com arrays `numpy`, você primeiro precisa `importar` a biblioteca NumPy. Então você poderia converter uma lista python para um array `numpy` ou instanciá-lo diretamente:

```python3
import numpy as np

# Python list
my_list = [1, 2, 3]

# Converting Python list to numpy array
np_array = np.array(my_list)
print(np_array)
```

### Imprimir Array `numpy`

Para `print` um array `numpy`, você pode simplesmente usar a função `print` do Python:

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Printing numpy array
print(np_array)
```

### Acrescentando Elementos com NumPy `append()`

Acrescentar elementos a um array é uma operação comum. Com `numpy`, você pode facilmente acrescentar elementos usando o método `np.append()`:

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Appending an element to numpy array
new_np_array = np.append(np_array, [4])

print(new_np_array)
```

> Nota: O método `np.append()` retorna um novo array. Ele não altera o array original.

### Calculando Soma com `np.sum()`

Numpy proporciona uma maneira conveniente de calcular a `soma` dos elementos em um array usando o método `np.sum()`. Isso é muito útil para cálculos numéricos:

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3, 4])

# Calculating the sum of array elements
sum = np.sum(np_array)

print(sum)
```

> Nota: `np.sum()` pode ser muito poderoso, especialmente quando usado com arrays multidimensionais, pois você pode calcular somas ao longo de eixos específicos.

### Operações com Arrays NumPy Frequentemente Utilizadas

Para referência rápida, aqui estão algumas das operações com arrays `numpy` mais frequentemente utilizadas, juntamente com suas descrições:

| Operação | Descrição |
|----------------|-------------------------------------------------|
| `np.array()` | Converte uma lista Python em um array `numpy`. |
| `np.append()` | Adiciona elementos ao final de um array. |
| `np.sum()` | Calcula a `soma` dos elementos do array. |
| `print()` | Exibe o array `numpy`. |

### Resumindo Pontos Chave

Utilizar operações com arrays `numpy` como converter listas Python para arrays `numpy`, anexar elementos e calcular somas, pode melhorar grandemente a eficiência e o desempenho da manipulação de dados e cálculos numéricos em Python. Lembre-se de `importar` Numpy e aproveitar essas funções integradas para uma codificação mais eficaz.

## Matriz Numpy

Numpy é um pacote fundamental para a computação científica em Python. Ele fornece um objeto poderoso para operações matriciais, que é um aspecto essencial da ciência de dados e computação matemática. A multiplicação de matrizes é uma das operações críticas que o Numpy torna muito eficiente e fácil de realizar.

### O que é Matriz Numpy

Uma matriz Numpy é um array 2D especializado que retém sua natureza bidimensional através de operações. Ela oferece vários métodos para manipulações matriciais, incluindo, mas não limitado a, multiplicação de matrizes, inversão e transposição. Usar a matriz Numpy para operações simplifica a sintaxe e melhora o desempenho de cálculos complexos.

### Multiplicação de Matrizes Python Numpy

Multiplicação de matrizes, também conhecida como produto escalar, é uma operação fundamental em álgebra linear. Python com a biblioteca Numpy simplifica significativamente esse processo. A função chave para essa operação é `numpy.dot()` para arrays bidimensionais, mas para uma matriz Numpy, você pode usar diretamente o operador `*` ou o método `.dot()`.

### Como Realizar a Multiplicação de Matrizes

1. **Usando `numpy.dot()`**

Esta função é versátil e pode lidar tanto com matrizes quanto com arrays 2D, entregando o produto escalar.

```python3
import numpy as np

# Define two matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Perform matrix multiplication
C = np.dot(A, B)

print(C)
```

2. **Utilizando o Operador `*`**

Ao lidar explicitamente com matrizes Numpy, você pode usar diretamente o operador `*` para multiplicação de matrizes.

```python3
import numpy as np

# Define two matrices
A = np.matrix([[1, 2], [3, 4]])
B = np.matrix([[5, 6], [7, 8]])

# Perform matrix multiplication
C = A * B

print(C)
```

> Nota: Embora você possa utilizar o operador `*` para as matrizes Numpy, é recomendado utilizar arrays Numpy com o operador `np.dot()` ou `@` para consistência e para evitar a descontinuação potencial da classe matriz em versões futuras do Numpy.

### Comparando Métodos para Multiplicação de Matrizes

Quando se trata de multiplicação de matrizes em Python usando Numpy, existem vários métodos para alcançar o mesmo resultado. A escolha entre esses métodos muitas vezes se resume a preferências e casos de uso específicos. Aqui está uma comparação simplificada:

| Método               | Uso                                                      |
|----------------------|----------------------------------------------------------|
| `numpy.dot()`        | Recomendado para consistência, funciona para arrays e matrizes |
| Operador `*`         | Sintaxe simples, mas apenas para objetos de matriz Numpy |
| Método `.dot()`      | Outra opção para realizar produtos escalares             |

Entender e realizar a multiplicação de matrizes usando Python e Numpy é direto, graças às funções e métodos bem projetados fornecidos pela biblioteca. Se você prefere a simplicidade do operador `*` com matrizes Numpy ou a versatilidade e a função recomendada `np.dot()`, o Numpy torna essas operações eficientes e facilmente integráveis em fluxos de trabalho de processamento de dados ou computação científica maiores.
