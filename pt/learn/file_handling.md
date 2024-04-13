> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling

Python possui uma variedade de funções integradas e bibliotecas que tornam o trabalho com arquivos uma brisa, e neste artigo, exploraremos as diferentes técnicas e melhores práticas para manipulação de arquivos em Python.

## Como Abrir Arquivos em Python

Com Python, você pode facilmente ler e escrever arquivos no sistema. Para ler um arquivo em Python, você pode usar a função `open()`.

### Lendo um Arquivo

Em Python, você pode ler um arquivo usando a função `open()`. O seguinte exemplo de código demonstra como ler um arquivo em Python:

```python
file = open('example.txt', 'r')
data = file.read()
print(data)
```

### Lendo um Arquivo Linha Por Linha

Às vezes, você pode querer ler um arquivo linha por linha. Para fazer isso, você pode usar um loop `for` para percorrer o arquivo linha por linha. O código a seguir demonstra como ler um arquivo linha por linha em Python:

```python
file = open('example.txt', 'r')
for line in file:
    print(line)
```

### Lidando com o Erro `No such file or directory`

Não é incomum encontrar um erro `No such file or directory` ao trabalhar com arquivos em Python. Para tratar esse erro, você pode usar um bloco `try` e `except` para capturar o erro e lidar com ele adequadamente. O seguinte código demonstra como tratar um erro `No such file or directory` em Python:

```python3
try:
    file = open('example.txt', 'r')
except FileNotFoundError:
    print("File not found!")
```

## Diferentes Modos para Manipulação de Arquivos em Python

Em Python, existem vários modos para manipular arquivos (modos de abertura de arquivo), incluindo:

- **Modo de leitura ('r')**: Este modo é usado para ler um arquivo existente.

- **Modo de escrita ('w')**: Este modo é usado para escrever em um arquivo. Ele criará um novo arquivo se o arquivo não existir, e sobrescreverá o arquivo se ele existir.

- **Modo de acréscimo ('a')**: Este modo é usado para adicionar novos dados ao final de um arquivo existente (acrescentar a um arquivo). Se o arquivo não existir, um novo arquivo será criado.

- **Modo binário ('b')**: Este modo é usado para ler ou escrever dados binários, como imagens ou arquivos de áudio.

### Abrir um arquivo no modo de escrita

```python
file = open('example.txt', 'w')

# Write to the file
file.write('Hello, World!')

# Close the file
file.close()
```

Neste exemplo, primeiro abrimos um arquivo chamado `example.txt` no modo de escrita. Nós escrevemos a string `'Hello, World!'` no arquivo e então o fechamos.

### Abrir um arquivo no modo de leitura

```python
file = open('example.txt', 'r')

# Read the file contents
content = file.read()

# Print the contents
print(content)

# Close the file
file.close()
```

Neste exemplo, abrimos o mesmo arquivo, `example.txt`, mas desta vez no modo de leitura. Lemos o conteúdo do arquivo usando o método `read()`, salvamos em uma variável chamada `content` e, em seguida, imprimimos o conteúdo no console. Finalmente, nós `close()` o arquivo.

## Operações com arquivos

Python fornece módulos importantes como `os` e `shutil` para realizar operações com arquivos, como deletar, renomear, copiar e mover arquivos.

### Deletando Arquivos

Você pode usar o método `os.remove()` para deletar um arquivo em Python. O seguinte trecho de código mostra como remover o arquivo nomeado `example.txt`.

```python
import os

os.remove("example.txt")
```

### Renomeando Arquivos

Você pode usar o método `os.rename()` para renomear um arquivo em Python. O seguinte trecho de código mostra como renomear o arquivo chamado `example.txt` para `new_example.txt`.

```python
import os

os.rename("example.txt", "new_example.txt")
```

### Copiando Arquivos

Você pode usar o método `shutil.copy()` para copiar um arquivo em Python. O trecho de código a seguir mostra como copiar o arquivo chamado `example.txt` para um novo arquivo chamado `new_example.txt`.

```python
import shutil

shutil.copy("example.txt", "new_example.txt")
```

### Movendo Arquivos

Você pode usar o método `shutil.move()` para mover um arquivo em Python. O seguinte trecho de código mostra como mover o arquivo chamado `example.txt` para um novo local chamado `new_folder`.

```python
import shutil

shutil.move("example.txt", "/path/to/new_folder/example.txt")
```

## Métodos de Arquivo em Python

Ao trabalhar com arquivos em Python, existem vários métodos integrados que permitem ler, escrever e manipular o conteúdo dos arquivos. Estes métodos oferecem opções flexíveis para o manuseio de arquivos. Aqui está um guia para alguns métodos de arquivo Python comumente usados:

### Como Ler um Arquivo

O método `read()` lê todo o conteúdo de um arquivo e o retorna como uma string. Por outro lado, o método `readline()` lê uma única linha do arquivo. Ele retorna a linha como uma string e move o ponteiro do arquivo para a próxima linha.

```python
file = open("example.txt", "w")
content = file.read()
line = file.readline()
file.close()
```

### Como Escrever em um Arquivo

O método `write()` é utilizado para escrever dados em um arquivo. Ele recebe uma string como argumento e a escreve no arquivo. Alternativamente, o método `writelines()` permite que você escreva múltiplas linhas em um arquivo fornecendo uma lista de strings.

```python
file = open("example.txt", "w")
file.write("Hello, World!")
lines = ["Line 1", "Line 2", "Line 3"]
file.writelines(lines)
file.close()
```

