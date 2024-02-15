> [!NOTE]
>   Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/variables/tuple/convert

```python
# Define a tuple
my_tuple = (1, 2, 3, 4, 5)

# Convert the tuple to a list
my_list = list(my_tuple)

# Print the result
print(my_list) # Output: [1, 2, 3, 4, 5]
```

## Преобразование Списка в Кортеж

Мы можем преобразовать список обратно в кортеж, используя встроенную функцию `tuple()`. Это может быть полезно, когда нам нужно преобразовать изменяемый список обратно в неизменяемый кортеж.

Вот пример:

```python
# Define a list
my_list = [1, 2, 3, 4, 5]

# Convert the list to a tuple
my_tuple = tuple(my_list)

# Print the result
print(my_tuple) # Output: (1, 2, 3, 4, 5)
```

## Преобразование Кортежа в Строку в Python

Вы можете преобразовать кортеж Python в строку, используя метод `join()`. Вот пример:

```python
my_tuple = ('apple', 'banana', 'cherry')
my_string = ', '.join(my_tuple)
print(my_string) # Output: apple, banana, cherry
```

> Примечание: метод `join()` работает только со строками. Если кортеж содержит элементы, не являющиеся строками, сначала нужно преобразовать их в строки с помощью функции `str()`.

## Преобразование Строки в Кортеж

Чтобы преобразовать строку обратно в кортеж в Python, можно использовать метод `split()`. Вот пример:

```python
my_string = 'apple, banana, cherry'
my_tuple = tuple(my_string.split(', '))
print(my_tuple) # Output: ('apple', 'banana', 'cherry')
```

> Примечание: метод `split()` возвращает список строк. Если исходный кортеж содержал элементы, не являющиеся строками, вам нужно преобразовать их обратно в их исходные типы данных после создания кортежа.

## Преобразование Кортежа в Словарь в Python

Чтобы преобразовать кортеж Python в словарь, вы можете использовать функцию конструктора `dict()`. Вот пример:

```python
my_tuple = ('a', 1), ('b', 2), ('c', 3)
my_dict = dict(my_tuple)
print(my_dict) # Output: {'a': 1, 'b': 2, 'c': 3}
```

## Преобразование Словаря в Кортеж

Чтобы преобразовать словарь Python обратно в кортеж, вы можете использовать метод `items()` объекта словаря, чтобы получить список пар (ключ, значение), а затем конвертировать этот список в кортеж, используя функцию конструктора `tuple()`. Вот пример:

```python
my_dict = {'a': 1, 'b': 2, 'c': 3}
my_tuple = tuple(my_dict.items())
print(my_tuple) # Output: (('a', 1), ('b', 2), ('c', 3))
```
