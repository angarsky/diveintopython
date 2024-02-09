[!NOTE]
> Прочитайте эту сатью на сайте: https://diveintopython.org/ru/learn/variables/dictionary

Python предоставляет несколько встроенных типов коллекций для хранения и манипуляции данными. Некоторые из часто используемых типов коллекций в Python:

* Списки (Lists)
* Кортежи (Tuples)
* Множества (Sets)
* Словари (Dictionaries)
* Массивы (Arrays)
* Деки (Deques)

Также в Python есть другие менее распространенные типы коллекций, такие как именованные кортежи (namedtuples), словари с значениями по умолчанию (default dictionaries) и кучи (heaps), которые являются специализированными версиями основных типов коллекций, перечисленных выше.

## Определение словаря

Словарь в Python — это коллекция пар ключ-значение, где каждому ключу соответствует значение. Это неупорядоченная структура данных, и каждый ключ в словаре должен быть уникален.

Вот пример словаря на Python:


```python
# Define a dictionary with key-value pairs
student = {
    "name": "Alice",
    "id": 12345,
    "courses": ["Math", "Physics", "Chemistry"],
    "grades": {"Math": 90, "Physics": 85, "Chemistry": 95}
}
```

## Как создать словарь в Python

Давайте посмотрим, как создать или инициализировать словарь в Python. Вы можете сделать это с помощью фигурных скобок `{}` или используя функцию `dict()`. Вот некоторые примеры:

- Использование фигурных скобок:

```python
# Create an empty dictionary
empty_dict = {}

# Create a dictionary with key-value pairs
my_dict = {'name': 'John', 'age': 30, 'city': 'New York'}

# Create a dictionary with mixed data types
mixed_dict = {'name': 'John', 'age': 30, 'scores': [85, 90, 95]}
```

- Использование функции `dict()`:

```python
# Create an empty dictionary
empty_dict = dict()

# Create a dictionary with key-value pairs
my_dict = dict(name='John', age=30, city='New York')

# Create a dictionary with mixed data types
mixed_dict = dict(name='John', age=30, scores=[85, 90, 95])
```

В обоих случаях словарь создается с набором пар ключ-значение. Ключи должны быть уникальны и неизменяемыми типами данных (такими как строки, числа или кортежи), в то время как значения могут быть любыми типами данных, включая списки, словари и другие объекты.

## Удаление словаря

В Python вы можете удалить словарь, используя ключевое слово `del`, за которым следует имя переменной словаря. Вот пример:

```python
my_dict = {'key1': 'value1', 'key2': 'value2'}
del my_dict
```

В приведенном выше примере мы создали словарь `my_dict` с двумя парами ключ-значение. Ключевое слово `del` используется для удаления словаря, указывая имя переменной `my_dict`.

После выполнения инструкции `del`, словарь `my_dict` будет полностью удален из памяти, и любые попытки доступа к нему приведут к ошибке `NameError`, поскольку переменная больше не существует.

## Доступ к словарю в Python

Вы можете получить значение из словаря, используя его ключи. Вот пример:

```python
# Creating a dictionary
my_dict = {'apple': 3, 'banana': 5, 'orange': 2}

# Accessing a value using its key
print(my_dict['apple'])  # Output: 3
print(my_dict['banana']) # Output: 5
```

Вы также можете получить значение, связанное с ключом в словаре, используя метод `get()`. Вот пример:

```python
# create a dictionary
my_dict = {'apple': 1, 'pineapple': 2, 'orange': 3}

# get the value associated with the 'apple' key
apple_value = my_dict.get('apple')

# print the value
print(apple_value) # Output: 1
```

Если ключ не найден в словаре, метод `get()` по умолчанию возвращает None.

## Словарь словарей

Вы можете вложить словарь в словарь, просто используя словарь в качестве значения в другом словаре. Вот пример:

``python
# create a dictionary of dictionaries
my_dict = {
    'person1': {'name': 'John', 'age': 28},
    'person2': {'name': 'Jane', 'age': 32}
}

# accessing values in the dictionary of dictionaries
print(my_dict['person1']['name']) # output: 'John'
print(my_dict['person2']['age']) # output: 32
```

Для доступа к значениям во вложенных словарях мы используем два набора квадратных скобок. Первый набор скобок используется для доступа к внешнему словарю, а второй набор скобок используется для доступа к внутреннему словарю.

Вы также можете добавлять новые словари во вложенный словарь следующим образом:

```python
# adding a new person to the dictionary of dictionaries
my_dict['person3'] = {'name': 'Alex', 'age': 25}

# accessing the new person's information
print(my_dict['person3']['name']) # output: 'Alex'
```

Аналогично, вы можете обновлять значения во вложенных словарях:

```python
# updating a person's age in the dictionary of dictionaries
my_dict['person1']['age'] = 30

# accessing the updated age
print(my_dict['person1']['age']) # output: 30
```

В целом, комбинирование словарей в Python является простым и мощным способом хранения и доступа к иерархическим структурам данных.

## Словарь объектов в Python

Эта тема очень похожа на вложенные словари - вы можете создать словарь объектов, используя экземпляры объектов в качестве значений и уникальные ключи для доступа к объектам. Вот пример:

```python
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

## Обращение ключей и значений в словаре

Давайте рассмотрим пример того, как обратить ключи и значения в словаре в Python. Для этой цели вы можете использовать генератор словаря и поменять местами ключи и значения в каждой паре ключ-значение:

```python
my_dict = {'a': 1, 'b': 2, 'c': 3}

reversed_dict = {value: key for key, value in my_dict.items()}

print(reversed_dict) # Output: {1: 'a', 2: 'b', 3: 'c'}
```

В приведенном выше коде мы сначала определяем словарь `my_dict` с некоторыми парами ключ-значение. Затем мы создаем новый словарь `reversed_dict`, используя генератор словаря. В генераторе мы итерируем по словарю `my_dict`, используя метод `items()`, который возвращает список пар (ключ, значение). Для каждой пары ключ-значение мы меняем местами ключ и значение и добавляем новую пару (значение, ключ) в `reversed_dict`.




