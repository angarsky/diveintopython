> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/import-functions

Em Python, funções desempenham um papel vital na programação, pois ajudam a criar código reutilizável. No entanto, às vezes pode ser tedioso reescrever a mesma função várias vezes. Felizmente, Python facilita a reutilização de funções, permitindo que você as importe de diferentes arquivos. Neste artigo, exploraremos como importar funções de outro arquivo do Python.

## A função de `import` do Python: Como Usá-la para Melhorar a Reusabilidade do Código

A **função de import** do Python é uma ferramenta poderosa para melhorar a reusabilidade do código. Ela nos permite importar funções de outros arquivos, o que pode nos economizar muito tempo e esforço ao construir projetos maiores.

Para importar funções de um arquivo, primeiro precisamos criar um módulo Python. Isso é simplesmente um arquivo com extensão `.py` que contém as funções que queremos importar. Podemos então usar a palavra-chave `import` para trazer essas funções para o nosso script principal: `from my_module import my_function`

Alternativamente, também podemos importar o módulo inteiro e acessar suas funções usando a notação de ponto: `import my_module`

Ao usar a função de `import` no Python, podemos facilmente reutilizar código em vários projetos e melhorar nossa eficiência geral como desenvolvedores.

## As Diferentes Maneiras de Importar Funções de Arquivos em Python

Importar funções em Python é uma prática comum para reutilizar código e melhorar a organização do código. Existem diferentes maneiras de importar funções em Python, incluindo a importação de uma função de um arquivo ou a importação de uma função como um módulo.

Para importar uma função de um arquivo em Python, use a seguinte sintaxe: `from file_name import function_name`

Isso permite que você use a função em seu código sem ter que escrever o código inteiro novamente. Por exemplo:

Alternativamente, você pode importar uma função como um módulo, o que pode ser útil se você quiser importar múltiplas funções do Python do mesmo módulo: `import file_name`

No geral, importar funções em Python é uma maneira poderosa de tornar seu código mais eficiente e legível.

## Chamar uma Função de Outro Arquivo

Uma das práticas comuns em Python é reutilizar código importando funções de outros arquivos do Python. Isso permite que você traga funções específicas para o seu script atual. Para fazer isso, use a seguinte sintaxe:

```python
from file_name import function_name
```

Por exemplo, para importar a função `add` de um arquivo chamado `math_operations.py`, você pode usar:

```python
from math_operations import add
```

Uma vez que você tenha importado a função, pode usá-la facilmente em seu código. Aqui está um exemplo:

```python
result = add(2, 3)
print(result)  # Output: 5
```

Para importar múltiplas funções específicas, como `add` e `subtract`, de `math_operations.py`, você pode usar a seguinte sintaxe:

```python
from math_operations import add, subtract
```

Agora, tanto a função `add` quanto a `subtract` do arquivo `math_operations.py` podem ser chamadas da seguinte forma:

```python
print(add(2, 3))
print(subtract(5, 3))
```

Este processo é uma maneira poderosa de aumentar a reutilização do código em Python. Ao importar funções de outros arquivos, você pode economizar tempo e esforço e tornar seu código mais eficiente e organizado.

## Erros Comuns ao Importar Funções em Python e Como Corrigi-los

Ao importar funções em Python, os erros comuns incluem **erros de importação**, **erros de sintaxe** e **erros de atributo de módulo**.

Se você encontrar um erro ao tentar chamar uma função de outro arquivo, há algumas coisas que você pode tentar para corrigi-lo. Primeiro, certifique-se de que o arquivo que você está tentando importar está localizado no mesmo diretório que o seu script Python. Se não, você pode precisar especificar o caminho para o arquivo.

Em seguida, verifique a sintaxe da declaração de importação para ter certeza de que está correta. Se você está usando a palavra-chave `from`, certifique-se de ter incluído o nome correto da função. Se você está usando a palavra-chave `import`, certifique-se de estar se referindo ao nome do módulo correto.

Finalmente, confira novamente o nome da função para garantir que está escrito corretamente e que está definido no arquivo de onde você está tentando importar.

Por exemplo, vamos dizer que você quer importar a função `runsqlscript` do módulo `sqlideutils`. Aqui está como você poderia fazer usando a palavra-chave `from`:`from sqlideutils import runsqlscript`

E aqui está como você poderia fazer usando a palavra-chave `import`:`import sqlideutils` com `runsqlscript = sqlideutils.runsqlscript`

## Organizando Seu Código Python: Como Criar um Módulo Personalizado com Funções Importáveis

Organizar o seu código Python é crucial para torná-lo legível, mantível e reutilizável. Uma maneira de alcançar isso é criando um módulo personalizado contendo **funções importáveis**.

Para criar um módulo personalizado com funções importáveis, siga estes passos:

1. **Crie** um novo arquivo Python com a extensão `.py` e dê um nome descritivo (por exemplo, `myfunctions.py`).
2. **Defina** uma ou mais funções no arquivo usando a palavra-chave `def` e um nome para a função (por exemplo, `mod_function`).
3. **Salve** o arquivo.
4. **Importe** a(s) função(ões) do arquivo em outro script Python usando a palavra-chave `import` e o nome do arquivo sem a extensão `.py` (por exemplo, `import myfunctions`).
5. **Chame** a(s) função(ões) importada(s) no script usando o nome da função conforme definido no arquivo (por exemplo, `myfunctions.mod_function()`).

## Técnicas Avançadas de Python: Como Construir e Importar Pacotes Externos com Múltiplas Funções

**Importar funções** é uma técnica avançada de Python que nos permite construir e importar pacotes externos com **múltiplas funções**. É um recurso poderoso que aumenta a reutilização do código e a organização.

Existem várias maneiras de importar múltiplas funções em Python. Uma maneira é definir funções em um arquivo separado e, em seguida, importá-las para o script principal usando a sintaxe `import function from file`. Outra maneira é usar a função `map` com vários argumentos para aplicar uma função a múltiplos iteráveis simultaneamente.

Aqui estão dois exemplos de como usar funções de importação em Python:

### Exemplo 1: Importando Funções de um Arquivo Separado

```python3
# Suppose we have a file named `my_functions.py` that contains the following functions:
def add(a, b):
    return a + b

def subtract(a, b):
    return a - b
# To import these functions into a main script, we can use the following syntax:
# from my_functions import add, subtract

result1 = add(10, 5)
result2 = subtract(10, 5)

print(result1)  # Output: 15
print(result2)  # Output: 5
```

Aqui, importamos as funções `add` e `subtract` do arquivo `my_functions.py` e as usamos no script principal.

### Exemplo 2: Usando a Função Map com Múltiplos Argumentos

Suponha que temos duas listas, `numbers1` e `numbers2`, e queremos somá-las elemento por elemento. Podemos usar a **função map com múltiplos argumentos** para conseguir isso:

```python3
numbers1 = [1, 2, 3, 4, 5]
numbers2 = [5, 4, 3, 2, 1]

def add(a, b):
    return a + b

result = list(map(add, numbers1, numbers2))

print(result)  # Output: [6, 6, 6, 6, 6]
```

Aqui, definimos a função `add` e usamos a função map para aplicá-la às listas `numbers1` e `numbers2` elemento por elemento. O `result` é uma nova lista contendo a soma elemento por elemento das duas listas.
