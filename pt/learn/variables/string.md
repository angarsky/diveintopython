> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/string

Anteriormente, tocamos no tópico de operações com variáveis. Nesta parte, mergulharemos nas operações e métodos mais comuns com strings. Esta não é a lista completa de possíveis manipulações de strings.

## Declaração de Variável String

Você pode declarar uma variável string atribuindo um valor de string a um nome de variável usando o sinal de igual `=`. Aqui está um exemplo:

```python
my_string = "Hello, world!"
```

Neste exemplo, declaramos uma variável de string chamada `my_string` e atribuímos a ela o valor `"Hello, world!"`. Observe que o valor da string está entre aspas.

Você também pode declarar uma variável de string vazia atribuindo um valor de string vazio a um nome de variável, assim:

```python
my_string = ""
```

Neste caso, declaramos uma variável do tipo string chamada `my_string` e atribuímos a ela um valor de string vazio.

## Concatenação de Strings

Concatenação de strings é o processo de combinar duas ou mais strings em uma única string. Em Python, você pode concatenar strings usando o operador `+`. Uma outra opção para adicionar uma string é usando o operador `+=`.

Vamos olhar um exemplo de adição de uma string:

```python3
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

No exemplo acima, criamos duas variáveis do tipo string `str1` e `str2` contendo as strings "Hello" e "World" respectivamente. Em seguida, usamos o operador `+` para adicionar uma string à outra, junto com um caractere de espaço, para criar um único resultado de string. Finalmente, imprimimos o resultado da adição no console, que exibe "Hello World".

## Uma Variável em uma String

Em Python, você pode incluir variáveis dentro de strings usando diferentes métodos. Aqui estão algumas maneiras comumente usadas para alcançar isso:

**Concatenação de Strings**: você pode concatenar strings e variáveis usando o operador `+`:

```python3
name = "Alice"
age = 30
message = "Hello, my name is " + name + " and I am " + str(age) + " years old."
print(message)
```

**Usando o método `str.format()`**: este método permite que você incorpore variáveis em uma string usando placeholders `{}`:

```python3
name = "Bob"
age = 25
message = "Hello, my name is {} and I am {} years old.".format(name, age)
print(message)
```

**Usando f-strings (literais de string formatada)**: introduzidos no Python 3.6, os f-strings fornecem uma maneira concisa de embutir variáveis diretamente dentro de strings prefixando a string com `f` e usando `{}` para envolver variáveis:

```python
name = "Charlie"
age = 35
message = f"Hello, my name is {name} and I am {age} years old."
print(message)
```

Todos esses métodos alcançam o mesmo resultado, mas as f-strings são frequentemente preferidas devido à sua legibilidade e facilidade de uso. Elas permitem que você referencie diretamente variáveis dentro da string, tornando o código mais limpo e compreensível.

## Comprimento da String

Você pode obter o comprimento de uma string usando a função integrada `len()`. Você também pode verificar se uma string está vazia usando este método.

Aqui está um exemplo de como calcular os caracteres que uma string contém:

```python3
my_string = "Hello, world!"
print(len(my_string))  # Output: 13
```

Neste exemplo, a função `len()` retorna o número de caracteres na variável `my_string`, que é 13. Você também pode usar `len()` para obter o comprimento de uma variável de string que esteja vazia ou contenha espaços em branco:

```python3
empty_string = ""
print(len(empty_string))  # Output: 0

whitespace_string = "   "
print(len(whitespace_string))  # Output: 3
```

Em ambos os casos, a função `len()` retorna o comprimento da string, que é 0 para a string vazia e 3 para a string que contém espaço em branco.

## Comparação de Strings

Em Python, você pode usar vários operadores de comparação para comparar strings. Aqui estão alguns exemplos:

O operador `==`: verifica se duas strings são iguais.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 == str2:
    print("The two strings are equal.")
else:
    print("The two strings are not equal.")
# Output: The two strings are not equal.
```

