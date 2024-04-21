> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/array/basic-operations

Os arrays nos permitem armazenar e manipular dados de forma eficiente, possibilitando realizar uma ampla gama de tarefas. Neste artigo, exploraremos as operações básicas mais comuns associadas a arrays em Python.

## Ordenação e Embaralhamento

Ordenação e embaralhamento são operações comuns na manipulação e análise de dados. No Python, existem funções e métodos embutidos disponíveis para realizar essas tarefas de maneira eficiente.

### Como Obter um Array Ordenado em Python

No Python, você pode ordenar um array (ou lista) usando a função `sorted()`. A função `sorted()` recebe um iterável como entrada e retorna uma nova lista ordenada contendo os elementos do iterável original.

Aqui está um exemplo de como usar `sorted()` para ordenar um array:

```python3
my_array = [5, 2, 1, 4, 3]
sorted_array = sorted(my_array)
print(sorted_array)  # Output: [1, 2, 3, 4, 5]
```

Neste exemplo, `sorted(my_array)` retorna uma nova lista que contém os elementos de `my_array` em ordem classificada. A variável `sorted_array` armazena esta lista classificada, e depois ela é impressa no console.

É importante notar que a função `sorted()` retorna uma nova lista classificada e não modifica o array original no local. Se você quiser classificar o próprio array original, você pode usar o método `sort()` do array em vez disso:

```python3
my_array = [5, 2, 1, 4, 3]
my_array.sort()
print(my_array)  # Output: [1, 2, 3, 4, 5]
```

Neste caso, `my_array.sort()` ordena os elementos de `my_array` diretamente, modificando o array diretamente. O array ordenado é então impresso no console.

### Como Embaralhar um Array

Para embaralhar um array em Python, você pode usar a função `random.shuffle()` do módulo `random`. Esta função embaralha os elementos de uma sequência aleatoriamente, in-loco. Aqui está um exemplo:

```python3
import random

my_array = [1, 2, 3, 4, 5]

random.shuffle(my_array)

print(my_array)
```

## Anexar, Inserir, Concatenar & Estender

Vamos rever a maneira de anexar ou inserir elementos em um array.

### Como Anexar um Elemento a um Array

Anexar um elemento a um array existente em Python pode ser feito usando o método `append()` fornecido pelo tipo de dados lista. Aqui está um exemplo de como adicionar um elemento a um array (ou lista):

```python3
array = ['apple', 'banana', 'orange']
array.append('grape')
print(array) # Output: ['apple', 'banana', 'orange', 'grape']
```

O método `append()` permite inserir o elemento especificado no final do array (ou lista). Ele modifica a lista original no local e não retorna uma nova lista.

Você pode adicionar elementos de qualquer tipo de dado a uma lista Python, incluindo strings, números ou até mesmo outras listas.

Como você vê, o método `append()` permite expandir facilmente o array (ou lista) ao adicionar novos elementos.

> Nota: O método `append()` só pode adicionar um elemento por vez. Se você quiser adicionar vários elementos ao array, você pode usar o método `extend()` ou concatenar listas usando o operador `+`.

### Como Inserir um Elemento em um Array

Em Python, o conceito de "inserir" elementos em um array está tipicamente associado com estruturas de dados mutáveis como listas. Estruturas de dados mutáveis permitem que você modifique os elementos ao adicionar, remover ou modificar valores. Portanto, é a mesma abordagem do método `append()`, você pode "inserir" elementos em um array usando uma lista:

```python3
my_list = []  # Initialize an empty list

# Pushing elements into the list
my_list.append(1)
my_list.append(2)
my_list.append(3)

print(my_list)  # Output: [1, 2, 3]
```

> Nota: Esta abordagem aplica-se especificamente a listas em Python. Outras estruturas de dados, como arrays NumPy ou tuplas imutáveis, têm métodos diferentes ou limitações para modificar seu conteúdo.

### Como Concatenar Arrays em Python

