> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/json

Os ficheiros JSON ganharam imensa popularidade devido à sua compatibilidade perfeita com sistemas baseados na Web. JSON, abreviação de [JavaScript Object Notation] (https://en.wikipedia.org/wiki/JSON), serve como um formato leve para troca de dados, tornando-o uma escolha preferida para aplicações Web. O Python, equipado com ferramentas robustas, é uma excelente plataforma para lidar com arquivos JSON. Este artigo tem como objetivo aprofundar a leitura, a manipulação de arquivos JSON e suas aplicações práticas usando Python. Entender como usar JSON em Python é crucial para o desenvolvimento moderno da Web, análise de dados e integração de sistemas.
  
## Importando o módulo JSON

Python fornece instrumentos flexíveis que permitem trabalhar com JSON.
Para iniciar operações com arquivos JSON em Python, é preciso primeiro importar o módulo `json`. Este módulo equipa o Python com funcionalidades especificamente adaptadas para lidar com dados JSON.

Exemplo de importação do módulo JSON:

```python
import json
```

Esta função é utilizada para importar ficheiros JSON para o ambiente Python para posterior manuseamento e manipulação.

## Como ler um ficheiro JSON em Python

Ler ficheiros JSON em Python envolve a utilização da função `load()` do módulo json. Ao empregar esta função, o Python pode facilmente ler e carregar dados JSON de um ficheiro para o seu programa.

Exemplo de leitura de um ficheiro JSON:

```python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

Este exemplo mostra como abrir um ficheiro JSON em Python e trabalhar com ele.

## Funções do módulo JSON

O módulo `json` em Python oferece várias funções para lidar com dados JSON de forma eficiente.

- **json.load()**: Esta função carrega dados JSON a partir de um objeto tipo ficheiro e converte-o num objeto Python. Esta função é particularmente útil quando é necessário analisar um ficheiro JSON em Python e manipulá-lo no seu programa
- **json.loads()**: json.loads() é utilizado para analisar uma cadeia JSON e convertê-la num objeto Python.
- **json.dump()**: A função json.dump() escreve dados Python num ficheiro JSON.
- **json.dumps()**: json.dumps() é utilizada para converter um objeto Python (como um dicionário) numa string formatada em JSON.

## Como Carregar JSON de um Arquivo em Python Usando `json.load()`

A função `json.load()` facilita o carregamento de dados JSON de um arquivo em um objeto Python. Ela traduz diretamente os dados formatados em JSON de um arquivo em uma estrutura de dados Python compatível, permitindo fácil acesso e manipulação.

Exemplo - como carregar um ficheiro JSON em Python:

```python
import json

# Reading JSON data from a file and loading it into Python
with open('data.json') as file:
    data = json.load(file)
    print(data)
```

## Analisando strings JSON com `json.loads()`

`json.loads()` analisa uma string formatada em JSON e a converte em um objeto Python. Esta função aceita uma string JSON como entrada e gera a estrutura de dados Python correspondente, facilitando a extração e manipulação de dados sem problemas.

Exemplo - como analisar uma cadeia de caracteres JSON em Python:

```python
import json

# Parsing a JSON string into a Python object
json_string = '{"name": "John", "age": 30, "city": "New York"}'
parsed_data = json.loads(json_string)
print(parsed_data)
```

## Como escrever para JSON em Python usando `json.dump()`

A função `json.dump()` escreve dados Python num ficheiro JSON. Pega num objeto Python e escreve-o diretamente num ficheiro especificado no formato JSON, adequado para armazenamento ou transmissão.

Exemplo de escrita para um ficheiro JSON:

```python
import json

# Writing Python data to a JSON file
data = {"name": "John", "age": 30, "city": "New York"}
with open('output.json', 'w') as file:
    json.dump(data, file)
```

## Convertendo Objectos Python para Strings JSON com `json.dumps()`

`json.dumps()` converte um objeto Python (como um dicionário ou lista) em uma string formatada em JSON. Esta função aceita um objeto Python como entrada e retorna uma string JSON representando o objeto, permitindo intercâmbio e serialização eficientes de dados.

Exemplo de conversão de um objeto Python para uma cadeia JSON:

```python
import json

# Converting a Python object to a JSON-formatted string
data = {'name': 'John', 'age': 30, 'city': 'New York'}
json_string = json.dumps(data)
print(json_string)
```

## Objectos Python e representações JSON equivalentes

A tabela ilustra o mapeamento entre os tipos de dados Python e as suas representações correspondentes no formato JSON. Ao converter objectos Python para JSON, os dicionários e as listas mapeiam diretamente para objectos e matrizes JSON, respetivamente. Da mesma forma, outros tipos de dados Python como cadeias de caracteres, inteiros, flutuantes, valores booleanos e Nenhum mapeiam para os respectivos equivalentes JSON.

| Objeto Python | Representação JSON Equivalente |
| ------------- | ------------- |
| Dicionário | Objeto |
| Lista | Matriz |
| Tuple | Array |
| String | String |
| Integer | Number |
| Float | Número |
| True | true |
| False | false | false |
| Nenhum | nulo |

## Como escrever um objeto JSON para um ficheiro

Para imprimir JSON em um formato mais legível e organizado, é necessário usar a flag `pretty_print`. Esse sinalizador formatará o JSON adicionando indentação, quebras de linha e espaços entre os elementos. Abaixo estão duas maneiras de escrever JSON de forma bonita em um arquivo.

```python
import json

data = {'name': 'John', 'age': 30, 'city': 'New York'}

with open('data.json', 'w') as file:
    json.dump(data, file, indent=4, sort_keys=True)
```

Neste exemplo, nós utilizamos o método `json.dump()` para converter o objeto dicionário `data` para JSON e salvamos em um arquivo `data.json`. Definimos o parâmetro `indent` como 4 para adicionar indentação, e o parâmetro `sort_keys` como True para ordenar as chaves alfabeticamente.
  
## Erros comuns com arquivos JSON

Ao trabalhar com arquivos JSON em Python, você pode encontrar erros comuns que podem afetar o carregamento, análise e processamento de dados JSON. Um desses erros é o `ValueError: Extra data error`. Esse erro ocorre quando há dados adicionais presentes no arquivo JSON que não são compatíveis com a estrutura JSON esperada.

Primeiro exemplo - um carregamento de JSON com dados extra:

```python
import json

data = '{"name": "John", "age": 25} {"name": "Alice", "age": 30}'

try:
    json_data = json.loads(data)
    print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

Neste exemplo, a variável `data` contém dois objetos JSON separados por um espaço. Quando tentamos carregar estes dados utilizando `json.loads()`, surge um `ValueError` com a mensagem `Extra data` porque múltiplos objectos JSON não são válidos num único ficheiro JSON.

Segundo exemplo de leitura de um arquivo JSON com dados extras:

```python
import json

try:
    with open("data.json", "r") as file:
        json_data = json.load(file)
        print(json_data)
except ValueError as e:
    print("Error:", str(e))
```

Neste exemplo, estamos lendo dados JSON de um arquivo chamado `data.json`. Se o arquivo contiver dados extras que não estejam de acordo com a estrutura JSON esperada, o método `json.load()` irá gerar um `ValueError`.

Para tratar o `ValueError: Extra data error`, você pode capturar a exceção usando um bloco try-except, como mostrado nos exemplos. Isso permite que você trate o erro com elegância e forneça feedback apropriado ou tome ações alternativas.

Ao encontrar este erro, é importante examinar cuidadosamente o ficheiro JSON para garantir a sua validade. Verifique se a estrutura JSON está correcta e se não existem dados adicionais ou inesperados.
