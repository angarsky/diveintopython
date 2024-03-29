> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/variables/dictionary/key-value-operations

Довольно часто мы сталкиваемся с ситуациями, когда нам нужно работать с ключами или значениями словаря. К счастью, словари предлагают разнообразие операций для работы с ключами и значениями.

## Получение Ключей Словаря

Чтобы получить ключи словаря в Python, можно использовать метод `keys()`. Вот пример получения набора ключей:

```python
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Getting the keys of the dictionary
keys = my_dict.keys()

# Printing the keys
print(keys) # Output: dict_keys(['name', 'age', 'city'])
```

Обратите внимание, что `keys()` возвращает объект представления, который является динамическим представлением ключей словаря. Это означает, что если словарь изменяется, объект представления будет отражать эти изменения. Если вам нужно работать с ключами как со списком, вы можете преобразовать объект представления в список.

## Преобразование Ключей Словаря в Список

Чтобы преобразовать ключи словаря в список в Python, вы можете использовать метод `keys()` и функцию `list()`. Вот пример:

```python
my_dict = {'a': 1, 'b': 2, 'c': 3}
keys_list = list(my_dict.keys())
print(keys_list)  # Output: ['a', 'b', 'c']
```

В приведенном выше коде, `my_dict.keys()` возвращает объект `dict_keys`, содержащий ключи `my_dict`. Функция `list()` используется для преобразования этого объекта в список, который присваивается переменной `keys_list`. Наконец, `keys_list` выводится в консоль.

## Проверка Наличия Ключа

В Python метод `has_key()` для словарей не доступен. Вместо этого вы можете использовать оператор `in`, чтобы проверить наличие ключа в словаре. Давайте посмотрим, как проверить, существует ли ключ в словаре на Python:

```python
# Creating a dictionary
my_dict = {"name": "Sam", "age": 35, "city": "Boston"}

# Checking if a key is present in the dictionary
if "name" in my_dict:
    print("The key 'name' is present in the dictionary")
else:
    print("The key 'name' is not present in the dictionary")

if "country" in my_dict:
    print("The key 'country' is present in the dictionary")
else:
    print("The key 'country' is not present in the dictionary")
```

Это выведет:

```python
The key 'name' is present in the dictionary
The key 'country' is not present in the dictionary
```

Обратите внимание, что оператор `in` проверяет наличие ключа в словаре, а не то, равно ли значение ключа `None`. Если вам нужно проверить наличие значения ключа в словаре, вы можете использовать метод `get()`.

## Удаление Ключа из Словаря

В Python вы можете удалить ключ из словаря, используя инструкцию del или метод pop().

Вот пример использования инструкции del для удаления ключа из словаря:

```python
my_dict = {"a": 1, "b": 2, "c": 3}

del my_dict["b"]

print(my_dict)  # Output: {"a": 1, "c": 3}
```

В приведенном выше примере ключ `"b"` удаляется из словаря `my_dict` с помощью оператора `del`.

Вот пример использования метода `pop()` для удаления ключа из словаря:

```python
my_dict = {"a": 1, "b": 2, "c": 3}

my_dict.pop("b")

print(my_dict)  # Output: {"a": 1, "c": 3}
```

В приведенном выше примере ключ `"b"` удаляется из словаря `my_dict` с использованием метода `pop()`. Метод `pop()` также возвращает значение, связанное с удаленным ключом, что может быть полезно, если вам нужно выполнить дополнительную обработку на основе этого значения.

## Преобразование Значений Словаря в Список

Вы можете использовать метод `values()` словаря Python, чтобы получить список его значений.

Вот пример:

```python
my_dict = {'a': 1, 'b': 2, 'c': 3}
values_list = list(my_dict.values())
print(values_list) # Output: [1, 2, 3]
```

В приведенном выше коде мы создаем словарь `my_dict` с тремя парами ключ-значение. Затем мы вызываем метод `values()` для словаря, чтобы получить объект просмотра его значений, и преобразуем его в список с помощью конструктора `list()`. Наконец, мы печатаем получившийся список значений.

> Обратите внимание, что порядок значений в списке не гарантируется таким же, как порядок ключей в словаре, поскольку словари в Python неупорядочены.
