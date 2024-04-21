> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/dictionary

Python oferece vários tipos de coleções integradas para armazenar e manipular dados. Alguns dos tipos de coleção comumente usados ​​em Python são:

* Listas
* Tuplas
* Conjuntos
* Dicionários
* Arrays
* Deques

Existem também outros tipos de coleção menos comumente usados ​​em Python, como namedtuples, dicionários padrão e heaps, que são versões especializadas dos tipos de coleção básicos listados acima.

## Definição de Dicionário

Um dicionário em Python é uma coleção de pares chave-valor, onde cada chave está associada a um valor. É uma estrutura de dados não ordenada, e cada chave no dicionário deve ser única.

Aqui está um exemplo de dicionário em Python:

```python
# Define a dictionary with key-value pairs
student = {
    "name": "Alice",
    "id": 12345,
    "courses": ["Math", "Physics", "Chemistry"],
    "grades": {"Math": 90, "Physics": 85, "Chemistry": 95}
}
```

## Como Criar um Dicionário em Python

Vamos dar uma olhada em como criar ou inicializar um dicionário em Python. Você pode fazer isso usando chaves `{}` ou utilizando a função `dict()`. Aqui estão alguns exemplos:

- Usando chaves:

```python
# Create an empty dictionary
empty_dict = {}

# Create a dictionary with key-value pairs
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# Create a dictionary with mixed data types
mixed_dict = {'name': 'John', 'age': 30, 'scores': [85, 90, 95]}
```

- Usando a função `dict()`:

```python
# Create an empty dictionary
empty_dict = dict()

# Create a dictionary with key-value pairs
my_dict = dict(name='John', age=30, city='New York')

# Create a dictionary with mixed data types
mixed_dict = dict(name='John', age=30, scores=[85, 90, 95])
```

Em ambos os casos, o dicionário é criado com um conjunto de pares chave-valor. As chaves devem ser únicas e de tipos de dados imutáveis (como strings, números ou tuplas), enquanto os valores podem ser de qualquer tipo de dado, incluindo listas, dicionários e outros objetos.

## Deletando um Dicionário

Em Python, você pode deletar um dicionário usando a palavra-chave `del` seguida pelo nome da variável do dicionário. Aqui está um exemplo:

```python
my_dict = {'key1': 'value1', 'key2': 'value2'}
del my_dict
```

No exemplo acima, criamos um dicionário `my_dict` com dois pares de chave-valor. A palavra-chave `del` é usada para deletar o dicionário especificando o nome da variável `my_dict`.

Após executar a instrução `del`, o dicionário `my_dict` será completamente removido da memória, e qualquer tentativa de acessá-lo resultará em um `NameError` porque a variável não existe mais.

## Acesso a Dicionários em Python

Você pode obter valor de um dicionário usando suas chaves. Aqui está um exemplo:

```python3
# Creating a dictionary
my_dict = {'apple': 3, 'banana': 5, 'orange': 2}

# Accessing a value using its key
print(my_dict['apple'])  # Output: 3
print(my_dict['banana']) # Output: 5
```

Você também pode obter o valor associado a uma chave em um dicionário utilizando o método `get()`. Aqui está um exemplo:

```python3
# create a dictionary
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# get the value associated with the 'apple' key
apple_value = my_dict.get('apple')

# print the value
print(apple_value) # Output: 1
```

Se a chave não for encontrada no dicionário, `get()` retorna None por padrão.

## Dicionário de Dicionários

Você pode aninhar um dicionário dentro de outro dicionário simplesmente usando um dicionário como valor em outro dicionário. Aqui está um exemplo:

```python3
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# accessing values in the dictionary of dictionaries
print(my_dict['person1']['name']) # output: 'John'
print(my_dict['person2']['age']) # output: 32
```

Para acessar os valores nos dicionários aninhados, usamos dois conjuntos de colchetes. O primeiro conjunto de colchetes é usado para acessar o dicionário externo, e o segundo conjunto de colchetes é usado para acessar o dicionário interno.

Você também pode adicionar novos dicionários ao dicionário aninhado, assim:

```python
# adding a new person to the dictionary of dictionaries
my_dict['person3'] = {'name': 'Alex', 'age': 25}

# accessing the new person's information
print(my_dict['person3']['name']) # output: 'Alex'
```

Da mesma forma, você pode atualizar valores nos dicionários aninhados:

```python3
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# updating a person's age in the dictionary of dictionaries
my_dict['person1']['age'] = 30

# accessing the updated age
print(my_dict['person1']['age']) # output: 30
```

De modo geral, combinar dicionários em Python é uma maneira simples e poderosa de armazenar e acessar estruturas de dados hierárquicas.

## Dicionário de Objetos em Python

Este tópico é bastante similar a dicionários aninhados - você pode criar um dicionário de objetos usando instâncias do objeto como valores e utilizando chaves únicas para acessar os objetos. Aqui está um exemplo:

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# create objects
person1 = Person("Alice", 25)
person2 = Person("Bob", 30)
person3 = Person("Charlie", 35)

# create dictionary of objects
people = {
    "person1": person1,
    "person2": person2,
    "person3": person3
}

# access objects using keys
print(people["person1"].name)   # outputs "Alice"
print(people["person2"].age)    # outputs 30
```

## Inversão de Chaves e Valores em Dicionário

Vamos revisar um exemplo de como inverter chaves e valores em dicionário em Python. Para esse propósito, você pode usar uma compreensão de dicionário e trocar as chaves e valores em cada par chave-valor:

```python3
my_dict = {'a': 1, 'b': 2, 'c': 3}

reversed_dict = {value: key for key, value in my_dict.items()}

print(reversed_dict) # Output: {1: 'a', 2: 'b', 3: 'c'}
```

No código acima, primeiro definimos um dicionário `my_dict` com alguns pares chave-valor. Em seguida, criamos um novo dicionário `reversed_dict` utilizando uma compreensão de dicionário. Na compreensão, iteramos sobre o dicionário `my_dict` usando o método `items()`, que retorna uma lista de pares (chave, valor). Para cada par chave-valor, trocamos as posições da chave e do valor, e adicionamos o novo par (valor, chave) ao `reversed_dict`.