### Como Fechar um Arquivo

O método `close()` é essencial para um manuseio correto de arquivos. Ele fecha o arquivo e libera quaisquer recursos do sistema associados a ele. É crucial fechar o arquivo após realizar operações nele para evitar possíveis problemas.

```python
file = open("example.txt", "w")
# Perform operations on the file
file.close()
```

Estes são apenas alguns exemplos de métodos de arquivo em Python que permitem ler, escrever e manipular arquivos. É importante tratar exceções e fechar arquivos corretamente para garantir um gerenciamento de arquivos eficiente e a utilização de recursos. Utilizando esses métodos de arquivo de forma eficaz, você pode manipular operações com arquivos com facilidade em seus programas Python.

## Operações com Tamanho de Arquivo

Para obter o tamanho de um arquivo em Python, você pode usar vários métodos fornecidos pela biblioteca padrão do Python. Aqui estão dois exemplos que demonstram como recuperar o tamanho de um arquivo usando abordagens diferentes.

### Como obter o Tamanho de um Arquivo

O módulo `os.path` fornece um método conveniente, `getsize()`, para recuperar o tamanho de um arquivo em bytes.

```python3
import os

file_path = "example.txt"

try:
    file_size = os.path.getsize(file_path)
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

Neste exemplo, usamos a função `getsize()` do módulo `os.path` para obter o tamanho do arquivo especificado por `file_path`. Se o arquivo for encontrado, o tamanho é impresso em bytes. Se o arquivo não for encontrado, um `FileNotFoundError` é gerado.

### Obter o Tamanho de um Arquivo com a Função `os.stat`

Outra maneira de recuperar o tamanho de um arquivo é usando a função `os.stat()`, que retorna uma tupla nomeada contendo atributos do arquivo, incluindo o tamanho do arquivo.

```python3
import os

file_path = "example.txt"

try:
    file_stats = os.stat(file_path)
    file_size = file_stats.st_size
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

Neste exemplo, chamamos `os.stat()` para obter os atributos do arquivo, incluindo o tamanho, que é acessado usando o atributo `st_size` da tupla nomeada retornada.

Ao usar essas abordagens, você pode facilmente recuperar o tamanho de um arquivo em Python. Lembre-se de tratar exceções, como `FileNotFoundError`, para levar em conta os casos em que o arquivo não existe.

## Operações com uma Extensão de Arquivo

Ao trabalhar com arquivos em Python, você pode frequentemente precisar extrair a extensão do arquivo para determinar o tipo de arquivo com o qual está lidando. Python oferece várias maneiras de obter a extensão de um arquivo a partir de um nome de arquivo ou caminho.

```python
import os

filename = "example.txt"
extension = os.path.splitext(filename)[1]

print("File Extension:", extension)
```

Neste exemplo, usamos o módulo `os.path`, especificamente a função `splitext()`, para separar a extensão do arquivo do nome do arquivo fornecido. Ele retorna uma tupla contendo o nome base e a extensão, e extraímos a `extension` usando indexação.

## Como Verificar se um Arquivo Existe com Python

Para verificar se um arquivo existe, você pode usar o módulo integrado [os](https://docs.python.org/3/library/os.html) que fornece funcionalidades para interagir com o sistema operacional.

```python3
import os

# Define the path of the file to check
file_path = "/path/to/file"

# Check if the file exists
if os.path.exists(file_path):
    print("File exists!")
else:
    print("File does not exist.")
```

Neste exemplo, primeiro `importamos` o módulo `os` e então definimos a variável `file_path` com o caminho para o arquivo que queremos verificar. A função `os.path.exists()` é usada para checar se o arquivo existe, e se sim, `imprimimos` uma mensagem indicando que o arquivo existe. Se o arquivo não existir, `imprimimos` uma mensagem indicando que ele não existe.

```python
import os

# Define the path of the file to check
file_path = "/path/to/file"

try:
    # Check if the file exists
    with open(file_path) as f:
        print("File exists!")
except FileNotFoundError:
    print("File does not exist.")
```

Neste exemplo, usamos um bloco `try` e `except` para capturar a exceção `FileNotFoundError` que é levantada se o arquivo não existir. Tentamos abrir o arquivo: `with open(file_path) as f:` e se o arquivo existir, `print` uma mensagem indicando que o arquivo existe. Se o arquivo não existir, capturamos a exceção `FileNotFoundError` e `print` uma mensagem indicando que o arquivo não existe.

Ao usar um destes dois exemplos de código, você pode facilmente verificar se um arquivo existe em Python e tomar a ação apropriada dependendo do resultado.

## Como Criar um Arquivo Simples

Para criar um arquivo em Python, use a função integrada `open()`. Você pode especificar o nome do arquivo e o modo no qual deseja abrir o arquivo (ler, escrever ou anexar).

Para imprimir em um arquivo em Python, você pode usar a função `print()` com o parâmetro `file`:

```python
with open("example.txt", "w") as file:
  print("Hello, World!", file=file)
```

Este código cria um novo arquivo chamado `example.txt` no modo de escrita e escreve a string `Hello, World!` no arquivo.

Para escrever em um arquivo em Python, você pode usar o método `.write()`:

```python
with open("example.txt", "w") as file:
  file.write("Hello, World!")
```

Este código cria um novo arquivo chamado `example.txt` no modo de escrita e escreve a string `Hello, World!` no arquivo usando o método `write()`.

Lembre-se de fechar o arquivo após terminar de escrever. Usar a instrução `with` cuida disso automaticamente.
