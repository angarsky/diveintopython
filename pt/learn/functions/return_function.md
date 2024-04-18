> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/return-function

Retornar uma função de uma função significa que uma função é criada e retornada como saída de outra função. Isso é possível em Python porque funções são objetos de primeira classe, o que significa que podem ser passadas como qualquer outro objeto, como inteiros, strings ou listas.

## Retorno de Função em Python

Nos exemplos a seguir, funções Python são utilizadas para retornar outras funções, permitindo um comportamento dinâmico baseado em parâmetros de entrada.

### Exemplo 1: Uso Básico do Retorno de Função

Considere `function1`, que retorna outra função, `function2`. Esta função interna `function2` multiplica seu argumento por um valor especificado, `a`. Quando `function1(5)` é chamada, ela retorna `function2` com `a` definido como `5`. A função resultante é atribuída à variável `multiply_by_5`. Posteriormente, chamar `multiply_by_5(3)` produz `15`.

```python3
def function1(a):
    def function2(b):
        return a * b
    return function2

multiply_by_5 = function1(5)
result = multiply_by_5(3)
print(result)  # Output: 15
```

### Exemplo 2: Retorno Condicional de Funções

Neste cenário, `function3` determina qual função retornar baseado no valor do parâmetro `operation`. Contém duas funções internas: `add_numbers` e `multiply_numbers`, respectivamente realizando operações de adição e multiplicação.

Ao passar `add` ou `multiply` para `function3`, ela retorna a função interna correspondente. Por exemplo, se `operation_type` estiver definido como `add`, a função `add_numbers` é atribuída à variável `math_function`. Invocar `math_function(3, 5)` irá adicionar os dois números, resultando em uma saída de `8`.

```python3
def function3(operation):
    def add_numbers(a, b):
        return a + b
    
    def multiply_numbers(a, b):
        return a * b
    
    if operation == "add":
        return add_numbers
    elif operation == "multiply":
        return multiply_numbers

operation_type = "add"
math_function = function3(operation_type)
result = math_function(3, 5)
print(result)  # Output: 8
```

Em resumo, esses exemplos ilustram como as funções em Python podem ser utilizadas para retornar outras funções dinamicamente, proporcionando versatilidade no manuseio de operações baseadas em condições de entrada.

## Explorando o Conceito de Funções Aninhadas e Retornando Funções

Em Python, as funções podem ser aninhadas, o que significa que você pode definir uma função dentro de outra função. Você também pode retornar uma função de outra função em Python. Esse conceito de funções aninhadas e retornando funções permite mais flexibilidade e é uma ferramenta poderosa na programação.

### Exemplo 1: Retornando uma Função de uma Função

```python3
def create_adder(num):
    def adder(x):
        return num + x
    return adder

add5 = create_adder(5)
print(add5(3))    # Output: 8
```

Neste exemplo, definimos uma função `create_adder` que recebe um parâmetro `num`. Dentro de `create_adder`, definimos outra função `adder` que recebe um parâmetro `x` e retorna a soma de `num` e `x`. Finalmente, `create_adder` retorna `adder`.

Em seguida, criamos uma nova função `add5` chamando `create_adder(5)`. Isso significa que `add5` é agora uma referência a `adder` com `num` definido como 5. Quando chamamos `add5(3)`, passamos o parâmetro `x` como `3`, o que resulta na saída `8`.

### Exemplo 2: Funções Aninhadas

```python3 
def outer_function(num):
    def inner_function(x):
        return num + x
    return inner_function

add3 = outer_function(3)
add5 = outer_function(5)

print(add3(10))    # Output: 13
print(add5(10))    # Output: 15
```

Neste exemplo, definimos uma função `outer_function` que recebe um parâmetro `num`. Dentro de `outer_function`, definimos outra função `inner_function` que recebe um parâmetro `x` e retorna a soma de `num` e `x`. Finalmente, `outer_function` retorna `inner_function`.

Em seguida, criamos duas novas funções `add3` e `add5` chamando `outer_function(3)` e `outer_function(5)` respectivamente. Isso significa que `add3` agora é uma referência a `inner_function` com `num` definido como 3, e `add5` é uma referência a `inner_function` com `num` definido como 5. Quando chamamos `add3(10)` e `add5(10)`, passamos o parâmetro `x` como `10`, o que resulta na saída `13` e `15` respectivamente.

## Entendendo as Vantagens de Retornar uma Função de Outra Função

