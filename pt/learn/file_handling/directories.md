> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/directories

Diretórios são uma parte crítica da gestão de arquivos e desempenham um papel crucial no desenvolvimento de programas abrangentes em Python.

## Módulo OS

O módulo [os](https://docs.python.org/3/library/os.html) em Python oferece uma maneira de usar funcionalidades dependentes do sistema operacional. Ele ajuda a realizar várias operações, como criar diretórios, deletar `files`, mudar o diretório de trabalho atual, etc.

Para usar o módulo OS, primeiro, precisamos `importá-lo` usando a declaração `import os`. Aqui estão dois exemplos de como usar o módulo OS:

### Exemplo 1: Criar um Novo Diretório

Para fazer um diretório usando o módulo OS, podemos usar a função `os.mkdir()`. Aqui está um exemplo:

```python
import os

# specify the path where you want to create the directory
path = "/home/user/newdir"

# create the directory
try:
    os.mkdir(path)
    print("Directory created successfully!")
except OSError as error:
    print(error)
```

### Exemplo 2: Obter o Diretório de Trabalho Atual

Para obter o diretório de trabalho atual usando o módulo `os` no Python, podemos usar a função `os.getcwd()`. Aqui está um exemplo:

```python
import os

# get the current working directory
cwd = os.getcwd()

# print the current working directory
print("Current working directory:", cwd)
```

Ao usar o módulo `os`, podemos realizar várias operações relacionadas ao sistema operacional, incluindo operações com arquivos, operações de `directory` e gerenciamento de processos.

## Como Obter Lista de Arquivos em um Diretório

Para obter uma lista de arquivos em um diretório, você pode usar a função `os.listdir()`. Esta função retorna uma lista de todos os arquivos e diretórios no diretório especificado.

```python
import os

# get list of files in the current directory
files = os.listdir()

# print the list of files
print(files)

### Output
# ['file1.txt', 'file2.jpg', 'directory1', 'directory2']
```

```python
import os

# get list of files in a directory
directory = "/path/to/directory"
files = os.listdir(directory)

# print the list of files
print(files)
### Output

# ['file1.pdf', 'file2.docx', 'file3.txt']
```

Em resumo, ao usar o `os.listdir()` você pode facilmente obter uma lista de arquivos em um diretório. Isso pode ser útil para várias tarefas, como manipulação de arquivos, análise de dados e mais.

## Como Obter o Diretório Atual

Para obter o diretório atual, você pode usar o módulo `os`. O método `os.getcwd()` retorna o diretório de trabalho atual como uma string.

```python
import os

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

Você também pode usar o módulo [pathlib](https://docs.python.org/3/library/pathlib.html) para obter o diretório atual:

```python
from pathlib import Path

### Get current directory

current_directory = Path.cwd()

### Print current directory

print(current_directory)
```

Para alterar o diretório atual, você pode usar o método `os.chdir()`:

```python
import os

### Change current directory

os.chdir('/path/to/new/directory')

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

Lembre-se de `import` o módulo necessário para mudar de diretórios antes de tentar mudar o diretório de trabalho atual.

## Importar de Outro Diretório

Para `import` módulos de outro diretório, você pode usar o seguinte código:

```python
import sys
sys.path.insert(0, '../path/to/parent/directory')

from module_name import function_name
```

No exemplo acima, primeiro inserimos o `path` do diretório pai no `path` do sistema usando `sys.path.insert`. Em seguida, podemos `import` o módulo ou função requeridos do `directory` especificado usando a palavra-chave `from`.

Outra maneira de `import` módulos de um diretório pai é usar o arquivo `__init__.py`. Este arquivo é um arquivo especial que é executado quando o diretório é importado como um módulo. Neste arquivo, você pode adicionar o seguinte código:

```python
import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + "/../")

from module_name import function_name
```

Nessa abordagem, primeiro `importamos` o módulo `os` para acessar informações de caminho de arquivo e diretório. Em seguida, adicionamos o diretório pai ao `path` do sistema usando `sys.path.append`. Finalmente, podemos `importar` o módulo ou função requeridos do diretório pai usando a palavra-chave `from`.

Ao usar esses métodos, você pode facilmente `importar` módulos de um diretório pai e otimizar a organização do seu projeto.

## Verificar se o Diretório Existe

Para verificar se um diretório existe, você pode usar a função `os.path.exists()`. Se o diretório existir, ela retornará `True`, caso contrário, retornará `False`.

```python
import os

if os.path.exists('/my/directory'):
    print('Directory exists')
else:
    print('Directory does not exist')
```

Se você quiser criar o diretório caso ele não exista, pode usar a função `os.makedirs()`. Isso criará o diretório e quaisquer diretórios pais necessários.

```python
import os

if not os.path.exists('/my/directory'):
    os.makedirs('/my/directory')

### Now you can use the directory for your operations

```

Certifique-se de substituir `/my/directory` pelo caminho real do diretório que você deseja verificar ou criar.

## Criando Diretório em Python

Para criar um diretório em Python, você pode usar o módulo `os`. Você também pode verificar se o diretório já existe ou não antes de criá-lo usando o método `os.path.exists()`. O método `os.makedirs()` cria um diretório e todos os seus diretórios pais caso eles não existam.

```python
import os

# Directory Path
path = "/example/directory"

# Check if directory already exists
if not os.path.exists(path):
    # Create directory
    os.makedirs(path)
    print("Directory created successfully")
else:
    print("Directory already exists")
```

O método `os.mkdir()` cria um diretório apenas se ele não existir. Ele gera um `FileExistsError` se o diretório já existir.

```python
import os

# Directory Path
path = "/example/directory"

try:
    # Create directory
    os.mkdir(path)
    print("Directory created successfully")
except FileExistsError:
    print("Directory already exists")
```

Usando qualquer um desses métodos, você pode facilmente criar um diretório em Python e verificar se ele já existe.

## Copiar Arquivo para Outro Diretório

Copiar um arquivo de um diretório para outro em Python é uma tarefa comum. Existem várias maneiras de alcançar isso, mas o método mais fácil é usando o módulo [shutil](https://docs.python.org/3/library/shutil.html), que fornece uma função `copy` para copiar arquivos.

### Usando `shutil.copy()` para copiar um arquivo de um diretório para outro

A função `copy` no módulo `shutil` recebe dois argumentos - o arquivo de origem e o diretório de destino.

```python
import shutil

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

shutil.copy(src_file, dst_dir)
```

Isso copiará o arquivo `filename.txt` do diretório `/home/user` para o diretório `/home/user/new_directory`.

### Usando `os.rename()` para mover um arquivo de um diretório para outro em Python

Outro método para copiar um arquivo de um diretório para outro em Python é usando a função `os.rename()`.

```python
import os

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

new_path = os.path.join(dst_dir, os.path.basename(src_file))
os.rename(src_file, new_path)
```

Isso moverá o arquivo `filename.txt` do diretório `/home/user` para o diretório `/home/user/new_directory`.

Em conclusão, os dois métodos acima podem ser usados para copiar um arquivo de um diretório para outro em Python com facilidade.

## Como Deletar Diretório

Para deletar um diretório em Python, podemos usar o módulo `os` que nos fornece os métodos necessários para remover arquivos e diretórios. Uma maneira de deletar todos os arquivos em um diretório é iterando sobre todos os arquivos e deletando-os um por um. Outra maneira é simplesmente remover o diretório usando o método `os.rmdir()`.

### Deletar todos os Arquivos em um Diretório

Podemos deletar todos os arquivos dentro de um diretório iterando sobre cada arquivo e deletando-o usando o método `os.remove()`. Aqui está um exemplo:

```python
import os

dir_name = '/path/to/directory'

# iterate over each file and delete it
for file_name in os.listdir(dir_name):
    file_path = os.path.join(dir_name, file_name)
    if os.path.isfile(file_path):
        os.remove(file_path)
```

### Removendo o Diretório

Podemos remover um diretório usando o método `os.rmdir()`. Este método só funciona se o diretório estiver vazio - se houver algum arquivo dentro do diretório, o método gerará um erro. Para remover um diretório não vazio, podemos usar o método `rmtree()` do módulo `shutil`. Aqui está um exemplo:

```python
import os
import shutil

dir_name = '/path/to/directory'

# remove the directory
try:
    os.rmdir(dir_name)
except OSError:
    shutil.rmtree(dir_name)
```

Com os exemplos de código acima, você agora pode facilmente deletar todos os arquivos em um diretório e remover o próprio diretório usando Python.

## Ler todos os Arquivos em um Diretório

Se você deseja ler todos os `files` em um diretório usando Python, você pode usar o módulo `os`. Aqui estão dois exemplos de como realizar esta tarefa:

```python
import os

### Method 1

files = os.listdir('/path/to/directory')
for filename in files:
    with open(filename, 'r') as f:
        ##### do something with the file
        pass

### Method 2

for dirpath, dirnames, filenames in os.walk('/path/to/directory'):
    for filename in filenames:
        with open(os.path.join(dirpath, filename), 'r') as f:
            ##### do something with the file
            pass

```

No Método 1, a função `os.listdir()` retorna uma lista de todos os `filenames` no diretório. Você pode então usar um loop `for` para iterar pela lista e abrir cada arquivo.

No Método 2, a função `os.walk()` itera através da árvore de diretórios, retornando uma 3-tupla de `(dirpath, `dirnames,` filenames)` para cada diretório que encontra. Você pode então usar loops `for` aninhados para iterar por todos os `filenames` e abrir cada arquivo.

Em ambos os casos, você pode precisar ajustar o caminho `/path/to/directory` para corresponder ao local atual do diretório que deseja ler.

## Como Importar do Diretório Pai

Para `importar` um módulo de um diretório pai em Python, você precisa adicionar o diretório pai à lista `sys.path` do seu sistema. Isso pode ser feito usando a função `sys.path.append()`.

1. Se seu diretório de trabalho for um diretório filho do diretório pai, você pode adicionar o diretório pai ao caminho assim:

```python
import sys
sys.path.append('..')

# from parent_module import parent_function
```

2. Se o seu diretório de trabalho não é um diretório filho do diretório pai, você pode adicionar o caminho completo do diretório pai ao caminho desta forma:

```python
import sys
sys.path.append('/path/to/parent_directory')

# from parent_module import parent_function
```

Certifique-se de substituir `parent_module` e `parent_function` com o nome do seu módulo e função pai.

Adicionando o diretório pai à lista `sys.path` do seu sistema, você pode `import` módulos do diretório pai em seu código Python.
