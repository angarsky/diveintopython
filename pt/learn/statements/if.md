> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/statements/if

Em Python, a declaração `if` é usada para a execução condicional de código. Ela permite que você especifique uma condição e execute um bloco de código apenas se essa condição for avaliada como `True`.

## Como Usar a Declaração `if` em Python

As declarações `if` em Python são declarações condicionais usadas para executar um bloco de código baseado em certas condições. A sintaxe básica de uma declaração `if` é:

```python
if 1 > 2:
   ##### Execute block of code if the condition is true
    pass

```

Um comando `if` pode também ser combinado com um comando `else` para executar diferentes blocos de código baseados no fato da `condition` ser verdadeira ou falsa. A sintaxe para um comando if-else é:

```python3
if 2 > 1:
   ##### Execute block of code if the condition is true
    print('True')
else:
   ### Execute block of code if the condition is false
    print('False')

```

### Números Pares

```python3
num = 4
if num % 2 == 0:
    print("Even")
else:
    print("Odd")
```

### Máximo de Dois Números

```python3
num1 = 10
num2 = 20
if num1 > num2:
    print("num1 is greater than num2")
else:
    print("num2 is greater than num1")

```

Use instruções `if` em Python para controlar o fluxo do seu programa e tomar decisões baseadas em condições específicas.

## Operador Ternário

Instruções ternárias fornecem uma maneira concisa de escrever uma instrução `if` em uma linha. É uma instrução `if` inline que consiste em três operandos: uma condição, uma expressão para executar se a condição for verdadeira e uma expressão para executar se a condição for falsa.

### Sintaxe da Instrução Ternária `if`

```python
<expression_if_true> if <condition> else <expression_if_false>
```

### Verifique se um número é ímpar ou par

```python3
num = 7
result = "Even" if num % 2 == 0 else "Odd"
print(result)  # Output: Odd
```

No exemplo acima, a declaração ternária verifica se o número é par ou ímpar com **operador ternário** `if`. Se o número for divisível por 2 (isto é, o resto da divisão é zero), a variável `result` será atribuída à string `'Even'`, e se não for divisível por 2 (isto é, o resto é um), a variável `result` será atribuída à string `'Odd'`.

### Verificar se uma lista está vazia ou não

```python3
my_list = [1, 2, 3]
result = "Not Empty" if my_list else "Empty"
print(result)  # Output: Not Empty
```

No exemplo acima, a declaração ternária verifica se a variável `my_list` está vazia ou não. Se `my_list` não estiver vazia, a variável `result` será atribuída à string `Not Empty`, e se estiver vazia, a variável `result` será atribuída à string `Empty`.

No geral, as declarações ternárias oferecem uma maneira limpa e eficiente de escrever declarações condicionais em Python.

## O Comando `if` Entre Dois Números

Para verificar se um número está entre dois números em Python, você pode usar um comando `if` com operadores lógicos. Aqui estão dois exemplos:

```python3
x = 5
if 2 <= x <= 8:
    print("x is between 2 and 8")
else:
    print("x is not between 2 and 8")
```

Neste exemplo, a declaração `if` verifica se `x` está entre `2` e `8` (inclusivo). Se `x` estiver entre `2` e `8`, a declaração `print(x está entre 2 e 8)` será executada, caso contrário, `print(x não está entre 2 e 8)` será executada.

```python3
y = 10
if not (y < 2 or y > 8):
    print("y is between 2 and 8")
else:
    print("y is not between 2 and 8")
```

Neste exemplo, a declaração `if` verifica se `y` **não** é menor que `2` ou **não** é maior que `8`. Se `y` estiver entre `2` e `8`, a declaração `print(y is between 2 and 8)` será executada, caso contrário, `print(y is not between 2 and 8)` será executada.

Use esses exemplos para verificar se seu número está entre dois números em Python.

## A Declaração `if` em Uma Compreensão de Lista

Em Python, uma declaração `if` pode ser usada em uma compreensão de lista para filtrar apenas os valores que atendem a uma condição específica. Isso é extremamente útil para criar uma nova lista que contém apenas os valores desejados sem precisar escrever um loop.

```python3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
even_numbers = [num for num in numbers if num % 2 == 0]
print(even_numbers)
```

Este código cria uma nova lista chamada `even_numbers` contendo apenas os números pares da lista original `numbers`.

```python3
words = ["apple", "banana", "cherry", "date"]
short_words = [word for word in words if len(word) < 6]
print(short_words)
```

Este exemplo usa compreensão de lista para criar uma nova lista chamada `short_words` que contém apenas palavras com menos de seis caracteres da lista original `words`.

Ao usar a declaração `if` na compreensão de lista, podemos reduzir drasticamente a quantidade de código necessária para criar uma nova lista filtrada. Isso pode resultar em um código mais legível e conciso, que é mais fácil de manter.

## Declarações `if` Aninhadas

