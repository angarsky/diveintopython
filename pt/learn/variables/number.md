> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/number

O Python suporta vários tipos de dados numéricos que são usados para diversas operações matemáticas na programação. Esses tipos de dados incluem números inteiros, números de ponto flutuante e números complexos. Entender esses tipos de dados e suas características é essencial para qualquer programador que queira trabalhar com dados numéricos no Python.

## Tipos de Números no Python

No Python, existem vários tipos de números que podem ser usados para diferentes propósitos. Os tipos de números mais comuns no Python são:

- **Número inteiro** (int): Este é um número inteiro sem ponto decimal. Por exemplo, `1`, `2`, `3`, etc. são inteiros.
- **Número Flutuante**: Este é um número decimal. Por exemplo, `1.2`, `3.14159`, etc. são flutuantes.
- **Número Complexo**: Este é um número com uma parte real e uma imaginária. Por exemplo, `1 + 2j`, `3.14 - 4j`, etc. são números complexos.

Aqui estão alguns exemplos de como definir esses tipos de números no Python:

```python
# Integer
x = 5
print(type(x))  # Output: <class 'int'>

# Float
y = 3.14
print(type(y))  # Output: <class 'float'>

# Complex
z = 2 + 3j
print(type(z))  # Output: <class 'complex'>
```

## A Função `isinstance()`

Para verificar se uma variável é um número em Python, você pode usar a função `isinstance()` para verificar se a variável pertence ao tipo de dados int, float ou complex. Aqui está um exemplo:

```python3
x = 10
y = 3.14
z = 2 + 3j

print(isinstance(x, (int, float, complex)))  # Output: True
print(isinstance(y, (int, float, complex)))  # Output: True
print(isinstance(z, (int, float, complex)))  # Output: True
print(isinstance('hello', (int, float, complex)))  # Output: False
```

## Arredondando um Número em Python

Você pode arredondar um número usando a função integrada `round()`. A função `round()` recebe dois argumentos: o número a ser arredondado e o número de casas decimais para arredondar.

Aqui está um exemplo:

```python3
x = 3.14159
rounded_x = round(x, 2)
print(rounded_x) # Output: 3.14
```

Observe que se o número a ser arredondado terminar em 5, a função `round()` arredondará para o número par mais próximo. Isso é conhecido como "arredondamento dos banqueiros". Por exemplo:

```python
x = 2.5
rounded_x = round(x)
print(rounded_x) # Output: 2
```

## Formatação de Números

No Python, existem várias maneiras de formatar números. Aqui estão alguns exemplos:

### Usando a função nativa `format()`

```python3
x = 3.14159
print("{:.2f}".format(x))  # Output: 3.14
```

A string `"{:.2f}"` dentro da função `format()` indica ao Python para formatar o número como um float com 2 casas decimais.

### Usando f-strings (Python 3.6 e superior)

```python
x = 3.14159
print(f"{x:.2f}")  # Output: 3.14
```

O `f` antes da string indica que se trata de uma f-string, e o `"{x:.2f}"` dentro da string diz ao Python para formatar o valor de `x` como um float com 2 casas decimais.

### Usando o operador `%`

```python3
x = 3.14159
print("%.2f" % x)  # Output: 3.14
```

A string `%.2f` dentro do operador `%` indica ao Python para formatar o número como um float com 2 casas decimais.

## Verificando se uma String é um Número

Você pode verificar se uma string é um número em Python usando vários métodos. Aqui estão alguns exemplos:

### Usando o método `isnumeric()`

```python
my_string = "123"
if my_string.isnumeric():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
```

### Usando o método `isdigit()`

```python
my_string = "456"
if my_string.isdigit():
    print("String is a number")
else:
    print("String is not a number") # Output: String is a number
 ```

### Usando bloco try-except para converter string para float

```python
my_string = "789.12"
try:
    float(my_string)
    print("String is a number")
except ValueError:
    print("String is not a number") # Output: String is a number
```

> Observe que se a string contém um caractere não numérico, os dois primeiros métodos retornarão `False` e o terceiro método gerará um `ValueError`.

## Verificar Se um Número é Inteiro

Você pode usar o operador módulo `%` para verificar se um número é inteiro ou não. Se o resultado da divisão do número por 1 for igual a 0, então o número é inteiro.

Aqui está um exemplo:

