> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/loops

Existem dois tipos de loops em Python: loops `for` e loops `while`.

O loop `for` é usado para iterar sobre uma sequência (que pode ser uma lista, uma tupla, um conjunto, um dicionário, uma string ou qualquer outro objeto iterável) e executar um bloco de código para cada elemento na sequência. O loop `while` é usado para executar um bloco de código repetidamente enquanto uma certa condição for `true`. No loop `while`, a condição é verificada no início de cada iteração, e o loop é encerrado quando a condição se torna falsa. É importante garantir que a condição eventualmente se torne falsa; caso contrário, o loop continuará rodando indefinidamente, o que é chamado de loop infinito.

## Sintaxe do Loop `for` em Python

Um exemplo de como usar o `for` para iterar através de uma lista em Python:

```python3
cars = ["bmw", "audi", "renault"]
for car in cars:
    print(car)
```

Neste exemplo, temos uma lista de carros, e queremos imprimir cada carro em uma nova linha. Usamos o loop `for` para iterar sobre cada elemento na lista, e para cada elemento, imprimimos no console usando a função `print`.

### Loop `for` Embutido

Neste exemplo, temos uma lista de números, e queremos criar uma nova lista que contém o quadrado de cada número. Em vez de usar um loop `for` tradicional, usamos uma compreensão de lista, que é uma forma mais concisa de alcançar o mesmo resultado.

```python3
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)
```

Neste caso, a expressão é `x**2`, que é o quadrado do número atual na iteração, e o iterável é a lista de números. O resultado da compressão de lista é uma nova lista que contém o quadrado de cada número: `[1, 4, 9, 16, 25]`.

### Laço `for` com Índice

Neste exemplo, o `loop` itera sobre a lista de `cars` e imprime o índice e o valor de cada elemento:

```python3
cars = ["bmw", "audi", "renault"]
for i in range(len(cars)):
    print(i, cars[i])
```

### Função de Potência em Python Usando um Loop

```python3
def power(a, b):
    pow = 1
    for i in range(b):
        pow *= a
    return pow

a = 2
b = 3
print(power(a, b))
```

## Laços `while` em Python

Aqui está um exemplo do laço `while` que conta de `1` a `10`:

```python3
count = 1
while count <= 10:
    print(count)
    count += 1
```

Neste exemplo, o loop começa com count igual a `1`. A condição count `<= 10` é `verdadeira`, então o código dentro do loop é executado. Esse código imprime o valor de count (que atualmente é `1`) e depois incrementa count por `1` usando o operador `+=`. O loop então verifica a condição novamente, que ainda é `verdadeira` porque count agora é `2`. Esse processo se repete até que count atinja `11`, momento no qual a condição se torna `falsa` e o loop termina.

> Nota: Python não possui um loop `do-while` embutido como algumas outras linguagens de programação. No entanto, você pode alcançar uma funcionalidade similar usando uma combinação de um loop `while` e uma verificação inicial.

## Declarações `break` e `continue`

Em Python, `break` e `continue` são palavras reservadas usadas para modificar o comportamento dos loops. Elas permitem que você controle quando um loop deve terminar ou pular certas iterações com base em uma condição.

### Exemplo: Como `break` um Loop `for`

```python3
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        # end for loop
        break
    print(num)
```

Neste exemplo, o loop itera sobre a lista `numbers` e imprime cada número. No entanto, quando o valor de `num` é igual a `3`, a instrução `break` termina o loop `for`. A saída seria: `1 2`.

### Como Usar `continue` com um Loop `for`

O `continue`, por outro lado, é usado para **pular a iteração do loop** baseado em uma condição. Quando encontrado, faz com que a iteração atual do loop termine e prossegue com a próxima iteração. Aqui está um exemplo de como pular uma iteração no loop `for` em Python:

```python3
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        continue
    print(num)
```

Neste exemplo, o laço itera sobre a lista `numbers` e imprime cada número. No entanto, quando o valor de `num` é igual a `3`, a instrução `continue` é executada, causando o término da iteração atual do laço e prosseguindo para a próxima iteração. A saída seria: `1 2 4 5`.

