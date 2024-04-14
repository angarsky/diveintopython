> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/statements/operators

Neste artigo, exploraremos os diferentes tipos de operadores em Python e como eles são usados na programação.

## O Operador `in`

O operador `in` em Python é usado para verificar se um valor está presente em uma sequência ou não. Ele retorna um valor Booleano `True` se o valor for encontrado na sequência e `False` caso contrário.

```python3
my_list = [1, 2, 3, 4, 5]
x = 3

if x in my_list:
    print("Element is present in the list")
else:
    print("Element is not present in the list")

# Output:
# 
# Element is present in the list
```

```python3
my_string = "Hello World"
x = "o"

if x in my_string:
    print("Substring is present in the string")
else:
    print("Substring is not present in the string")

# Output:
# 
# Substring is present in the string
```

Com o operador `in`, podemos facilmente verificar a existência de elementos em uma lista, tupla, ou qualquer outro tipo de dado sequencial em python. Ele também ajuda a simplificar o código e torná-lo mais legível.

## Como Usar o Operador `and` em `if`

O operador `and` em Python é usado em declarações `if` para testar se múltiplas condições são verdadeiras. Ele retorna `True` se ambas as condições forem verdadeiras, e `False` caso contrário. Aqui estão dois exemplos:

```python3
x = 5
y = 10
if x > 0 and y > 0:
    print("Both x and y are positive")
else:
    print("At least one of x and y is not positive")
```

Neste exemplo, o operador `and` é usado para determinar se ambos `x` e `y` são positivos. Já que `x` e `y` são ambos maiores que 0, a instrução `if` é avaliada como `True` e `Both x and y are positive` é impresso.

```python3
name = "John"
age = 25
if name == "John" and age == 25:
    print("Your name is John and you are 25 years old")
else:
    print("You are not John or you are not 25 years old")
```

Neste exemplo, o operador `and` é usado para verificar se tanto `name` é `John` quanto `age` é 25. Como ambas as condições são verdadeiras, a instrução `if` é avaliada como `True` e `Your name is John and you are 25 years old` é impresso.

Em resumo, o operador `and` em Python é uma ferramenta poderosa em declarações `if` que permite verificar várias condições de uma vez. Pode ser muito útil em programas complexos que requerem uma extensa verificação de condições.

## O Operador `or`

O operador `or` em Python é um operador lógico que retorna `True` se algum dos dois operandos for `True`, e `False` se ambos os operandos forem `False`. Pode ser usado em declarações condicionais ou expressões booleanas.

### O Operador `or` em uma Declaração Condicional

```python3
age = 25
if age < 18 or age > 60:
    print("You are not eligible for this job")
else:
    print("You are eligible for this job")

# Output: `You are eligible for this job`
```

Neste exemplo, o operador `or` é usado para verificar se a variável `age` é menor que 18 ou maior que 60. Se alguma das condições for `True`, ele imprime uma mensagem dizendo que a pessoa não é elegível para o emprego. Caso contrário, imprime uma mensagem dizendo que a pessoa é elegível para o emprego.

### O Operador `or` em uma Expressão Booleana

```python3
x = 5
y = 10
result = x > 3 or y < 9
print(result)
# Output: `True`
```

Neste exemplo, o operador `or` é utilizado em uma expressão Booleana para verificar se `x` é maior que 3 ou `y` é menor que 9. Como `x` é maior que 3, a expressão é avaliada como `True` e o `result` é impresso como `True`.

De forma geral, o operador `or` em Python oferece uma maneira simples de verificar se pelo menos uma das condições em uma expressão Booleana é `True`.

## O Operador `not`

O operador `not` em Python é usado para reverter o estado lógico de uma expressão Booleana. Retorna True se a expressão for `False` e `False` se a expressão for True. Aqui estão dois exemplos:

### Como Usar o `not` com uma Variável Booleana

```python
flag = False
print(not flag)

```

