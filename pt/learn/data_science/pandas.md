> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/data-science/pandas

Pandas é uma poderosa biblioteca de código aberto em Python projetada especificamente para manipulação e análise de dados. Ela fornece aos desenvolvedores e cientistas de dados estruturas de dados de alto nível, flexíveis e versáteis chamadas DataFrame e Series, permitindo que trabalhem eficientemente com dados estruturados. Desenvolvido por Wes McKinney, pandas se estabelece como uma ferramenta fundamental no campo da ciência de dados e análise, simplificando grandemente o processo de limpeza, exploração e visualização de dados. Seja lidando com grandes conjuntos de dados de várias fontes ou realizando transformações e análises de dados complexas, o pandas oferece uma ampla gama de funcionalidades que atendem a uma vasta gama de operações de dados, tornando-o uma ferramenta indispensável no ecossistema de programação Python para análise de dados e tarefas relacionadas.

## O que é `pandas` em Python

Pandas inclui várias características-chave que o tornam incrivelmente poderoso para análise de dados:

1. Objeto Dataframe para manipulação de dados com indexação integrada.
2. Ferramentas para leitura e escrita de dados entre estruturas de dados em memória e diferentes formatos de arquivo.
3. Alinhamento de dados e tratamento integrado de dados ausentes.
4. Remodelagem e pivotamento de conjuntos de dados.
5. Fatiamento, indexação e subseting baseados em rótulos de grandes conjuntos de dados.
6. Inserção e exclusão de colunas da estrutura de dados.
7. Motor Group by permitindo operações de divisão-aplicação-combinação em conjuntos de dados.
8. Fusão e junção de alto desempenho de conjuntos de dados.

### Métodos `read_csv()` e `to_csv()`

