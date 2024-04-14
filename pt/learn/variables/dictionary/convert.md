> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/dictionary/convert

Em Python, os dicionários são uma das estruturas de dados mais usadas, pois permitem pesquisas rápidas e eficientes de valores com base em chaves. Embora os dicionários sejam normalmente criados manualmente no código Python, muitas vezes é útil converter dados de outros formatos, como listas ou JSON, em dicionários. Vamos rever os exemplos de conversão

## Criação de dicionário usando variáveis

Vamos ver o exemplo de como converter variáveis num dicionário em Python:

```python3
# define variables
name = "John"
age = 25
gender = "male"

# create dictionary
my_dict = {
    "name": name,
    "age": age,
    "gender": gender
}

# print dictionary
print(my_dict)
```

Neste exemplo, definimos três variáveis: `name`, `age` e `gender`. Depois, criamos um dicionário chamado `my_dict` e atribuímos cada variável a uma chave no dicionário. Por fim, imprimimos o dicionário para verificar se ele contém os pares chave-valor corretos. A saída deve ser:

```python
{'name': 'John', 'age': 25, 'gender': 'male'}
```

## Conversão de Lista para Dicionário

Para converter uma lista em um dicionário em Python, você pode usar a função construtora `dict()`. A lista deve conter tuplas onde cada tupla contém um par chave-valor. Aqui está um exemplo:

```python3
my_list = [('a', 1), ('b', 2), ('c', 3)]
my_dict = dict(my_list)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

Neste exemplo, a lista `my_list` contém três tuplas, cada uma das quais representa um par chave-valor. A função construtora `dict()` é usada para converter a lista em um dicionário, e o dicionário resultante é armazenado na variável `my_dict`. A saída mostra o conteúdo do dicionário resultante.

## Conversão de String para Dicionário

Você pode converter uma string para um dicionário em Python usando o módulo `json`, que já vem integrado ao Python.

Aqui está um exemplo:

```python3
import json

# Sample string
string = '{"name": "John", "age": 30, "city": "New York"}'

# Convert string to dictionary
dictionary = json.loads(string)

# Print the dictionary
print(dictionary)
```

Saída:

```python
{'name': 'John', 'age': 30, 'city': 'New York'}
```

Neste exemplo, o método `json.loads()` é usado para converter a string em um dicionário. O dicionário resultante é armazenado na variável `dictionary` e em seguida impresso.

## Conversão de Tupla para Dicionário

Em Python, você pode converter uma tupla em dicionário usando a função `dict()` que mencionamos anteriormente. Aqui está um exemplo:

```python3
# Define a tuple
my_tuple = ('apple', 'pineapple', 'cherry')

# Convert the tuple to a dictionary
my_dict = dict(zip(range(len(my_tuple)), my_tuple))

# Print the dictionary
print(my_dict)
```

Saída:

```python
{0: 'apple', 1: 'pineapple', 2: 'cherry'}
```

Neste exemplo, a função `zip()` é usada para combinar os elementos da tupla com os índices de cada elemento. Em seguida, a função `dict()` é usada para converter o objeto zipado em um dicionário.
