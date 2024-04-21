> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/nested

Funções aninhadas são uma **ferramenta poderosa** disponível na programação Python que permite definir funções dentro de outras funções. Tal conceito de aninhar uma função dentro de outra pode criar um código mais organizado e gerenciável. Com a ajuda de funções aninhadas, o código se torna mais fácil de ler e também mais eficiente. Neste artigo, vamos dar uma olhada mais de perto no que são funções aninhadas e por que elas são usadas em Python.

## Entendendo as Funções Aninhadas do Python

Funções aninhadas no Python referem-se a criar funções dentro de outra função. Em outras palavras, uma função pode ser definida dentro de outra função, e ela pode acessar as variáveis declaradas em sua função externa.

Funções aninhadas são úteis em situações onde precisamos definir uma função auxiliar que só é necessária dentro do escopo da função externa. Funções aninhadas melhoram a legibilidade e ajudam a modularizar o código.

### Dois Exemplos de Funções Aninhadas no Python

```python3
def outer_function(x):
    def inner_function(y):
        return x + y
    return inner_function

add_five = outer_function(5)
print(add_five(3)) # Output: 8
```

Neste exemplo, definimos duas funções: a `outer_function` e a `inner_function`. A `outer_function` recebe um argumento `x` e retorna a `inner_function`. A `inner_function`, por sua vez, recebe um argumento `y` e retorna a soma de `x` e `y`.

Atribuímos a saída de `outer_function(5)` à variável `add_five`, que se torna uma função que adiciona `5` ao seu argumento. Quando chamamos `add_five(3)`, obtemos `8` como resultado.

```python3
def outer_function():
    x = 1
    def inner_function():
        y = 2
        return x + y
    return inner_function()

print(outer_function()) # Output: 3
```

Neste exemplo, definimos uma `outer_function` que inicializa uma variável `x` como 1 e retorna o resultado da `inner_function`. A `inner_function` inicializa uma variável `y` como `2` e retorna a soma de `x` e `y`.

Quando chamamos `outer_function()`, obtemos `3` como resultado, que é a soma de `x` e `y`. A `inner_function` é chamada dentro do escopo da `outer_function`, e ela tem acesso à variável `x` declarada na `outer_function`.

## Vantagens de Usar Funções Aninhadas em Python

Funções aninhadas dentro do código Python oferecem uma gama de benefícios, capacitando desenvolvedores a criar uma estrutura de programação mais robusta e adaptável, melhorar a legibilidade do código, e elaborar código modular que é mais simples de manter.

### Encapsulamento e Modularidade

Uma vantagem primária das funções aninhadas reside em sua capacidade de definir funções auxiliares dentro do escopo de uma função específica. Ao fazer isso, evita-se poluir o namespace global e promove-se a organização do código. Considere o seguinte exemplo:

```python
def double_odd_numbers(numbers):
    def is_odd(num):
        return num % 2 != 0
    
    def double(num):
        return num * 2
    
    return [double(num) for num in numbers if is_odd(num)]
```

Nesta instância, `double_odd_numbers` abrange as funções `is_odd` e `double`, simplificando a compreensão, pois essas funções são utilizadas exclusivamente no contexto da função principal.

### Criação de Closures

Outra vantagem notável das funções aninhadas é a capacidade de gerar closures. Isso permite que as funções aninhadas acessem e manipulem variáveis da sua função de encapsulamento. Por exemplo:

```python3
def power_function(base):
    def exponent_power(exponent):
        result = 1
        for _ in range(exponent):
            result *= base
        return result
    
    return exponent_power

square = power_function(2)
cube = power_function(3)

print(square(3))  # Output: 8
print(cube(2))    # Output: 9
```

Neste cenário, `power_function` produz uma nova função, `exponent_power`, capaz de computar a potência de uma base elevada a um determinado expoente. Utilizando esta estrutura aninhada, funções como `square` e `cube` obtêm acesso à variável base da função que as envolve, simplificando a criação de novas funções com diferentes valores de base.

Ao aproveitar funções aninhadas, desenvolvedores Python podem melhorar a modularidade do código, sua legibilidade, e explorar poderosas funcionalidades de fechamento para criar estruturas de código mais versáteis e eficientes.

## Criando Funções Aninhadas em Python

Funções aninhadas em Python se referem ao processo de criar uma função dentro de outra função. Esse processo permite uma melhor organização e legibilidade do código. Para criar uma função aninhada em Python, siga estes passos:

1. **Crie** a função externa.
2. **Defina** a função interna dentro da função externa.
3. **Chame** a função interna dentro da função externa ou retorne-a.

Em conclusão, criar funções aninhadas em Python é uma técnica útil para organizar e otimizar o código. Ela permite uma melhor legibilidade e pode simplificar processos complexos.

## Exemplos de Funções Aninhadas em Python em Aplicações do Mundo Real

Funções aninhadas são funções **dentro de outras funções**. Estas funções são particularmente úteis na programação. Elas podem ser utilizadas em aplicações do mundo real em Python. Por exemplo, uma função aninhada poderia definir uma função que chama outra função. Ou, uma função aninhada poderia definir uma função que utiliza uma função previamente definida. Além disso, uma função aninhada poderia fornecer um escopo local.

```python3
def parent_function(x):
    def child_function(y):
        return y * 2
    return x + child_function(x)

print(parent_function(5))
```