Um dos benefícios significativos de retornar uma função de outra função em Python é que isso proporciona flexibilidade. Ao retornar uma função, o programador pode criar uma função mais específica e personalizada com base nas entradas passadas para a função original. Isso também permite a reutilização eficiente do código.

Outra vantagem de retornar uma função de outra função é que isso pode simplificar a complexidade do código, levando a uma estrutura de código mais legível. O código se torna mais organizado e compreensível, melhorando assim seus processos de manutenção e depuração.

Aqui estão dois exemplos de retornar uma função de uma função em Python:

### Exemplo 1: Retornando uma Função que Multiplica Qualquer Número por um Fator Dado:

```python
def multiply(factor):
    def inner(num):
        return num * factor
    return inner

double = multiply(2)
triple = multiply(3)

print(double(5)) #output: 10
print(triple(5)) #output: 15
```

Ao chamar `multiply(2)` e `multiply(3)`, criamos duas novas funções `double` e `triple`, respectivamente, que podem ser usadas para multiplicar qualquer número por `2` ou `3`.

### Exemplo 2: Retornando uma Função que Realiza Operações Matemáticas:

```python3
def operate(operation):
    def inner(num1, num2):
        if operation == 'add':
            return num1 + num2
        elif operation == 'subtract':
            return num1 - num2
        elif operation == 'multiply':
            return num1 * num2
        elif operation == 'divide':
            return num1 / num2
    return inner

add_func = operate('add')
subtract_func = operate('subtract')

print(add_func(10, 5)) #output: 15
print(subtract_func(10, 5)) #output: 5
```

Ao chamar `operate('add')` e `operate('subtract')`, criamos duas novas funções `add_func` e `subtract_func`, respectivamente, que podem ser usadas para realizar operações de adição e subtração em quaisquer dois números.

## Entendendo as Diferentes Maneiras de Definir e Retornar Funções em Python

Retornar uma função de uma função pode ser útil em situações em que precisamos criar funções dinamicamente com base em certas condições.

```python
def create_adder(num):
    def adder(x):
        return x + num
    return adder

add5 = create_adder(5)
print(add5(10)) # Output: 15
```

Neste exemplo, definimos uma função chamada `create_adder` que recebe um parâmetro `num`. Dentro da função `create_adder`, definimos outra função chamada `adder` que recebe um parâmetro `x` e retorna a soma de `num` e `x`. Finalmente, retornamos a função `adder` como uma saída.

Em seguida, atribuímos a saída de `create_adder(5)` a uma variável chamada `add5`. Isso significa que `add5` agora é uma função que recebe um parâmetro `x` e retorna a soma de `5` e `x`. Quando chamamos `add5(10)`, ela retorna `15`.

## Explorando o Uso de Argumentos em Funções Retornadas

```python
def power(base):
    def exponent(exp):
        return base ** exp
    return exponent

square = power(2)
cube = power(3)

print(square(5)) # Output: 25
print(cube(3)) # Output: 27
```

Neste exemplo, uma função aninhada `exponent` é definida dentro da função `power`. A função `exponent` calcula um número elevado a uma potência. A função `power` retorna a função `exponent`. Duas variáveis `square` e `cube` são atribuídas chamando a função `power` com diferentes valores de base. As duas últimas instruções de impressão chamam `square` e `cube` com diferentes valores de expoente.

```python3
def operation(operator):
    def calculate(num1, num2):
        if operator == '+':
            return num1 + num2
        elif operator == '-':
            return num1 - num2
        elif operator == '*':
            return num1 * num2
        elif operator == '/':
            return num1 / num2
        else:
            return "Invalid operator"
    return calculate

addition = operation('+')
subtraction = operation('-')
multiplication = operation('*')
division = operation('/')

print(addition(5, 3)) # Output: 8
print(subtraction(5, 3)) # Output: 2
print(multiplication(5, 3)) # Output: 15
print(division(5, 3)) # Output: 1.6666666666666667
print(operation('%')(5, 3)) # Output: Invalid operator
```

Neste exemplo, a função `operation` recebe um parâmetro `operator` e retorna a função `calculate`. A função `calculate` realiza a operação aritmética especificada pelo parâmetro `operator` em dois argumentos numéricos. Quatro variáveis `addition`, `subtraction`, `multiplication` e `division` são atribuídas chamando a função `operation` com diferentes valores de operador. A instrução print final mostra o que ocorre quando um operador inválido é usado como argumento.
