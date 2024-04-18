> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/global-variables

Em Python, variáveis são usadas para armazenar valores que podem ser acessados e manipulados dentro de um programa. No entanto, o escopo de uma variável pode diferir dependendo se ela é uma variável global ou local. Variáveis globais em Python podem ser acessadas de qualquer parte do programa, enquanto variáveis locais são limitadas à função ou bloco no qual são definidas. Entender as diferenças entre os escopos das variáveis é importante para desenvolver códigos Python eficientes e eficazes.

## Escopo de Variáveis Globais em Python

**Variáveis globais** em Python são variáveis que são definidas fora de qualquer função em um programa. Elas podem ser acessadas e modificadas por qualquer função ou módulo no programa.

O escopo de uma variável em Python define sua acessibilidade. Existem dois tipos de escopos em Python: **Global** e **Local**. Um escopo global significa que uma variável é acessível em todo o programa, enquanto um escopo local significa que uma variável é acessível apenas dentro da função onde ela é definida.

### Exemplo 1: Como Definir uma Variável Global em Python

```python
# Define a global variable
global_var = 10
```

Em Python, variáveis globais podem ser acessadas e modificadas de qualquer função ou módulo no programa. No entanto, atribuir um valor a uma variável global dentro de uma função cria uma nova variável local dentro dessa função.

Aqui estão alguns exemplos de como o escopo de variáveis globais funciona em Python:

### Exemplo 2: Acessando uma Variável Global Dentro de uma Função

```python3
x = 5    #global variable
def func():
  print(x)   #accessing a global variable inside a function

func()   #calling the function
# Output: 5
```

Neste exemplo, a função `func` está acessando a variável global `x`, que é definida fora de qualquer função.

### Exemplo 3: Acessando a Variável Global Fora da Função

```python3
x = 5   #global variable
def func():
  x = 10   #creating a new local variable
  print(x)   #accessing the local variable inside the function

func()
print(x)    #accessing the global variable outside the function
# Output: 10 5
```

Neste exemplo, a função `func` está criando uma nova variável local `x` ao atribuir a ela um valor de `10`. Assim, a instrução `print` dentro da função está se referindo à variável local e não à variável global. No entanto, quando a instrução `print` é chamada fora da função, ela se refere à variável global `x`.

## Como Variáveis Globais Funcionam em Python

**Variáveis globais** são variáveis que podem ser acessadas e modificadas ao longo do código, independentemente de onde são declaradas. Os **escopos de variáveis** em Python determinam a acessibilidade de variáveis em diferentes partes do código. Python suporta três escopos de variáveis - **local, global e não local**. **Variáveis locais** são variáveis que são declaradas e usadas dentro de uma função ou bloco de código específico, e seu escopo é limitado a essa função ou bloco de código específico.

### Como Mudar uma Variável Global em Função

```python3
# declaring and initializing a global variable
global_var = "I am a global variable."

def func():
    # accessing and modifying the global variable within the function
    global global_var
    global_var = "I have been modified."

# calling the function to modify the global variable
func()

# printing the modified value of the global variable
print(global_var)    # Output: "I have been modified."
```

Em Python, para definir uma variável global você precisa declarar e inicializar uma variável fora de qualquer função ou bloco. No código acima, uma **variável global** chamada `global_var` é declarada e inicializada fora da função. A função `func()` acessa e modifica o valor de `global_var` usando a palavra-chave `global`. Finalmente, o valor modificado da variável global é impresso.

### A Tentativa de Acessar uma Variável Local Fora de Sua Função

```python3
def func():
    # declaring and initializing a local variable
    local_var = "I am a local variable."
    print(local_var)
    
# calling the function that uses the local variable
func()

# trying to access the local variable outside the function
# Output: NameError: name 'local_var' is not defined
# print(local_var)    
```

No código acima, `local_var` é uma **variável local** declarada e inicializada dentro da função `func()`. O escopo desta variável é limitado apenas à função. Quando a função é chamada, o valor de `local_var` é impresso. No entanto, quando tentamos acessar esta variável fora da função, recebemos um `NameError` já que a variável não é definida neste escopo.

## O Papel das Variáveis Não-Locais em Python

