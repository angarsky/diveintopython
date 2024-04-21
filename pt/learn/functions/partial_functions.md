> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/partial-functions

Python oferece uma gama de funções para os desenvolvedores. Funções parciais em Python são uma adição empolgante que podem ser extremamente úteis, particularmente ao lidar com códigos complexos. Uma função parcial é uma função que já tem alguns de seus argumentos definidos previamente, tornando-a mais fácil de chamar. Neste artigo, exploramos o conceito de funções parciais em Python e como elas podem ser usadas efetivamente em diferentes cenários de programação.

## Entendendo funções parciais em Python: um guia para iniciantes sobre modificação de funções

Uma **função parcial** em Python é uma função que é definida com alguns de seus argumentos já configurados. Isso nos permite criar novas funções a partir de existentes que têm alguns dos argumentos pré-configurados. A função resultante é chamada de função parcial.

Por exemplo, considere a seguinte função normal que adiciona dois números. Podemos criar uma nova função parcial a partir desta função configurando um dos argumentos:

```python3
from functools import partial

def add(a, b):
    return a + b

add_3 = partial(add, 3)

print(add_3(4)) # Output: 7
```

Aqui, criamos uma nova função parcial chamada `add_3` que adiciona 3 a qualquer número que passamos para ela. Fizemos isso usando a função `partial` do módulo `functools`.

Também podemos usar funções parciais para modificar uma função existente passando um novo valor para um de seus argumentos:

```python3
from functools import partial

mod = partial(pow, 2)

print(mod(3)) # Output: 8
```

Neste exemplo, criamos uma nova função parcial chamada `mod` que recebe um número e calcula o seu módulo com 2.

## Como usar funções parciais em Python para simplificar trechos de código recorrentes

Funções parciais são funções que são definidas com alguns de seus argumentos já estabelecidos, o que reduz a necessidade de repetir trechos de código em Python. Elas são criadas usando o método `partial()` do módulo `functools` e podem ser usadas para simplificar código complexo.

As palavras-chave usadas nesta resposta são função e função parcial.

### Dois exemplos de uso de funções parciais em Python

Suponha que temos uma função que calcula a área de um retângulo. Precisamos calcular a área de vários retângulos com uma `width` fixa de `10`. Em vez de criar uma nova função, podemos criar uma função parcial com o argumento de largura fixa:

```python3
from functools import partial

def calculate_area(length, width):
    return length * width

calculate_area_with_fixed_width = partial(calculate_area, width=10)

area1 = calculate_area_with_fixed_width(5)
area2 = calculate_area_with_fixed_width(7)

print(area1) # 50
print(area2) # 70
```

Suponha que temos uma função que gera uma URL a partir de um caminho e alguns parâmetros de consulta. Precisamos gerar URLs com um caminho fixo e alguns parâmetros de consulta variáveis. Em vez de repetir o argumento do caminho todas as vezes, podemos criar uma função parcial com o argumento do caminho fixo:

```python3
from functools import partial

def generate_url(path, params):
    url = "https://example.com" + path + "?"
    for key, value in params.items():
        url += key + "=" + value + "&"
    return url[:-1]

generate_url_with_fixed_path = partial(generate_url, "/search")

url1 = generate_url_with_fixed_path({"q": "Python"})
url2 = generate_url_with_fixed_path({"q": "Java", "sort": "date"})

print(url1) # https://example.com/search?q=Python
print(url2) # https://example.com/search?q=Java&sort=date
```

## Explorando as vantagens das funções parciais em Python: um exemplo prático

Funções parciais em Python são funções que são definidas parcialmente e contêm valores fixos para certos parâmetros. Essas funções oferecem várias vantagens, como reutilização aprimorada e redução da redundância de código. Um exemplo prático do uso de funções parciais em Python é a implementação da função exponencial, onde uma função parcial pode ser criada para predefinir a base do expoente.

### Exemplo de Função: Função Exponencial

A função exponencial é usada em muitas operações matemáticas e pode ser facilmente implementada em Python usando a função `exp` do módulo `math`. No entanto, se quisermos calcular o valor exponencial de um número com diferentes bases, precisamos escrever linhas separadas de código para cada operação. Isso pode resultar em redundância de código e diminuição da legibilidade.

```python
import math

x = 5

exponential_2 = math.exp(2 * x)
exponential_3 = math.exp(3 * x)
exponential_4 = math.exp(4 * x)
```

Para evitar isso e tornar o código mais conciso, podemos usar funções parciais em Python. Podemos definir uma função parcial para a função `exp` com um parâmetro fixo para a base usando a função `partial` do módulo `functools`. Então, podemos chamar a função parcial com o parâmetro variável `x`.

```python
import math
from functools import partial

exp_base_2 = partial(math.exp, 2)
exp_base_3 = partial(math.exp, 3)
exp_base_4 = partial(math.exp, 4)

x = 5

exponential_2 = exp_base_2(x)
exponential_3 = exp_base_3(x)
exponential_4 = exp_base_4(x)
```