Para concatenar arrays em Python, você pode usar vários métodos, dependendo do tipo de arrays com os quais está trabalhando. Aqui estão alguns exemplos de como combinar arrays:

1. Usando o operador `+` com listas padrão Python:

```python3
array1 = [1, 2, 3]
array2 = [4, 5, 6]
concatenated = array1 + array2
print(concatenated) # Output: [1, 2, 3, 4, 5, 6]
```

2. Usando a função `concatenate()` do NumPy:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.concatenate((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

3. Utilizando as funções `hstack()` ou `vstack()` do NumPy para concatenação horizontal ou vertical, respectivamente:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.hstack((array1, array2))
print(concatenated) # Output: [1 2 3 4 5 6]
```

Neste exemplo, usamos a função `hstack()` para empilhar horizontalmente `array1` e `array2`, resultando em um novo array `concatenated` que contém os elementos concatenados em uma única linha.

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])
concatenated = np.vstack((array1, array2))
print(concatenated)
```

Saída:

```python
[[1 2 3]
 [4 5 6]]
```

Neste exemplo, usamos a função `vstack()` para empilhar verticalmente `array1` e `array2`, resultando em um novo array `concatenated` que contém os elementos concatenados em duas linhas.

### Como Estender um Array em Python

Existem vários métodos que nos permitem estender um array em Python. Aqui estão algumas abordagens sobre como mesclar ou combinar arrays em Python:

1. Lista:

Se você tem uma lista, pode usar o método `extend()` para adicionar elementos de outro iterável ao final da lista. Aqui está um exemplo:

```python
my_list = [1, 2, 3]
new_elements = [4, 5, 6]

my_list.extend(new_elements)

print(my_list)
```

2. NumPy:

Se você está trabalhando com arrays NumPy, você pode usar a função `concatenate()` para combinar dois arrays ao longo de um eixo especificado. Aqui está um exemplo:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

extended_array = np.concatenate((array1, array2))

print(extended_array)
```

3. Módulo de array:

Se você estiver usando o módulo `array` incorporado, pode usar o método `extend()` para adicionar elementos de outro iterável ao final do array. Aqui está um exemplo:

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3])
new_elements = arr.array('i', [4, 5, 6])

my_array.extend(new_elements)

print(my_array)
```

## Função `getsizeof()`

Em Python, não há uma função embutida chamada `sizeof()` para obter diretamente o tamanho de um array ou lista. No entanto, você pode usar a função `getsizeof()` do módulo `sys` para obter uma estimativa do tamanho da memória ocupada por um objeto.

Aqui está um exemplo:

```python3
import sys

my_list = [10, 20, 30, 40, 50]
size = sys.getsizeof(my_list)

print(size)  # Output: 104 (the size in bytes)
```

No exemplo acima, importamos o módulo `sys` e usamos a função `getsizeof()` para obter o tamanho do objeto `my_list` em bytes.
> Nota: O valor retornado por `getsizeof()` inclui a sobrecarga do próprio objeto da lista e pode não fornecer uma representação exata da memória ocupada pelos elementos do array/lista.

## Inverter e Transpor

Muitas vezes nos deparamos com situações em Python onde precisamos inverter ou transpor um array.

### Como Inverter um Array em Python

Você pode inverter ou virar um array (lista) em Python usando vários métodos. Aqui estão algumas abordagens comuns para inverter um array em Python:

1. Usando o método `reverse()`:

```python3
my_list = [10, 20, 30, 40, 50]
my_list.reverse()
print(my_list)  # Output: [50, 40, 30, 20, 10]
```

2. Utilizando a técnica de fatiamento:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = my_list[::-1]
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

3. Usando a função `reversed()`:

```python
my_list = [10, 20, 30, 40, 50]
reversed_list = list(reversed(my_list))
print(reversed_list)  # Output: [50, 40, 30, 20, 10]
```

Todos os três métodos alcançam o mesmo resultado. O primeiro método utiliza o método `reverse()`, que reverte os elementos da lista no local, modificando a lista original. O segundo método utiliza o fatiamento com um valor de passo de -1 (`[::-1]`), o que cria uma nova lista com os elementos em ordem inversa. O terceiro método usa a função `reversed()` para criar um iterador reverso, que é então convertido em uma lista usando a função `list()`.

### Como Transpor Array em Python

Para transpor uma lista e um array NumPy em Python, você pode seguir os passos abaixo:

Transpondo uma Lista:

1. Crie uma lista de listas onde cada lista interna representa uma linha da matriz original.

2. Use a função `zip(*list)` para transpor a lista.

Aqui está um exemplo:

```python
# Create a sample list
list_of_lists = [[1, 2, 3],
                 [4, 5, 6]]

# Transpose the list
transposed_list = list(zip(*list_of_lists))

print(transposed_list) # Output: [(1, 4), (2, 5), (3, 6)]
```

Transpondo um Array NumPy:

Para transpor um array NumPy, você pode usar a função `transpose()` fornecida pela biblioteca NumPy, conforme mostrado no exemplo anterior. Aqui está um exemplo específico para um array NumPy:

```python3
import numpy as np

# Create a sample array
array = np.array([[1, 2, 3],
                  [4, 5, 6]])

# Transpose the array
transposed_array = np.transpose(array)

print(transposed_array)
```

Saída:

```python
[[1 4]
 [2 5]
 [3 6]]
```

## Como Verificar se um Array está Vazio

Para verificar se um array está vazio em Python, você pode usar a função `len()` ou a comparação direta com um array vazio. Aqui está como você pode fazer isso para diferentes tipos de arrays:

1. Lista:

```python
my_list = []  # Empty list

# Using len() function
if len(my_list) == 0:
    print("Array is empty")

# Direct comparison
if my_list == []:
    print("Array is empty")
```

2. Array NumPy:

```python3
import numpy as np

my_array = np.array([])  # Empty NumPy array

# Using len() function
if len(my_array) == 0:
    print("Array is empty")

# Direct comparison
if np.array_equal(my_array, np.array([])):
    print("Array is empty")
```

## Como Copiar um Array

Você pode copiar um array em Python usando várias abordagens. Aqui estão alguns métodos comuns para copiar arrays:

1. Lista:

Para uma lista padrão do Python, você pode usar a sintaxe de fatiamento `[:]` ou o método `copy()` para criar uma cópia:

Usando fatiamento:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list[:]
```

Utilizando o método `copy()`:

```python
my_list = [1, 2, 3, 4, 5]
my_list_copy = my_list.copy()
```

2. Array NumPy:

Para um array NumPy, você pode usar a função `copy()` para criar uma cópia:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
my_array_copy = np.copy(my_array)
```

## Como Filtrar um Array

Para filtrar um array em Python, você pode usar vários métodos, dependendo do tipo de array com o qual está trabalhando. Aqui estão algumas abordagens comuns:

1. Compreensão de lista:

Para uma lista padrão do Python, você pode usar a compreensão de lista para criar uma nova lista que contém apenas os elementos desejados com base em uma condição específica. Aqui está um exemplo:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5
filtered_list = [x for x in my_list if x > 5]

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

2. Função de filtro:

Você também pode usar a função built-in `filter()` junto com uma função lambda ou uma função personalizada para filtrar elementos de uma lista com base em uma condição dada. Aqui está um exemplo:

```python
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

# Filter elements greater than 5 using lambda function
filtered_list = list(filter(lambda x: x > 5, my_list))

print(filtered_list)  # Output: [6, 7, 8, 9, 10]
```

3. Array NumPy:

Para um array NumPy, você pode usar indexação booleana para filtrar elementos baseados em uma condição. Aqui está um exemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

# Filter elements greater than 5
filtered_array = my_array[my_array > 5]

print(filtered_array)  # Output: [ 6  7  8  9 10]
```

## Como Juntar um Array em Python

Você pode juntar um array em Python usando vários métodos diferentes. Aqui estão algumas abordagens comuns:

1. Juntando Elementos de Lista:

Para uma lista padrão do Python, você pode usar o método `join()` das strings para juntar os elementos da lista em uma única string. Aqui está um exemplo:

```python3
my_list = ['Hello', 'World', 'Python']

# Join the list elements with a space separator
joined_string = ' '.join(my_list)

print(joined_string)  # Output: 'Hello World Python'
```

Neste exemplo, o método `join()` é utilizado com um espaço `' '` como separador para unir os elementos da lista em uma única string.

2. Unindo Elementos de um Array NumPy:

Para um array NumPy, você pode usar o método join() do objeto char do NumPy para unir os elementos do array em uma única string. Aqui está um exemplo:

```python3
import numpy as np

my_array = np.array(['Hello', 'World', 'Python'])

# Join the array elements with a space separator
joined_string = np.char.join(' ', my_array)

print(joined_string)  # Output: ['H e l l o' 'W o r l d' 'P y t h o n']
```

Neste exemplo, o método `join()` de `np.char` é usado com um espaço `' '` como separador para juntar os elementos do array em uma única string.

## O Cálculo da Soma de Um Array

Você pode usar diferentes métodos para calcular a soma dos elementos de um array em Python. Aqui estão algumas abordagens comuns:

1. Lista:

Para uma lista padrão do Python, você pode usar a função integrada `sum()` para calcular a soma de todos os elementos:

```python
my_list = [1, 2, 3, 4, 5]
array_sum = sum(my_list)
print(array_sum)
```

2. Array NumPy:

Para um array NumPy, você pode usar a função `sum()` da biblioteca NumPy para calcular a soma de todos os elementos:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
array_sum = np.sum(my_array)
print(array_sum)
```

## Elemento Máximo de um Array

Para encontrar o valor máximo em um array em Python, você pode usar a função built-in `max()` ou a função `max()` da biblioteca numpy. Aqui está como você pode usar ambas as abordagens:

Usando a função built-in `max()`:

```python
my_array = [5, 2, 9, 1, 7]

# Find the maximum value in the array using the max() function
max_value = max(my_array)

print(max_value)  # Output: 9
```

Utilizando a biblioteca numpy:

```python
import numpy as np

my_array = np.array([5, 2, 9, 1, 7])

# Find the maximum value in the array using the max() function from numpy
max_value = np.max(my_array)

print(max_value)  # Output: 9
```

## Achatamento, Divisão, Fatiamento e Conversão para Array 2D

Em Python, achatamento, divisão e conversão para um array 2D são operações comuns ao lidar com estruturas de dados multidimensionais. Vamos revisar o básico.

### Como Achatar um Array

Você pode usar vários métodos para achatar um array em Python. Aqui estão algumas abordagens para diferentes tipos de arrays:

1. Achatando uma lista aninhada:

Você pode usar compreensão de lista e recursão para achatar uma lista aninhada. Aqui está um exemplo:

```python3
def flatten_list(nested_list):
    flattened = []
    for item in nested_list:
        if isinstance(item, list):
            flattened.extend(flatten_list(item))
        else:
            flattened.append(item)
    return flattened

nested_list = [[1, 2, 3], [4, [5, 6]], [7, 8, 9]]
flattened_list = flatten_list(nested_list)
print(flattened_list) # Output: [1, 2, 3, 4, 5, 6, 7, 8, 9]
```

2. Achatar um array NumPy:

Você pode usar o método `flatten()` fornecido pelo NumPy para achatar um array. Aqui está um exemplo:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.flatten()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

3. Achatando um array multidimensional com NumPy:

Se você tem um array multidimensional NumPy e quer achatar-lo, você pode usar o método ravel(). Aqui está um exemplo:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])
flattened_array = array.ravel()
print(flattened_array) # Output: [1 2 3 4 5 6]
```

### Como Converter um Array 1d em um Array 2d em Python

Para converter um array 1d em um array 2d em Python, você pode usar o método `reshape()` fornecido pela biblioteca NumPy. O método `reshape()` permite que você mude a forma de um array sem modificar seus dados. Aqui está um exemplo de como remodelar um array:

```python3
import numpy as np

