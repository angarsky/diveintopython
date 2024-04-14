> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables

Variáveis desempenham um papel crucial no Python, pois fornecem uma maneira de armazenar e manipular dados ao longo de um programa. Ao atribuir valores a variáveis, podemos facilmente nos referir e atualizar os dados conforme necessário, tornando nosso código mais eficiente e legível. No geral, variáveis são um conceito fundamental na programação Python e são essenciais para qualquer tipo de manipulação e análise de dados. Vamos rever este tópico em detalhes.

## Definição de Variável

Vamos definir o que é uma variável no Python. É um local nomeado na memória do computador que armazena um valor. É como um recipiente que pode conter diferentes tipos de dados, como números, strings ou booleanos.

Para criar uma variável no Python, você precisa dar um nome a ela e atribuir um valor usando o operador de atribuição `=`.

## Convenção de Nomes de Variáveis

No Python, os nomes de variáveis são sensíveis a maiúsculas e minúsculas e podem ser qualquer combinação de letras, números e sublinhados. No entanto, há diretrizes e convenções de nomenclatura de variáveis no Python que tornam seu código mais legível e mantível:

- Use letras minúsculas para nomes de variáveis. No Python, é costumeiro usar letras minúsculas para nomes de variáveis.
- Use sublinhados para separar palavras em nomes de variáveis. Se um nome de variável consistir em mais de uma palavra, use sublinhados para separá-las. Por exemplo, `first_name` é um nome de variável melhor do que `firstname`.
- Evite usar palavras-chave reservadas. Python tem palavras-chave reservadas que têm um significado especial na linguagem, como `if`, `else`, `while` e `for`. Evite usar essas palavras-chave como nomes de variáveis.
- Use nomes descritivos para variáveis. Escolha nomes descritivos que reflitam o propósito da variável. Por exemplo, `count` é um nome de variável melhor do que `c`.
- Use substantivos no singular para nomes de variáveis. Por exemplo, `student` é um nome de variável melhor do que `students`.
- Seja consistente com as convenções de nomenclatura dentro do seu código e em toda a sua equipe.

Aqui estão alguns exemplos de bons nomes de variáveis em Python:

```python
first_name
last_name
age
is_student
num_of_courses
```

Lembre-se de que boas convenções de nomenclatura de variáveis não ajudam apenas a definir um nome de variável válido, mas também tornam seu código mais legível, fácil de manter e reduzem o risco de bugs.

## Declaração de Variáveis

Em Python, você não precisa declarar explicitamente uma variável antes de usá-la. Você pode criar uma variável simplesmente atribuindo um valor a ela.

No entanto, é importante notar que as variáveis em Python são tipadas dinamicamente, o que significa que o tipo de dado de uma variável é determinado em tempo de execução com base no tipo do valor atribuído a ela. Isso significa que a mesma variável pode conter diferentes tipos de valores em momentos diferentes. Por exemplo:

```python
y = 5
y = "hello"

print(y) # Output: hello
```

Neste exemplo, primeiramente criamos uma variável chamada `y` e atribuímos a ela o valor `5`. Depois, mudamos o valor de `y` para uma string `hello`. O programa imprimiu o valor de `y`, que é a string `hello`.

## Tipos de Dados

Existem nove tipos de dados em Python:

- Inteiros
- Números de ponto flutuante
- Complexos
- Strings
- Booleanos
- Listas
- Tuplas
- Conjuntos
- Dicionários

Os três primeiros tipos podem condicionalmente ser combinados no grupo numérico.

### Tipos Numéricos

Os tipos numéricos são usados para representar números em Python. Existem três tipos de dados numéricos em Python:

- **Integer**: Inteiros são números inteiros sem ponto decimal. Exemplo: 5, 10, -3.
- **Float**: Floats são números com pontos decimais. Exemplo: 2.5, -0.1, 3.14.
- **Complex**: Números complexos são números com uma parte real e uma imaginária. Eles são denotados ao adicionar um `j` ao final da parte imaginária. Exemplo: 2 + 3j, -4j.

```python
# integer
a = 5
# float
b = 3.14
# complex
c = 2 + 3j
```

### Tipo Booleano

O tipo booleano é um tipo de dado que pode ter apenas dois valores - `True` ou `False`.

```python
a = True
b = False
```

### Tipo String

Strings (também conhecidas como literal de string) são usadas para representar dados de texto em Python. Elas são cercadas por aspas (simples ou duplas) e podem conter letras, números e caracteres especiais. Vamos ver o que é uma string com um exemplo:

```python
a = "Hello, World!"
b = 'Python is cool'
```

### Tipo de Lista

Listas são usadas para armazenar uma coleção de itens. Elas podem conter qualquer tipo de dado e são denotadas por colchetes.

```python
a = [1, 2, 3, 4, 5]
b = ['mango', 'pineapple', 'orange']
```

### Tipo Tupla

Tuplas são similares a listas, mas elas são imutáveis, o que significa que o seu conteúdo não pode ser alterado. São denotadas por parênteses.

```python
a = (1, 2, 3)
b = ('red', 'green', 'blue')
```

### Tipo Conjunto

Conjuntos são usados para armazenar valores únicos. Eles são denotados por chaves.

```python
a = {1, 2, 3, 4, 5}
b = {'mango', 'pineapple', 'orange'}
```

### Tipo Dicionário

Dicionários são usados para armazenar pares de chave-valor. Cada chave é associada a um valor, e eles são denotados por chaves com pares de chave-valor separados por dois pontos.