### O `not` com um Operador de Comparação

```python
x = 10
y = 5
print(not x > y) ### Output

```

No geral, o operador `not` é uma ferramenta útil em Python para alterar o valor verdade de uma expressão Booleana. Pode ser usado com variáveis Booleanas ou em conjunto com operadores de comparação.

## Operador Não Igual

O operador não igual em Python é usado para comparar dois valores e retorna `True` se eles não são iguais, e `False` se eles são iguais. O símbolo usado para o operador não igual é `!=`.

```python
value1 != value2
```

```python3
a = 5
b = 3
if a != b:
    print("a is not equal to b")

# Output:
# 
# a is not equal to b
```

```python3
name1 = "John"
name2 = "Mary"
if name1 != name2:
    print("Names are not equal")
# Output:
# 
# Names are not equal
```

Ao utilizar o operador de desigualdade em Python, você pode facilmente comparar dois valores e obter o resultado desejado. Esse operador é útil em muitas situações onde você precisa verificar se dois valores não são iguais.

## Divisão

Em Python, existem três tipos de operadores de divisão: o operador de barra única `/`, o operador de dupla barra `//` e o operador percentual `%`.

O operador `/` realiza uma divisão regular e retorna uma resposta em ponto flutuante, enquanto o operador `//` realiza a divisão inteira e retorna o valor inteiro do quociente. O operador `%` retorna o resto da divisão. Outra denominação do `%` é **operador módulo**

```python3
x = 10
y = 3
result = x / y
print(result)
```

Saída: `3.3333333333333335`

```python3
x = 10
y = 3
floor_division = x // y 
# Use modulo operator
remainder = x % y 
print(floor_division)
print(remainder)

# Output: 
# 
# 3
# 1
```

No geral, entender esses operadores e suas diferenças é importante na programação Python ao lidar com operações matemáticas.
  
## O Operador `:`

O operador `:` no Python é usado para fatiar sequências como listas, tuplas e strings. Ele permite extrair uma porção de uma sequência especificando um índice inicial e um final separados por dois pontos. Você também pode especificar um tamanho de passo. Esse operador é muito útil ao trabalhar com dados em Python.

```python3
### create a list

my_list = [0, 1, 2, 3, 4, 5]

### slice the list from index 2 to index 4

sliced_list = my_list[2:5]

### print the sliced list

print(sliced_list)

# Output:
# 
# [2, 3, 4]
```

```python
### create a string

my_string = "Hello world!"

### slice the string to get characters from index 1 to index 4

sliced_string = my_string[1:5]

### print the sliced string

print(sliced_string)

# Output:
# 
# ello
```

O operador `:` é uma ferramenta essencial em Python para trabalhar com sequências. Sua sintaxe flexível torna o fatiamento e a manipulação de dados muito fácil!

## Operador Booleano em Python

Os operadores booleanos em Python são usados para avaliar condições verdadeiras ou falsas. Estes operadores incluem `and`, `or` e `not`. Em Python, as operações booleanas são criadas com as palavras-chave `and`, `or` e `not`.

```python3
x = 5
y = 10
z = 15

if x < y and z > y:
    print("Both conditions are true")
# Output: `Both conditions are true`
```

```python3
x = 5
y = 10
z = 15

if x < y or z < y:
    print("At least one condition is true")

# Output: `At least one condition is true`
```

Usar operadores booleanos no Python oferece flexibilidade na avaliação de múltiplas condições e na tomada de decisões. Ao utilizar operações booleanas, declarações complexas podem ser simplificadas e codificadas em menos linhas de código.

## Sobrecarga de Operadores

No Python, a Sobrecarga de Operadores nos permite definir o comportamento dos operadores de uma maneira personalizada para uma classe ou objeto específico. Isso ajuda a melhorar a clareza e a legibilidade do código. O Python suporta a sobrecarga de operadores para a maioria dos operadores integrados como `+`, `-`, `/`, `//`, `%`, `&`, `|`, `^`, `>>`, `<<`, `<`, `>`, `<=`, `>=`, `==`, `!=`, e mais.