```python
num = 5.0  # the number you want to check

if num % 1 == 0:
    print("The number is whole.")
else:
    print("The number is not whole.") # Output: "The number is whole."
 ```

## Gerando um Número Aleatório

Para obter um número aleatório em Python, você pode usar o módulo `random`. Aqui está um exemplo de como gerar um número inteiro aleatório entre 0 e 10:

```python
import random

random_number = random.randint(0, 10)
print(random_number)
```

Isso imprimirá um número inteiro aleatório entre 0 e 10 (inclusive) cada vez que você executar o script. Se você quiser gerar um número de ponto flutuante aleatório, pode usar a função `random.uniform()` em vez disso:

```python
import random

random_number = random.uniform(0, 1)
print(random_number)
```

## Elevando um Número ao Quadrado em Python

Vamos ver como elevar um número ao quadrado em Python.
O primeiro método é usando o operador de expoente `**`. Aqui está um exemplo:

```python
x = 5
squared = x ** 2
print(squared) # Output: 25
```

Alternativamente, você também pode usar a função `pow()` para calcular o quadrado de um número. Aqui está um exemplo:

```python
x = 5
squared = pow(x, 2)
print(squared)
```

## Negando um Número

Você pode negar um número usando o operador `-` (menos).

Aqui está um exemplo:

```python
number = 10
negated_number = -number
print(negated_number) # Output: -10
```

## Número Primo

Um número primo é um inteiro positivo maior que 1 que não possui divisores inteiros positivos além de 1 e ele mesmo. Em Python, você pode verificar se um número é primo testando se ele é divisível por algum número além de 1 e ele mesmo.

Aqui está um exemplo de uma função que verifica se um número é primo ou não:

```python
def is_prime(n):
    if n <= 1:
        return False
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            return False
    return True
```

Esta função recebe um inteiro positivo `n` como entrada e retorna `True` se `n` for primo, e `False` caso contrário.

A função primeiro verifica se `n` é menor ou igual a 1, o que não é um número primo por definição. Se `n` for menor ou igual a 1, a função retorna `False`.

Se `n` for maior que 1, a função verifica se ele é divisível por algum número de 2 até a raiz quadrada de `n`. Se `n` for divisível por algum número neste intervalo, ele não é primo e a função retorna `False`. Caso contrário, `n` é primo e a função retorna `True`.

Aqui está um exemplo de como usar a função `is_prime`:

```python
print(is_prime(7)) # True
print(is_prime(15)) # False
print(is_prime(23)) # True
print(is_prime(1)) # False
```

Saída:

```python
True
False
True
False
```

Neste exemplo, chamamos a função `is_prime` com diferentes valores de entrada e imprimimos a saída.

## Número de Euler em Python

O número de Euler, também conhecido como a constante matemática `e`, é uma constante matemática que é aproximadamente igual a 2.71828. Em Python, você pode calcular o número de Euler usando o módulo `math`.

Aqui está um exemplo de como calcular o número de Euler:

```python3
import math

e = math.e

print(e) # Output: 2.718281828459045
```

## Extraindo Número de uma String

Para extrair um número de uma string em Python, você pode usar expressões regulares com o módulo `re`. Aqui está um exemplo:

```python3
import re

string = "The price is $12.34"

number = re.findall(r'\d+\.\d+', string)[0]

print(number) # Output: 12.34
```

Neste exemplo, primeiro importamos o módulo `re`, que oferece suporte para expressões regulares. Em seguida, definimos uma variável `string` que contém uma frase com um número.

Para extrair o número da string, usamos a função `re.findall` com um padrão de expressão regular `\d+\.\d+`. Este padrão corresponde a um ou mais dígitos `\d+` seguidos de um ponto `\.` seguido por um ou mais dígitos `\d+`. A correspondência resultante é uma string que representa o número na frase.

Uma vez que `re.findall` retorna uma lista de correspondências, acessamos o primeiro elemento `[0]` da lista para obter o número como uma string.

Se você precisar converter o número extraído de uma string para um valor numérico, você pode usar a função float ou int:

```python
number = float(number)
print(number) # Output: 12.34
```

## Dígitos de um Número

Para encontrar os dígitos de um número em Python, você pode converter o número em uma string e então iterar sobre a string para extrair cada dígito. Aqui está um exemplo:

```python3
num = 12345

# Convert number to string
num_str = str(num)

# Iterate over string and print each digit
for digit in num_str:
    print(digit)
```
