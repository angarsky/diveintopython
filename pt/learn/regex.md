> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/regex

Expressões regulares, ou `regex` para abreviar, são ferramentas essenciais no kit de ferramentas do programador Python. Elas oferecem uma maneira poderosa de combinar padrões dentro de textos, permitindo que desenvolvedores pesquisem, manipulem e até validem dados de forma eficiente. Seja analisando volumes de arquivos de log, limpando dados de entrada de usuário, ou procurando por padrões específicos dentro de um bloco de texto, regex oferece uma maneira concisa e rápida de concluir o trabalho.

Em sua essência, regex em Python é suportado através do módulo `re`, que vem embutido na biblioteca padrão. Este módulo encapsula toda a funcionalidade para operações de regex, incluindo funções para pesquisar, dividir, substituir e compilar expressões regulares. Entender a sintaxe e os caracteres especiais usados em regex pode parecer assustador inicialmente, mas dominar esses pode aumentar significativamente sua produtividade e capacidades como programador.

Neste artigo, vamos olhar os fundamentos de regex, incluindo casos de uso comuns, funções-chave no módulo `re`, e algumas dicas para tornar suas expressões tanto eficazes quanto eficientes. Se você é novo em programação ou procurando refinar suas habilidades de combinação de padrões, regex em Python é uma ferramenta versátil que vale a pena aprender.

## Vantagens das Expressões Regulares em Python