Uma das razões pelas quais a biblioteca [pandas](https://pypi.org/project/pandas/) é altamente considerada na comunidade de ciência de dados é sua capacidade de ler e escrever dados facilmente. Isso inclui trabalhar com arquivos CSV, um formato de dados comum em análise de dados. Aqui estão exemplos simples que ilustram como ler dados de um arquivo CSV para um DataFrame `pandas`, e como escrever esses dados de volta para um arquivo CSV.

> Nota: É importante `importar` a biblioteca `pandas` antes de executar esses snippets de código. Isso é tipicamente feito com a linha `import pandas as pd`.

```python
import pandas as pd

# Load data from a CSV file into a DataFrame
data = pd.read_csv('example.csv')
print(data.head())
```

### Exemplo: Escrevendo dados em um arquivo CSV

```python
# Assuming 'data' is a DataFrame that you have previously created and manipulated
data.to_csv('modified_example.csv', index=False)
```

### Trabalhando com DataFrames

No cerne da biblioteca `pandas` está o objeto DataFrame, que pode ser entendido como uma tabela de dados relacionais, com linhas e colunas. Aqui está como você pode criar um DataFrame do zero e inspecionar seu conteúdo.

### Exemplo: Criar DataFrame()`

```python3
import pandas as pd
# Creating a DataFrame from a dictionary
df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': ['a', 'b', 'c']
})
print(df)
```

Saída:

```python

   A  B
0  1  a
1  2  b
2  3  c
```

## Como Instalar `pandas` em Python

Para começar, você precisa instalar o Pandas. Isso pode ser feito usando pip ou conda, dependendo do seu ambiente Python.

### Usando pip

Se você estiver usando pip, abra seu terminal ou prompt de comando e execute o seguinte comando:

```python
pip install pandas
```

### Usando conda

Para aqueles que preferem o Conda, o comando difere um pouco:

```python
conda install pandas
```

> Nota: Certifique-se de que sua conexão com a internet está ativa, pois esses comandos baixam `pandas` dos repositórios respectivos.

### Importar Pandas

Uma vez instalado, você pode `importar` `pandas` no seu script Python ou sessão interativa para confirmar que está pronto para uso. Aqui estão os passos básicos:

1. Abra o seu IDE Python ou o terminal.
2. Digite o comando `import` para trazer `pandas` para o seu namespace.
3. Opcionalmente, é comum criar um alias para `pandas` como `pd` por conveniência.

Aqui está como você faz isso:

```python
import pandas as pd
```

Esta simples linha de código torna toda a funcionalidade do `pandas` disponível em seu script como `pd`.

### Resumo

Instalar o `pandas` no Python enriquece sua caixa de ferramentas com uma biblioteca robusta para manipulação e análise de dados. Seja usando pip ou conda, a instalação é amigável e rápida. Lembre-se de `import` `pandas` com `import pandas as pd` no início do seu script para acessar suas funcionalidades. Começar com tarefas simples como ler e salvar em arquivos CSV pode servir como uma base sólida para tarefas mais complexas de análise de dados usando pandas.

Feliz análise de dados!

## Exemplos de Uso Básico do Pandas

Com o `pandas` instalado e importado com sucesso, você está agora pronto para mergulhar em algumas tarefas básicas de manipulação de dados.

### Método `read_csv()` para Carregar Dados

Carregar dados de um arquivo CSV é um dos passos iniciais mais comuns na análise de dados. Veja como você pode usar o `pandas` para realizar isso:

```python
import pandas as pd

# Load data from a CSV file
df = pd.read_csv('path_to_your_file.csv')

# Display the first few rows of the DataFrame
print(df.head())
```

### Método `to_csv()` para Salvar Dados

Após manipular ou analisar seus dados, você pode querer salvar os resultados. O Pandas também torna isso direto:

```python
import pandas as pd

# Assuming 'df' is your DataFrame variable
df.to_csv('path_to_save_file.csv', index=False)
```

> Nota: Definir `index=False` impede que `pandas` escreva os índices de linhas no arquivo CSV.

### Método `head()`

Para inspecionar rapidamente as primeiras linhas de um DataFrame, você pode usar o método `head()`. Isso é extremamente útil para ter uma ideia dos dados sem exibir todo o conjunto de dados.

```python
# Displaying the first 3 rows of the DataFrame
print(df.head(3))
```

A saída é a mesma que a da criação do dataframe, já que o dataframe contém apenas 3 linhas.

> Nota: Explorar a documentação do `pandas` em Python pode fornecer insights sobre funcionalidades e métodos mais avançados disponíveis na biblioteca `pandas`.

  
## Conceito de Dataframe em `pandas`

No mundo da análise e manipulação de dados usando Python, os dataframes do `pandas` se estabelecem como um pilar fundamental, permitindo aos usuários manusear e analisar dados de maneira eficiente. Um DataFrame, em sua essência, é uma estrutura de dados tabulares bidimensional, mutável em tamanho e potencialmente heterogênea, com eixos rotulados (linhas e colunas). Esse conceito poderoso permite um manuseio de dados mais intuitivo e conciso, diminuindo a distância entre a facilidade de uso encontrada em ambientes de alto nível e as capacidades da linguagem de programação Python.

### Convertendo um Dicionário em Dataframe do `pandas`

Uma tarefa comum em análise de dados é converter estruturas de dados existentes em DataFrames do `pandas` para aproveitar os recursos poderosos de manipulação e análise de dados do pandas. Um caso particularmente útil é a conversão de um dicionário em um DataFrame do `pandas`. Isso pode ser facilmente alcançado usando o construtor `DataFrame` fornecido pelo pandas:

```python3
import pandas as pd

# Sample dictionary
data_dict = {'Name': ['Alice', 'Bob', 'Charlie'],
             'Age': [25, 30, 35],
             'City': ['New York', 'Paris', 'London']}

# Convert dictionary to pandas DataFrame
df = pd.DataFrame(data_dict)

print(df)
```

Este trecho de código demonstra uma maneira simples de transformar um dicionário onde as chaves se tornam cabeçalhos de colunas e os valores se tornam dados das linhas em um `pandas` DataFrame.

### Convertendo uma Lista para `pandas` Dataframe

Da mesma forma, converter uma lista em um `pandas` DataFrame é outra tarefa com a qual os analistas de dados frequentemente se deparam. Seja você tendo uma lista de tuplas, listas ou uma única lista plana, `pandas` pode lidar com essas variações com facilidade:

### Convertendo uma lista de listas

Aqui está como converter uma lista de listas em um DataFrame. Cada lista interna se torna uma linha no DataFrame.

```python3
import pandas as pd

# Sample list of lists
data_list = [['Alice', 25, 'New York'],
             ['Bob', 30, 'Paris'],
             ['Charlie', 35, 'London']]

# Convert list to pandas DataFrame
df_list = pd.DataFrame(data_list, columns=['Name', 'Age', 'City'])

print(df_list)
```

> Nota: Ao converter listas para um DataFrame `pandas`, especificar os nomes das colunas é opcional. No entanto, fazê-lo melhora a legibilidade e a facilidade de manipulação de dados.

### Funcionalidades Adicionais do DataFrame `pandas`

Os DataFrames do Pandas vêm equipados com uma vasta gama de métodos e propriedades, tornando a manipulação e análise de dados não apenas possível, mas também altamente eficiente. Aqui estão algumas características notáveis:

- **Manipulação de dados**: Ordenar, mesclar, concatenar, remodelar e tabelas dinâmicas.
- **Análise de dados**: Realizar análise estatística, lidar com dados ausentes e filtrar dados.
- **Visualização de dados**: Embora principalmente por meio da integração com bibliotecas como Matplotlib, tornando a visualização preliminar de dados direta.

### `head()` e `tail()` para Inspeção Rápida de Dados

Estes são dois métodos muito úteis para inspecionar rapidamente um DataFrame `pandas`:

- `head(n)` exibe as primeiras `n` linhas do DataFrame.
- `tail(n)` exibe as últimas `n` linhas.

```python
# Display the first 3 rows
print(df.head(3))

# Display the last 3 rows
print(df.tail(3))
```

## Módulo Snowflake

O módulo Snowflake em Python, conhecido como `snowflake-connector-python`, proporciona uma maneira poderosa e eficiente de `connect` aplicações Python com a Nuvem de Dados Snowflake. Permite executar consultas e manipular dados dentro do Snowflake usando Python, tornando-o uma ferramenta valiosa para analistas de dados e cientistas que frequentemente trabalham com bibliotecas de análise de dados, como `pandas`.

Integrar `snowflake-connector-python` com `pandas` é uma prática comum que oferece capacidades de manipulação e transformação de dados de forma integrada, facilitando os processos de extração, transformação e carregamento (ETL) dos fluxos de trabalho de dados.

### Instalando o Conector Snowflake

Antes de mergulhar em exemplos de código, certifique-se de ter o conector Snowflake instalado no seu ambiente Python. Isso pode ser feito usando pip:

```python
pip install snowflake-connector-python
```

### Estabelecendo uma Conexão

Para usar o módulo Snowflake, o primeiro passo é estabelecer uma conexão usando os detalhes da sua `account` Snowflake:

```python
from snowflake.connector import connect

# Define your connection parameters
conn = connect(user='YOUR_USERNAME',
               password='YOUR_PASSWORD',
               account='YOUR_ACCOUNT',
               warehouse='YOUR_WAREHOUSE',
               database='YOUR_DATABASE',
               schema='YOUR_SCHEMA')

print("Successfully connected to Snowflake!")
```

> Nota: Substitua `YOUR_USERNAME`, `YOUR_PASSWORD`, `YOUR_ACCOUNT`, etc., pelas suas credenciais reais do Snowflake.

### Consultando Dados com o Método `execute()`

Executar uma consulta é simples com o método `execute()`. Veja como realizar uma operação SELECT:

```python
# Create a cursor object
cur = conn.cursor()

# Execute a query
cur.execute("SELECT * FROM YOUR_TABLE LIMIT 10")

# Fetch the results
results = cur.fetchall()

for row in results:
    print(row)
```

> Nota: Não esqueça de substituir `YOUR_TABLE` pelo nome da sua tabela real no Snowflake.

### Integrando com Pandas

A integração com `pandas` permite converter `results` de consultas diretamente em um DataFrame `pandas`, oferecendo um ambiente familiar e poderoso para análise de dados.

### Método `fetch_pandas_all()`

Após executar uma consulta, use o método `fetch_pandas_all()` para obter os `results` como um DataFrame `pandas`:

```python
import pandas as pd

# Assuming `cur` is your cursor from a successful query
df = cur.fetch_pandas_all()

print(df.head())
```

### Melhores Práticas

1. Sempre feche sua conexão e cursor quando terminar para liberar recursos:

```python
cur.close()
conn.close()
```

2. Gerencie suas credenciais de forma segura usando variáveis de ambiente ou ferramentas de gerenciamento de segredos em vez de codificá-las diretamente em seus scripts.

3. Use consultas parametrizadas ou os métodos fornecidos pelo conector para prevenir a injeção SQL e garantir que suas consultas sejam seguras.

Ao utilizar o `snowflake-connector-python` juntamente com `pandas`, desenvolvedores Python e entusiastas de dados podem interagir de forma eficiente com o Snowflake, executar consultas e analisar dados dentro de um poderoso ecossistema de ciência de dados.

## Ferramenta de Agrupamento em `pandas`

A biblioteca `pandas` é uma ferramenta fundamental para manipulação e análise de dados em Python. Ela oferece inúmeras funções para operações eficientes com dados. Uma das funcionalidades-chave é o método `groupby`, que permite agrupar dados de uma maneira flexível. Neste artigo, vamos explorar como usar a função `pandas groupby` para gerenciar e analisar dados agrupados de forma eficaz.

### Entendendo `groupby()` em Pandas

O método `groupby()` na biblioteca pandas é instrumental para segmentar dados em grupos baseados em algum critério. Um DataFrame do pandas pode ser agrupado por uma ou mais colunas ou até mesmo uma combinação de Series e colunas do pandas. Esta função é vital para realizar análise estatística, sumarização de dados e várias transformações.

### Como Usar `groupby()`

Usar a função `groupby()` em pandas envolve alguns passos simples:

1. Identifique a(s) chave(s) que você deseja agrupar.
2. Aplique a função `groupby()` no seu DataFrame do pandas.
3. Especifique as funções de agregação para resumir os dados agrupados.

> Nota: As funções de agregação incluem operações como mean(), sum(), max(), min() e muitas outras.

### Exemplo: Agrupamento Básico

Vamos começar com um exemplo simples para agrupar um DataFrame do pandas por uma única coluna.

```python3
import pandas as pd

# Sample DataFrame
data = {'Category': ['A', 'B', 'A', 'C', 'B', 'C', 'A', 'B'],
        'Values': [10, 20, 15, 10, 25, 30, 5, 40]}
df = pd.DataFrame(data)

# Grouping by 'Category' column and calculating mean
grouped_df = df.groupby('Category').mean()

print(grouped_df)
```

Este código Agrupa o DataFrame pela coluna 'Category' e calcula a média dos 'Values' para cada categoria.

### Exemplo: Agrupamento por Múltiplas Chaves

Você também pode agrupar por múltiplas colunas para uma análise mais detalhada.

```python
# Additional column for demonstration
data['Subcategory'] = ['X', 'Y', 'X', 'Y', 'X', 'Y', 'Y', 'X']
df = pd.DataFrame(data)

# Grouping by both 'Category' and 'Subcategory' columns
grouped_df = df.groupby(['Category', 'Subcategory']).sum()

print(grouped_df)
```

Aqui, o DataFrame é agrupado por 'Categoria' e 'Subcategoria', e a soma dos 'Valores' é calculada para cada grupo.

### Melhores Práticas para Usar `groupby()`

1. **Limpeza de Dados Antes de Agrupar**: Garanta que seus dados não possuam valores ausentes ou inconsistências que possam afetar seu agrupamento.
2. **Use Agregações Apropriadas**: Selecione funções de agregação que façam sentido para seus dados e objetivos de análise.
3. **Aproveite os Dados Agrupados**: Use o objeto agrupado para análises ou visualizações adicionais para derivar insights.

> Nota: Lembre-se de que o resultado de uma operação de `groupby` não é um DataFrame, mas um objeto GroupBy. Você pode convertê-lo em um DataFrame aplicando um método de agregação.
