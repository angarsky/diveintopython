> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions

Funções em Python desempenham um papel crucial na programação, pois servem como blocos reutilizáveis de código que podem realizar tarefas específicas. Uma vez definida, você pode chamar uma função em Python usando seu nome e passando argumentos (opcionais) entre parênteses. Você pode criar várias funções, cada uma com sua funcionalidade específica, facilitando a organização e estruturação do seu código. A tipagem de funções e a documentação de funções são elementos essenciais que podem tornar o seu código mais legível e fácil de depurar, especialmente ao trabalhar com projetos maiores. A partir deste artigo, aprenderemos o que é uma função em Python e como chamar uma função.

## Programação Funcional

Python suporta múltiplos paradigmas de programação, um dos quais é a programação funcional. A programação funcional é um paradigma de programação que se concentra no uso de funções puras, evitando estado compartilhado, dados mutáveis e efeitos colaterais. Em Python, esse paradigma é tipicamente usado através do uso de funções de ordem superior e expressões `lambda`.

### Exemplo de Função de Ordem Superior

```python3
def apply_twice(f):
    def wrapper(x):
        return f(f(x))
    return wrapper
 
def add_two(x):
    return x + 2
 
### Using apply_twice to add two to a number four times

applied_four_times = apply_twice(apply_twice(add_two))
result = applied_four_times(10) 
print(result) ### Result will be 18
```

### Exemplo de Expressão Lambda

```python
numbers = [1, 2, 3, 4, 5]
squared_numbers = list(map(lambda x: x**2, numbers))
### squared_numbers will be [1, 4, 9, 16, 25]

```

Em resumo, Python suporta paradigmas de programação funcional através de funções de ordem superior e expressões `lambda`.

## Como Escrever uma Função em Python

Em Python, uma função é definida usando a palavra-chave `def`, seguida pelo nome da função, e um conjunto de parênteses que podem conter parâmetros. O bloco de código que executa a tarefa é indentado abaixo da declaração `def`.

Para chamar uma função em Python, simplesmente use o nome da função, seguido pelos parênteses contendo quaisquer argumentos necessários.

### Exemplo Básico de Função

```python3
def greet(name):
    print("Hello, " + name)

greet("John") # Output: Hello, John
```

### Exemplo de Função com Valor de Retorno

```python3
def square(number):
    return number * number

result = square(4)
print(result) # Output: 16
```

Quando uma função possui uma declaração `return`, ela pode retornar um único valor ou múltiplos valores separados por vírgulas. Esses valores podem então ser atribuídos a uma variável ou usados diretamente.

Quando você cria uma função em Python, é uma boa prática especificar a **tipagem de função** adicionando dicas de tipo para os parâmetros e valores de retorno. Isso facilita para outros desenvolvedores entenderem a entrada e saída esperadas da função.

```python
def sum_numbers(num1: int, num2: int) -> int:
    return num1 + num2

print(sum_numbers(2, 3)) # Output: 5
```

A **documentação** de funções pode ser adicionada usando docstrings, que descrevem o que a função faz, seus parâmetros e seu valor de retorno. Essas informações podem ser acessadas usando uma função `help`.

```python
def greet(name):
    """Print a greeting message to the person with the given name."""
    print("Hello, " + name)

help(greet)
```

Em Python, **parâmetros da função** podem ter valores padrão que são utilizados se nenhum valor for fornecido quando a função é chamada.

```python3
def greet(name="there"):
    print("Hello, " + name)

greet() # Output: Hello, there
greet("John") # Output: Hello, John
```

A **função principal** é uma convenção em Python, onde o código a ser executado diretamente é colocado dentro de um bloco `if __name__ == '__main__':`, garantindo que ele seja executado apenas quando o arquivo é executado diretamente, e não importado como um módulo.

```python3
def main():
    print("Hello World")

if __name__ == "__main__":
    main()
```

## Tipagem de Funções em Python: Tipos de Argumentos e Valores de Retorno

A tipagem de funções especifica os tipos de argumentos e o valor de retorno esperado de uma função. Python suporta argumentos posicionais, por palavra-chave, padrão e de comprimento variável para uma função. Argumentos de função referem-se aos valores passados para uma função, e valores de retorno são os resultados do código executado.

Aqui estão alguns exemplos de funções em Python:

```python
# Example of a function that returns a value

def calculate_area(width, height):
    area = width * height
    return area

# Example of a function that returns multiple values 

def get_student_details(name, age, student_id):
    return name, age, student_id
```

Em Python, argumentos de função de comprimento variável são denotados usando o símbolo `*`. Aqui está um exemplo de uma função Python que recebe argumentos de comprimento variável:

```python
def calculate_sum(*numbers):
    total = 0
    for num in numbers:
        total += num
    return total
# Here's how you can call the calculate_sum function with different numbers of arguments:
sum1 = calculate_sum(1, 2, 3)   # sum1 is 6
sum2 = calculate_sum(10, 20)    # sum2 is 30
sum3 = calculate_sum(5)         # sum3 is 5
```

Neste exemplo, a sintaxe dos números `*` na definição da função indica ao Python para permitir qualquer número de argumentos a serem passados para a função. A função então utiliza um loop para iterar sobre todos os argumentos e calcular sua soma.

Como você pode ver, você pode passar qualquer número de argumentos para a função `calculate_sum`, e ela funcionará corretamente.

## Como Nomear Corretamente uma Função em Python

1. Nomes de funções devem **começar com uma letra ou sublinhado** `_`, seguidos por qualquer combinação de letras, números ou sublinhados.
Exemplo: `def my_function():`

2. Nomes de funções devem ser **descritivos** e transmitir o propósito da função.
Exemplo: `def calculate_total():`

3. Nomes de funções são **sensíveis a maiúsculas e minúsculas**, significando que `my_function` e `My_Function` são nomes diferentes.
Exemplo: `def my_function():` e `def My_Function():` são duas funções diferentes.

4. Nomes de funções não devem ser iguais a uma **palavra-chave do Python**, como `print` ou `if`.
Exemplo: `def print():` não é um nome válido para função.

5. Nomes de funções devem seguir a convenção de nomenclatura **"snake_case"**, onde as palavras são separadas por sublinhados. Esta convenção torna os nomes das funções mais legíveis e fáceis de entender.
Exemplo: `def calculate_total_with_discount():`

No geral, é recomendado escolher um nome de função que seja **descritivo**, **fácil de entender** e siga as convenções de nomenclatura para funções Python.

## Como Retornar Múltiplos Valores de uma Função

Em Python, uma função pode retornar diretamente apenas um valor. No entanto, você pode retornar múltiplos valores empacotando-os em uma estrutura de dados como uma tupla, lista ou dicionário. Aqui está um exemplo de uma função que retorna múltiplos valores usando uma tupla:

```python3
def get_user_info():
    name = "John Doe"
    age = 30
    email = "johndoe@example.com"
    return name, age, email

# Call the function and unpack the returned values
user_name, user_age, user_email = get_user_info()

print("Name:", user_name)
print("Age:", user_age)
print("Email:", user_email)

# Output:
# Name: John Doe
# Age: 30
# Email: johndoe@example.com
```

Esta função `get_user_info()` retorna o `name`, `age`, e `email` de um usuário. Ao separar as variáveis com vírgulas na instrução de retorno, o Python cria automaticamente uma tupla contendo esses valores. Podemos então desempacotar a tupla em variáveis separadas durante a chamada da função.
