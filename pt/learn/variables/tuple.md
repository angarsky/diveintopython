> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/tuple

O que é uma tupla em Python? Uma tupla em Python é uma sequência de valores imutável, semelhante a uma lista. No entanto, as tuplas não podem ser modificadas após sua criação, o que significa que você não pode adicionar, remover ou alterar elementos em uma tupla.

## Criando Tupla em Python

Para criar uma tupla, você pode usar parênteses `()` e separar os elementos com vírgulas `,`.

Aqui está um exemplo de como criar uma tupla em Python com três elementos:

```python
my_tuple = (1, "hello", 3.14)
```

Você também pode criar uma tupla vazia utilizando parênteses vazios ():

```python
empty_tuple = ()
```

Se você deseja criar uma tupla com apenas um elemento, você precisa adicionar uma vírgula após o elemento, pois sem ela, o Python interpretará os parênteses apenas como operadores de agrupamento, e não como uma tupla:

```python
single_tuple = (1,)
```

## Índices de Tupla

Você pode acessar elementos de uma tupla em Python usando indexação, assim como nas listas.

Como já mencionamos, a indexação em Python começa do 0. Isso significa que o primeiro elemento em uma tupla tem um índice de 0, o segundo elemento tem um índice de 1, e assim por diante. Indexação negativa também é suportada, o que significa que o último elemento em uma tupla tem um índice de -1, o penúltimo elemento tem um índice de -2, e assim por diante.

Aqui está um exemplo de acesso a elementos de uma tupla usando indexação:

```python3
my_tuple = ('apple', 'banana', 'cherry')
print(my_tuple[0])   # Output: 'apple'
print(my_tuple[1])   # Output: 'banana'
print(my_tuple[-1])  # Output: 'cherry'
```

## Como Adicionar a uma Tupla em Python

Em Python, tuplas são imutáveis, o que significa que, uma vez criadas, seus elementos não podem ser alterados. No entanto, você pode criar uma nova tupla combinando tuplas existentes e outros elementos. Então, para "adicionar" ou para "inserir" um elemento em uma tupla, você basicamente criaria uma nova tupla que inclui os elementos existentes junto com o novo elemento. Aqui estão algumas maneiras de alcançar isso:

**Usando o operador `+` para criar uma nova tupla**:

```python3
existing_tuple = (1, 2, 3)
new_element = 4

# Concatenate the existing tuple with a new tuple containing the new element
new_tuple = existing_tuple + (new_element,)

print(new_tuple)
```

**Usando o operador de atribuição aumentada `+=`**:

```python3
existing_tuple = (1, 2, 3)
new_element = 4

# Use the += operator to concatenate the existing tuple with a new tuple containing the new element
existing_tuple += (new_element,)

print(existing_tuple)
```

Ambos os métodos criam uma nova tupla combinando os elementos da tupla existente com o novo elemento, efetivamente "anexando" o elemento à tupla. Lembre-se, tuplas são imutáveis, portanto, você está realmente criando uma nova tupla em vez de modificar a original.

## Lista Ordenada de Tuplas

Você pode ordenar uma lista de tuplas em Python usando a função sorted, e passando um argumento de chave que especifica como comparar os elementos em cada tupla. Aqui está um exemplo:

```python3
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the first element in each tuple
sorted_list = sorted(my_list, key=lambda x: x[0])

print(sorted_list) # Output: [(1, 2), (2, 4), (3, 1)]
```

Você também pode ordenar a lista de tuplas em ordem inversa definindo o argumento `reverse` como True:

```python3
# define a list of tuples
my_list = [(1, 2), (3, 1), (2, 4)]

# sort the list by the second element in each tuple in reverse order
sorted_list = sorted(my_list, key=lambda x: x[1], reverse=True)

print(sorted_list) # Output: [(2, 4), (1, 2), (3, 1)]
```

## Tupla Nomeada em Python

Uma tupla nomeada é uma subclasse do tipo de dados tupla embutido que permite que os campos sejam acessados ​​pelo nome, assim como pela posição do índice.

As tuplas nomeadas são criadas usando a função `collections.namedtuple`. Aqui está um exemplo:

```python3
from collections import namedtuple

# create a named tuple with two fields: 'x' and 'y'
Point = namedtuple('Point', ['x', 'y'])

# create an instance of the named tuple
p = Point(1, 2)

# access fields by index
print(p[0])  # prints 1

# access fields by name
print(p.x)   # prints 1
print(p.y)   # prints 2
```

Tuplas nomeadas são semelhantes às tuplas regulares, mas com o benefício adicional de possuírem campos nomeados que podem tornar o código mais legível e autoexplicativo. Elas são imutáveis, como as tuplas regulares, então seus campos não podem ser alterados uma vez que são criados.

## Tupla Dentro de uma Lista em Python

Em alguns casos, precisamos fazer uma lista de tuplas, por exemplo, para agrupar dados relacionados. Então, você pode criar uma lista que contém tuplas usando a seguinte sintaxe:

```python
my_list = [(item1, item2), (item3, item4), (item5, item6)]
```

Cada tupla na lista pode conter vários itens, que podem ser de qualquer tipo de dado, incluindo strings, números e outras tuplas. Aqui está um exemplo de uma lista contendo tuplas com diferentes tipos de dados:

```python
my_list = [("apple", 2), ("orange", 3), ("banana", 4.5), ("grape", ("red", "green"))]
```

Você pode acessar os itens em uma tupla dentro de uma lista usando indexação. Por exemplo, para acessar o segundo item na primeira tupla na lista acima, você pode usar o seguinte código:

```python
print(my_list[0][1])   # Output: 2
```

## Adicionando uma Tupla

Para adicionar uma tupla a uma lista em Python, você pode usar o método `append()`. Aqui está um exemplo:

```python3
my_list = [(1, 2), (3, 4)]
new_tuple = (5, 6)
my_list.append(new_tuple)
print(my_list) # Output: [(1, 2), (3, 4), (5, 6)]
```