# 1d array
arr_1d = np.array([1, 2, 3, 4, 5, 6])

# Convert to 2d array
arr_2d = arr_1d.reshape((2, 3))

print(arr_2d)
```

Saída:

```python
[[1 2 3]
 [4 5 6]]
```

O método `reshape()` recebe a forma desejada do array como seu argumento. Neste caso, passamos `(2, 3)` para remodelar o array em uma matriz 2x3. O número de elementos no array 1d original deve corresponder ao número de elementos na forma especificada. Se o número de elementos não for compatível, um `ValueError` será gerado.

> Nota: O método `reshape()` retorna um novo array com a forma desejada; ele não modifica o array original.

### Como Dividir um Array em Pedaços

Para dividir um array em pedaços no Python, você pode usar vários métodos dependendo do tipo de array ou estrutura de dados com a qual está trabalhando. Aqui estão algumas abordagens:

1. Compreensão de lista:

Se você tem uma lista, pode usar a compreensão de lista para dividi-la em pedaços de um tamanho específico. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
chunk_size = 3

chunks = [my_list[i:i+chunk_size] for i in range(0, len(my_list), chunk_size)]

print(chunks)
```

2. NumPy:

Se você está trabalhando com arrays NumPy, pode usar a função `array_split()` para dividir o array em partes de tamanho igual. Aqui está um exemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = np.array_split(my_array, len(my_array) // chunk_size)

print(chunks)
```

3. Módulo Array:

Se você está utilizando o módulo `array` embutido, pode usar um laço para dividir o array em blocos. Aqui está um exemplo:

```python3
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
chunk_size = 3

chunks = [my_array[i:i+chunk_size] for i in range(0, len(my_array), chunk_size)]

print(chunks)
```

### Fatiando um Array em Python

Para fatiar um array (ou lista) em Python, você pode usar a notação de fatiamento `array[start:stop:step]`, onde:

- **start** é o índice onde o fatiamento começa (inclusivo).
- **stop** é o índice onde o fatiamento termina (exclusivo).
- **step** é o intervalo entre os índices (opcional, valor padrão é 1).

Aqui estão alguns exemplos de como fatiar um array em Python:

```python3
my_array = [10, 20, 30, 40, 50, 60, 70, 80]

# Slice from index 2 to 5 (exclusive)
slice_1 = my_array[2:5]
print(slice_1)  # Output: [30, 40, 50]

# Slice from index 1 to the end of the array
slice_2 = my_array[1:]
print(slice_2)  # Output: [20, 30, 40, 50, 60, 70, 80]

# Slice from the beginning to index 4 (exclusive)
slice_3 = my_array[:4]
print(slice_3)  # Output: [10, 20, 30, 40]

# Slice with a step of 2
slice_4 = my_array[1:7:2]
print(slice_4)  # Output: [20, 40, 60]

# Slice in reverse order
slice_5 = my_array[::-1]
print(slice_5)  # Output: [80, 70, 60, 50, 40, 30, 20, 10]
```

Nos exemplos acima, temos um array chamado `my_array`. Especificando os valores de `start`, `stop` e `step` apropriados, podemos dividir o array criando diferentes fatias dele.

O primeiro exemplo cria uma fatia do índice 2 ao 5 (exclusivo), resultando em `[30, 40, 50]`. O segundo exemplo cria uma fatia do índice 1 até o final do array, resultando em `[20, 30, 40, 50, 60, 70, 80]`. O terceiro exemplo cria uma fatia do começo até o índice 4 (exclusivo), resultando em `[10, 20, 30, 40]`. O quarto exemplo cria uma fatia com um passo de 2, resultando em `[20, 40, 60]`. O quinto exemplo cria uma fatia em ordem reversa usando um valor de passo negativo (`[::-1]`), resultando em `[80, 70, 60, 50, 40, 30, 20, 10]`.

## Como Plotar um Array em Python

Para plotar um array em Python, você pode usar várias bibliotecas dependendo do tipo de array e do plot desejado. Aqui estão exemplos usando bibliotecas populares:

1. Matplotlib (para arrays 1D e 2D):

Matplotlib é uma biblioteca de plotagem amplamente usada em Python. Você pode usá-la para plotar arrays 1D e 2D. Aqui está um exemplo:

```python3
import numpy as np
import matplotlib.pyplot as plt

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
plt.plot(array_1d)
plt.show()

# Plotting a 2D array as an image
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
plt.imshow(array_2d, cmap='gray')
plt.show()
```

2. Seaborn (para visualização estatística):

Seaborn é uma biblioteca de visualização de dados estatísticos baseada em Matplotlib. Ela fornece funções de alto nível para criar gráficos informativos. Aqui está um exemplo:

```python
import numpy as np
import seaborn as sns

# Plotting a 1D array
array_1d = np.array([1, 2, 3, 4, 5])
sns.lineplot(x=np.arange(len(array_1d)), y=array_1d)
plt.show()

# Plotting a 2D array as a heatmap
array_2d = np.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
sns.heatmap(array_2d, annot=True, cmap='coolwarm')
plt.show()
```

## Dimensões de Arrays

Você pode determinar as dimensões de um array com diferentes bibliotecas e estruturas de dados. Aqui estão algumas abordagens:

1. NumPy:

Se você estiver trabalhando com arrays NumPy, pode usar o atributo `shape` para obter as dimensões do array. Aqui está um exemplo:

```python
import numpy as np

array = np.array([[1, 2, 3], [4, 5, 6]])

# Get the dimensions of the array
dimensions = array.shape

print(dimensions)  # Output: (2, 3)
```

2. Lista de Listas:

Se você tem um array representado como uma lista de listas, você pode usar a função `len()` para determinar as dimensões. Aqui está um exemplo de como determinar a forma de um array:

```python
array = [[1, 2, 3], [4, 5, 6]]

# Get the dimensions of the array
rows = len(array)
columns = len(array[0])

print(rows, columns)  # Output: 2 3
```

3. Módulo de Array:

Se você estiver usando o módulo array integrado, pode usar a função `len()` para determinar o tamanho do array. Aqui está um exemplo:

```python
import array as arr

array = arr.array('i', [1, 2, 3, 4, 5])

# Get the dimensions of the array
size = len(array)

print(size)  # Output: 5
```

## Um Array Contém um Elemento Específico?

Para verificar se um valor está presente em um array em Python, você pode usar diferentes abordagens dependendo do tipo de array ou estrutura de dados com a qual está trabalhando. Aqui estão alguns exemplos:

1. Lista:

Se você tem uma lista, pode usar o operador `in` para verificar se um valor está presente. Veja um exemplo:

```python
my_list = [1, 2, 3, 4, 5]

# Check if the value 3 is present in the list
if 3 in my_list:
    print("Value 3 is present in the list")
```

2. Array NumPy:

Se você está trabalhando com um array NumPy, você pode usar a função `np.isin()` para verificar se um valor está presente. Aqui está um exemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if np.isin(3, my_array):
    print("Value 3 is present in the array")
```

3. Módulo de Array:

Se você estiver usando o módulo `array` integrado, você pode usar um loop ou o método `index()` para verificar se um valor está presente. Aqui está um exemplo:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

# Check if the value 3 is present in the array
if 3 in my_array:
    print("Value 3 is present in the array")
```

## Operações com Arrays

No Python, você pode realizar várias operações em arrays usando diferentes bibliotecas e estruturas de dados. Aqui estão algumas operações comumente usadas:

1. Operações Matemáticas com NumPy:

NumPy oferece uma ampla gama de operações matemáticas para arrays, como operações elemento a elemento, álgebra linear, operações estatísticas e mais. Aqui estão alguns exemplos:

```python
import numpy as np

# Element-wise operations
array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

addition = array1 + array2
subtraction = array1 - array2
multiplication = array1 * array2
division = array1 / array2

# Linear algebra operations
matrix1 = np.array([[1, 2], [3, 4]])
matrix2 = np.array([[5, 6], [7, 8]])

matrix_multiplication = np.dot(matrix1, matrix2)
matrix_inverse = np.linalg.inv(matrix1)
eigenvalues, eigenvectors = np.linalg.eig(matrix1)

# Statistical operations
data = np.array([1, 2, 3, 4, 5, 6])
mean = np.mean(data)
median = np.median(data)
std_deviation = np.std(data)
```

2. Operações com Listas:

Para arrays representados como listas no Python, você pode realizar operações básicas como concatenação, fatiamento, adição de itens e mais. Aqui estão alguns exemplos:

```python
# Concatenation
list1 = [1, 2, 3]
list2 = [4, 5, 6]

concatenated_list = list1 + list2

# Slicing
array = [1, 2, 3, 4, 5]
sliced_array = array[1:4]  # [2, 3, 4]

# Appending
array = [1, 2, 3]
array.append(4)
```

Estes são apenas alguns exemplos das operações que você pode realizar em arrays no Python.

## Como Comparar Arrays

Vamos revisar como comparar arrays no Python. Aqui estão algumas abordagens:

1. NumPy:

Se você estiver trabalhando com arrays NumPy, pode usar os operadores de comparação elemento a elemento fornecidos pelo NumPy. Aqui está um exemplo:

```python3
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([1, 4, 3])

# Element-wise comparison
result = array1 == array2

print(result)
```

Você também pode usar outros operadores de comparação elemento a elemento, como `<`, `>`, `<=`, `>=`, `!=`, etc., para realizar diferentes tipos de comparações.

2. Lista:

Se você tem listas, pode compará-las usando o operador `==`. Aqui está um exemplo:

```python3
list1 = [1, 2, 3]
list2 = [1, 4, 3]

# Compare lists
result = list1 == list2

print(result)
```

> Nota: O operador `==` compara os elementos e a ordem dos elementos nas listas. Se você quiser verificar se as listas têm os mesmos elementos (ignorando a ordem), você pode usar a função `set()` para converter as listas em conjuntos e então compará-los.

3. Módulo array:

Se você está usando o módulo `array` embutido, pode comparar arrays elemento por elemento usando um loop. Aqui está um exemplo:

```python3
import array as arr

array1 = arr.array('i', [1, 2, 3])
array2 = arr.array('i', [1, 4, 3])

# Element-wise comparison
result = [a == b for a, b in zip(array1, array2)]

print(result)
```

## Multiplicação de Arrays

Para realizar a multiplicação elemento a elemento de arrays em Python, você pode usar o operador `*` para arrays NumPy ou a compreensão de lista para listas regulares do Python. Veja como você pode realizar a multiplicação de arrays usando ambas as abordagens:

1. Arrays NumPy:

Se você está trabalhando com arrays NumPy, pode usar o operador `*` para realizar a multiplicação elemento a elemento. Aqui está um exemplo:

```python
import numpy as np

array1 = np.array([1, 2, 3])
array2 = np.array([4, 5, 6])

result = array1 * array2

print(result) # Output will be: [ 4 10 18]
```

2. Listas Python usando compreensão de lista:

Se você está trabalhando com listas regulares do Python, pode usar a compreensão de lista para realizar a multiplicação elemento a elemento. Aqui está um exemplo:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]

result = [a * b for a, b in zip(list1, list2)]

print(result) # Output will be: [4, 10, 18]
```

## Excluir um Elemento ou Limpar um Array

Vamos ver as maneiras de excluir elementos de um array.

### Como Remover o Primeiro Elemento de um Array em Python

Existem várias formas de remover o primeiro elemento de um array em Python. Aqui estão alguns exemplos:

1. Removendo o primeiro elemento de uma lista padrão do Python usando fatiamento:

```python
my_list = [1, 2, 3, 4, 5]
new_list = my_list[1:]
print(new_list) # Output: [2, 3, 4, 5]
```

2. Removendo o primeiro elemento de um array NumPy usando fatiamento:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = my_array[1:]
print(new_array) # Output: [2 3 4 5]
```

3. Modificando o array original no local usando a função `delete()` do NumPy:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])
new_array = np.delete(my_array, 0)
print(new_array) # Output: [2 3 4 5]
```

> Nota: Nos dois primeiros exemplos, criamos uma nova lista ou array sem modificar a original. No terceiro exemplo, a função `delete()` retorna um novo array, mas modifica o array original no local.

Escolha o método que atenda às suas necessidades com base em se você deseja criar um novo array sem o primeiro elemento ou modificar o próprio array original.

### Método `pop()` para Array

Em Python, você pode usar o método `pop()` para remover e retornar um elemento de um array ou lista. O método `pop()` remove o último elemento por padrão, mas você também pode especificar o índice do elemento que deseja remover. Aqui estão alguns exemplos:

1. Lista:

Se você estiver trabalhando com uma lista, pode usar o método `pop()` para remover e retornar o último elemento. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop()

print(popped_element)  # Output: 5
print(my_list)         # Output: [1, 2, 3, 4]
```

Você também pode passar um índice ao método `pop()` para remover e retornar um elemento em uma posição específica. Por exemplo:

```python
my_list = [1, 2, 3, 4, 5]

popped_element = my_list.pop(2)

print(popped_element)  # Output: 3
print(my_list)         # Output: [1, 2, 4, 5]
```

2. Módulo array:

Se você estiver usando o módulo  `array` embutido, pode usar o método `pop()` para remover e retornar o último elemento. Aqui está um exemplo:

```python
import array as arr

my_array = arr.array('i', [1, 2, 3, 4, 5])

popped_element = my_array.pop()

print(popped_element)  # Output: 5
print(my_array)        # Output: array('i', [1, 2, 3, 4])
```

> Nota: O método `pop()` está disponível apenas para listas e não para arrays NumPy.

### Como Limpar um Array

Para limpar um array em Python, você pode atribuir um array ou lista vazio à variável que representa o array. Veja como você pode limpar um array usando ambas as abordagens:

1. Limpando um array NumPy:

Se você está trabalhando com um array NumPy, você pode atribuir um array NumPy vazio à variável. Veja um exemplo:

```python
import numpy as np

my_array = np.array([1, 2, 3, 4, 5])

my_array = np.array([])

print(my_array) # Output: []
```

2. Limpando uma lista regular do Python:

Se você está trabalhando com uma lista regular do Python, você pode atribuir uma lista vazia à variável. Aqui está um exemplo:

```python
my_list = [1, 2, 3, 4, 5]

my_list = []

print(my_list) # Output: []
```

## Como Remover Duplicatas de um Array Ordenado em Python

Vamos ver como remover duplicatas de um array ordenado em Python. Aqui está um método comum usando uma lista:

```python3
sorted_array = [1, 1, 2, 2, 3, 4, 4, 5, 5, 5]

# Create a new list with unique elements
unique_array = []
for num in sorted_array:
    if num not in unique_array:
        unique_array.append(num)

print(unique_array)  # Output: [1, 2, 3, 4, 5]
```

Alternativamente, se você estiver trabalhando com um array NumPy, pode usar a função `np.unique()` para alcançar o mesmo resultado:

```python3
import numpy as np

sorted_array = np.array([1, 1, 2, 2, 3, 4, 4, 5, 5, 5])

# Get unique elements from the sorted array
unique_array = np.unique(sorted_array)

print(unique_array)  # Output: [1 2 3 4 5]
```
