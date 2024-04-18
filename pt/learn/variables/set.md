> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/set

Conjunto Python é uma estrutura de dados que permite trabalhar com coleções de elementos únicos. Conjuntos são úteis para tarefas como remover duplicatas de uma lista, testar a pertinência de um elemento e realizar operações de conjunto, como união e interseção. Em Python, os conjuntos são mutáveis e iteráveis, tornando-os versáteis e fáceis de trabalhar. Vamos explorar os conceitos básicos dos conjuntos Python, bem como os principais métodos de conjuntos Python para ajudá-lo a aproveitar ao máximo essa estrutura de dados em seus projetos de programação.

## O que é um Conjunto?

Um conjunto é uma coleção de elementos únicos, muito parecido com um conjunto matemático. Um conjunto é uma coleção desordenada e mutável de elementos distintos delimitados por chaves {}. Os conjuntos podem conter quaisquer elementos que possam ser "hashados", como inteiros, floats, strings e até outros conjuntos.

Por exemplo, você pode criar um conjunto de inteiros da seguinte forma:

```python
my_set = {1, 2, 3, 4, 5}
```

Ou, você pode criar um conjunto de strings da seguinte forma:

```python
my_set = {'apple', 'banana', 'orange', 'grape'}
```

Você pode realizar várias operações em conjuntos, como adicionar ou remover elementos, encontrar a interseção ou união de conjuntos, ou verificar se um elemento é membro de um conjunto.

Você pode usar as operações e métodos de conjuntos do Python para manipulação de dados. Aqui estão alguns dos mais comumente usados:

### Operações de Conjunto

- `union()` ou `|`: Retorna um conjunto contendo todos os elementos de ambos os conjuntos (ou outros objetos iteráveis), com duplicatas removidas.
Exemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.union(set2); print(set3)` irá saída `{1, 2, 3, 4, 5}`.
- `intersection()` ou `&`: Retorna um conjunto contendo apenas os elementos que são comuns a ambos os conjuntos.
Exemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.intersection(set2); print(set3)` irá saída `{3}`.
- `difference()` ou `-`: Retorna um conjunto contendo os elementos que estão no primeiro conjunto, mas não no segundo.
Exemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.difference(set2); print(set3)` irá saída `{1, 2}`.
- `symmetric_difference()` ou `^`: Retorna um conjunto contendo os elementos que estão em um dos conjuntos, mas não em ambos.
Exemplo: `set1 = {1, 2, 3}; set2 = {3, 4, 5}; set3 = set1.symmetric_difference(set2); print(set3)` irá saída `{1, 2, 4, 5}`.
- `issubset()`: Retorna True se todos os elementos de um conjunto estão contidos no outro conjunto.
Exemplo: `set1 = {1, 2, 3}; set2 = {1, 2}; print(set2.issubset(set1))` irá saída `True`.
- `issuperset()`: Retorna True se um conjunto contém todos os elementos de outro conjunto.
Exemplo: `set1 = {1, 2, 3}; set2 = {1, 2}; print(set1.issuperset(set2))` irá saída `True`.

### Métodos de Conjunto

- `add()`: Adiciona um elemento ao conjunto. Se o elemento já existir no conjunto, o conjunto permanece inalterado.
Exemplo: `my_set = {1, 2, 3}; my_set.add(4); print(my_set)` irá saída `{1, 2, 3, 4}`.
- `remove()`: Remove o elemento especificado do conjunto. Gera um KeyError se o elemento não estiver no conjunto.
Exemplo: `my_set = {1, 2, 3}; my_set.remove(2); print(my_set)` irá saída `{1, 3}`.
- `discard()`: Remove o elemento especificado do conjunto. Não gera um erro se o elemento não estiver no conjunto.
Exemplo: `my_set = {1, 2, 3}; my_set.discard(2); print(my_set)` irá saída `{1, 3}`.
- `pop()`: Remove e retorna um elemento arbitrário do conjunto. Gera um KeyError se o conjunto estiver vazio.
Exemplo: `my_set = {1, 2, 3}; x = my_set.pop(); print(my_set, x)` irá saída `{2, 3}, 1`.
- `clear()`: Remove todos os elementos do conjunto.
Exemplo: `my_set = {1, 2, 3}; my_set.clear(); print(my_set)` irá `saída set()`.

A seguir, vamos olhar para os mais comumente usados em detalhe.

## Criando Conjuntos no Python

No Python, um conjunto vazio pode ser criado usando a função `set()`. Aqui está um exemplo:

```python
empty_set = set()
```

Para inicializar um conjunto com valores, você pode usar um literal de conjunto. Aqui está um exemplo de conjunto:

```python
my_set = {1, 2, 3}
```

Como mencionado acima, você pode criar um conjunto em Python usando um literal de conjunto ou a função `set()`.

## Como Adicionar a um Conjunto em Python

Em Python, você pode adicionar um elemento a um conjunto usando o método `add()`. Aqui está um exemplo de como adicionar a um conjunto:

```python3
my_set = {1, 2, 3}  # create a set with initial values
my_set.add(4)  # add a new value to the set
print(my_set)  # output: {1, 2, 3, 4}
```

> Nota: objetos do tipo `set` não possuem o método `append()` pois são coleções desordenadas de elementos únicos.

## Removendo um Elemento de um Conjunto

Em Python, o tipo de dados `set` representa uma coleção de elementos únicos. O método `remove` é utilizado para remover um elemento específico de um conjunto.

Aqui está um exemplo de como remover de um conjunto:

```python3
# create a set
my_set = {1, 2, 3, 4, 5}