Aqui estão dois exemplos de código que demonstram a sobrecarga de operadores no Python:

```python
class Rectangle:
    def __init__(self, length, width):
        self.length = length
        self.width = width

    def __str__(self):
        return f"Rectangle({self.length}, {self.width})"

    def __add__(self, other):
        return Rectangle(self.length + other.length, self.width + other.width)

r1 = Rectangle(4, 3)
r2 = Rectangle(2, 5)
print(r1 + r2)  ### Output

```

No código acima, definimos um comportamento personalizado para o operador '+' para a classe `Rectangle`. Quando adicionamos dois objetos `Rectangle` usando o operador '+', ele criará um novo objeto `Rectangle` com a soma do `length` e `width` de ambos os retângulos.

```python3
class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages

    def __lt__(self, other):
        return self.pages < other.pages

b1 = Book("Python for Beginners", "John Smith", 300)
b2 = Book("Advanced Python", "David Johnson", 500)
print(b1 < b2)  ### Output

```

Neste código, definimos um comportamento personalizado para o operador `<` para a classe `Book`. Ele compara dois livros com base no número de `pages` que eles têm. Se o número de `pages` no objeto `self` for menor do que o número de `pages` no objeto `other`, ele irá `return` `True`.

No geral, a sobrecarga de operadores em Python ajuda você a escrever um código mais legível e expressivo. Isso torna seu código mais limpo e fácil de entender.

## Operadores Matemáticos em Python

Python oferece uma variedade de operadores matemáticos que podem ser usados para realizar operações matemáticas em Python. Esses operadores incluem adição, subtração, multiplicação, divisão e módulo.

### Operador de Adição

O operador de adição em Python é representado por um `+`. É usado para adicionar dois ou mais números, conforme mostrado abaixo:

```python3
# Adding two numbers
num1 = 10
num2 = 20
result = num1 + num2 
print(result)  # Output: 30

# Adding more than two numbers
result = num1 + num2 + 5
print(result)  # Output: 35
```

### Operador de Divisão

O operador de divisão em Python é representado por uma `/`. É usado para dividir um número por outro número e retorna um valor de ponto flutuante como resultado:

```python3
# Division of two numbers
num1 = 10
num2 = 2
result = num1 / num2 
print(result)  # Output: 5.0  (float)

# Division with remainder
num1 = 7
num2 = 3
result = num1 / num2 
remainder = num1 % num2
print(result)  # Output: 2.3333333333333335 (float)
print(remainder) # Output: 1 (int)
```

Python oferece muitos outros operadores matemáticos, como subtração, multiplicação, módulo e mais. Usando esses operadores, você pode realizar operações matemáticas complexas nos seus programas Python.

## Operadores Bitwise em Python

Operadores bit a bit são usados em Python para realizar operações bitwise em inteiros. Essas operações trabalham manipulando bits individuais da representação binária dos inteiros. Isso é útil na programação de baixo nível, como otimizar código ou trabalhar com hardware.

### Como usar operadores bit a bit em Python

Há seis operadores bitwise disponíveis em Python. São eles:

- `&` (AND bit a bit): Este operador retorna um novo inteiro cujos bits são definidos como 1 apenas se ambos os bits correspondentes dos operandos forem 1.
- `|` (OR bit a bit): Este operador retorna um novo inteiro cujos bits são definidos como 1 se quaisquer bits correspondentes dos operandos forem 1.
- `^` (XOR bit a bit): Este operador retorna um novo inteiro cujos bits são definidos como 1 se apenas um dos bits correspondentes dos operandos for 1.
- `~` (NOT bit a bit): Este operador retorna o complemento do operando, ou seja, ele inverte todos os bits do operando.
- `<<` (deslocamento à esquerda): Este operador desloca os bits do operando para a esquerda pelo número especificado de bits. Os bits deslocados são preenchidos com 0.
- `>>` (deslocamento à direita): Este operador desloca os bits do operando para a direita pelo número especificado de bits. Os bits deslocados são preenchidos com 0 para números positivos e 1 para números negativos.

