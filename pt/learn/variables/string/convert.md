> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/string/convert

No processo de trabalho com dados, muitas vezes é necessário converter um tipo de dados para outro. Em Python, você pode converter diferentes tipos de dados para uma string e vice-versa usando várias funções de conversão. Esta parte descreverá como fazer isso.

## Converter para String

Para converter um objeto não string para uma string em Python, você pode usar a função `str()`. Aqui estão alguns exemplos de como converter dados:

```python3
# convert an integer to a string
num = 42
str_num = str(num)
print(str_num)  # outputs "42"
print(type(str_num))  # outputs "<class 'str'>"

# convert a float to a string
pi = 3.14159
str_pi = str(pi)
print(str_pi)  # outputs "3.14159"
print(type(str_pi))  # outputs "<class 'str'>"

# convert a boolean to a string
flag = True
str_flag = str(flag)
print(str_flag)  # outputs "True"
print(type(str_flag))  # outputs "<class 'str'>"
```

Observe que se você tentar converter um objeto que não possui uma representação em string definida, você pode receber uma exceção `TypeError`.

## Unicode para String

Em Python, você pode converter uma string Unicode em uma string regular (também conhecida como string de bytes) usando o método `encode`.

Aqui está um exemplo:

```python3
unicode_string = "Hello, World! 🌍"
byte_string = unicode_string.encode("utf-8")
print(byte_string) # Output: b'Hello, World! \xf0\x9f\x8c\x8d'
```

Neste exemplo, o método `encode` é utilizado para converter a `unicode_string` em uma string de bytes codificada no formato UTF-8. A variável `byte_string` resultante contém a representação em bytes da string original.

Observe que o prefixo `b` na saída indica que o valor é uma string de bytes, em vez de uma string regular. Se você quiser converter a string de bytes de volta para uma string regular, você pode usar o método decode:

```python
new_unicode_string = byte_string.decode("utf-8")
print(new_unicode_string) # Output: Hello, World! 🌍
```

Neste exemplo, o método `decode` é usado para converter a cadeia de bytes de volta para uma string Unicode codificada em formato UTF-8. A variável resultante `new_unicode_string` contém a string original.

## Conversão de String para Lista

Para converter uma string em uma lista de suas letras individuais em Python, você pode usar a função integrada `list()`. Aqui está um exemplo:

```python
my_string = "hello"
letters_list = list(my_string)
print(letters_list)
```

Isso irá exibir:

```python
['h', 'e', 'l', 'l', 'o']
```

Como alternativa, você pode usar um laço para iterar sobre a string e acrescentar cada letra a uma nova lista:

```python3
my_string = "hello"
letters_list = []
for letter in my_string:
    letters_list.append(letter)
print(letters_list)
```

Isto também irá gerar:

```python
['h', 'e', 'l', 'l', 'o']
```

## Conversão de String para Booleano

Você pode converter uma string para um valor booleano usando a função integrada `bool()`.

Por padrão, as seguintes strings são consideradas como `True`:

- Qualquer string não vazia
- A string "True" (sem distinção entre maiúsculas e minúsculas)

Por outro lado, as seguintes strings são consideradas como `False`:

- Uma string vazia
- A string "False" (sem distinção entre maiúsculas e minúsculas)
- Qualquer valor numérico igual a 0 (i.e., "0" ou "0.0")

Aqui estão alguns exemplos:

```python
>>> bool("hello")
True
>>> bool("")
False
>>> bool("True")
True
>>> bool("false")
False
>>> bool("0")
False
>>> bool("1")
True
```

Se você tem uma string que não é um dos valores acima e quer tratá-la como um booleano, você pode definir suas próprias regras de conversão usando uma declaração `if` ou uma expressão condicional.

## String para Hex

Você pode converter uma string para sua representação hexadecimal em Python usando o método `encode()` e a codificação `'hex'`. Vamos ver como codificar com um exemplo:

```python3
string = "Hello, world!"
hex_string = string.encode('hex')

print(hex_string) # Output: 48656c6c6f2c20776f726c6421
```

No Python 3, o método `hex()` pode ser usado para converter uma string para sua representação hexadecimal. Aqui está um exemplo:

```python
string = "Hello, world!"
hex_string = ''.join([hex(ord(c))[2:] for c in string])

print(hex_string) #Output: 48656c6c6f2c20776f726c6421
```

## O método `join()`

Este método permite juntar elementos de um iterável (como uma lista, tupla ou string) em uma única string usando uma string separadora.

A sintaxe para usar o método `join()` é a seguinte:

```python
separator_string.join(iterable)
```

Aqui, `separator_string` é a string que você deseja usar para separar os elementos no iterável, e `iterable` é a sequência de elementos que você deseja juntar.

Por exemplo, se você tem uma lista de strings e quer juntá-las em uma única string separada por vírgulas, você poderia usar o seguinte código:

```python3
my_list = ['mango', 'pineapple', 'banana']
separator = ', '
result = separator.join(my_list)
print(result)  # Output: "mango, pineapple, banana"
```

Neste exemplo, o método `join()` é chamado na string separadora, com a lista `my_list` como argumento iterável. A string resultante é atribuída à variável resultado e impressa no console.

Note que o método `join()` também pode ser usado com outros tipos de iteráveis, como tuplas ou conjuntos. Além disso, você pode usar uma string vazia como separador se quiser juntar os elementos sem nenhuma separação.
