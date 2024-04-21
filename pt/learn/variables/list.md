> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/list

Uma lista em Python é uma coleção de valores ou itens que são ordenados, modificáveis e permitem duplicatas. Listas são uma das estruturas de dados mais comumente usadas em Python.

## Criando uma Lista

Aqui está um exemplo de como criar uma lista em Python:

```python
my_list = [1, 2, 3, 4, 5]
```

Como você pode ver, a criação de lista é um processo relativamente simples. Para criar uma lista vazia, você pode simplesmente usar a seguinte sintaxe:

```python
my_list = []
```

Vamos revisar algumas operações básicas que podem ser realizadas em listas em Python.

## Índices da Lista & Acesso aos Itens

Os índices de uma lista são as posições numéricas dos elementos dentro da lista. O índice do primeiro elemento em uma lista é sempre `0`, o índice do segundo elemento é `1`, e assim por diante. Você pode acessar o elemento em um índice específico usando colchetes e especificando o número do índice.

Aqui está um exemplo de uso de indexação:

```python
my_list = ['apple', 'banana', 'orange']
print(my_list[0])  # output: 'apple'
print(my_list[1])  # output: 'banana'
print(my_list[2])  # output: 'orange'
```

Se o índice da lista estiver fora do intervalo, o Python retornará um erro.

## Mudando ou Substituindo um Item de uma Lista

```python3
my_list = [1, 2, 3, 4, 5]
my_list[0] = 0
print(my_list) # Output: [0, 2, 3, 4, 5]
```

## Adicionando Itens à Lista em Python

Há vários métodos que podem ajudá-lo a adicionar um item a uma lista

### O Método `insert()`

Aqui está um exemplo que mostra como adicionar um elemento a uma lista usando o método `insert()`:

```python3
my_list = [1, 2, 3, 4]
my_list.insert(2, "hello")
print(my_list)  # [1, 2, 'hello', 3, 4]
```

### O Método `append()`

Para inserir um elemento no final de uma lista Python, você pode usar o método `append()`. Aqui está um exemplo:

```python3
my_list = [1, 2, 3, 4]
my_list.append(5)
print(my_list)  # [1, 2, 3, 4, 5]
```

O método `insert()` pode ser usado para adicionar um elemento em uma lista em um índice especificado. A sintaxe para usar o método `insert()` é a seguinte:

```python
list.insert(index, element)
```

### O método `extend()`

O método `extend()` em Python é usado para adicionar elementos de um iterável (como uma lista, tupla, conjunto ou string) ao final de uma lista existente.

Aqui está um exemplo:

```python3
# Create a list
my_list = [1, 2, 3]

# Append elements from another list to my_list using extend()
other_list = [4, 5, 6]
my_list.extend(other_list)

print(my_list)
# Output: [1, 2, 3, 4, 5, 6]
```

Observe que o método `extend()` modifica a lista original no local e retorna `None`. Ele não cria uma nova lista.

## Removendo um Item de uma Lista

Para remover um item de uma lista no Python, você pode usar o método `remove()` do objeto lista. Aqui está um exemplo:

```python
my_list = [1, 2, 3, 4, 5]
my_list.remove(3)
print(my_list) # Output: [1, 2, 4, 5]
```

Existe também a declaração `del`, que pode ser usada para remover um item de uma lista. Aqui está um exemplo de exclusão de item:

```python3
my_list = [1, 2, 3, 4, 5]
del my_list[2]
print(my_list)
```

Neste exemplo, temos uma lista `my_list` com cinco elementos. Queremos remover o elemento com índice 2, que tem o valor 3. Usamos a instrução `del` e especificamos o índice do item que queremos remover. Após remover o elemento, imprimimos a lista atualizada.

A saída deste código será:

```python
[1, 2, 4, 5]
```

Portanto, se você deseja remover o primeiro elemento de uma lista em Python, pode usar a instrução `del` que revisamos antes, ou o método `pop()`. Aqui estão exemplos do método pop():

```python3
my_list = [1, 2, 3, 4, 5]
my_list.pop(0)
print(my_list) # Output: [2, 3, 4, 5]
```

Vamos também ver no exemplo como remover `None` de uma lista em Python usando uma compreensão de lista:

```python3
original_list = [1, None, "hello", None, 5.7, None, "world"]
new_list = [item for item in original_list if item is not None]
print(new_list) # Output: [1, 'hello', 5.7, 'world']
```

## Como Ordenar uma Lista em Python

Você pode ordenar uma lista em Python usando o método `sort()`, que ordena os elementos da lista em ordem ascendente por padrão. Aqui está um exemplo:

```python
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort()

print(my_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

Se você quiser ordenar a lista em ordem decrescente, pode passar o argumento `reverse=True` para o método `sort()`:

```python3
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

my_list.sort(reverse=True)

print(my_list) # Output: [9, 6, 5, 5, 5, 4, 3, 3, 2, 1, 1]
```

Você também pode usar a função interna `sorted()` para ordenar uma lista, que retorna uma nova lista ordenada e deixa a lista original inalterada:

```python3
my_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]

sorted_list = sorted(my_list)

print(sorted_list) # Output: [1, 1, 2, 3, 3, 4, 5, 5, 5, 6, 9]
```

## Copiando Listas

Para copiar uma lista em Python, você pode usar o operador de fatiamento ou o método `copy()`. Aqui está um exemplo usando ambos os métodos:

```python3
# Using the slice operator
original_list = [1, 2, 3, 4, 5]
new_list = original_list[:]
print(new_list)  # Output: [1, 2, 3, 4, 5]

# Using the copy() method
original_list = [1, 2, 3, 4, 5]
new_list = original_list.copy()
print(new_list)  # Output: [1, 2, 3, 4, 5]
```

Ambos os métodos criam um novo objeto de lista que contém os mesmos elementos que a lista original. No entanto, é importante notar que se a lista original contiver objetos mutáveis (por exemplo, outras listas ou dicionários), a cópia será apenas rasa, o que significa que a nova lista conterá referências aos mesmos objetos mutáveis que a lista original, em vez de novas cópias desses objetos. Nesses casos, você pode precisar usar uma cópia profunda para garantir que todos os objetos aninhados também sejam copiados.

## Limpando Listas

Em Python, `list.clear()` é um método embutido que remove todos os itens de uma lista.

Aqui está um exemplo de como limpar uma lista:

```python3
my_list = [1, 2, 3, 4]
my_list.clear()
print(my_list)  # Output: []
```

## Como Deletar uma Lista

Em Python, você pode deletar uma lista usando a palavra-chave `del`. Aqui está um exemplo:

```python
my_list = [1, 2, 3, 4, 5]
del my_list
```
