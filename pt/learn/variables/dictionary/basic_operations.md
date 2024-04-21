> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/dictionary/basic-operations

Dicionários são uma estrutura de dados poderosa e flexível que permite armazenar e manipular pares chave-valor. Vamos revisar algumas operações comuns e métodos que você pode executar em dicionários no Python.

## Adicionando um Elemento a um Dicionário

Existem várias maneiras de adicionar itens a um dicionário.

### Atribuição de Valor

Para adicionar um par chave-valor a um dicionário Python, você pode usar a seguinte sintaxe:

```python
my_dict[key] = value
```

Aqui, `my_dict` é o dicionário ao qual você deseja adicionar um elemento, `key` é a chave para o novo elemento, e `value` é o valor para o novo elemento.

Por exemplo, se você tem um dicionário vazio e quer adicionar um novo item a ele com a chave `"name"` e o valor `"John"`, você pode fazer o seguinte:

```python3
my_dict = {}
my_dict["name"] = "John"
print(my_dict) # Output: {'name': 'John'}.
```

Se a chave já existir no dicionário, seu valor será atualizado para o novo valor. Se a chave não existir, um novo par chave-valor será adicionado ao dicionário.

### O Método `update()`

O método `update()` recebe outro dicionário como argumento e adiciona seus pares chave-valor ao dicionário original. Se uma chave já existir no dicionário original, seu valor será atualizado para o valor do novo dicionário.

Aqui está um exemplo:

```python
my_dict = {'a': 1, 'b': 2}
new_dict = {'c': 3, 'd': 4}

my_dict.update(new_dict)

print(my_dict)  # Output: {'a': 1, 'b': 2, 'c': 3, 'd': 4}
```

> Nota: Não existe um método `append()` integrado para dicionários, pois dicionários não possuem uma ordem inerente. Então você não pode adicionar um elemento usando o método `append()`.

## Deletando um Elemento de um Dicionário

Para deletar um item de um dicionário em Python, você pode usar a palavra-chave `del` junto com a chave do dicionário.

Aqui está um exemplo de como remover uma chave do dicionário junto com seu valor:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# delete an element with key 'b'
del my_dict['b']

# print the updated dictionary
print(my_dict) # Output: {'a': 1, 'c': 3}
```

No exemplo acima, a palavra-chave `del` é usada para deletar o par chave-valor com chave `'b'` do dicionário `my_dict`. O dicionário resultante contém apenas os elementos com chaves `'a'` e `'c'`.

## Iteração ou Looping em Dicionários em Python

Vamos mostrar como iterar sobre um dicionário em Python usando um loop `for`. Aqui estão algumas maneiras de iterar:

- Iterar sobre as chaves:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the keys and print them
for key in my_dict:
    print(key)
```

Saída:

```python
a
b
c
```

- Iterar sobre os valores:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the values and print them
for value in my_dict.values():
    print(value)
```

Saída:

```python
1
2
3
```

- Iterar sobre os pares chave-valor:

```python3
# create a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}

# iterate over the key-value pairs and print them
for key, value in my_dict.items():
    print(key, value)
```

Saída:

```python
a 1
b 2
c 3
```

No terceiro exemplo, usamos o método `items()` do dicionário para obter uma lista dos pares chave-valor. Em seguida, usamos a desempacotamento de tuplas para extrair a chave e o valor de cada par e imprimi-los.

Usamos `for` nos nossos exemplos, mas, claro, você também pode usar `while` para percorrer um dicionário em Python.

## Mesclando Dicionários em Python

Você pode mesclar dois dicionários usando o método `update()` que mencionamos anteriormente. O método `update()` adiciona os pares chave-valor de um dicionário a outro dicionário. Se uma chave já existir no dicionário alvo, o valor correspondente será atualizado com o novo valor.

Aqui está um exemplo:

```python
dict1 = {'a': 1, 'b': 2}
dict2 = {'b': 3, 'c': 4}

dict1.update(dict2)

print(dict1) # Output: {'a': 1, 'b': 3, 'c': 4}
```

Neste exemplo, temos dois dicionários `dict1` e `dict2`. Utilizamos o método `update()` para mesclar `dict2` em `dict1`. O dicionário resultante é `{'a': 1, 'b': 3, 'c': 4}`.

> Nota: quando o método `update()` é chamado, ele modifica o dicionário no qual é chamado. Se você não deseja modificar o dicionário original, você pode criar um novo dicionário e usar o método `update()` para mesclar os dois dicionários.

## Dicionário Ordenado ou Classificado

No Python 3.7 e versões posteriores, os dicionários garantem manter a ordem de seus itens conforme foram adicionados. Isso significa que os itens em um dicionário serão iterados na mesma ordem em que foram inseridos.

Antes do Python 3.7, os dicionários não preservavam a ordem de seus itens, e iterar sobre um dicionário retornaria seus itens em uma ordem arbitrária.

Você pode obter um dicionário ordenado por suas chaves ou valores. A ordenação de dicionários pode ser feita usando a função embutida `sorted()`, que retorna uma lista das chaves ou valores do dicionário em ordem ordenada. Por exemplo:

```python
my_dict = {'c': 3, 'a': 1, 'b': 2}

# sort by keys
sorted_dict_by_keys = {k: my_dict[k] for k in sorted(my_dict)}

# sort by values
sorted_dict_by_values = {k: v for k, v in sorted(my_dict.items(), key=lambda item: item[1])}
```

Observe que no exemplo acima, o dicionário original `my_dict` não é modificado, e dois novos dicionários `sorted_dict_by_keys` e `sorted_dict_by_values` são criados em vez disso.

## Imprimindo um Dicionário

Para imprimir um dicionário em Python, você pode usar a função integrada `print()`. Existem diferentes maneiras de imprimir um dicionário, dependendo de como você deseja formatar a saída.

Aqui está um exemplo de como imprimir um dicionário:

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print the dictionary using the print() function
print(my_dict)
```

Isso irá gerar o seguinte:

```python
{'apple': 1, 'pineapple': 2, 'orange': 3}
```

Se você quiser imprimir cada par de chave-valor do dicionário em uma linha separada, você pode usar um loop `for` para iterar sobre o dicionário e imprimir cada item:

```python
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# Print each key-value pair on a separate line
for key, value in my_dict.items():
    print(key, ":", value)
```

Isso produzirá o seguinte:

```python
apple : 1
pineapple : 2
orange : 3
```

## Conversão de dicionário para JSON em Python

Você pode usar o módulo `json` embutido em Python para converter um dicionário para o formato JSON.

Aqui está um exemplo de trecho de código:

```python3
import json

# sample dictionary
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# convert dictionary to JSON
json_obj = json.dumps(my_dict)

# print the JSON object
print(json_obj)
```

Neste exemplo, a função `json.dumps()` é utilizada para converter o dicionário `my_dict` em um objeto JSON `json_obj`. A função `print()` é utilizada para exibir o objeto JSON no console.

Saída:

```python
{"name": "John", "age": 30, "city": "New York"}
```

Você também pode salvar o objeto JSON em um arquivo usando a função `json.dump()`. Aqui está um exemplo:

```python
import json

# sample dictionary
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# save dictionary to a JSON file
with open('data.json', 'w') as f:
    json.dump(my_dict, f)
```

Neste exemplo, a função `json.dump()` é usada para salvar o dicionário `my_dict` em um arquivo chamado `data.json`. O arquivo é aberto no modo de escrita usando a instrução with.
