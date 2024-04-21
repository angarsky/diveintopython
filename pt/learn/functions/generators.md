> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/generators

**Funções geradoras** em Python são tipos especiais de funções que podem ser usadas para criar **iteradores**. Elas geram uma sequência de valores sob demanda, em vez de retornar um valor de uma só vez como funções regulares. Isso as torna mais eficientes em termos de memória e mais rápidas do que outros métodos de produção de iteradores.

## Introdução aos Geradores

Os benefícios de usar funções geradoras incluem melhor eficiência de desempenho, melhor gestão de memória e a capacidade de lidar com grandes conjuntos de dados e dados infinitos.

### Exemplo 1: Função regular Python

```python3
def power(n):
    result = []
    for i in range(n):
        result.append(2**i)
    return result

print(power(5)) # Output: [1, 2, 4, 8, 16]
```

### Exemplo 2: Função geradora em Python

```python3
def power(n):
    for i in range(n):
        yield 2**i

print(list(power(5))) # Output: [1, 2, 4, 8, 16]
```

No segundo exemplo, a função geradora é usada para criar um **iterador** que gera cada valor sob demanda conforme necessário, em vez de criar e armazenar uma lista de valores na memória como no primeiro exemplo. Isso pode ser uma maneira muito mais eficiente de trabalhar com grandes conjuntos de dados ou cálculos que podem não precisar ser armazenados na memória todos de uma vez.

## Sintaxe e Estrutura de Funções Geradoras

Ela utiliza a palavra-chave `yield` para retornar um valor e suspender temporariamente a execução da função. A **sintaxe** de uma função geradora em Python é **semelhante** a de uma função regular, mas com a adição da instrução `yield`.

Sintaxe de uma função geradora em Python:

```python 
def count_up_to(n):
    i = 1
    while i <= n:
        yield i
        i += 1
```

Neste exemplo, a função geradora `count_up_to()` gera uma sequência de números de `1` até um valor dado `n`. Quando chamada, ela retorna um objeto gerador que pode ser iterado para obter o valor `next` na sequência.

Outro exemplo de uma função geradora é a função `string_generator()` que recebe uma string como entrada e retorna cada caractere da string um de cada vez usando a instrução yield.

```python 
def string_generator(string):
    for char in string:
        yield char
```

A função geradora `string_generator()` cria um novo objeto gerador que produz um caractere por vez a partir da string de entrada. A instrução yield é usada para pausar temporariamente a execução da função e retornar o caractere atual antes de retomar a execução.

## Entendendo a Instrução `yield` em Funções Geradoras

Função geradora em Python é um tipo especial de função Python que pode retornar um objeto iterador. Esses objetos iteradores podem ser usados para gerar uma sequência de valores instantaneamente, em vez de computá-los todos de uma vez e armazená-los em uma lista. A instrução yield é uma parte crucial das funções geradoras e permite que a função produza um valor e pause sua execução temporariamente.

### Exemplo 1: Função Geradora Simples em Python

```python 
def simple_generator():
    yield 'Hello'
    yield 'World'
    yield '!'
```

Neste exemplo, a função `simple_generator()` tem três declarações `yield`, que irão produzir três valores: `Hello`, `World`, e `!`. Quando a função é chamada, ela não executa imediatamente seu código; em vez disso, ela retorna um objeto iterador. Cada vez que o método `__next__()` do iterador é chamado, a função executará até que atinja uma declaração `yield`. Nesse ponto, a função pausará sua execução e retornará o valor para o chamador. Na próxima vez que o método `__next__()` do iterador for chamado, a função retomará a execução de onde parou e continuará até atingir a próxima declaração `yield` ou o final da função.

### Exemplo 2: Função Geradora com Parâmetros em Python

```python 
def even_numbers(maximum):
    i = 0
    while i < maximum:
        if i % 2 == 0:
            yield i
        i += 1
```

Neste exemplo, a função geradora `even_numbers()` recebe um parâmetro `maximum`, indicando o número máximo de números pares a serem gerados. A função utiliza um laço `while` para iterar de 0 até `maximum` e usa uma declaração `if` para verificar se o número atual é par. Se o número for par, a função gera o valor. A função continuará a gerar números pares até que tenha atingido o limite de `maximum`, ou até que o método `__next__()` do iterador não seja mais chamado.

No geral, as funções geradoras em Python são uma ferramenta poderosa para gerar uma sequência de valores em tempo real, o que economiza memória computacional e oferece um desempenho melhorado em comparação aos métodos tradicionais de gerar grandes sequências de dados.

## Diferenças entre Geradores e Funções Regulares em Python

Funções geradoras em Python são um tipo especial de função que nos permite retornar um objeto iterador. A função geradora retorna um objeto gerador que pode ser iterado. Funções regulares, por outro lado, retornam um valor e então terminam.

Aqui estão algumas diferenças entre funções de Python e funções geradoras:

1. **Execução:** Uma função regular de Python é executada até alcançar o fim ou um comando de retorno. Uma função geradora, por outro lado, gera um valor e então entra em um estado suspenso até que outro valor seja solicitado.