- **Eficiência no Processamento de Texto:** Pesquisa rápida, combinação ou substituição de padrões em texto.
- **Versatilidade:** Da validação de dados à raspagem de web, regex encontra sua aplicação.
- **Sintaxe Simplificada:** O módulo [re](https://docs.python.org/3/library/re.html) do Python simplifica a implementação de regex.
- **Poder de Combinação de Padrões:** Permite combinar padrões complexos que seriam desafiadores de encontrar com métodos tradicionais.
  
## Uso de Expressões Regulares em Python

Expressões regulares podem ser empregadas em uma miríade de cenários, variando desde combinações simples de strings até tarefas complexas de análise de texto, tais como:

- Validação de dados (emails, números de telefone)
- Raspagem de web
- Análise de arquivos de log
- Pré-processamento de dados de texto em tarefas de Aprendizado de Máquina

Para aqueles que procuram experimentar com regex Python online, inúmeras plataformas e testadores de regex estão disponíveis que permitem feedback imediato e aprendizado.

### Exemplo: Endereço de Email Encontrado

```python3
import re

text = "For more information, contact us at info@example.com."
match = re.findall(r'\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b', text)

print("Email Address Found:", match)
```

### Exemplo: Validar Número de Telefone

```python3
import re

def validate_phone_number(number):
    if re.match(r'^\+?1?\d{9,15}$', number):
        return True
    return False

number = "+1234567890"
print("Is Valid Phone Number:", validate_phone_number(number))
```

Explorar as capacidades das expressões regulares em Python abre uma nova dimensão de possibilidades para o processamento de texto e manipulação de dados. Seja através de plataformas online ou programação prática, dominar `regex` é uma habilidade valiosa no kit de ferramentas de qualquer programador.

## Principais Características da Biblioteca Regex do Python

- **Regex em Python** ajuda na correspondência de padrões, pesquisa e manipulação complexa de texto.
- **Limite de palavra regex Python** (`\b`) permite pesquisas precisas marcando o início ou o fim de uma palavra, melhorando a precisão de suas tarefas de processamento de texto.

### Exemplo: o Uso de `findall()`

Neste exemplo, usamos `regex` para encontrar ocorrências de uma palavra específica em um texto, demonstrando o uso do limite de palavra regex python.

```python3
import re

text = "Python is powerful. Python is easy to learn."
pattern = r'\bPython\b'

matches = re.findall(pattern, text)
print("Occurrences of 'Python':", len(matches))
```

### Exemplo: Validar Email

Aqui, nós validamos um endereço de `email` usando uma expressão regular, demonstrando a versatilidade do regex em Python.

```python3
import re

def validate_email(email):
    pattern = r'^[\w\.-]+@[\w\.-]+\.\w+$'
    if re.match(pattern, email):
        return True
    return False

email = "example@example.com"
print("Is the email valid?", validate_email(email))
```

## Correspondente de Regex

As principais funções no módulo `re` do Python são `match` e `search`, cada uma servindo a um propósito distinto na correspondência de regex.

### Match vs. Search

- **correspondência de regex python**: A função `re.match()` verifica por uma correspondência apenas no início da string. Se o padrão não estiver no início, ela retorna None.
- **pesquisa de regex python**: Ao contrário de match, `re.search()` varre toda a string procurando por uma correspondência em qualquer parte do texto.

Aqui estão dois exemplos demonstrando o uso de `re.match()` e `re.search()` em Python.

### Exemplo: Usando `re.match()`

```python3
import re

pattern = r"Python"
text = "Learning Python with regex"

match = re.match(pattern, text)

if match:
    print("Match found:", match.group())
else:
    print("No match found")
```

Neste cenário, como Python não está no início, `re.match()` retornará `No match found`.

### Exemplo: Usando `re.search()`

```python3
import re

pattern = r"Python"
text = "Learning Python with regex"

search = re.search(pattern, text)

if search:
    print("Match found:", search.group())
else:
    print("No match found")
```

Aqui, `re.search()` varre toda a string e encontra com sucesso Python, retornando `Match found: Python`.

Entender a diferença entre match e `search` nas correspondências de regex em Python é crucial para manipular e buscar strings em aplicações Python de forma efetiva.

## Regex Replace

Você está procurando dominar a arte do **Python Regex Replace**? Esta técnica poderosa permite que você procure por padrões dentro de strings e os substitua com o texto desejado, tornando a manipulação de dados mais suave do que nunca. Seja trabalhando com limpeza de dados, processamento, ou até mesmo raspagem da web, entender como utilizar **Python string replace regex** pode melhorar significativamente sua eficiência na codificação. Aqui está um guia conciso com exemplos práticos para começar:

## Usando `re.sub()` para Python Regex Replace All

O módulo `re` em Python fornece um método chamado `sub()`, que significa substituir. É a pedra angular para realizar operações de **python replaceall regex**. A sintaxe é direta: `re.sub(pattern, replacement, string)`. Este método procura pelo padrão na string dada e o substitui pela string de substituição.

### Exemplo: Substituição Simples de Palavra

```python3
import re

text = "Hello World! Welcome to the World of Python."
new_text = re.sub(r"World", "Universe", text)
print(new_text)
```

Saída: `Hello Universe! Welcome to the Universe of Python.`

Este exemplo demonstra como substituir todas as instâncias de `World` por `Universe` na string dada.

### Exemplo: Removendo Pontuação

```python3
import re

text = "Hello, World! How are you today?"
clean_text = re.sub(r"[,!.?]", "", text)
print(clean_text)
```

Saída: `Hello World How are you today`

Aqui, nós efetivamente removemos todos os sinais de pontuação comuns da nossa string, mostrando a utilidade de `re.sub()` para fins de limpeza de texto.

Dominar **Python string replace regex** com a função `re.sub()` oferece uma maneira flexível e poderosa de manipular strings em Python. Sua capacidade de procurar e substituir padrões a torna uma ferramenta inestimável para qualquer um que esteja procurando realizar tarefas de processamento de texto sofisticadas sem esforço.

Lembre-se, a chave para a proficiência com **Python replaceall regex** é a prática. Implemente estes exemplos em seus projetos, e você logo descobrirá ainda mais maneiras de otimizar seu código com as capacidades de regex do Python.

## Regex Tester

Procurando por um testador de regex Python para validar e refinar suas expressões regulares de maneira eficiente? Testar padrões de regex Python é essencial em tarefas de parsing, limpeza, e preparação de dados. Com um testador de regex Python, você pode testar, depurar e otimizar rapidamente suas expressões regulares para corresponder ou extrair exatamente o conjunto de dados de que precisa.

### Exemplo: Pesquisar Emails por Padrão

```python3
import re

text = "Contact us at support@example.com or sales@example.net"
pattern = r"[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}"

# Test Python regex
matches = re.findall(pattern, text)

for match in matches:
    print("Email found:", match)
```

### Exemplo: Pesquisar Números de Telefone por Padrão

```python3
import re

text = "Reach us at +1-555-123-4567 or +1-555-765-4321"
pattern = r"\+\d{1,3}-\d{3}-\d{3}-\d{4}"

# Python regex tester
matches = re.findall(pattern, text)

for match in matches:
    print("Phone number found:", match)
```

Estes exemplos destacam a utilidade de um testador de regex Python na extração e verificação de padrões de dados rapidamente. Seja trabalhando com raspagem de dados, validação ou tarefas de pré-processamento, as expressões regulares são ferramentas inestimáveis no seu conjunto de ferramentas Python. Ao aproveitar um testador de regex Python, você pode garantir que suas expressões sejam precisas, eficientes e prontas para qualquer desafio de dados.

## Dominando Regex Python

Expressões regulares (regex) no Python são indispensáveis para qualquer pessoa que precise gerenciar, procurar ou manipular texto de forma eficiente. Seja buscando aprimorar suas habilidades de codificação ou otimizar suas tarefas de processamento de dados, esta folha de cola de regex Python cobre padrões essenciais, funções e dicas para aprimorar seu fluxo de trabalho de programação. Vamos mergulhar nas funções de busca regex Python, como utilizar a funcionalidade de grupo regex Python para correspondência de padrões complexos, e onde testar suas expressões com ferramentas online de regex Python.

### Funções Essenciais de Regex

- **search()**: Encontra a primeira ocorrência de um padrão dentro de uma string. Retorna um objeto de correspondência se encontrado, senão None.

```python3
import re
result = re.search(r'\d+', 'Episode 8: The Last Stand')
print(result.group())  # Output: 8
```

- **findall()**: Retorna todas as correspondências não sobrepostas de um padrão em uma string, como uma lista de strings.

```python
import re
results = re.findall(r'\d+', '3 apples, 5 oranges, 9 berries')
print(results)  # Output: ['3', '5', '9']
```

### Agrupando com Parênteses

Agrupar em regex permite que você destaque partes do texto que combinam. Use o método `group()` para acessar padrões que combinam.

```python3
import re
pattern = re.compile(r'(\d+)([a-z]+)')
match = pattern.search("123abc")
print(match.group(1))  # Output: 123
print(match.group(2))  # Output: abc
```

## Teste Seu Regex Online

Antes de integrar expressões complexas ao seu código, aproveite um testador de regex online python como o [Regex101](https://regex101.com/). Essas ferramentas fornecem feedback em tempo real e explicações úteis sobre seus padrões regex e suas correspondências.

Incorporar essas dicas e funções da folha de cola regex Python ao seu arsenal de programação irá otimizar suas tarefas de processamento de texto e análise de dados. Lembre-se, a prática leva à perfeição, especialmente quando se domina a arte do regex em Python.

## Método `split()` do RegEx

Descubra como dividir strings de maneira eficiente em Python usando expressões regulares (regex). Os métodos de divisão regex de Python permitem capacidades avançadas de divisão de strings, além do que a função básica `split()` oferece. Dominar o split regex python, python split on regex ou técnicas de python split by regex pode elevar suas habilidades de manipulação de strings na programação Python.

Para usar o split regex de Python, você primeiro precisa `import` o módulo `re` que contém o método `split`. Este poderoso método permite que você divida uma string pelas ocorrências de um padrão definido por regex.

### Exemplo: Dividindo a String por Vírgula Seguida de Espaço

```python3
import re

# Example string
text = "Words, separated, by, commas."
# Splitting the string by comma followed by a space
words = re.split(r',\s', text)

print(words)
# Output: ['Words', 'separated', 'by', 'commas.']
```

Neste exemplo, `\s` é uma regex que corresponde a qualquer caractere de espaço em branco. Combinado com `,`, ele efetivamente divide a string onde quer que uma vírgula seguida de um espaço seja encontrada.

### Exemplo: Dividindo por Múltiplos Delimitadores

```python3
import re

# Example string with multiple delimiters
text = "Words; separated by, different. delimiters!"
# Splitting by multiple delimiters: semicolon, comma, and period
words = re.split(r'[;,.]\s', text)

print(words)
# Output: ['Words', 'separated by', 'different', 'delimiters!']
```

Aqui, `[;,.]` significa um conjunto de caracteres que consiste em ponto e vírgula, vírgula e ponto final. Isso permite que a divisão ocorra em qualquer um desses caracteres seguido por um espaço, demonstrando a versatilidade do uso do python split por regex para tarefas mais complexas de manipulação de strings.

Ao incorporar o Python regex split em seus projetos, você desbloqueia um nível superior de capacidade de processamento de strings, permitindo técnicas mais precisas e variadas de parse e manipulação de dados.

## Como Usar `re.findall()`

Descobrir todas as ocorrências que correspondem a um padrão em uma string é uma tarefa comum no processamento e análise de dados. O Python, com seu rico ecossistema de bibliotecas, oferece uma abordagem direta para isso por meio do módulo `re`, especialmente quando se trabalha com expressões regulares (regex). Neste post, exploraremos como usar as funções de regex do Python para encontrar todas as correspondências, focando em tarefas comuns como extração de emails.

A função `re.findall()` no Python é projetada para recuperar todas as correspondências não sobrepostas de um padrão em uma string, retornando-as como uma lista. Essa capacidade é incrivelmente útil para tarefas que requerem correspondência de padrões, como extrair endereços de e-mail de um texto.

### Métodos Chave

- `re.findall(pattern, string, flags=0)`: Pesquisa na string todas as correspondências do padrão e as retorna como uma lista.

Para uma aplicação mais prática, vamos usar `re.findall()` para extrair endereços de email de um texto:

```python3
import re

text = "For more information, contact us at info@example.com or support@example.org."
email_pattern = r'[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}'

emails = re.findall(email_pattern, text)
print(emails)
# Output: ['info@example.com', 'support@example.org']
```

## RegEx: `sub()` e `search()` métodos

No Python, regex (expressões regulares) são utilizadas para pesquisa e manipulação de strings. Duas funções poderosas nesse domínio são `regex.sub()` e `regex.search()`. Ao dominar essas, você pode realizar de forma eficiente operações de substituição e pesquisa **Python regex** em suas tarefas de processamento de texto.

### Substituição Python Regex re.sub()

A função `re.sub()` no Python é usada para **substituição Python regex**. Ela substitui ocorrências de um padrão em uma string por uma substituição especificada. É particularmente útil quando você quer modificar strings de maneira sofisticada, incluindo o uso de **grupos de captura sub regex Python** para manipular partes específicas do texto correspondido.

```python3
import re

text = "2024 is the year of code"
# Replace all instances of a digit sequence with 'XXXX'
result = re.sub(r'\d+', 'XXXX', text)
print(result)  # Output: XXXX is the year of code
```

### Busca Regex em Python

A função `regex.search()` em Python varre uma string para encontrar a primeira localização onde um padrão regex especificado é encontrado. Ela retorna um objeto de correspondência se um match for encontrado e `None` se nenhum match for encontrado. Isso é perfeito para verificar a presença de padrões em strings.

```python3
import re

text = "Reach me at email@example.com"
# Search for an email pattern
match = re.search(r'[\w\.-]+@[\w\.-]+', text)
if match:
    print("Email found:", match.group())  # Output: Email found: email@example.com
else:
    print("No email found.")
```

Ao incorporar técnicas de `regex.search()` juntamente com a funcionalidade **regex sub capture group**, você pode realizar análise e manipulação de texto abrangentes. Essas ferramentas são vitais para limpeza de dados, análise sintática e tarefas mais sofisticadas de processamento de texto.