### Exemplo de `continue` em um laço `while`

Usar `continue` em um laço `while` no Python é uma maneira de pular certas iterações do laço e prosseguir para a próxima iteração. Isso pode ser útil quando você precisa ignorar certos valores ou condições em seu laço.

```python3
i = 0
while i < 10:
    i += 1
    if i % 2 == 0:
        continue
    print(i)
```

Neste exemplo, o loop itera sobre os números de 1 a 10. No entanto, quando o valor de `i` é par, a instrução `continue` é acionada, fazendo com que o loop pule para a próxima iteração sem executar mais nenhum código na iteração atual.

```python3
my_list = [1, 2, 3, 4, 5]
while my_list:
    val = my_list.pop()
    if val == 3:
        continue
    print(val)
```

Neste exemplo, o loop itera sobre os valores em `my_list`. Quando o valor de `val` é igual a 3, a declaração `continue` faz com que o loop pule para a próxima iteração sem imprimir o valor.

## Como `break` um Loop `while`

Para interromper um loop `while` em Python, você pode usar a declaração `break`. Esta declaração é responsável por parar o loop de iterar mais, assim que uma certa condição for atendida. A sintaxe para usar `break` em um loop `while` é a seguinte:

```python
while <condition>:
    ### statements to be executed inside the loop

    if <break-condition>:
        break
```

Aqui, `<condition>` é a condição do loop que inicialmente decide se o loop deve ser executado ou não, e `<break-condition>` é uma declaração condicional adicional que define a(s) condição(ões) para parar o loop. Uma vez que essa condição é atendida, o loop é automaticamente terminado, e o controle é transferido para a próxima declaração após o loop.

```python3
n = 1
while n <= 10:
    print(n)
    if n == 5:
        break
    n += 1
print("Loop Ended")

# Output:
# 
# 1
# 2
# 3
# 4
# 5
# Loop Ended
```

Neste exemplo, o laço while vai `print` números de 1 a 5, e então `stop` assim que `n == 5`. A instrução `break` é usada para alcançar isso, e a saída mostra que o laço terminou após completar a execução da condição desejada.

### Como Parar um Loop Infinito em Python

```python3
while True:
    value = input("Enter a number: ")
    if value == "stop":
        break
    print(int(value) ** 2)
print("Loop Ended")

# Output:
# Enter a number: 2
# 4
# Enter a number: 5
# 25
# Enter a number: 3
# 9
# Enter a number: stop
# Loop Ended
```

Neste exemplo, o loop `while` continuará pedindo ao usuário para inserir um `number`, e calculará seu quadrado se o `input` for um `number`. Se o `input` for 'stop', o loop será interrompido, e o controle será transferido para a declaração após o loop.

Esta abordagem ajuda a evitar loops infinitos em Python, e a controlar o fluxo de execução com base em certos critérios.

## Uma Contagem em um Loop `for`

Para contar em um loop `for` em Python, você pode usar uma variável de contador de loop. Esta variável acompanha o número de vezes que o loop `for` foi executado. Aqui estão dois exemplos:

```python3
count = 0
for i in range(10):
    count += 1
print("The loop executed", count, "times.")
```

Neste exemplo, criamos uma variável `count` e definimos seu valor inicial como 0. Em seguida, usamos um loop `for` para iterar 10 vezes, incrementando a variável `count` em 1 a cada vez. Por fim, `printamos` o número total de vezes que o loop foi executado.

```python3
fruits = ['apple', 'banana', 'cherry']
for i, fruit in enumerate(fruits, 1):
    print(i, fruit)
```

Neste exemplo, usamos a função embutida `enumerate()` para percorrer uma lista de `fruits` e seus índices. Iniciamos o índice em 1 passando o segundo argumento para `enumerate()`. Dentro do loop, nós `print`amos o índice e o nome da `fruit`.

Ao utilizar uma variável de contador de loop, você pode facilmente manter o controle do número de vezes que um loop `for` foi executado no Python. Isso pode ser útil para depuração, teste e análise de desempenho.