Neste exemplo, `child_function` é uma função aninhada. Ela é definida dentro de `parent_function`. `parent_function` recebe um parâmetro `x`. Em seguida, ela usa `child_function` para dobrar `x`. Por fim, retorna a soma de `x` e `child_function(x)`. Quando executamos `parent_function(5)`, obtemos 15 como resultado.

```python3
def adder(a):
    def inner(x):
        return x + a
    return inner

x = adder(3)
y = adder(5)
print(x(5))
print(y(5))
```

Neste exemplo, `inner` é uma função aninhada. Ela é definida dentro de `adder`. `adder` recebe um parâmetro `a`. `adder` retorna `inner`. `inner` recebe um parâmetro `x`. Ela retorna a soma de `x` e `a`. Quando chamamos `adder(3)`, obtemos `inner`. Armazenamos `inner` como `x`. O mesmo é verdade para `adder(5)` que armazenamos como `y`. Quando chamamos `x(5)`, obtemos 8 como resultado. Quando chamamos `y(5)`, obtemos 10 como resultado.

```python
def exponential(x):
    def square(y):
        return y * y
    return square(x) * square(x)

print(exponential(2))
```

Neste exemplo, `square` é uma função aninhada. Ela é definida dentro de `exponential`. `exponential` recebe um parâmetro `x`. `exponential` retorna o quadrado de `x` elevado à quarta potência. `square` recebe um parâmetro `y`. Ela retorna o quadrado de `y`. Quando executamos `exponential(2)`, obtemos 16 como resultado.

## Melhores Práticas para Usar Funções Aninhadas em Python

Funções aninhadas se referem a definir uma função dentro de outra função em Python. Isso pode ser útil para organização do código e encapsulamento. As melhores práticas para usar funções aninhadas incluem evitar aninhamentos excessivos, garantir que cada função tenha um propósito claro e específico, e usar escopos de variáveis apropriados.

Para usar funções aninhadas em Python, defina a função externa e então defina a função interna dentro dela. A função interna tem acesso às variáveis dentro da função externa, mas não o inverso. Aqui estão dois exemplos:

```python3
# Example 1: Power function using nested functions
def power_function(num):
    def inner_power(power):
        return num ** power
    return inner_power

# Example usage
square_function = power_function(2)
cube_function = power_function(3)
print(square_function(5))  # Output: 32
print(cube_function(5))  # Output: 243
```

```python3
# Example 2: Functions in a loop
def generate_functions():
    functions = []
    for i in range(5):
        def inner_function(num):
            return num + i
        functions.append(inner_function)
    return functions

# Example usage
functions_list = generate_functions()
for j, f in enumerate(functions_list):
    print(f(j))  # Output: 4 5 6 7 8
```

No primeiro exemplo, uma função de potência é criada usando funções aninhadas. A função externa recebe um número e retorna a função interna, que calcula a potência desse número. A função interna é definida dentro do escopo da função externa, permitindo que ela acesse o parâmetro `num` e calcule a potência.

No segundo exemplo, uma lista de funções é gerada usando um loop e funções aninhadas. A função interna é definida dentro do loop, dando-lhe acesso à variável do loop `i`. A lista resultante de funções pode então ser usada para realizar cálculos usando diferentes valores de `i`.

## Diferenças Entre Funções Aninhadas e Funções Anônimas em Python

Funções aninhadas são funções que são definidas dentro de outra função. Essas funções só são acessíveis de dentro da função externa que as contém. Por outro lado, funções anônimas são funções sem nomes que são definidas usando a palavra-chave lambda. Essas funções podem ser definidas em qualquer lugar do programa e podem ser passadas como argumentos para outras funções.

### Função Aninhada

```python3
def outer_func(x):
   def inner_func(y):
       return x*y
   return inner_func

result = outer_func(5)
print(result(7))  # Output: 35
```

Neste exemplo, a função `inner_func` é definida dentro de `outer_func`, tornando-a uma função aninhada. Em seguida, retornamos `inner_func` como o resultado da chamada de `outer_func`. A variável `result` é atribuída à função interna com `x` definido como `5`. Em seguida, chamamos `result` com `y` igual a `7` para obter a saída de `35`.

### Função Anônima

```python
list_nums = [1, 2, 3, 4, 5]
new_list = list(map(lambda x: x*2, list_nums))
print(new_list)  # Output: [2, 4, 6, 8, 10]
```

Neste exemplo, utilizamos uma função anônima definida pela palavra-chave `lambda` e a passamos como argumento para a função `map`. Esta função multiplica cada elemento de `list_nums` por `2` e retorna uma nova lista com os resultados mapeados armazenados em `new_list`.

## Erros Comuns a Evitar ao Usar Funções Aninhadas na Programação Python

Para evitar erros comuns ao usar funções aninhadas na programação Python, é importante garantir que nomes de funções e variáveis **não sejam repetidos** dentro de uma função aninhada e sua função pai, pois isso pode causar confusão e erros.

Outros erros comuns a evitar incluem chamar uma função de maneira imprópria dentro de outra função e usar loops incorretamente dentro de funções aninhadas. Além disso, deve-se ter cuidado ao usar técnicas de programação funcional e funções de potência em funções aninhadas.

Por exemplo, o seguinte código ilustra um erro comum quando uma variável é definida tanto em uma função pai quanto em uma função aninhada:

```python
def parent_func():
    num = 2
    def nested_func():
        num = num * 2 # This will raise an UnboundLocalError when the function will be called
        return num
    return nested_func()
```
