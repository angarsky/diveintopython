> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/variable-import

Este artigo foca no aspecto crucial da importação em Python. Dominar a declaração `import` é essencial para incorporar variáveis de um arquivo para outro de maneira contínua. Em outras palavras, você pode facilmente importar variáveis em Python com esta declaração. Vamos explorar a eficiência e modularidade obtidas ao utilizar o import para acessar variáveis em arquivos Python.

## Como Importar uma Variável de Outro Arquivo em Python

Para importar uma variável em Python, você precisa usar a declaração `import`. Suponha que você tenha um arquivo Python chamado `file1.py` que contém uma variável chamada `my_variable`.

```python
# file2.py
from file1 import my_variable

# Now you can use the variable in this file
print(my_variable)
```

No código acima, estamos importando a variável `my_variable` do arquivo `file1.py` utilizando a sintaxe `from ... import`. Após importar a variável, podemos usá-la no `file2.py` como qualquer outra variável. Esse método permite que você exporte variáveis de um arquivo e as utilize em outros arquivos Python, promovendo a reutilização de código e organização.

## Importando Variáveis de Outro Arquivo via Importação de Módulo

Alternativamente, você pode carregar variáveis de outro arquivo importando o módulo inteiro - simplesmente importe `file1.py` e acesse a variável usando o nome do módulo assim:

```python
# file2.py
import file1

# Accessing the variable using the module name
print(file1.my_variable)
```

Neste caso, estamos importando todo o módulo `file1.py` usando a instrução de importação. Em seguida, acessamos a variável `my_variable` usando o prefixo do nome do módulo `file1`.

## Importando Múltiplas Variáveis de Outro Arquivo

Python permite importar múltiplas variáveis de um arquivo usando a sintaxe `from ... import`. Considere um cenário onde `file1.py` contém múltiplas variáveis: `var1`, `var2` e `var3`.

```python
# file2.py
from file1 import var1, var2, var3

# Using the imported variables in this file
print(var1)
print(var2)
print(var3)
```

Ao especificar múltiplas variáveis separadas por vírgulas após a declaração `from ... import`, você pode importar e usar diretamente essas variáveis dentro de `file2.py`. Este método melhora a legibilidade do código ao importar explicitamente apenas as variáveis necessárias.

## Importando com Alias para Clareza

Às vezes, nomes de variáveis podem colidir ou ser ambíguos quando importados de arquivos diferentes. Para mitigar isso, Python permite que você importe variáveis com aliases.

```python
# file2.py
from file1 import my_variable as alias_variable

# Utilizing the imported variable with an alias
print(alias_variable)
```

Ao atribuir um alias durante a importação (como `alias_variable`), você pode fornecer um nome mais claro dentro do contexto do arquivo atual, melhorando a compreensão do código.

## Importando Módulos de Diretórios Diferentes

Python suporta a importação de módulos de diferentes diretórios usando caminhos absolutos ou relativos. Suponha que `file1.py` reside em uma pasta separada chamada `module_folder`.

```python
# file2.py
import sys
sys.path.append('path_to_module_folder')  # Include the path to module_folder

import file1

# Accessing the variable from the module in a different directory
print(file1.my_variable)
```

Ao acrescentar o caminho para o diretório que contém o módulo em `sys.path`, Python pode localizar e importar o módulo, permitindo o acesso às suas variáveis a partir de `file2.py`.

## Importações Dinâmicas Usando `importlib`

A biblioteca `importlib` do Python permite importações dinâmicas, possibilitando que você importe módulos ou variáveis com base em condições de execução.

```python
# file2.py
import importlib

module_name = 'file1'
module = importlib.import_module(module_name)

# Accessing the variable dynamically
print(module.my_variable)
```

Aqui, `importlib.import_module()` permite importar um módulo especificado por uma string (`module_name`), concedendo flexibilidade ao determinar importações durante a execução.