Assim, podemos facilmente calcular o valor exponencial de uma variável `x` para diferentes bases usando as funções parciais definidas sem ter que reescrever o código para cada operação.

### Exemplo de Função Parcial: Função Multiplicar

Outro exemplo do uso de funções parciais em Python é a implementação da função `multiply`. Suponha que temos uma lista de números que queremos multiplicar por um valor fixo `x`. Podemos definir uma função parcial usando a função `partial` do módulo `functools` para criar uma nova função que multiplica um dado número por `x`.

```python3
from functools import partial

multiply = partial(lambda x, y: x * y, 2)

result = map(multiply, [1, 2, 3, 4, 5])
print(list(result))    # Output: [2, 4, 6, 8, 10]
```

Neste exemplo, a função `multiply` é definida como uma função parcial que aceita dois argumentos, `x` e `y`. O primeiro argumento `x` é fixado no valor `2`, e o segundo argumento `y` é passado como um parâmetro variável usando a função `map` para multiplicar cada item na lista por `2` e retornar o resultado. Isso resulta em um código mais conciso e legível.

## Quando Usar Funções Parciais vs. Lambdas em Python: Principais Diferenças e Semelhanças

Funções parciais são funções que possuem um conjunto fixo de argumentos predefinidos, e o resto dos argumentos pode ser passado posteriormente. Por outro lado, funções lambda são funções anônimas que podem ser definidas na hora.

Use funções parciais quando você tem uma função com argumentos fixos e quer reutilizá-la com diferentes valores para os argumentos restantes. Use lambdas quando você precisa definir rapidamente uma função simples sem dar um nome a ela.

Principais diferenças e semelhanças:

- Funções parciais são definidas usando a função `functools.partial()`, enquanto funções lambda são definidas usando a palavra-chave `lambda`.
- Funções parciais podem ter um conjunto fixo de argumentos predefinidos, enquanto lambdas podem ter qualquer número de argumentos.
- Tanto funções parciais quanto lambdas podem ser usadas como argumentos para outras funções.

### Exemplo de Uso de uma Função Parcial

```python3
import functools

def multiply(x, y):
    return x * y

double = functools.partial(multiply, y=2)

print(double(3))   # Output: 6
```

### Exemplo de Uso de uma Função Lambda

```python
add = lambda x, y: x + y

print(add(2, 3))   # Output: 5
```

## Como Criar Funções Parciais em Python: um Tutorial Passo a Passo

Para criar uma função parcial em Python, você precisa seguir os seguintes passos:

1. Importe o módulo `functools`.
2. Defina a função original que você quer usar como uma função parcial.
3. Use a função `partial()` para criar uma nova função que já possui alguns parâmetros definidos.

```python
import functools

def multiply(x, y):
    return x * y

multiply_by_two = functools.partial(multiply, 2)
print(multiply_by_two(5)) # Output: 10
```

Neste exemplo, uma função parcial chamada `multiply_by_two` é criada a partir da função `multiply()`, com o primeiro parâmetro definido como 2. Quando `multiply_by_two()` é chamada com o parâmetro 5, ela multiplica 2 por 5 e retorna 10.

```python3
import functools

def power(base, exponent):
    return base ** exponent

square = functools.partial(power, exponent=2)
cube = functools.partial(power, exponent=3)

print(square(5)) # Output: 25
print(cube(5)) #Output: 125
```

Neste exemplo, funções parciais chamadas `square` e `cube` são criadas usando a função `power()`, com o parâmetro do expoente definido para 2 e 3, respectivamente. Quando `square(5)` é chamado, ele retorna 25, e quando `cube(5)` é chamado, ele retorna 125.

## Melhorando a Legibilidade do Código com Funções Parciais em Python: Dicas e Truques

Uma maneira de usar funções parciais é reduzir a duplicação de código. Por exemplo, suponha que temos duas funções que calculam a `average` de dois números:

```python
def average(a, b): 
    return (a + b) / 2 

def average_three(a, b, c): 
    return (a + b + c) / 3
```

Podemos usar uma função parcial para **evitar a duplicação** do código para somar os números:

```python3
from functools import partial 

def add(*args): 
    return sum(args) 

average_two = partial(add, 2) 
average = partial(add, 3) 

print(average_two(4)) # prints 3.0
print(average(1, 2, 3)) # prints 2.0
```

Outra maneira de usar funções `partial` é criar padrões para parâmetros opcionais. Por exemplo, suponha que temos uma função que formata um número com um número especificado de casas decimais:

```python
from functools import partial 

def format_number(number, digits): 
    return f"{number:.{digits}f}"

format_two_digits = partial(format_number, digits=2) 

print(format_number(3.14159, 2)) # prints 3.14
print(format_two_digits(3.14159)) # prints 3.14
```

Em ambos os casos, o uso de funções parciais torna o código mais legível, ao declarar explicitamente a intenção do código de uma maneira mais fácil de entender e manter.