O operador `!=`: verifica se duas strings não são iguais.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 != str2:
    print("The two strings are not equal.")
else:
    print("The two strings are equal.")
# Output: The two strings are not equal.
```

O operador `<`: verifica se a primeira string é menor que a segunda string em ordem lexicográfica.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 < str2:
    print("The first string comes before the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before the second string.
```

O operador `>`: verifica se a primeira string é maior que a segunda string em ordem lexicográfica.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 > str2:
    print("The first string comes after the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

O operador `<=`: verifica se a primeira string é menor ou igual à segunda string em ordem lexicográfica.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 <= str2:
    print("The first string comes before or is equal to the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before or is equal to the second string.
```

O operador `>=`: verifica se a primeira string é maior ou igual à segunda string em ordem lexicográfica.

```python3
str1 = "mango"
str2 = "pineapple"

if str1 >= str2:
    print("The first string comes after or is equal to the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

Observe que ao comparar strings em Python, a comparação é feita em ordem lexicográfica, o que significa que a comparação é baseada nos valores ASCII dos caracteres nas strings.

## String Multilinha

Você pode criar uma string multilinha ao cercar o texto em aspas triplas, seja usando três aspas simples (''') ou três aspas duplas (""").

Por exemplo:

```python3
multiline_string = '''
This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
'''

print(multiline_string)
```

```python
# Output:

This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
```

Observe que qualquer espaço em branco, incluindo novas linhas, na string delimitada por aspas triplas será incluído na string. Se você quiser excluir o espaço em branco no início ou no final de uma linha, pode usar métodos de string como strip() ou rstrip().

## String Binária

Uma string binária pode ser representada usando o prefixo `0b` seguido por uma sequência de dígitos `0` e `1`. Por exemplo, a string binária `1101` pode ser representada como `0b1101`. Aqui estão alguns exemplos de como criar e manipular strings binárias em Python:

- Criando uma string binária:

```python
binary_str = '0b1101'
```

- Convertendo um inteiro decimal para uma string binária:

```python
decimal_num = 13
binary_str = bin(decimal_num)
```

- Convertendo uma string binária para um inteiro decimal:

```python
binary_str = '0b1101'
decimal_num = int(binary_str, 2)
```

- Operações bitwise em strings binárias:

```python3
binary_str1 = '0b1101'
binary_str2 = '0b1010'

# Bitwise AND
result = int(binary_str1, 2) & int(binary_str2, 2)
print(bin(result))  # Output: 0b1000

# Bitwise OR
result = int(binary_str1, 2) | int(binary_str2, 2)
print(bin(result))  # Output: 0b1111

# Bitwise XOR
result = int(binary_str1, 2) ^ int(binary_str2, 2)
print(bin(result))  # Output: 0b0111
```

Observe que, ao realizar operações de bits, precisamos converter as strings binárias em inteiros decimais usando a função `int()` com um segundo argumento especificando a base (`2` neste caso) e, em seguida, converter o resultado de volta para uma string binária usando a função `bin()`.

## Iterar sobre caracteres

Há várias maneiras de iterar sobre os caracteres de uma string em Python. Aqui estão alguns exemplos:

- Usando um loop `for`:

```python3
my_string = "Hello, world!"
for char in my_string:
    print(char)
```

- Usando um laço `while`:

```python3
my_string = "Hello, world!"
i = 0
while i < len(my_string):
    print(my_string[i])
    i += 1
```

- Usando uma compreensão de lista:

```python3
my_string = "Hello, world!"
char_list = [char for char in my_string]
print(char_list)
```

- Usando a função `map()`:

```python3
my_string = "Hello, world!"
char_list = list(map(str, my_string))
print(char_list)
```

- Utilizando a função `enumerate()`:

```python
my_string = "Hello, world!"
for index, char in enumerate(my_string):
    print(f"Character at index {index}: {char}")
```

Todos esses métodos permitirão que você itere sobre os caracteres em uma string e execute operações neles. Escolha aquele que melhor atenda às suas necessidades!
