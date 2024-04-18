> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/modules/popular-modules/random

O módulo Random em Python é uma biblioteca amplamente utilizada que permite aos desenvolvedores gerar números aleatórios, embaralhar listas e fazer outras seleções aleatórias para suas aplicações. Ele fornece uma gama de funções que podem ser usadas para criar dados aleatórios e pode ser útil em várias aplicações como jogos, simulações, criptografia e outras áreas onde há uma necessidade de aleatoriedade. Com este módulo, os desenvolvedores têm a liberdade de criar diversidade em seus outputs de aplicativo, tornando as aplicações mais intrigantes.

## Exemplos de Uso do Módulo Random

O módulo [random](https://docs.python.org/3/library/random.html) (biblioteca `random`) em Python é usado para gerar números pseudo-aleatórios.

### Obter Número Aleatório

```python3
import random

# Generate a random number between 1 and 10 (inclusive)
random_number = random.randint(1, 10)
print(random_number)

# Output:
# 5 (this number will be different each time the code is run)
```

No exemplo acima, a função `random.randint(a, b)` é usada para gerar um número inteiro aleatório entre os valores de `a` e `b`, incluindo ambos os limites. Neste caso, o número aleatório gerado será entre `1` e `10`.

### Seleção Aleatória de Lista

```python3
import random

# Generate a random choice from a list of options
options = ["rock", "paper", "scissors"]
random_option = random.choice(options)
print(random_option)

# Output:
# "paper" (this option will be different each time the code is run)
```

Neste exemplo, a função `random.choice(seq)` é usada para gerar uma escolha aleatória de uma lista de opções. Neste caso, a escolha aleatória gerada será uma das três opções na lista `options` - `rock`, `paper` ou `scissors`.

## Semente Aleatória

A Semente Aleatória desempenha um papel crucial na geração de números aleatórios em Python. É usada para inicializar o gerador de números pseudo-aleatórios, que é uma função que gera uma sequência de números que parecem ser aleatórios, mas na verdade são determinísticos.

```python
import random

# Setting the random seed value to 123
random.seed(123)

# Generating 5 random numbers
for i in range(5):
    print(random.random())
```

Neste exemplo, definimos o valor da semente aleatória para `123`, o que garante que a mesma sequência de números aleatórios seja gerada todas as vezes que o código é executado.

```python3
import random

# Setting different random seed values
random.seed(123)
list_1 = [random.randint(1,10) for i in range(5)]

random.seed(456)
list_2 = [random.randint(1,10) for i in range(5)]

# Printing the lists
print(list_1)
print(list_2)
```

Neste exemplo, definimos valores de semente aleatória diferentes para gerar duas listas diferentes. Ao fazer isso, garantimos que as listas sejam reprodutíveis e possam ser geradas novamente com os mesmos valores de semente `random`.

No geral, a semente `random` é um recurso essencial na geração e reprodução de números `random` em Python. Ao definir a semente, podemos garantir que nossos resultados sejam consistentes e reprodutíveis.

## Como gerar uma String Aleatória

Se você está procurando gerar uma string aleatória em Python, existem alguns métodos diferentes que você pode usar, dependendo de suas necessidades. Aqui estão dois exemplos:

```python3
import random
import string

def random_string(length):
    letters = string.ascii_lowercase
    return ''.join(random.choice(letters) for i in range(length))

# Example usage
print(random_string(10))  # Output: 'gjwstqyeqh'
```

Neste exemplo, usamos os módulos integrados do Python `random` e `string` para gerar uma string de um determinado comprimento. Primeiro definimos uma **função aleatória** chamada `random_string` que recebe um parâmetro `length` que especifica o número de caracteres na string resultante. Em seguida, usamos a constante `string.ascii_lowercase` para obter todas as `letras` minúsculas do alfabeto, e `random.choice` para selecionar aleatoriamente caracteres desta string pelo comprimento da nossa string especificada.

```python
import random

# random function

def random_string(chars, length):
    return ''.join(random.choice(chars) for i in range(length))

# Example usage
print(random_string('ABC123', 8))  # Output: '31C1C1CA'
```

Se você deseja mais controle sobre os caracteres na string resultante, você pode especificar um conjunto de caracteres para escolher. Neste exemplo, definimos nosso próprio conjunto de caracteres para escolher, passando uma string de caracteres possíveis para a **função aleatória** `random_string`. Em seguida, usamos `random.choice` para selecionar aleatoriamente caracteres deste conjunto pelo comprimento da nossa string especificada.

Com esses dois exemplos, você deve ser capaz de gerar facilmente strings aleatórias em Python para qualquer finalidade que você precise. Lembre-se de `importar` os módulos necessários e escolher o método apropriado baseado nos seus requisitos específicos.

## Amostragem Aleatória

A amostragem aleatória é uma técnica estatística importante usada por analistas de dados e programadores para selecionar um subconjunto de dados de uma população maior de maneira [aleatória](https://docs.python.org/3/library/random.html). Em Python, a amostragem `random` pode ser feita usando o módulo `random` incluso. Este artigo discutirá brevemente como gerar amostras `random` em Python.

### Amostragem Aleatória em Python

Em Python, o módulo `random` fornece várias funções para gerar dados `random`. Para gerar uma amostra `random` de uma lista, podemos usar a função `random.sample()`. Esta função leva dois argumentos: a lista da qual queremos gerar uma amostra `random` e o número de amostras que queremos gerar.

```python3
import random

mylist = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# Generate a random sample of size 4 from the list
random.sample(mylist, 4)

# Output: [9, 1, 5, 4]
```

```python
import random

# Generate a random floating-point number between 0 and 1
random.random()
# Output: `0.42323281409391506`
```

A amostragem aleatória é uma técnica poderosa que pode ser usada para selecionar subconjuntos de dados para análise e modelagem. Em Python, o módulo `random` facilita a geração de amostras aleatórias a partir de listas e outras fontes de dados. Utilizando a função `random.sample()`, podemos rapidamente gerar uma lista embaralhada aleatória de um tamanho especificado.

## Aleatório com o Método `randint()`

O método `randint()` do Random Python é usado para gerar um número inteiro aleatório entre o intervalo de valores fornecido. A função `randint()` faz parte do módulo `random` em Python.

Aqui está um exemplo de como usar `randint()` para gerar um `number` aleatório entre 0 e 9:

```python
import random

number = random.randint(0, 9)
print(number)
```

Este código irá gerar um inteiro aleatório entre 0 e 9 (inclusive).

Você também pode usar `randint()` para gerar um `number` aleatório dentro de um intervalo maior. Por exemplo, para gerar um `number` aleatório entre 100 e `200` (inclusive), você usaria o seguinte código:

```python
import random

number = random.randint(100, 200)
print(number)
```

Em resumo, o `random.randint()` do Python é uma maneira simples e eficiente de gerar números inteiros aleatórios, e é uma ferramenta útil em muitos projetos de programação.

## Aleatório com a Função `uniform()`

A `random.uniform()` é uma função Python que gera números de ponto flutuante aleatórios dentro de um intervalo especificado. Faz parte do módulo `random`, que é usado para gerar dados aleatórios.

Usar a função `random.uniform()` no Python é relativamente fácil.

### Gerar um Float Aleatório

```python
import random

x = random.uniform(0, 1)
print(x)
```

A função `random.uniform()` gera um número de ponto flutuante aleatório dentro do intervalo especificado. O intervalo está entre 0 e 1.

Usar a função `random.uniform()` é especialmente útil quando se precisa gerar números de ponto flutuante aleatórios que não são inteiros. Quando combinado com outras funções e módulos, pode ser usado para simular cenários do mundo real, como modelagem financeira, simulações de física e modelagem de sistemas biológicos em biologia computacional.