```python
a = {'name': 'John', 'age': 30, 'city': 'New York'}
b = {'mango': 1.99, 'pineapple': 0.99, 'orange': 2.99}
```

### Tipo None

None é um tipo de dado especial em Python que representa a ausência de um valor.

```python
a = None
```

## Variável de Caractere

Em Python, uma variável de caractere é um único caractere armazenado em uma variável. Diferente de algumas outras linguagens de programação, Python não possui um tipo de dado separado para caracteres. Em vez disso, um caractere é simplesmente uma string de comprimento 1 em Python.

Para declarar uma variável de caractere em Python, você pode atribuir um único caractere a uma variável usando aspas simples, aspas duplas ou aspas triplas. Aqui estão alguns exemplos:

```python
char1 = 'a'
char2 = "b"
char3 = '''c'''
```

Nos exemplos acima, `char1`, `char2` e `char3` são todas variáveis de caracteres que armazenam os caracteres `a`, `b` e `c`, respectivamente.

Você também pode usar indexação para extrair um único caractere de uma variável de string. Por exemplo:

```python
string = "hello"
char = string[0]   # Output: 'h'
```

No exemplo acima, `char` é uma variável de caractere que armazena o primeiro caractere da string `hello`.

## Declarando Tipos de Variáveis

Como foi mencionado acima, Python é uma linguagem de tipagem dinâmica, o que significa que você não precisa declarar explicitamente o tipo de uma variável. Em vez disso, o tipo de uma variável é determinado em tempo de execução com base no valor que lhe é atribuído.

No entanto, a partir do Python 3.5, a linguagem inclui uma sintaxe para anotações de tipo, que permitem especificar o tipo esperado de uma variável. Isso pode ser útil para melhorar a legibilidade do código, documentação e verificação de tipo.

Aqui está um exemplo de como você pode usar anotações de tipo em Python:

```python
# declare a variable with an integer type annotation
my_number: int = 42

# declare a variable with a string type annotation
my_string: str = "Hello, world!"

# declare a function with type annotations for parameters and return value
def add_numbers(a: int, b: int) -> int:
    return a + b
```

Note que as anotações de tipo são opcionais, e o Python ainda funcionará mesmo que você não as utilize. No entanto, usar anotações de tipo pode ajudar a capturar certos tipos de erros em tempo de compilação, em vez de em tempo de execução.

## Variáveis e Constantes

No Python, as variáveis são usadas para armazenar dados ou valores que podem ser alterados ou atualizados durante o curso do programa. Por outro lado, variáveis constantes, como o nome sugere, são variáveis que não podem ser alteradas uma vez que lhes é atribuído um valor.

No Python, não há uma maneira específica de declarar uma variável ou uma variável constante, pois as variáveis são dinamicamente tipadas e seu tipo pode mudar durante a execução do programa. No entanto, uma convenção comum para diferenciar entre variáveis e variáveis constantes é usar todas as letras maiúsculas para estas últimas.

Por exemplo, digamos que queremos declarar uma variável para armazenar a idade de uma pessoa e uma variável constante para armazenar o valor de pi. Podemos declará-las da seguinte forma:

```python
# variable to store age
age = 30

# constant variable to store pi value
PI = 3.14159
```

No exemplo acima, `age` é uma variável que pode ser alterada, enquanto `PI` é uma variável constante que não pode ser alterada uma vez que tenha recebido um valor.

É importante notar que essa convenção na verdade não torna a variável constante, e ainda é possível modificar o valor de uma variável constante em Python. No entanto, seguir esta convenção ajuda a distinguir entre variáveis que se pretendem mudar durante a execução do programa e aquelas que se pretendem constantes.

## Definindo Variáveis Globais e Locais

Existem dois tipos de variáveis em Python: **global** e **local**.

Uma variável global em Python é uma variável que é definida fora de uma função e pode ser acessada por qualquer parte do programa, incluindo funções. Variáveis globais em Python têm um escopo global, o que significa que são acessíveis de qualquer lugar no código.

Aqui está um exemplo de como definir uma variável global em Python:

```python3
x = 10

def my_function():
    print(x)

my_function() # output: 10
```

No exemplo acima, `x` é uma variável global que pode ser acessada pela função `my_function`. Quando a função é chamada, ela imprime o valor de `x`.

Agora, vamos ver o que é uma variável local em Python.

Uma variável local é uma variável que é definida dentro de uma função e só pode ser acessada dentro dessa função. Variáveis locais têm um escopo local, o que significa que elas só são acessíveis dentro do bloco de código onde são definidas.

Aqui está um exemplo de definição de uma variável local em Python:

```python3
def my_function():
    y = 5
    print(y)

my_function() # output: 5
```

No exemplo acima, `y` é uma variável local que só pode ser acessada dentro da função `my_function`. Quando a função é chamada, ela imprime o valor de `y`.

É importante notar que, se você definir uma variável local com o mesmo nome de uma variável global, a variável local terá precedência dentro da função. Aqui está um exemplo:

```python
x = 10

def my_function():
    x = 5
    print(x)

my_function() # output: 5
print(x) # output: 10
```

No exemplo acima, `my_function` define uma variável local `x` com um valor de `5`. Quando a função é chamada, ela imprime o valor da variável local, que é `5`. No entanto, a variável global `x` ainda tem um valor de `10`, que é impresso quando é chamada fora da função.
