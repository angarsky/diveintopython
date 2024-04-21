> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/list/basic-operations

Listas em Python são estruturas de dados versáteis e comumente usadas que permitem armazenar coleções de elementos, incluindo números, strings e até outras listas. Elas suportam várias operações básicas e métodos que permitem manipular e trabalhar facilmente com os elementos da lista. Algumas das operações e métodos mais usados para listas incluem indexação, fatiamento, adição, inserção, exclusão, ordenação e busca de elementos. Vamos revisar os métodos e funções básicas de listas passo a passo.

## Definindo um Índice de um Elemento

Uma lista é uma coleção ordenada de elementos que pode ser de qualquer tipo. Cada elemento em uma lista tem um índice único, que representa sua posição na lista. Os índices de lista começam em 0, o que significa que o primeiro elemento em uma lista tem um índice de 0, o segundo elemento tem um índice de 1, e assim por diante.

Vamos olhar as maneiras de obter índice de item em lista Python.

Não existe um método direto chamado `indexof()` para encontrar o índice de um elemento em uma lista. No entanto, você pode usar o método `index()` que é incorporado ao Python para obter índice de item na lista.

O método `index()` recebe um elemento como argumento e retorna o índice da primeira ocorrência desse elemento na lista. Por exemplo, digamos que você tenha uma lista de strings:

```python
my_list = ['apple', 'banana', 'cherry', 'banana', 'date']
```

Você pode encontrar o índice da primeira ocorrência do elemento 'banana' usando o método `index()` assim:

```python
index_of_banana = my_list.index('banana')   # 1
```

O método `index()` gera um `ValueError` se o elemento não for encontrado na lista.

## Compreensão de Lista em Python

Vamos revisar o que é compreensão de lista em Python. A compreensão de lista é uma forma concisa de criar uma nova lista em Python aplicando uma expressão a cada elemento de uma lista existente ou iterável. A sintaxe básica de uma compreensão de lista é:

```python
new_list = [expression(item) for item in iterable if condition]
```

Onde:

- `expression` é uma operação que será aplicada a cada elemento do iterável.
- `item` é a variável que representa cada elemento do iterável.
- `iterable` é uma sequência de elementos, como uma lista ou um intervalo.
- `condition` é uma expressão opcional que filtra os elementos baseados em uma condição.

Por exemplo, para criar uma nova lista com os quadrados dos números de `1` a `5`, você pode usar uma compreensão de lista como esta:

```python3
squares = [x**2 for x in range(1, 6)]
print(squares)  # Output: [1, 4, 9, 16, 25]
```

Você também pode usar uma instrução `if` para filtrar os elementos com base em uma condição. Por exemplo, para criar uma nova lista com os números pares de `1` a `10`, você pode usar uma compreensão de lista assim:

```python3
evens = [x for x in range(1, 11) if x % 2 == 0]
print(evens)  # Output: [2, 4, 6, 8, 10]
```

## Determinando o Comprimento de uma Lista

Em Python, você pode obter o comprimento de uma lista usando a função integrada `len()`. Para contar o número de elementos em uma lista em Python, você também pode usar a função `len()`.

Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5]
length = len(my_list)
print(length)  # Output: 5
```

> Você também pode usar a função `len()` para verificar se uma lista Python está vazia, já que não existe um método `isEmpty()` em Python.

Aqui está um exemplo usando verificação:

```python3
my_list = []
if len(my_list) == 0:
    print("The list is empty")
else:
    print("The list is not empty")
```

## Invertendo Listas

Para inverter uma lista em Python, você pode usar o método integrado `reverse()` ou a notação de fatiamento. Aqui estão exemplos de ambos:

Usando o método `reverse()`:

```python3
my_list = [1, 2, 3, 4, 5]
my_list.reverse()
print(my_list) # Output: [5, 4, 3, 2, 1]
```

Usando a notação de slicing:

```python3
my_list = [1, 2, 3, 4, 5]
reversed_list = my_list[::-1]
print(reversed_list) # Output: [5, 4, 3, 2, 1]
```

## Filtragem de Lista em Python

Em Python, você pode usar a função `filter()` para filtrar uma lista, ou seja, criar uma nova lista que contém apenas os elementos de uma lista existente que satisfazem uma certa condição.

A função `filter()` recebe dois argumentos: uma função e um iterável. A função deve retornar True ou False para cada elemento no iterável. A função `filter()` então retorna um novo iterável que contém apenas os elementos para os quais a função retornou True.

Aqui está um exemplo que filtra uma lista de números para incluir apenas os pares:

```python3
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def is_even(num):
    return num % 2 == 0