# remove an element from the set
my_set.remove(3)

print(my_set) # Output: {1, 2, 4, 5}
```

É importante observar que, se o elemento a ser removido não estiver no conjunto, o método `remove` vai gerar uma exceção `KeyError`. Se você quiser evitar isso, pode usar o método `discard`, que remove um elemento do conjunto se ele estiver presente, e não faz nada se o elemento não estiver no conjunto.

Aqui está um exemplo de como usar o método discard em Python:

```python3
# create a set
my_set = {1, 2, 3, 4, 5}

# discard an element from the set
my_set.discard(3)

print(my_set) # Output: {1, 2, 4, 5}

# try to discard an element that is not in the set
my_set.discard(10)

print(my_set) # Output: {1, 2, 4, 5}
```

## Acesso aos Elementos do Conjunto

Conjuntos são coleções desordenadas de elementos únicos. Portanto, eles não suportam indexação por valores inteiros como listas ou tuplas.

Se você precisar acessar um elemento específico em um conjunto, você pode usar a palavra-chave `in` para verificar se o conjunto em python contém um elemento, ou você pode usar o laço `for` para iterar sobre os elementos do conjunto.

Aqui estão alguns exemplos:

```python3
# Creating a set
my_set = {1, 2, 3, 4, 5}

# Checking if an element exists in the set
if 3 in my_set:
    print("3 is in the set")

# Iterating over the elements of the set
for element in my_set:
    print(element)
```

Saída:

```python
3 is in the set
1
2
3
4
5
```

## Comprimento do Conjunto em Python

Em Python, você pode usar a função embutida `len()` para obter o número de elementos em um conjunto.

Por exemplo, considere o seguinte conjunto:

```python3
my_set = {1, 2, 3, 4, 5}
print(len(my_set)) # Output: 5
```

## Ordenando um Conjunto em Python

Conjuntos são coleções não ordenadas de elementos únicos, o que significa que a ordem dos elementos não é preservada em um conjunto, portanto, o resultado final não pode ser um conjunto ordenado.

Em Python, você pode ordenar um conjunto usando a função interna `sorted()` ou o método `sort()`. Assim, usando este método, convertemos um conjunto em uma lista.

Usando a função `sorted()`:

```python3
my_set = {4, 1, 3, 2, 5}
sorted_set = sorted(my_set)
print(sorted_set)   # Output: [1, 2, 3, 4, 5]
```

Quando `sorted()` é aplicado a um conjunto, ele retorna uma nova lista ordenada contendo todos os elementos do conjunto original.

Usando o método `sort()`:

```python3
my_set = {4, 1, 3, 2, 5}
sorted_list = list(my_set)
sorted_list.sort()
sorted_set = set(sorted_list)
print(sorted_set)   # Output: {1, 2, 3, 4, 5}
```

> Nota: o método `sort()` está disponível apenas para listas e não pode ser usado diretamente com um conjunto. Então, você precisa primeiro converter o conjunto em uma lista, usar o método `sort()` e depois converter de volta para um conjunto.

Em ambos os casos, o conjunto resultante será ordenado em ordem ascendente. Se você quiser ordenar em ordem decrescente de um conjunto, você pode usar o argumento `reverse=True` na função `sorted()` ou o parâmetro reverse do método `sort()`.

```python3
my_set = {4, 1, 3, 2, 5}
sorted_set_desc = sorted(my_set, reverse=True)
print(sorted_set_desc)   # Output: [5, 4, 3, 2, 1]

