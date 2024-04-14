> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/set/convert

A conversão de conjuntos em Python é o processo de transformar um tipo de conjunto em outro, como converter uma lista em um conjunto ou vice-versa. Entender como realizar conversões de conjuntos pode ser útil em vários cenários, incluindo análise de dados, filtragem e ordenação.

## Lista vs Conjunto em Python

Em Python, tanto listas quanto conjuntos são usados para armazenar coleções de elementos, mas eles têm características diferentes que os tornam úteis para situações distintas.

Uma lista é uma coleção ordenada de elementos que podem ser acessados pelo seu índice. Listas permitem elementos duplicados, e elementos podem ser adicionados, removidos e modificados em qualquer posição. Listas são definidas usando colchetes [].

Exemplo:

```python
my_list = [1, 2, 3, 4, 5]
```

Um conjunto, por outro lado, é uma coleção não ordenada de elementos únicos. Conjuntos não permitem elementos duplicados, e elementos podem ser adicionados e removidos, mas não modificados. Conjuntos são definidos usando chaves {}.

Exemplo:

```python
my_set = {1, 2, 3, 4, 5}
```

Os conjuntos são úteis quando você precisa verificar rapidamente se um elemento está na coleção ou não. Eles também são úteis quando você precisa realizar operações de conjunto como união, interseção e diferença.

Listas, por outro lado, são úteis quando você precisa manter a ordem dos elementos e quando precisa acessar elementos pelo seu índice.

Em resumo, use uma lista quando você precisa manter a ordem dos elementos e permitir duplicatas, e use um conjunto quando você precisa armazenar elementos únicos e verificar rapidamente se um elemento está na coleção ou não.

## Conversão de Conjunto para Lista em Python

Converter um conjunto em uma lista pode ajudar a preservar a ordem dos elementos e torná-los acessíveis por índice.

Em Python, a conversão de um conjunto para uma lista pode ser feita usando a função integrada `list()`. Aqui está um exemplo de como obter uma lista a partir de um conjunto:

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list
my_list = list(my_set)

# Print the list
print(my_list) # Output: [1, 2, 3, 4, 5]
```

Observe que a ordem dos elementos no conjunto original é preservada na lista resultante. Se a ordem dos elementos não for importante, você também pode converter um conjunto em uma lista usando diretamente a função `list()` no próprio conjunto, assim:

```python3
# Define a set
my_set = {1, 2, 3, 4, 5}

# Convert set to list directly
my_list = list({1, 2, 3, 4, 5})

# Print the list
print(my_list)
```

Isto produzirá a mesma saída que o exemplo anterior.

## Conversão de Lista para Conjunto em Python

Em Python, a conversão de lista para conjunto pode ser realizada usando a função integrada `set()`. Aqui está um exemplo de obtenção de conjunto a partir de lista:

```python
my_list = [1, 2, 3, 3, 4, 5]
my_set = set(my_list)
print(my_set) # Output: {1, 2, 3, 4, 5}
```

Como você vê, é bem fácil converter uma lista para um conjunto em Python.

## Conjunto de Listas em Python

Em Python, você pode criar um conjunto de listas usando a função integrada `set()`. No entanto, lembre-se de que conjuntos são coleções desordenadas de elementos únicos, então a ordem das listas dentro do conjunto não pode ser garantida.

Aqui está um exemplo de como criar um conjunto de listas:

```python3
set_of_lists = set()

list1 = [1, 2, 3]
list2 = [4, 5, 6]
list3 = [1, 2, 3] # a duplicate of list1

set_of_lists.add(tuple(list1))
set_of_lists.add(tuple(list2))
set_of_lists.add(tuple(list3)) # won't add to set since it's a duplicate of list1

print(set_of_lists) # {(1, 2, 3), (4, 5, 6)}
```

## Adição de Lista a Conjunto

Para adicionar uma lista a um conjunto em Python, você pode usar o método `update()` ou o operador `|`.

Aqui está um exemplo usando o método `update()`:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set.update(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```

E aqui está um exemplo usando o operador `|`:

```python3
my_set = {1, 2, 3}
my_list = [4, 5, 6]
my_set |= set(my_list)
print(my_set)  # output: {1, 2, 3, 4, 5, 6}
```