Declarações If aninhadas são usadas na programação Python quando duas ou mais condições precisam ser verificadas simultaneamente. É uma declaração condicional dentro de outra, criando uma estrutura hierárquica de tomada de decisão.

```python3
age = 18
if age >= 18:
    print("You are legally an adult")
    if age == 18:
        print("Congratulations on turning 18!")
else:
    print("You are not yet an adult")
```

Neste exemplo, a primeira declaração `if` verifica se a `age` é maior ou igual a 18. Se `True`, a segunda declaração `if` verifica se `age` é igual a 18. Se ambas as condições forem `True`, ele imprime a mensagem de parabéns. Caso contrário, ele apenas imprime a mensagem de ser um adulto legalmente.

```python3
x = 5
y = 10
z = 15
if x > y:
    if x > z:
        print("x is the largest")
    else:
        print("z is the largest")
else:
    if y > z:
        print("y is the largest")
    else:
        print("z is the largest")
```

Neste exemplo, existem três variáveis, e os `if` aninhados verificam qual delas é a maior. Se `x` for maior que `y`, então verifica se `x` é maior que `z`. Se for `True`, imprime `x is the largest`. Se a primeira condição for `False`, então verifica se `z` é maior que `y`. Se for `True`, imprime `z is the largest`. Se nenhuma dessas condições for `True`, então `y` deve ser o maior, e imprime `y is the largest`.

Esses são apenas exemplos simples para ilustrar o conceito de declarações If aninhadas em Python e como elas podem ser usadas na programação.

## A Declaração `elif` em Python

Elif `statement` em Python é uma declaração condicional que ajuda a verificar múltiplas condições em um programa. É usada em conjunto com as declarações `if` e `else`.

### Sintaxe

```python
if condition:
    statement(s)
elif condition:
    statement(s)
else:
    statement(s)
```

Aqui, `condition` é uma expressão booleana que avalia para `True` ou `False`. Se `condition` for `True`, então as instruções dentro do bloco `if` são executadas. Se `condition` for `False`, então as instruções dentro do bloco `elif` são executadas. Se nenhuma das condições for `True`, então as instruções dentro do bloco `else` são executadas.

```python3
age = 25

if age < 18:
    print("You are a minor")
elif age >= 18 and age <= 65:
    print("You are an adult")
else:
    print("You are a senior citizen")
```

Neste exemplo, estamos verificando a `age` de uma pessoa. Se a `age` for menor que 18, ele imprime `You are a minor`. Se a `age` estiver entre 18 e 65, ele imprime `You are an adult`. Se a `age` for maior que 65, ele imprime `You are a senior citizen`.

```python3
score = 80

if score >= 90:
    print("You have secured an A grade")
elif score >= 80 and score < 90:
    print("You have secured a B grade")
elif score >= 70 and score < 80:
    print("You have secured a C grade")
elif score >= 60 and score < 70:
    print("You have secured a D grade")
else:
    print("You have failed the exam")
```

Neste exemplo, estamos verificando a `score` de um aluno. Dependendo da `score`, ele imprime diferentes mensagens. Se a `score` for maior ou igual a 90, ele imprime `Você garantiu uma nota A`. Se a `score` estiver entre 80 e 89, ele imprime `Você garantiu uma nota B`. Se a `score` estiver entre 70 e 79, ele imprime `Você garantiu uma nota C`. Se a `score` estiver entre 60 e 69, ele imprime `Você garantiu uma nota D`. Se a `score` for menor que 60, ele imprime `Você reprovou no exame`.

## Múltiplos `if` Statements

Em Python, múltiplos `if` statements podem ser usados para verificar múltiplas condições em um único bloco de execução. Existem duas maneiras de escrever múltiplos `if` statements no Python - usando múltiplos `if` statements e usando um `if` statement multilinha.

### Exemplo de Múltiplos `if` Statements

A sintaxe para usar múltiplos `if` statements é a seguinte:

```python
if condition1:
    # do something
if condition2:
    # do something else
if condition3:
    # do something else again
```

Aqui, cada instrução `if` verifica uma condição separada e executa o bloco de código correspondente se a condição for verdadeira.

```python3
x = 5
y = 8

if x > 0:
    print("x is a positive number")

if y < 10:
    print("y is less than 10")

# Output:
# 
# x is a positive number
# y is less than 10
```

### Outro exemplo de Declaração `if` Multilinha

A sintaxe para usar uma declaração `if` multilinha é a seguinte:

```python
if condition1 and \
   condition2 and \
   condition3:
   # do something
```

Aqui, as barras invertidas (`\`) indicam que o comando `if` é continuado na linha seguinte.

```python3
x = 5
y = 8

if x > 0 and \
   y < 10:
    print("x is a positive number and y is less than 10")

# Output:
# 
# x is a positive number and y is less than 10
```

No geral, ambos os métodos são úteis para verificar múltiplas condições em Python, mas as declarações `if` multilinhas podem tornar o código mais legível e fácil de gerenciar.
