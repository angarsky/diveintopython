> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/variables/string

Ранее мы затрагивали тему операций с переменными. В этой части мы погрузимся в наиболее общие операции и методы со строками. Это не весь список возможных манипуляций со строками.

## Объявление Переменной Строки

Вы можете объявить переменную строки, присвоив строковое значение имени переменной с использованием знака равенства `=`. Вот пример:

```python
my_string = "Hello, world!"
```

В этом примере мы объявили строковую переменную под названием `my_string` и присвоили ей значение `"Hello, world!"`. Обратите внимание, что строковое значение заключено в кавычки.

Вы также можете объявить пустую строковую переменную, присвоив имя переменной пустое строковое значение, вот так:

```python
my_string = ""
```

В данном случае мы объявили строковую переменную под названием `my_string` и присвоили ей пустое строковое значение

## Конкатенация Строк

Конкатенация строк — это процесс объединения двух или более строк в одну строку. В Python вы можете конкатенировать строки, используя оператор `+`. Еще один вариант добавления строки — использование оператора `+=`.

Давайте посмотрим на пример добавления строки:

```python
str1 = "Hello"
str2 = "World"
result = str1 + " " + str2
print(result) # Output: Hello World
```

В приведенном выше примере мы создали две строковые переменные `str1` и `str2`, содержащие строки "Hello" и "World" соответственно. Затем мы используем оператор `+` для добавления одной строки к другой, вместе с символом пробела, чтобы создать один строковый результат. Наконец, мы выводим результат добавления на консоль, который выводит "Hello World".

## Переменная в Строке

В Python вы можете включать переменные в строки, используя различные методы. Вот несколько наиболее часто используемых способов достижения этого:

**Конкатенация Строк**: вы можете конкатенировать строки и переменные, используя оператор `+`:

```python
name = "Alice"
age = 30
message = "Hello, my name is " + name + " and I am " + str(age) + " years old."
print(message)
```

**Использование метода `str.format()`**: этот метод позволяет встраивать переменные в строку, используя заполнители `{}`:

```python
name = "Bob"
age = 25
message = "Hello, my name is {} and I am {} years old.".format(name, age)
print(message)
```

**Использование f-строк (форматированных строковых литералов)**: введенные в Python 3.6, f-строки предоставляют краткий способ встраивания переменных непосредственно в строки, добавляя перед строкой `f` и используя `{}` для заключения переменных:

```python
name = "Charlie"
age = 35
message = f"Hello, my name is {name} and I am {age} years old."
print(message)
```

Все эти методы достигают одного и того же результата, но f-строки часто предпочитают из-за их читаемости и удобства использования. Они позволяют напрямую ссылаться на переменные внутри строки, делая код более чистым и понятным.

## Длина Строки

Вы можете получить длину строки, используя встроенную функцию `len()`. Также вы можете проверить, пуста ли строка, используя этот метод.

Вот пример вычисления количества символов, которые содержит строка:

```python
my_string = "Hello, world!"
print(len(my_string))  # Output: 13
```

В этом примере функция `len()` возвращает количество символов в переменной `my_string`, которое составляет 13. Вы также можете использовать `len()`, чтобы получить длину строковой переменной, которая пуста или содержит пробелы:

```python
empty_string = ""
print(len(empty_string))  # Output: 0

whitespace_string = "   "
print(len(whitespace_string))  # Output: 3
```

В обоих случаях функция `len()` возвращает длину строки, которая равна 0 для пустой строки и 3 для строки, содержащей пробелы.

## Сравнение Строк

В Python вы можете использовать различные операторы сравнения для сравнения строк. Вот несколько примеров:

Оператор `==`: проверяет, равны ли две строки.

```python
str1 = "mango"
str2 = "pineapple"

if str1 == str2:
    print("The two strings are equal.")
else:
    print("The two strings are not equal.")
# Output: The two strings are not equal.
```

Оператор `!=`: проверяет, не равны ли две строки.

```python
str1 = "mango"
str2 = "pineapple"

if str1 != str2:
    print("The two strings are not equal.")
else:
    print("The two strings are equal.")
# Output: The two strings are not equal.
```