2. **Uso de Memória:** Funções regulares podem retornar uma grande saída, o que pode consumir muita memória. Em contraste, funções geradoras usam uma quantidade mínima de memória porque calculam os valores de maneira preguiçosa, conforme e quando necessário.

Aqui está um exemplo de uma função regular de Python:

```python 
def square_numbers(nums):
    result = []
    for i in nums:
        result.append(i * i)
    return result
```

Esta função recebe uma lista de números como entrada e retorna uma lista dos seus quadrados.

Aqui está um exemplo de uma função geradora em Python:

```python
def square_numbers(nums):
    for i in nums:
        yield i * i
```

Esta função geradora também recebe uma lista de números como entrada e gera seus quadrados como saída.

Em resumo, enquanto as funções regulares do Python são usadas para retornar um valor e então sair, as funções geradoras são destinadas a produzir uma sequência de valores que podem ser iterados.

## Casos de Uso Comuns para Funções Geradoras

Casos de uso comuns para funções geradoras em Python incluem:

1. **Analisando arquivos grandes ou conjuntos de dados** - Funções geradoras podem ser usadas para ler partes de um arquivo ou conjunto de dados por vez, em vez de carregar o arquivo inteiro na memória de uma só vez.

2. **Gerando sequências infinitas** - Funções geradoras podem ser usadas para gerar sequências infinitas de números, como a sequência de Fibonacci, sem exigir que o programador crie uma grande lista ou array.

### Exemplo: Função para Ler um Arquivo Grande em Partes

```python
def read_chunks(file_path, chunk_size=1024):
    with open(file_path, "r") as f:
        while True:
            chunk = f.read(chunk_size)
            if not chunk:
                break
            yield chunk
```

A função `read_chunks()` lê um arquivo em partes do tamanho `chunk_size` e gera cada parte até que o final do arquivo seja alcançado. Isso permite que o programador processe arquivos grandes sem carregar o arquivo inteiro na memória.

## Técnicas Avançadas para Trabalhar com Funções Geradoras

Ao utilizar as **técnicas avançadas** discutidas abaixo, você pode **manipular** e **otimizar** a saída das funções geradoras em seu código.

### Execução Preguiçosa

Um dos principais benefícios das funções geradoras é a **capacidade de adiar a execução instantaneamente** até que a saída seja realmente necessária. Isso pode melhorar significativamente o desempenho do seu código, evitando a necessidade de gerar e armazenar toda a saída na memória.

```python3
def fibonacci(n):
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

gen = fibonacci(10) # Does not execute any code.
for num in gen:
    print(num) # Executes code as needed.
```

### Threading com Geradores

Você pode até **combinar geradores com threads** para executar código **de forma assíncrona**, permitindo que **vários processos** sejam executados simultaneamente e melhorando ainda mais o desempenho do seu código.

```python 
from threading import Thread
import time

def countdown(num):
    print(f"Starting countdown for {num}")
    for i in range(num, 0, -1):
        print(i)
        time.sleep(1)

def generate_counts():
    for i in range(5, 0, -1):
        yield Thread(target=countdown, args=(i,))

threads = list(generate_counts())
for thread in threads:
    thread.start()

for thread in threads:
    thread.join()
```

Neste exemplo, criamos uma função geradora que cria múltiplas threads usando o módulo `Thread` em Python. A função `countdown` é executada dentro de cada thread gerada, contando regressivamente de forma assíncrona a partir do valor especificado. Ao utilizar funções geradoras e threads juntas, podemos criar um código mais eficiente e performático que tira vantagem de múltiplos processadores simultaneamente.

## Melhores Práticas e Dicas para Escrever Funções Geradoras Eficientes e Eficazes

1. **Use uma função geradora em vez de uma compreensão de lista ou loop**, ao gerar grandes sequências de dados. Isso acontece porque uma função geradora produz valores em tempo real, enquanto uma compreensão de lista ou loop cria a sequência inteira na memória antes de retorná-la.

2. **Use a palavra-chave `yield` em vez de `return` ao produzir valores** em uma função geradora. Isso permite que a função pause a execução e retorne um valor, sem terminar a função. A função pode então ser retomada de onde parou mais tarde.

3. **Use a função `next()`** para avançar pela sequência gerada por uma função geradora. Esta função recupera o próximo valor produzido pela função e move o estado de execução da função para frente.

4. **Use a função `send()`** para enviar um valor de volta para uma função geradora e retomar sua execução. Esta função permite que um código cliente passe valores para uma função geradora, que pode então usar esses valores para produzir novos valores.

### Exemplo: Uma Função Geradora que Produz Valores em uma Sequência Geométrica

```python3
def geometric_sequence(start, factor):
    value = start
    while True:
        yield value
        value *= factor

# Usage:
g = geometric_sequence(2, 3)
print(next(g))  # Prints 2
print(next(g))  # Prints 6
print(next(g))  # Prints 18
print(next(g))  # Prints 54
print(next(g))  # Prints 162
# ...

```

No exemplo, a função geradora produz uma sequência infinita de valores. No entanto, a palavra-chave `yield` permite que a função **produza valores sob demanda**, e o código cliente pode consumir esses valores um de cada vez, **sem armazenar toda a sequência na memória**.
