> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/text-files

Arquivos de texto são usados para armazenar e ler dados, como um documento de texto simples ou saída de banco de dados. Python oferece várias maneiras de trabalhar com [Arquivos de Texto](https://en.wikipedia.org/wiki/Text_file), incluindo leitura, escrita e adição a arquivos. Compreender como lidar com arquivos de texto é importante para qualquer programador que trabalhe com Python, pois pode ajudá-los a gerenciar e manipular dados de forma eficiente dentro de seu programa.

## Como ler arquivo de texto em Python

Para ler um arquivo de texto em Python, você pode usar a função embutida `open()` para abrir o arquivo no modo de leitura. Aqui estão 2 exemplos de código:

### Abrir Arquivo de Texto

```python
with open('filename.txt', 'r') as file:
    content = file.read()
```

Aqui, a função `open()` abre o arquivo `filename.txt` no modo de leitura e retorna um objeto de arquivo. A instrução `with` é usada para garantir que o arquivo seja propriamente fechado após seu uso. A função `read()` lê o conteúdo do arquivo e armazena na variável `content`.

### Lendo Arquivo de Texto Linha por Linha

```python
with open('filename.txt', 'r') as file:
    for line in file:
        print(line)
```

Aqui, a função `open()` abre o arquivo `filename.txt` em modo de leitura e retorna um objeto de arquivo. A instrução `with` é usada para garantir que o arquivo seja propriamente fechado após seu uso. O loop `for` lê o arquivo linha por linha e o imprime no console.

Em ambos os exemplos, você pode substituir `filename.txt` pelo caminho do arquivo de texto real que deseja ler.

## Escrever em um Arquivo de Texto em Python

Escrever em um arquivo de texto em Python é uma operação básica de arquivo que envolve criar um novo arquivo, escrever dados nele e, opcionalmente, fechar o arquivo. Aqui estão dois exemplos de como escrever em um arquivo de texto em Python:

```python
file = open('example.txt', 'w')
file.write('Hello, world!')
file.close()
```

Neste exemplo, criamos um novo arquivo chamado example.txt usando o modo 'w', que significa escrever. Então, usamos o método `write()` para adicionar a string `Hello, world!` ao arquivo. Por fim, fechamos o arquivo usando o método `close()`.

```python
file = open('example.txt', 'w')
lines = ['Line 1\n', 'Line 2\n', 'Line 3\n']
file.writelines(lines)
file.close()
```

Aqui, criamos um novo arquivo chamado example.txt e o atribuímos à variável `file` com o modo `w`. Depois, definimos três linhas de texto como uma lista de strings e o atribuímos à variável `lines`. Usamos o método `writelines()` para escrever todas as linhas no arquivo de texto. Finalmente, fechamos o arquivo usando o método `close()`.

### Como Obter a Saída do Python em Arquivo de Texto

Se você deseja salvar a saída do seu código Python em um arquivo de texto, você pode usar a função `open()` no Python.

```python
output = "Hello, world!"
with open("output.txt", "w") as file:
    file.write(output)
```

Neste exemplo, temos uma string `output` que contém o texto que queremos salvar no arquivo. Abrimos um arquivo chamado `output.txt` no modo de escrita usando a função `open()`. Em seguida, usamos o método `write()` do objeto do arquivo para salvar o conteúdo de `output` no arquivo.

Em qualquer caso, agora você pode abrir o arquivo e ver o texto que foi escrito. Embora os exemplos sejam simples, você pode modificá-los para se adequar a cenários mais complexos.

## Como Converter Arquivos Numpy para Arquivos de Texto

Ao trabalhar com dados numéricos, `numpy` é uma das bibliotecas mais populares para manipular arrays em Python. Às vezes, você pode precisar converter um arquivo `numpy` em um arquivo de texto para fins de compartilhamento e colaboração. Aqui estão duas maneiras de converter um arquivo `numpy` em um arquivo de texto em Python:

A função `savetxt()` da biblioteca `Numpy` pode ser usada para salvar os dados de um array em um arquivo de texto. Veja como fazer isso:

```python
### Method 1
import numpy as np

data = np.load('file.npy') # load the Numpy file
np.savetxt('file.txt', data) # save the data from the Numpy file to a text file
```

Você também pode usar o método `tofile()` do objeto array para salvar os dados em um arquivo de texto.

```python
### Method 2
import numpy as np

data = np.load('file.npy') # load the Numpy file
data.tofile('file.txt', sep=',', format='%10.5f') # save the data to a text file
```

No exemplo acima, o parâmetro `sep` especifica o separador entre os valores de dados (uma vírgula neste caso) e o parâmetro `format` especifica o formato dos valores de saída.