my_set = {4, 1, 3, 2, 5}
sorted_list_desc = list(my_set)
sorted_list_desc.sort(reverse=True)
sorted_set_desc = set(sorted_list_desc)
print(sorted_set_desc)   # Output: {5, 4, 3, 2, 1}
```

## O Método `update` para Set em Python

O método `update` de um conjunto permite adicionar vários elementos a um conjunto de uma só vez.

Aqui está a sintaxe para usar o método update:

```python
set.update(iterable)
```

O argumento `iterable` pode ser qualquer objeto iterável, como uma lista, tupla, conjunto ou até mesmo uma string. O método `update` adiciona todos os elementos no `iterable` ao conjunto, enquanto remove quaisquer duplicatas.

Aqui está um exemplo que demonstra o método update:

```python
>>> s1 = {1, 2, 3}
>>> s2 = {3, 4, 5}
>>> s1.update(s2)
>>> print(s1)
{1, 2, 3, 4, 5}
```

## Interseção de Conjuntos em Python

Em Python, interseção de conjuntos pode ser encontrada usando o método `intersection()`.

Vamos ver como obter a interseção de dois conjuntos em Python:

```python3
set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}
set3 = {4, 5, 6, 7}

intersection_set = set1.intersection(set2, set3)

print(intersection_set)  # Output: {4}
```

## Diferença de Conjuntos em Python

A diferença de conjuntos em Python pode ser encontrada usando o operador "-" ou o método `difference()`. Aqui está um exemplo:

```python3
set1 = {1, 2, 3, 4, 5}
set2 = {3, 4, 5, 6, 7}

# Using the "-" operator
diff = set1 - set2
print(diff) # Output: {1, 2}

# Using the `difference()` method
diff = set1.difference(set2)
print(diff) # Output: {1, 2}
```

## União de Conjuntos em Python

A união de conjuntos em Python pode ser obtida usando o método `union()` ou o operador pipe (`|`).

Aqui está um exemplo de como usar o método `union()`:

```python3
set1 = {1, 2, 3}
set2 = {2, 3, 4}
set3 = {3, 4, 5}

union_set = set1.union(set2, set3)
print(union_set)  # Output: {1, 2, 3, 4, 5}
```

Alternativamente, podemos usar o operador pipe (`|`) para alcançar o mesmo resultado:

```python3
set1 = {1, 2, 3}
set2 = {2, 3, 4}
set3 = {3, 4, 5}

union_set = set1 | set2 | set3
print(union_set)  # Output: {1, 2, 3, 4, 5}
```

## O Método `pop()`

O método `pop()` no tipo de dados set do Python remove e retorna um elemento arbitrário do conjunto. Se o conjunto estiver vazio, um `KeyError` é gerado.

Aqui está um exemplo de uso:

```python3
my_set = {1, 2, 3, 4}
popped_element = my_set.pop()
print(popped_element)  # output: an arbitrary element from the set, e.g. 1
print(my_set)  # output: the remaining elements in the set, e.g. {2, 3, 4}
```