### O Operador `&`

```python
x = 5      

y = 3      

z = x & y  ### in binary

print(z)   ### Output

```

Neste exemplo, usamos o operador AND bit a bit para encontrar os bits comuns entre `x` e `y`. O resultado é `1`, que é o único bit que está definido como 1 em ambos `x` e `y`.

### O operador `<<`

```python
x = 7      

y = 2     

z = x << 1 ### in binary

print(z)   ### Output 
```

Neste exemplo, usamos o operador de deslocamento à esquerda para mover os bits de `x` para a esquerda por uma posição. O resultado é `14`, que é `1110` em binário. O bit deslocado à esquerda é preenchido com `0`.

No geral, as operações com bits em Python podem ser úteis para otimizar o código e trabalhar com números em um nível mais baixo.

## Ordem dos Operadores

Em Python, assim como na matemática, há uma ordem específica na qual os operadores são avaliados. Isso é conhecido como a ordem de operações. A precedência de operadores em Python é a seguinte:

1. Parênteses
2. Exponenciação
3. Multiplicação, Divisão e Módulo (da esquerda para a direita)
4. Adição e Subtração (da esquerda para a direita)

É importante manter essa ordem em mente ao escrever expressões em Python.

```python

result = 5 + 3 * 2 # first 3*2 will be evaluated, then 5 will be added to the result
print(result) # output: 11

result = (5 + 3) * 2 # first 5+3 will be evaluated in the parentheses, then the result will be multiplied by 2
print(result) # output: 16
```

No primeiro exemplo, a operação de multiplicação é avaliada antes da operação de adição, conforme a ordem das operações. No segundo exemplo, a operação de adição dentro dos parênteses é avaliada primeiro, novamente conforme a ordem das operações. Entender a ordem dos operadores em Python pode ajudar a evitar erros e produzir resultados mais precisos.

## Operador Walrus

O Operador Walrus é uma nova funcionalidade disponível em Python 3.8 e versões posteriores. Ele proporciona uma maneira concisa e eficiente de atribuir valores a variáveis em certos cenários.

### Entendendo o Operador Walrus

O Operador Walrus é denotado pelo símbolo := e é usado para atribuir valores a variáveis em uma única expressão. É particularmente útil em cenários onde chamadas repetidas a funções ou métodos são intensivas em recursos, pois pode ajudar a reduzir estas chamadas.

### Operador Walrus com Declaração 'if'

```python

if (a:=2+3) > 4:
    print(f"{a} is greater than 4")
else:
    print(f"{a} is less than or equal to 4")
```

### Operador Walrus com o laço 'while'

```python
import random

while (num:=random.randint(1,10)) != 3:
     print(num)
```

Nos dois exemplos acima, o Operador Morsa é usado para atribuir valores à variável na mesma expressão que a declaração condicional. Isso torna o código mais conciso e fácil de ler.

## Operador de Exponenciação

O operador de exponenciação em Python é representado por `**` e é usado para elevar um número a uma potência. É um operador binário que recebe dois operandos; o primeiro sendo a base e o segundo sendo o expoente.

Aqui estão dois exemplos de código para demonstrar o uso do operador de exponenciação em Python:

```python3
num = 2
exp = 3
result = num ** exp
print(result)  

```

```python3
num = 2
exp = 3
num **= exp
print(num)  

```

Em ambos os exemplos, o operador `**` é usado para calcular o `result` de elevar um número a uma potência. No segundo exemplo, o `result` é atribuído à variável `num` usando o operador de atribuição `**=` para um código mais conciso. Ao usar o operador de exponenciação, você pode facilmente realizar operações de exponenciação no seu código Python.
