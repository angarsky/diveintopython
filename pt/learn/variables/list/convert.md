> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/list/convert

No Python, é comum converter dados para e de listas, pois as listas são uma estrutura de dados versátil que pode conter vários itens de tipos de dados variados. Em alguns casos, precisamos mudar o tipo de dado armazenado em uma lista. Vamos revisar os casos mais comuns de conversão.

## Conversão de Lista para String no Python

Para converter uma lista em uma string no Python, você pode usar o método `join()`. Aqui está um exemplo:

```python3
my_list = ["apple", "pineapple", "cherry"]
my_string = ", ".join(my_list)
print(my_string) # Output: apple, pineapple, cherry
```

## Conversão de String para Lista

Para converter uma string Python em uma lista, você pode usar o método `split()`. O método `split()` divide uma string em uma lista de substrings com base em um delimitador especificado.

Aqui está um exemplo de como obter uma lista a partir de uma string:

```python3
my_string = "Hello, World!"
my_list = my_string.split(", ")
print(my_list) Output: ['Hello', 'World!']
```

Para converter uma string em Python em uma lista de caracteres, você pode usar a função `list()`, que recebe uma sequência (por exemplo, uma string) como argumento e retorna uma lista contendo os elementos da sequência:

Aqui está um exemplo de conversão de string para lista de caracteres:

```python3
my_string = "Hello, world!"
my_list = list(my_string)
print(my_list) Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

## Conversão de Lista para Dicionário

Você pode converter uma lista em um dicionário em Python usando o construtor `dict()`. A lista deve conter pares chave-valor como tuplas, onde o primeiro elemento de cada tupla é a chave e o segundo elemento é o valor. Aqui está um exemplo:

```python3
my_list = [("a", 1), ("b", 2), ("c", 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Conversão de Lista para Conjunto

Para converter uma lista em um conjunto em Python, você pode usar a função integrada `set()`. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

Você também pode obter uma lista de valores únicos usando a função `set()`, convertendo uma lista em um conjunto e, em seguida, convertendo-a de volta para uma lista.

## Conversão de Conjunto para Lista

Para converter um conjunto em uma lista em Python, você pode usar a função `list()`. Aqui está um exemplo:

```python3
my_set = {1, 2, 3, 4, 5}
my_list = list(my_set)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Dividindo String em Lista

Você pode usar o método `split()` em Python para dividir uma string em uma lista.

Aqui está um exemplo:

```python3
string = "Hello World"
list = string.split()
print(list) # Output: ['Hello', 'World']
```

Por padrão, o método `split()` divide a string em caracteres de espaço em branco (espaços, tabulações e novas linhas). Você também pode especificar um delimitador diferente passando-o como um argumento para o método `split()`. Por exemplo, se você quiser dividir uma string em vírgulas, você pode fazer:

```python3
string = "apple,banana,orange"
list = string.split(",")
print(list) # Output: ['apple', 'banana', 'orange']
```

## Conversão de Lista para Tupla

Em Python, você pode facilmente converter uma lista em uma tupla usando a função integrada `tuple()`. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5]
my_tuple = tuple(my_list)
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Conversão de Tupla para Lista

No Python, você pode converter uma tupla em uma lista usando a função interna `list()`. Aqui está um exemplo:

```python3
my_tuple = (1, 2, 3, 4, 5)
my_list = list(my_tuple)
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Conversão de Lista de Caracteres para Lista de Inteiros em Python

Para converter uma lista de caracteres em uma lista de inteiros em Python, você pode usar uma compreensão de lista juntamente com a função embutida `ord()`, que retorna o ponto de código Unicode de um caractere.

Aqui está um exemplo de código:

```python3
char_list = ['a', 'b', 'c', 'd']
int_list = [ord(char) for char in char_list]
print(int_list) # Output: [97, 98, 99, 100]
```