Variáveis globais são variáveis que podem ser acessadas e modificadas de qualquer lugar no programa, enquanto variáveis locais são acessíveis apenas dentro de uma função específica ou bloco de código. O escopo de uma variável refere-se à área na qual ela pode ser acessada.

Variáveis não-locais em Python são variáveis que são definidas em uma função externa, mas que podem ser acessadas em uma função interna. A palavra-chave `nonlocal` é usada para declarar uma variável não-local em Python.

```python3
count = 0  # global variable

def increment():
    global count
    count += 1
    print(count)

increment()  # output: 1
increment()  # output: 2
```

Neste exemplo, `count` é uma variável global que pode ser acessada e modificada de qualquer lugar no programa. A palavra-chave `global` é usada dentro da função `increment` para indicar que estamos modificando a variável global `count`.

```python3
def outer():
    x = "local"  # local variable
    
    def inner():
        nonlocal x  # non-local variable
        x = "nonlocal"
        print("inner:", x)
        
    inner()
    print("outer:", x)

outer()  # output: inner: nonlocal, outer: nonlocal
```

Neste exemplo, `x` é uma variável local na função `outer`. A função `inner` tem acesso a essa variável usando a palavra-chave `nonlocal`, então podemos modificar seu valor. Quando chamamos a função `outer`, a função `inner` é executada e o valor de `x` é mudado para `nonlocal`. Essa mudança é refletida na função `outer` quando `printamos` o valor de `x` após a execução da função `inner`.

## A Palavra-chave `global` - Variáveis Globais em Função no Python

Vamos revisar como usar variáveis globais em funções no Python.
Variáveis globais são variáveis que podem ser acessadas e modificadas de qualquer parte do programa. No Python, o escopo de uma variável determina onde ela pode ser acessada. A melhor prática para o uso de variáveis globais no Python é minimizar seu uso, pois muitas variáveis globais podem tornar o programa difícil de entender, depurar e manter.

Um exemplo de variável global é a função de potência no Python. Podemos usar um loop para calcular a potência de um número. Aqui está um exemplo:

```python3
power = 1

def calculate_power(num, exponent):
    global power
    power = 1
    for i in range(exponent):
        power *= num
    return power

print("Power of 2^3 is", calculate_power(2, 3))
print("Power of 5^4 is", calculate_power(5, 4))
```

Neste exemplo, declaramos uma variável global `power` fora da função `calculate_power()`. Dentro da função, usamos essa variável global para armazenar a potência do número. Resetamos o valor da variável `power` para 1 a cada novo cálculo.

### Programa para Contar o Número de Vezes que uma Função é Chamada

```python3
count = 0

def my_function():
    global count
    count += 1
    print("This function has been called", count, "times.")

my_function()
my_function()
my_function()
```

Neste exemplo, declaramos a variável global `count` fora da função `my_function()`. Dentro da função, incrementamos o valor da variável `count` toda vez que a função é chamada. Em seguida, imprimimos o valor de `count`.

No geral, é geralmente melhor evitar variáveis globais em favor de variáveis locais com escopo mais limitado. No entanto, em alguns casos, as variáveis globais podem ser necessárias ou úteis, e podemos usá-las cuidadosamente com a palavra-chave `global` para acessá-las dentro de funções.

## Dicas Avançadas para Escopos de Variáveis Python e Convenções de Nomes

Dicas avançadas para escopos de variáveis Python incluem evitar variáveis globais tanto quanto possível para prevenir conflitos de nomes e comportamentos inesperados. Também é recomendado usar nomes de variáveis descritivos que sigam as [convenções de nomes PEP 8](https://peps.python.org/pep-0008/#naming-conventions), como o uso de letras minúsculas e underscores para separar palavras.

Convenções de nomes de funções em Python seguem as mesmas [diretrizes PEP 8](https://peps.python.org/pep-0008/#function-and-variable-names), usando letras minúsculas e underscores para separar palavras. Os nomes das funções também devem ser descritivos e transmitir o propósito da função.

```python3
# Local variable
def greet(name):
    message = "Hello, " + name + "!"
    return message
    
print(greet("Alice"))   # Output: Hello, Alice!
```

Neste exemplo, declaramos uma variável local `message` dentro da função `greet()`. Esta variável só é acessível dentro da função e não pode ser acessada de fora. A função recebe um parâmetro `name` e retorna uma mensagem de saudação com o nome incluído.