Оператор `<`: проверяет, меньше ли первая строка второй строки в лексикографическом порядке.

```python
str1 = "mango"
str2 = "pineapple"

if str1 < str2:
    print("The first string comes before the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before the second string.
```

Оператор `>`: проверяет, больше ли первая строка второй строки в лексикографическом порядке.

```python
str1 = "mango"
str2 = "pineapple"

if str1 > str2:
    print("The first string comes after the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

Оператор `<=`: проверяет, меньше ли первая строка или равна второй строке в лексикографическом порядке.

```python
str1 = "mango"
str2 = "pineapple"

if str1 <= str2:
    print("The first string comes before or is equal to the second string.")
else:
    print("The second string comes before the first string.")
# Output: The first string comes before or is equal to the second string.
```

Оператор `>=`: проверяет, больше ли первая строка или равна второй строке в лексикографическом порядке.

```python
str1 = "mango"
str2 = "pineapple"

if str1 >= str2:
    print("The first string comes after or is equal to the second string.")
else:
    print("The second string comes after the first string.")
# Output: The second string comes after the first string.
```

Обратите внимание, что при сравнении строк в Python сравнение производится в лексикографическом порядке, что означает, что сравнение основано на значениях ASCII символов в строках.

## Многострочная Строка

Вы можете создать многострочную строку, заключив текст в тройные кавычки, либо тройные одинарные кавычки ('''), либо тройные двойные кавычки (""").

Например:

```python
multiline_string = '''
This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
'''

print(multiline_string)
```

```python
# Output:

This is a multiline string
that spans multiple lines.
You can use single quotes
or double quotes.
```

Обратите внимание, что любые пробелы, включая переводы строк, в строке в тройных кавычках будут включены в строку. Если вы хотите исключить пробелы в начале или в конце строки, вы можете использовать методы строк, такие как strip() или rstrip().

## Двоичная Строка

Двоичную строку можно представить, используя префикс `0b`, за которым следует последовательность цифр `0` и `1`. Например, двоичная строка `1101` может быть представлена как `0b1101`. Вот несколько примеров того, как создавать и манипулировать двоичными строками в Python:

- Создание двоичной строки:

```python
binary_str = '0b1101'
```

- Преобразование десятичного целого числа в двоичную строку:

```python
decimal_num = 13
binary_str = bin(decimal_num)
```

- Преобразование двоичной строки в десятичное целое число:

```python
binary_str = '0b1101'
decimal_num = int(binary_str, 2)
```

- Побитовые операции с двоичными строками:

```python
binary_str1 = '0b1101'
binary_str2 = '0b1010'

# Bitwise AND
result = int(binary_str1, 2) & int(binary_str2, 2)
print(bin(result))  # Output: 0b1000

# Bitwise OR
result = int(binary_str1, 2) | int(binary_str2, 2)
print(bin(result))  # Output: 0b1111

# Bitwise XOR
result = int(binary_str1, 2) ^ int(binary_str2, 2)
print(bin(result))  # Output: 0b0111
```

Примечание: при выполнении побитовых операций нам необходимо преобразовать двоичные строки в десятичные целые числа, используя функцию `int()` со вторым аргументом, указывающим основание (`2` в данном случае), а затем преобразовать результат обратно в двоичную строку, используя функцию `bin()`.

## Итерация по символам

Существует несколько способов итерации по символам в строке в Python. Вот несколько примеров:

- Использование цикла for:

```python
my_string = "Hello, world!"
for char in my_string:
    print(char)
```

- Используя цикл while:

```python
my_string = "Hello, world!"
i = 0
while i < len(my_string):
    print(my_string[i])
    i += 1
```

- Использование генератора списка:

```python
my_string = "Hello, world!"
char_list = [char for char in my_string]
print(char_list)
```

- Using the map() function:

```python
my_string = "Hello, world!"
char_list = list(map(str, my_string))
print(char_list)
```

- Использование функции enumerate():

```python
my_string = "Hello, world!"
for index, char in enumerate(my_string):
    print(f"Character at index {index}: {char}")
```

Все эти методы позволят вам итерироваться по символам в строке и выполнять операции с ними. Выберите тот, который лучше всего подходит для ваших задач!






