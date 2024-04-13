> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/csv

Arquivos CSV (Valores Separados por Vírgula) são um dos formatos de dados mais comuns utilizados em ciência de dados, aprendizado de máquina e análise. Python é uma linguagem de programação poderosa que fornece várias ferramentas e bibliotecas para trabalhar com arquivos [CSV](https://en.wikipedia.org/wiki/Comma-separated_values). Neste artigo, exploraremos os conceitos básicos de trabalhar com arquivos CSV em Python, incluindo leitura, escrita e manipulação de dados. Também abordaremos alguns tópicos avançados, como lidar com arquivos CSV grandes, tratar dados faltantes e realizar operações em dados CSV usando as bibliotecas NumPy e Pandas.

## Abrir Arquivo CSV e Ler Dados com Python

Para abrir e ler um arquivo CSV em Python, você pode usar o módulo [csv](https://docs.python.org/3/library/csv.html) integrado.

```python
import csv

with open('example.csv', 'r') as file:
    reader = csv.reader(file)
    for row in reader:
        print(row)
```

Neste exemplo, usamos a função `csv.reader()` para ler o conteúdo do arquivo CSV chamado `example.csv`. Depois, percorremos as linhas do arquivo usando um laço `for` e `print` cada `row` no console.

```python
import csv

with open('example.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(['Name', 'Age', 'Gender'])
    writer.writerow(['John', '25', 'Male'])
    writer.writerow(['Jane', '30', 'Female'])
```

Neste exemplo, utilizamos a função `csv.writer()` para escrever `data` em um arquivo CSV chamado `example.csv`. Criamos um novo arquivo com o modo `w` e especificamos `newline=''` para evitar quebras de linha extras. Em seguida, usamos a função `writerow()` para escrever cada `row` de `data` no arquivo.

Ao usar esses exemplos de código, você pode facilmente providenciar **leitura de CSV** ou **carregamento de CSV**.

## Como Salvar em um Arquivo CSV em Python

Salvar dados em um arquivo CSV é uma tarefa comum em Python. Arquivos CSV são fáceis de ler e podem ser facilmente abertos em qualquer software de planilha. No Python, podemos usar o módulo `csv` para escrever em um arquivo CSV. Aqui estão alguns exemplos de como salvar em um arquivo CSV em Python.

Este exemplo demonstra como escrever uma lista simples de valores em um arquivo CSV.

```python
import csv

# Example data
data = [['Name', 'Age', 'Gender'], ['Alice', '25', 'Female'], ['Bob', '30', 'Male'], ['Charlie', '35', 'Male']]

# Open csv file in write mode
with open('example.csv', mode='w') as file:
    writer = csv.writer(file)
    # Write data to csv file
    writer.writerows(data)
```

No código acima:

1. Nós `importamos` o módulo `csv`.
2. Criamos uma lista simples de valores chamada `data`.
3. Abrimos o arquivo CSV em modo de escrita usando a função `open()` e especificamos o `mode` como `'w'`.
4. Criamos um objeto `csv.writer` e passamos o objeto do arquivo para o escritor.
5. Usamos o método `writerows()` para escrever os dados no arquivo CSV.

Este exemplo mostra como escrever um dicionário de valores em um arquivo CSV.

```python
import csv

# Example data
data = [{'Name': 'Alice', 'Age': '25', 'Gender': 'Female'},
        {'Name': 'Bob', 'Age': '30', 'Gender': 'Male'},
        {'Name': 'Charlie', 'Age': '35', 'Gender': 'Male'}]

# Open csv file in write mode
with open('example.csv', mode='w', newline='') as file:
    fieldnames = ['Name', 'Age', 'Gender']
    writer = csv.DictWriter(file, fieldnames=fieldnames)
    writer.writeheader()
    # Write data to csv file
    for item in data:
        writer.writerow(item)
```

No código acima:

1. Nós `importamos` o módulo `csv`.
2. Criamos uma lista de dicionários chamada `data`.
3. Abrimos o ficheiro CSV em modo de escrita utilizando a função `open()` e especificamos o `mode` como `'w'`. Também definimos `newline` como `''` para evitar que linhas em branco sejam inseridas entre cada linha.
4. Nós criamos um objeto `csv.DictWriter` e passamos o objeto arquivo para o `writer`. Também fornecemos os `nomes dos campos` como uma lista.
5. Usamos o método `writeheader()` para escrever os `nomes dos campos` no arquivo CSV.
6. Usamos o método `writerow()` para escrever cada `linha` de dados no arquivo CSV.

Usando o módulo `csv` em Python, você pode facilmente salvar seus dados em um arquivo CSV. Estes exemplos podem ser modificados para atender às suas necessidades específicas.  
  
## Como converter JSON para CSV com Python

Converter `dados` [json](https://docs.python.org/3/library/json.html) para o formato CSV é uma tarefa comum no processamento de `dados`. Python oferece uma maneira fácil e eficiente de converter `dados` JSON para o formato CSV usando módulos embutidos como `json` e `csv`.

### Usando os módulos JSON e CSV

```python
import json
import csv

# Load JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Open CSV file for writing
with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)

    # Write header row
    writer.writerow(data[0].keys())

    # Write data rows
    for item in data:
        writer.writerow(item.values())
```

### Usando a Biblioteca Pandas

```python
import pandas as pd

# Load JSON data
with open('data.json', 'r') as file:
    data = json.load(file)

# Convert to dataframe
df = pd.DataFrame(data)

# Write to CSV file
df.to_csv('data.csv', index=False)
```

Em ambos os exemplos, carregamos os dados JSON de um ficheiro, convertemo-los para um objeto Python e, em seguida, escrevemo-los para um ficheiro CSV utilizando o módulo `csv` ou a biblioteca [pandas](https://pypi.org/project/pandas/). Com esses métodos, você pode facilmente converter dados JSON para o formato CSV em Python.  
  
## Ler CSV com Pandas

Pandas é uma poderosa biblioteca de análise de dados de código aberto para Python que oferece estruturas de dados fáceis de usar para manipulação e análise de dados. No `pandas`, a leitura e manipulação de arquivos CSV é simples e eficiente.

### Carregar CSV com Pandas

Para carregar um ficheiro CSV com o Pandas, usamos `read_csv()`. Vamos ver como podemos carregar um arquivo CSV usando o Pandas:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
print(df.head())
```

### Analisar Arquivo CSV usando Pandas

Após carregar o arquivo CSV, precisamos analisar os dados para extrair as informações requeridas. Pandas oferece muitas operações para analisar e manipular dados em CSV. Aqui está um exemplo de como analisar dados usando Pandas:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
df = df[df['column_name'] == 'required_value']
print(df.head())
```

### Escrever DataFrame em CSV usando Pandas

Após processar os dados do CSV, podemos querer escrever o novo DataFrame em um novo arquivo CSV. Pandas oferece uma maneira fácil de escrever o DataFrame em arquivos CSV usando `to_csv()`. Aqui está um exemplo:

```python
import pandas as pd
df = pd.read_csv('filename.csv')
# Perform operations to extract the required data
new_df = df[df['column_name'] == 'required_value']
# Write the new DataFrame to a new CSV file
new_df.to_csv('new_file.csv', index=False)
```

## Exportar para CSV

Exportar `data` para CSV (Valores Separados por Vírgula) é uma tarefa comum no processamento de `data`. Aqui estão duas maneiras de exportar `data` para CSV em Python:

### Usando o módulo csv

O módulo csv é um módulo integrado no Python que permite a leitura e a escrita de arquivos CSV. Aqui está um exemplo de exportação de um dicionário para um arquivo CSV usando o módulo `csv`:

```python
import csv

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}

with open('data.csv', 'w', newline='') as file:
    writer = csv.writer(file)
    writer.writerow(data.keys())
    writer.writerows(zip(*data.values()))

# This code creates a CSV file with the following format:
# 
# 
# name,age
# John,20
# Jane,25
# Adam,30
```

### Usando o módulo pandas

Aqui está um exemplo de exportação de um pandas DataFrame para um arquivo CSV.

```python
import pandas as pd

data = {'name': ['John', 'Jane', 'Adam'], 'age': [20, 25, 30]}
df = pd.DataFrame(data)

df.to_csv('data.csv', index=False)
```

Este código cria um arquivo CSV com o mesmo formato do exemplo anterior. O parâmetro `index=False` é utilizado para remover a coluna de índice de linha padrão do arquivo CSV.

## Ler CSV Linha por Linha

Para ler um arquivo CSV em Python linha por linha, podemos usar o `csv` integrado.

### Lendo CSV Linha por Linha

```python
import csv

with open('example.csv', newline='') as csvfile:
    reader = csv.reader(csvfile)
    for row in reader:
        print(row)
```

No exemplo acima, abrimos o arquivo CSV `example.csv` e o atribuímos à variável `csvfile`. Em seguida, criamos um objeto `csv.reader`, sobre o qual podemos iterar linha por linha usando um laço `for`. Cada `row` no laço é representada como uma lista de valores.

### Escrevendo em Nova Linha no CSV

```python
import csv

with open('example.csv', mode='a', newline='') as csvfile:
    writer = csv.writer(csvfile)
    row = ['value1', 'value2', 'value3']
    writer.writerow(row)
```

No exemplo acima, abrimos o arquivo CSV `example.csv` no `modo` 'anexar' e o atribuímos à variável `csvfile`. Em seguida, criamos um objeto `csv.writer`, que podemos usar para escrever uma nova linha no arquivo CSV usando o método `writerow()`. A variável `row` é uma lista de valores para escrever na nova linha no arquivo CSV.

Usando esses exemplos simples, podemos facilmente ler e escrever em arquivos CSV linha por linha em Python.

## Como Ler uma Coluna CSV em Python

Para ler uma coluna CSV em Python, você pode usar a função `csv.DictReader()` para ler arquivos CSV como dicionários. Aqui estão dois exemplos:

```python
import csv

with open('example.csv') as file:
    reader = csv.DictReader(file)
    for row in reader:
        print(row['column_name'])
```

Neste exemplo de código, primeiro `importamos` o módulo `csv`. Em seguida, usamos a instrução `with` para abrir o arquivo CSV `example.csv`. Criamos um objeto `DictReader` chamado `reader` usando o arquivo CSV `file`. Então iteramos através de cada `row` em `reader` e `printamos` o valor de `column_name` em cada linha.

```python
import pandas as pd

data = pd.read_csv('example.csv')
column_data = data['column_name']
print(column_data)
```

Neste exemplo de código, primeiro `import` o módulo `pandas` e criamos um `DataFrame` chamado `data` usando a função `read_csv()` e passando o nome do arquivo CSV `example.csv`. Em seguida, atribuímos os dados em `column_name` a uma nova variável `column_data`. Finalmente, nós `print` `column_data`.
