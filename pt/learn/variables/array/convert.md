> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/array/convert

Em Python, converter entre listas e arrays é uma tarefa comum ao lidar com dados numéricos. O processo de conversão de uma lista para um array nos permite tirar vantagem de cálculos e operações numéricas eficientes fornecidos por bibliotecas como NumPy. Por outro lado, em alguns casos precisamos fazer um array 2d a partir de um array 1d. Então, vamos revisar os tópicos mais comuns sobre conversões relacionadas a array.

## Conversão Entre Listas e Arrays NumPy

Conversões entre listas e arrays NumPy fornecem flexibilidade na manipulação de dados e facilitam a integração perfeita com outras bibliotecas de computação numérica em Python.

### Como Converter um Array NumPy para Lista Python

Para converter um array NumPy para uma lista Python, você pode usar o método `tolist()` fornecido pela biblioteca NumPy. Este método converte um array NumPy em uma lista Python aninhada. Aqui está um exemplo:

```python3
import numpy as np

numpy_array = np.array([1, 2, 3, 4, 5])
python_list = numpy_array.tolist()
print(python_list) # Output: [1, 2, 3, 4, 5]
```

Da mesma forma, se você tem um array multidimensional NumPy, o método `tolist()` irá convertê-lo para uma estrutura de lista Python aninhada:

```python3
import numpy as np

numpy_array = np.array([[1, 2, 3], [4, 5, 6]])
python_list = numpy_array.tolist()
print(python_list) # Output: [[1, 2, 3], [4, 5, 6]]
```

Neste exemplo, o numpy_array é um array NumPy 2D com duas linhas e três colunas. O método `tolist()` converte-o em uma lista Python aninhada com a mesma estrutura.

### Conversão de Lista para Array em Python

Para converter uma lista Python em um array, você pode usar a função `array()` fornecida pela biblioteca NumPy. A função `array()` cria um novo array NumPy a partir dos elementos da lista fornecida. Aqui está um exemplo de conversão de lista para array:

```python3
import numpy as np

my_list = [1, 2, 3, 4, 5]
my_array = np.array(my_list)
print(my_array) # Output: [1 2 3 4 5]
```

Os arrays NumPy são homogêneos, o que significa que eles só podem conter elementos do mesmo tipo de dado. Se os elementos da lista forem de tipos diferentes, o NumPy automaticamente fará um *upcast* dos elementos para um tipo de dado comum.

Por exemplo:

```python3
import numpy as np

my_list = [1, 2.5, 'three', True]
my_array = np.array(my_list)
print(my_array) # Output: ['1' '2.5' 'three' 'True']
```

Neste caso, os elementos da lista têm diferentes tipos de dados (`int`, `float`, `str` e `bool`). O NumPy converte todos os elementos para o tipo de dado comum, que neste caso é `str`. O array resultante contém strings representando os elementos da lista.

## Conversão Entre String e Array

Converter entre strings e arrays em Python pode ser útil ao trabalhar com dados textuais ou ao manipular caracteres individuais.

### Conversão de String Python em Array

Para converter uma string Python em um array de caracteres individuais, você pode iterar sobre a string e criar uma lista de caracteres. Aqui está um exemplo:

```python3
string = "Hello, world!"
array = [char for char in string]
print(array) # Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

No exemplo acima, iteramos sobre cada caractere na string usando uma compreensão de lista. Cada caractere é adicionado à lista, resultando em um array onde cada elemento representa um caractere individual da string.

Se você quiser dividir a string em um array de palavras em vez de caracteres, você pode usar o método `split()`. Por padrão, o método `split()` divide a string com base em caracteres de espaço em branco (espaços, tabulações, novas linhas). Aqui está um exemplo:

```python
string = "Hello, world! How are you?"
array = string.split()
print(array) # Output: ['Hello,', 'world!', 'How', 'are', 'you?']
```

Neste exemplo, o método `split()` divide a string em uma lista de substrings baseada em caracteres de espaço em branco, resultando em uma matriz onde cada elemento representa uma palavra da string.

### Conversão de Array para String

Para converter uma matriz (ou lista) em uma string em Python, você pode usar o método `join()`. O método `join()` concatena os elementos de um iterável em uma única string, usando um delimitador especificado. Aqui está um exemplo:

```python3
array = ['Hello', 'world', 'How', 'are', 'you?']
string = ' '.join(array)
print(string) # Output: Hello world How are you?
```

Ao alterar o delimitador passado para o método `join()`, você pode modificar a maneira como os elementos são separados na string resultante. Por exemplo, usando uma vírgula (',') como o delimitador:

```python3
array = ['apple', 'banana', 'orange']
string = ', '.join(array)
print(string) # Output: apple, banana, orange
```
