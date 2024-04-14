> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/tuple/convert

Às vezes é necessário converter uma tupla para um tipo de dado diferente, como uma lista ou uma string, para realizar certas operações. Em alguns casos, precisamos converter alguns tipos de dados para tupla. O Python oferece funções integradas para a conversão de tuplas, que podem ser utilizadas para manipular e processar dados armazenados em tuplas. Vamos explorar as diversas formas de conversão e os casos mais comuns.

## Tupla vs Lista em Python

No Python, tanto tuplas quanto listas são usadas para armazenar coleções de itens, mas existem algumas diferenças chave entre elas. Aqui estão algumas das principais diferenças:

- **Mutabilidade**: Listas são mutáveis, o que significa que seu conteúdo pode ser alterado, adicionado ou removido após serem criadas. Tuplas, por outro lado, são imutáveis, o que significa que seu conteúdo não pode ser alterado uma vez que são criadas.
- **Sintaxe**: Listas são criadas usando colchetes [] e tuplas são criadas usando parênteses ().
- **Uso**: Listas são tipicamente usadas para coleções de itens relacionados que precisam ser alterados ou atualizados ao longo do tempo, enquanto tuplas são frequentemente usadas para coleções de itens relacionados que devem ser somente leitura ou são estáticos.
- **Desempenho**: Tuplas são geralmente mais rápidas que listas, uma vez que são menores e sua imutabilidade permite algumas otimizações no uso de memória e desempenho.

## Conversão de Tupla para Lista em Python

Converter uma tupla em uma lista é uma operação comum no Python, especialmente quando queremos modificar ou adicionar novos elementos à sequência. Como já mencionamos, as tuplas são imutáveis, o que significa que não podemos alterar seu conteúdo uma vez que são criadas. No entanto, as listas são mutáveis, e podemos modificar seu conteúdo adicionando, removendo ou alterando elementos. Para converter uma tupla em uma lista, podemos usar a função integrada `list()`.

Aqui está um exemplo:

```python3
# Define a tuple
my_tuple = (1, 2, 3, 4, 5)

# Convert the tuple to a list
my_list = list(my_tuple)

# Print the result
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Conversão de Lista para Tupla

Podemos converter uma lista de volta para uma tupla usando a função integrada `tuple()`. Isso pode ser útil quando precisamos converter uma lista mutável de volta para uma tupla imutável.

Aqui está um exemplo:

```python3
# Define a list
my_list = [1, 2, 3, 4, 5]

# Convert the list to a tuple
my_tuple = tuple(my_list)

# Print the result
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Conversão de Tupla para String em Python

Você pode converter uma tupla Python em uma string usando o método `join()`. Aqui está um exemplo:

```python3
my_tuple = ('apple', 'banana', 'cherry')
my_string = ', '.join(my_tuple)
print(my_string) # Output: apple, banana, cherry
```

> Nota: o método `join()` só funciona com strings. Se a tupla contiver elementos que não sejam strings, você precisa convertê-los primeiro em strings usando a função `str()`.

## Conversão de String para Tupla

Para converter uma string de volta para uma tupla em Python, você pode usar o método `split()`. Aqui está um exemplo:

```python3
my_string = 'apple, banana, cherry'
my_tuple = tuple(my_string.split(', '))
print(my_tuple) # Output: ('apple', 'banana', 'cherry')
```

> Nota: o método `split()` retorna uma lista de strings. Se a tupla original continha elementos que não são strings, você precisa convertê-los de volta para seus tipos de dados originais após criar a tupla.

## Conversão de Tupla para Dicionário em Python

Para converter uma tupla Python em um dicionário, você pode usar a função construtora `dict()`. Aqui está um exemplo:

```python3
my_tuple = ('a', 1), ('b', 2), ('c', 3)
my_dict = dict(my_tuple)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Conversão de Dicionário para Tupla

Para converter um dicionário Python de volta para uma tupla, você pode usar o método `items()` do objeto dicionário para obter uma lista de pares (chave, valor), e então converter essa lista em uma tupla usando a função construtora `tuple()`. Aqui está um exemplo:

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}
my_tuple = tuple(my_dict.items())
print(my_tuple) # Output: (('a', 1), ('b', 2), ('c', 3))
```