## Loops Aninhados

Loops aninhados são loops que são colocados dentro de outro loop. No Python, loops aninhados são usados principalmente para iterar sobre arrays, matrizes e listas multidimensionais. Eles são úteis para resolver problemas que envolvem repetir uma tarefa para cada elemento de uma estrutura aninhada.

### Loops For Aninhados no Python

O tipo mais comum de loop aninhado no Python é o loop for aninhado. Esse loop é usado para iterar sobre elementos em uma estrutura aninhada usando dois ou mais comandos `for`.

#### Exemplo Simples de Loops `for` Aninhados

```python3
numbers = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

for row in numbers:
    for num in row:
        print(num)
```

Neste exemplo, temos uma matriz de 3 por 3 que é representada por uma lista multidimensional. O loop for aninhado itera sobre os elementos da matriz e imprime cada número em uma nova linha.

### Loops `while` Aninhados em Python

Loops `while` aninhados em Python usam um ou mais loops internos que repetem o mesmo processo várias vezes. Eles são usados para iterar sobre elementos de uma estrutura de dados aninhada até que uma certa condição seja atendida.

#### Exemplo de Loops `while` Aninhados

```python3
x = 1
y = 1

while x <= 5:
    y = 1
    while y <= x:
        print(y, end="")
        y += 1
    print()
    x += 1
```

Neste exemplo, usamos dois laços `while` aninhados para `print` um triângulo de `numbers`. O laço `while` externo itera sobre cada `row` do triângulo, `while` o laço `while` interno itera sobre cada número dessa linha.

No geral, os laços aninhados são um conceito importante na programação Python, e eles podem ajudar a resolver problemas complexos iterando sobre estruturas de dados aninhadas. Ao incorporar laços for e `while` aninhados no seu código, você pode escrever programas mais eficientes, legíveis e poderosos.

## Como Utilizar um Laço `for` com uma Declaração `range`

A declaração `range` no Python é uma função embutida que pode ser usada para gerar uma sequência de números. Ela é frequentemente usada em laços `for` para repetir uma tarefa um determinado número de vezes. Aqui estão dois exemplos de como usar a declaração `range` no Python:

```python3
for i in range(5):
    print(i)

for i in range(0, 10, 2):
    print(i)
```

No primeiro exemplo, o loop `for` é usado para iterar através de uma série de números de 0 a 4. No segundo exemplo, a função `range` é chamada com três argumentos: o número inicial (0), o número final (10) e o passo (2). Isso irá gerar uma sequência de números de 0 a 10 (não incluindo 10) com um passo de 2. O loop `for` então itera através desta sequência e imprime cada número.

### Um Loop `for` Reverso

```python3
for i in range(5, 0, -1):
    print(i)
# Output:
# 5
# 4
# 3
# 2
# 1
```

```python3
a = ['1', '2', '3', '4', '5']

for i in reversed(a):
    print(i)
# Output:
# 5
# 4
# 3
# 2
# 1
```

Utilizar a instrução `range` em Python é uma forma eficiente de percorrer uma sequência de números e executar uma tarefa. É uma técnica comumente usada na programação e é fácil de implementar com o loop `for` em Python.

## Loop `for` em Uma Linha

A compreensão de listas facilita escrever um loop for em uma linha em Python. Usar um loop de linha única pode ajudar a simplificar o código e torná-lo mais conciso.

```python3
squares = [x**2 for x in range(10)]
print(squares)
```

Saída:

```python
[0, 1, 4, 9, 16, 25, 36, 49, 64, 81]
```

```python3
even_numbers = [num for num in range(20) if num % 2 == 0]
print(even_numbers)

# Output:
# 
# [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]
```

Em ambos os exemplos, o loop `for` é condensado em uma única linha usando compreensão de lista. O loop itera sobre um `range` de valores e aplica uma condição ao `range` dado. Isso resulta em uma lista com a saída desejada.

Usar um loop for de uma linha em Python é uma ferramenta poderosa que pode otimizar seu código e torná-lo mais eficiente.
