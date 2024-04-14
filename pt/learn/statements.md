> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/statements

Em Python, statements são instruções ou comandos que você escreve para realizar ações ou tarefas específicas. Eles são os blocos de construção de um programa Python.

## O que é um Statement em Python?

Um [statement](https://en.wikipedia.org/wiki/Statement_(computer_science)) é uma linha de código que executa uma ação específica. É a menor unidade de código que pode ser executada pelo interpretador Python.

### Statement de Atribuição

```python
x = 10
```

Neste exemplo, o valor `10` é atribuído à variável `x` usando a instrução de atribuição.

### Declaração Condicional

```python3
x = 3
if x < 5:
    print("x is less than 5")
else:
    print("x is greater than or equal to 5")
```

Neste exemplo, a declaração if-else é usada para verificar o valor de `x` e `print` uma mensagem correspondente.

Ao usar declarações, os programadores podem instruir o computador a realizar uma variedade de tarefas, desde operações aritméticas simples até processos complexos de tomada de decisão. O uso adequado de declarações é crucial para escrever um código Python eficiente e eficaz.

## Conjunto de Declarações

Aqui está uma tabela resumindo vários tipos de declarações em Python:

| Declaração                | Descrição                                                       |
|--------------------------|-------------------------------------------------------------------|
| Declarações Multi-Linha    | Declarações que abrangem múltiplas linhas usando continuação de linha ou chaves.|
| Declarações Compostas      | Declarações que contêm outras declarações (por exemplo, [if](/pt/learn/statements/if.md), while, for).   |
| Declarações Simples        | Declarações básicas independentes que realizam uma única ação.          |
| Declarações de Expressão    | Declarações que avaliam e produzem um valor.                      |
| Declaração `pass`           | Uma declaração de espaço reservado que não faz nada.                        |
| Declaração `del`            | Usada para deletar referências a objetos.                              |
| Declaração `return`         | Termina uma função e retorna um valor (opcional).              |
| Declaração `import`         | Importa módulos ou objetos específicos de módulos.                  |
| Declarações `continue` e `break` | Declarações de controle de fluxo usadas em loops (`continue` pula para a próxima iteração, `break` sai do loop). |

Por favor, note que esta tabela fornece uma visão geral breve de cada tipo de declaração, e pode haver detalhes adicionais e variações para cada declaração.

## Declarações Multi-Linha

Declarações multi-linha são uma maneira conveniente de escrever código longo em Python sem torná-lo confuso. Elas permitem que você escreva várias linhas de código como uma única declaração, tornando mais fácil para os desenvolvedores ler e entender o código. Aqui estão dois exemplos de declarações multi-linha em Python:

1. Usando barra invertida:

```python
total = 10 + \
        20 + \
        30
print(total) ### Output

```

2. Usando parênteses:

```python
fruit_list = ('Apple',
              'Mango',
              'Banana',
              'Orange')
print(fruit_list) ### Output

```

## Declarações Simples

Declarações simples são a menor unidade de execução na linguagem de programação Python e não contêm quaisquer expressões lógicas ou condicionais. São geralmente compostas por uma única linha de código e podem realizar operações básicas, como atribuir valores a variáveis, imprimir valores ou chamar funções.

Exemplos de declarações simples em Python:

```python
### Assigning a value to a variable

x = 5

### Printing out a value

print(x)
```

Declarações simples são essenciais para programar em Python e são frequentemente usadas em combinação com declarações mais complexas para criar programas e aplicações robustas.

## Declarações de expressão

Declarações de expressão em Python são linhas de código que avaliam e produzem um valor. São usadas para atribuir valores a variáveis, chamar funções e realizar outras operações que produzem um resultado.

```python
x = 5
y = x + 3
print(y)
```

Neste exemplo, atribuímos o valor `5` à variável `x`, em seguida adicionamos `3` ao `x` e atribuímos o resultado (`8`) à variável `y`. Finalmente, nós `print` o valor de `y`.

```python3
def square(x):
    return x * x

result = square(5)
print(result)
```

Neste exemplo, definimos uma função `square` que recebe um argumento (`x`) e retorna o seu quadrado. Em seguida, chamamos a função com o argumento `5` e atribuímos o resultado (`25`) à variável `result`. Por fim, nós `print` o valor de `result`.

No geral, as instruções de expressão são uma parte essencial da programação em Python e permitem a execução de operações matemáticas e computacionais.

## A Declaração `assert`

A declaração `assert` em Python é usada para testar condições e acionar um erro se a condição não for atendida. É frequentemente usada para fins de depuração e testes.

```python
assert condition, message
```

Onde `condition` é a expressão que é testada, e `message` é a mensagem de erro opcional que é exibida quando a condição não é atendida.

```python
x = 5
assert x == 5, "x should be 5"
```

Neste exemplo, a declaração `assert` testa se `x` é igual a `5`. Se a condição for atendida, a declaração não terá efeito. Se a condição não for atendida, um erro será gerado com a mensagem `x should be 5`.

```python
def divide(x, y):
    assert y != 0, "Cannot divide by zero"
    return x / y
```

Neste exemplo, a instrução `assert` testa se `y` não é igual a `0` antes de realizar a divisão. Se a condição for atendida, a divisão prossegue normalmente. Se a condição não for atendida, um erro será gerado com a mensagem `Cannot divide by zero`.

No geral, as instruções `assert` são uma ferramenta útil em Python para depuração e teste, pois podem ajudar a detectar erros logo no início. Elas também podem ser facilmente desativadas no código de produção para evitar qualquer sobrecarga desnecessária.

## A Instrução `try`

A instrução `try` em Python é usada para capturar exceções que podem ocorrer durante a execução de um bloco de código. Ela garante que, mesmo quando ocorre um erro, o código não pare de rodar.

```python
try:
    # Block of code to be attempted
except ExceptionType:
    # Block of code to be executed if the try block throws an exception
else:
    # Block of code to be executed if no exception was thrown in the try block
finally:
    # Block of code that is always executed regardless of whether an exception was thrown or not
```

### Exemplos de Processamento de Erros

```python3
try:
    x = 1/0
except ZeroDivisionError:
    print("Division by zero is not allowed")

# Output:

# Division by zero is not allowed
```

```python
try:
    f = open("myfile.txt")
    f.write("This is a test file")
except IOError:
    print("Error: File not found or could not be written")
else:
    print("File written successfully")
finally:
    f.close()
# Output:

# Error: File not found or could not be written
```
