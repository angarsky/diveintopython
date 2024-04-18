> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/excel

Excel em Python é um tópico em alta entre analistas de dados e profissionais, fornecendo uma combinação poderosa de duas das ferramentas mais essenciais para manipulação e análise de dados. A linguagem de programação flexível do Python pode ser usada para automatizar tarefas repetitivas do [Excel](https://en.wikipedia.org/wiki/Microsoft_Excel), manipular conjuntos de dados complexos e criar visualizações de dados perspicazes. Ao integrar o Python com o Excel, os usuários podem aproveitar os pontos fortes de ambas as aplicações para aumentar a produtividade, otimizar fluxos de trabalho e obter insights mais profundos sobre seus dados. Neste artigo, exploraremos os benefícios do Excel em Python e como isso pode melhorar suas capacidades de análise de dados.

## Como Ler Arquivo Excel no Python

Python é uma ótima linguagem para trabalhar com Excel. Com a ajuda da biblioteca Excel do Python, você pode facilmente manipular arquivos Excel, analisar dados e automatizar tarefas. Aqui estão dois exemplos de como usar o Python com o Excel:

### Lendo e Escrevendo Arquivos Excel com `pandas`

Para ler e escrever arquivos Excel com o Python, você pode usar a biblioteca [`pandas`](https://pypi.org/project/pandas/). Para instalar use `pip install "pandas[excel]"`. Aqui está um trecho de código que lê um arquivo Excel e salva como um novo arquivo:

```python
import pandas as pd

df = pd.read_excel('input_file.xlsx')
df['new_column'] = df['old_column'] * 2
df.to_excel('output_file.xlsx', index=False)
```

Neste exemplo, estamos usando a função `read_excel()` para ler um arquivo de entrada, em seguida, adicionando uma nova coluna e multiplicando a coluna antiga por `2`, e finalmente salvando o resultado em um novo arquivo de saída com a função `to_excel()`.

### Manipulando Arquivos Excel com OpenPyXL

Se você precisa de mais controle sobre seus arquivos Excel, você pode usar a biblioteca `OpenPyXL`. Para instalar use `pip install openpyxl`. Aqui está um exemplo de como adicionar uma nova planilha a um livro de trabalho existente:

```python
from openpyxl import load_workbook, Workbook

wb = load_workbook('existing_workbook.xlsx')
new_ws = wb.create_sheet('New Worksheet')
new_ws['A1'] = 'Hello, world!'
wb.save('existing_workbook.xlsx')
```

Neste exemplo, estamos carregando uma planilha existente com `load_workbook()`, criando uma nova planilha com `create_sheet()`, adicionando um valor à célula `A1` e, finalmente, salvando as alterações com `save()`.

### Lendo e Escrevendo Arquivos Excel com `xlrd`

[Xlrd](https://pypi.org/project/xlrd/1.0/) é uma biblioteca para ler dados e informações de formatação de arquivos Excel no histórico formato `.xls`. Aqui está um exemplo de código para ler um arquivo Excel usando `xlrd`:

```python
import xlrd

# specify path and filename of Excel file
file_path = 'path/to/file/excel_file.xls'

# open workbook
workbook = xlrd.open_workbook(file_path)

# get sheet by name
worksheet = workbook.sheet_by_name('Sheet1')

# read data from cells
cell_value = worksheet.cell_value(0, 0)
```

No exemplo acima, a biblioteca `xlrd` é usada para abrir o arquivo Excel. A função `workbook.sheet_by_name` é usada para acessar a aba chamada 'Sheet1'. A função `worksheet.cell_value` é usada para ler dados das células da aba. No exemplo, o valor da célula A1 é lido.

## Criar uma Nova Aba Excel em Python

Se você deseja criar uma nova aba Excel em Python, você pode usar o módulo `openpyxl`. Este módulo permite que você crie, leia e modifique arquivos Excel.

### Exemplo de Código 1: `openpyxl`

```python
import openpyxl

# Create a new Excel workbook
workbook = openpyxl.Workbook()

# Activate the first sheet
sheet = workbook.active

# Rename the first sheet
sheet.title = "New Sheet"

# Save the workbook
workbook.save("new_excel_sheet.xlsx")
```

### Exemplo de Código 2: `xlwt`

```python
import xlwt

# Create a new workbook
workbook = xlwt.Workbook()

# Add a new sheet to the workbook
sheet = workbook.add_sheet("New Sheet")

# Save the workbook
workbook.save("new_excel_sheet.xls")
```

Ambos esses exemplos criarão uma nova planilha do Excel com o nome `New Sheet` e a salvarão em um arquivo. Você pode modificar o código para criar planilhas com nomes diferentes ou adicionar dados às planilhas.

## Abrir Excel em Python em um Diretório Diferente

Para abrir um arquivo Excel de um diretório diferente em Python, pode-se usar o módulo `os` do Python e definir o diretório de trabalho para o diretório desejado. Em seguida, use a biblioteca `pandas` para ler o arquivo Excel.

```python
import os
import pandas as pd

### set working directory to desired directory

os.chdir('/path/to/directory')

### read Excel file using pandas

df = pd.read_excel('excel_file.xlsx')
```

```python
import pandas as pd

### read Excel file from a specific directory using pandas

df = pd.read_excel('/path/to/directory/excel_file.xlsx')
```

Em ambos os exemplos, a função `pd.read_excel()` é usada para ler o arquivo Excel. O primeiro exemplo usa `os.chdir()` para mudar o diretório de trabalho para o diretório desejado antes de ler o arquivo. O segundo exemplo lê diretamente o arquivo Excel de um diretório específico.

Com esses códigos, pode-se facilmente abrir um arquivo Excel de um diretório diferente em Python.
