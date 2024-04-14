> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/tuple/basic-operations

Mesmo que as tuplas sejam imutáveis, elas suportam várias operações como indexação, fatiamento e concatenação que podem ser realizadas nelas. Neste artigo, vamos explorar as diferentes operações que podem ser realizadas em tuplas em Python e sua sintaxe.

## Ordenando Lista de Tuplas em Python

Tuplas podem ser ordenadas usando a função embutida `sorted()` ou o método `sort()`. Aqui está um exemplo de ordenação de tuplas baseado no primeiro elemento:

```python3
tuples = [(3, 'apple'), (1, 'orange'), (2, 'banana')]
sorted_tuples = sorted(tuples, key=lambda x: x[0])
print(sorted_tuples)  # Output: [(1, 'orange'), (2, 'banana'), (3, 'apple')]
```

Alternativamente, você pode usar o método `sort()` na lista de tuplas, assim:

```python3
tuples = [(3, 'apple'), (1, 'orange'), (2, 'banana')]
tuples.sort(key=lambda x: x[0])
print(tuples)  # Output: [(1, 'orange'), (2, 'banana'), (3, 'apple')]
```

O método `sort()` funciona de maneira semelhante a `sorted()`, mas ordena a lista no local em vez de retornar uma nova lista ordenada.

## Comparando Tuplas

Para comparar tuplas em Python, você pode comparar seus elementos um a um de forma pareada até que uma diferença seja encontrada, ou até que todos os elementos tenham sido comparados com sucesso.

Aqui está um exemplo de código que compara duas tuplas:

```python3
tuple1 = (1, 2, 3)
tuple2 = (1, 2, 4)

if tuple1 == tuple2:
    print("The two tuples are equal")
else:
    print("The two tuples are not equal")
```

## Indexação de Tuplas em Python

Tuplas podem ser indexadas usando colchetes [] e um número de índice. O número de índice começa em 0 para o primeiro elemento e aumenta em 1 para cada elemento subsequente. Por exemplo, considere a seguinte tupla:

```python
my_tuple = (10, 20, 30, 40, 50)
```

Para acessar o primeiro elemento da tupla, você usaria o índice 0 assim:

```python
print(my_tuple[0])   # Output: 10
```

Para acessar o terceiro elemento da tupla, você usaria o índice 2 assim:

```python
print(my_tuple[2])   # Output: 30
```

## Fatiamento de Tuplas

Uma tupla é uma coleção ordenada e imutável de elementos, e você pode usar o fatiamento para extrair uma parte da tupla.

O fatiamento de tuplas usa a sintaxe `tuple[start:end:step]` para especificar uma faixa de elementos a serem extraídos da tupla. O parâmetro start é o índice do primeiro elemento a ser incluído no fatiamento (inclusivo), end é o índice do último elemento a ser incluído no fatiamento (exclusivo), e step é o incremento entre os índices.

Aqui está um exemplo:

```python3
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[1:4])  # Output: (2, 3, 4)
```

Você também pode usar indexação negativa para fatiar uma tupla a partir do final. Por exemplo:

```python
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[-3:-1])  # Output: (3, 4)
```

Se você não especificar nenhum dos parâmetros, o Python usa os valores padrão: start=0, end=len(tuple) e step=1. Por exemplo:

```python
my_tuple = (1, 2, 3, 4, 5)
print(my_tuple[:3])  # Output: (1, 2, 3)
```

## Retornando uma Tupla

Você pode usar uma tupla para retornar múltiplos valores de uma função.

Aqui está um exemplo de uma função que retorna uma tupla:

```python
def calculate_statistics(numbers):
    total = sum(numbers)
    count = len(numbers)
    average = total / count
    return total, count, average
```

## Compreensão de Tuplas em Python

Compreensão de tuplas é um recurso em Python que permite criar uma nova tupla a partir de um iterável existente, aplicando uma transformação a cada elemento do iterável.

A sintaxe para a compreensão de tuplas é semelhante à compreensão de listas, exceto que o resultado é colocado entre parênteses em vez de colchetes. Aqui está um exemplo:

```python3
numbers = (1, 2, 3, 4, 5)
squares = tuple(x ** 2 for x in numbers)
print(squares)  # Output: (1, 4, 9, 16, 25)
```

A compreensão de tuplas também pode incluir expressões condicionais, o que permite filtrar elementos com base em alguma condição. Aqui está um exemplo:

```python3
numbers = (1, 2, 3, 4, 5)
even_squares = tuple(x ** 2 for x in numbers if x % 2 == 0)
print(even_squares)  # Output: (4, 16)
```

## Comprimento de Tupla em Python

Você pode encontrar o comprimento de uma tupla usando a função integrada `len()`.

Por exemplo, suponha que você tenha uma tupla chamada `my_tuple`:

```python
my_tuple = (1, 2, 3, 4, 5)
print(len(my_tuple)) # Output: 5
```

## Percorrendo uma Tupla

Para percorrer uma tupla em Python, você pode usar um laço `for`. Aqui está um exemplo:

```python
my_tuple = (1, 2, 3, 4, 5)
for item in my_tuple:
    print(item)
```

Se você também precisar do índice de cada item na tupla, você pode usar a função `enumerate()`:

```python3
my_tuple = (1, 2, 3, 4, 5)
for index, item in enumerate(my_tuple):
    print(index, item)
```