even_numbers = list(filter(is_even, numbers))
print(even_numbers)  # Output: [2, 4, 6, 8, 10]
```

## Concatenação ou União de Listas

No Python, você pode concatenar duas ou mais listas usando o operador `+`. Aqui está um exemplo de como unir duas listas:

```python
list1 = [1, 2, 3]
list2 = [4, 5, 6]
concatenated_list = list1 + list2
print(concatenated_list) # Output: [1, 2, 3, 4, 5, 6]
```

Uma outra forma de unir as listas é o método `extend()`:

```python3
list1 = [1, 2, 3]
list2 = [4, 5, 6]
list1.extend(list2)
print(list1) # Output: [1, 2, 3, 4, 5, 6]
```

## Unindo Itens de Lista

Para unir uma lista em Python em uma string, você pode usar o método `join()`. Aqui está um exemplo:

```python3
my_list = ['apple', 'banana', 'orange']
my_string = ', '.join(my_list)
print(my_string) # Output: apple, banana, orange
```

Você pode usar qualquer string separadora que desejar no método `join()`, incluindo uma string vazia se você deseja concatenar os elementos juntos sem nenhum separador.

## Lista de Listas em Python

Em Python, uma lista de listas pode ser criada aninhando uma ou mais listas dentro de outra lista. Aqui está um exemplo de criação de listas dentro de uma lista:

```python
list_of_lists = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
```

Você pode acessar elementos da lista dentro de lista usando indexação aninhada. Por exemplo, para acessar o segundo elemento da terceira sub-lista, você usaria o seguinte código:

```python
element = list_of_lists[2][1]
```

Isso definiria a variável `element` com o valor 8.

## Percorrendo a Lista

Você pode percorrer uma lista em Python usando um loop `for`. Aqui está um exemplo de como iterar através de uma lista:

```python3
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

Você também pode percorrer uma lista de strings ou qualquer outro tipo de dados. A sintaxe para o loop `for` é a mesma, independentemente do tipo de dados na lista.

## Imprimindo uma Lista em Python

Para imprimir uma lista em Python, você pode simplesmente usar a função `print` e passar a lista como argumento. Aqui está um exemplo de impressão de uma lista:

```python
my_list = [1, 2, 3, 4, 5]
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Se você deseja imprimir cada item da lista em uma linha separada, pode usar um loop para iterar sobre a lista e imprimir cada item um por um. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5]
for item in my_list:
    print(item)
```

## Soma de Lista em Python

Para encontrar a soma de uma lista em Python, você pode usar a função integrada `sum()`. Aqui está um exemplo de como sumarizar os elementos de uma lista:

```python
my_list = [1, 2, 3, 4, 5]
list_sum = sum(my_list)
print(list_sum) # Output: 15
```

## Fatiando uma Lista em Python

Em Python, você pode usar a notação de fatiamento para extrair uma parte de uma lista. A sintaxe básica para o fatiamento de lista é:

```python
my_list[start:end:step]
```

onde `start` é o índice do primeiro item a incluir, `end` é o índice do primeiro item a excluir, e `step` é o número de itens a pular entre cada item no corte (o padrão é 1).

Aqui estão alguns exemplos para ilustrar como usar o fatiamento de listas:

```python3
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# get first three items
print(my_list[:3])  # output: [0, 1, 2]

# get items 3-5
print(my_list[3:6])  # output: [3, 4, 5]

# get every other item starting from the second item
print(my_list[1::2])  # output: [1, 3, 5, 7, 9]

# reverse the list
print(my_list[::-1])  # output: [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]
```

Você também pode substituir múltiplos elementos usando fatiamento. Aqui está um exemplo:

```python
my_list = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
my_list[3:6] = [0] # Output: [0, 1, 2, 0, 6, 7, 8, 9]
```

## Comparação de Listas

Em Python, você pode comparar duas listas usando os operadores de comparação (<, <=, >, >=, ==, !=). Aqui está um exemplo de comparação entre duas listas:

```python3
list1 = [1, 2, 3]
list2 = [1, 2, 4]

if list1 == list2:
    print("The two lists are equal")
elif list1 < list2:
    print("list1 is less than list2")
else:
    print("list1 is greater than list2")
```

## Verificando Se uma Lista Contém um Elemento

Em Python, o tipo de dados lista é um tipo embutido que representa uma coleção de itens ordenados. O método `contains` não é um método embutido para listas Python, mas você pode verificar se um item está na lista usando a palavra-chave `in` ou o método `index`.

A palavra-chave `in` retorna True se o item está na lista e False caso contrário. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5]
if 3 in my_list:
    print("3 is in the list")
else:
    print("3 is not in the list") # Output: 3 is in the list
```

O método `index` retorna o índice da primeira ocorrência do item na lista. Se o item não estiver na lista, ele gera um `ValueError`. Aqui está um exemplo:

```python3
my_list = ["apple", "banana", "cherry"]
index = my_list.index("banana")
print(index)  # Output: 1
```

## Mapeamento de Lista

Em Python, `map()` é uma função integrada que aplica uma função a cada elemento de um iterável (como uma lista, tupla ou conjunto) e retorna um novo iterável com os valores transformados.

Aqui está um exemplo de como usar `map()` para aplicar uma função a cada elemento de uma lista:

```python3
# Define a function to apply to each element of the list
def double(x):
    return x * 2

# Define a list
my_list = [1, 2, 3, 4, 5]

# Use map() to apply the function to each element of the list
new_list = map(double, my_list)

# Convert the result to a list and print it
print(list(new_list))
# Output: [2, 4, 6, 8, 10]
```

## Dividindo Elementos de uma Lista

Você pode dividir uma lista em Python usando o método `split()`, que está disponível para strings, mas não para listas. No entanto, você pode usar o fatiamento para extrair uma parte de uma lista e criar uma nova lista com esses elementos.

Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
split_index = 5

list_a = my_list[:split_index]
list_b = my_list[split_index:]

print(list_a) # Output: [1, 2, 3, 4, 5]
print(list_b) # Output: [6, 7, 8, 9, 10]
```

## Removendo Duplicatas de Lista em Python

Para remover duplicatas de uma lista em Python, você pode usar a função integrada `set()`. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 3, 4, 5, 5, 5, 6]
new_list = list(set(my_list))
print(new_list) # Output: [1, 2, 3, 4, 5, 6]
```
