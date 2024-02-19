> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/variables

Переменные играют ключевую роль в Python, так как они предоставляют способ хранения и манипуляции данными на протяжении всей программы. Присваивая значения переменным, мы можем легко обращаться к данным и обновлять их по мере необходимости, делая наш код более эффективным и читабельным. В целом, переменные являются фундаментальным понятием в программировании на Python и необходимы для любых операций с данными и их анализа. Давайте рассмотрим эту тему подробнее.

## Определение Переменной

Давайте определим, что такое переменная в Python. Это именованное место в памяти компьютера, которое хранит значение. Это как контейнер, который может содержать различные типы данных, такие как числа, строки или булевы значения.

Чтобы создать переменную в Python, вам нужно дать ей имя и присвоить значение с помощью оператора присваивания `=`.

## Соглашение об Именовании Переменных

В Python имена переменных чувствительны к регистру и могут быть любой комбинацией букв, цифр и подчеркиваний. Однако, существуют рекомендации и соглашения об именовании переменных в Python, которые делают ваш код более читабельным и удобным для обслуживания:

- Используйте строчные буквы для имен переменных. В Python принято использовать строчные буквы для имен переменных.
- Используйте подчеркивания для разделения слов в именах переменных. Если имя переменной состоит из нескольких слов, используйте подчеркивания для их разделения. Например, `first_name` является лучшим именем переменной, чем `firstname`.
- Избегайте использования зарезервированных ключевых слов. В Python есть зарезервированные ключевые слова, которые имеют специальное значение в языке, такие как `if`, `else`, `while` и `for`. Избегайте использования этих ключевых слов в качестве имен переменных.
- Используйте описательные имена для переменных. Выбирайте описательные имена, отражающие назначение переменной. Например, `count` является лучшим именем переменной, чем `c`.
- Используйте имена переменных в единственном числе. Например, `student` является лучшим именем переменной, чем `students`.
- Соблюдайте единообразие в соглашениях об именовании в вашем коде и в работе вашей команды.

Вот несколько примеров хороших имен переменных в Python:

```python
first_name
last_name
age
is_student
num_of_courses
```

Помните, что хорошие соглашения об именовании переменных не только помогают вам задать допустимое имя переменной, но и делают ваш код более читабельным, легким в обслуживании и снижают риск ошибок.

## Объявление Переменных

В Python вам не нужно явно объявлять переменную перед её использованием. Вы можете создать переменную, просто присвоив ей значение.

Однако важно отметить, что переменные в Python имеют динамическую типизацию, что означает, что тип данных переменной определяется во время выполнения на основе типа присвоенного ей значения. Это означает, что одна и та же переменная может хранить значения различных типов в разное время. Например:

```python
y = 5
y = "hello"

print(y) # Output: hello
```

В этом примере мы сначала создали переменную с именем `y` и присвоили ей значение `5`. Затем мы изменили значение `y` на строку `hello`. Программа напечатала значение `y`, которое является строкой `hello`.

## Типы Данных

В Python есть девять типов данных:

- Целые числа
- Числа с плавающей точкой
- Комплексные числа
- Строки
- Логические значения
- Списки
- Кортежи
- Множества
- Словари

Первые три типа условно можно объединить в числовую группу.

### Числовые Типы

Числовые типы используются для представления чисел в Python. В Python есть три типа числовых данных:

- **Целые**: Целые числа - это числа без десятичной точки. Пример: 5, 10, -3.
- **Float**: Числа с плавающей точкой - это числа с десятичными точками. Пример: 2.5, -0.1, 3.14.
- **Комплексные числа**: Комплексные числа - это числа с действительной и мнимой частью. Они обозначаются добавлением `j` в конце мнимой части. Пример: 2 + 3j, -4j.

```python
# integer
a = 5
# float
b = 3.14
# complex
c = 2 + 3j
```

### Булев Тип

Булев тип - это тип данных, который может принимать только два значения - `True` или `False`.

```python
a = True
b = False
```

### Тип Строка

Строки (также известные как строковые литералы) используются для представления текстовых данных в Python. Они заключены в кавычки (одинарные или двойные) и могут содержать буквы, цифры и специальные символы. Давайте посмотрим, что такое строка, на примере:

```python
a = "Hello, World!"
b = 'Python is cool'
```

### Тип Список

Списки используются для хранения коллекции элементов. Они могут содержать данные любого типа и обозначаются квадратными скобками.

```python
a = [1, 2, 3, 4, 5]
b = ['mango', 'pineapple', 'orange']
```

### Тип Кортеж

Кортежи похожи на списки, но они неизменяемы, что означает, что их содержимое не может быть изменено. Они обозначаются круглыми скобками.

```python
a = (1, 2, 3)
b = ('red', 'green', 'blue')
```

### Тип Множество

Множества используются для хранения уникальных значений. Они обозначаются фигурными скобками.

```python
a = {1, 2, 3, 4, 5}
b = {'mango', 'pineapple', 'orange'}
```

### Тип Словарь

Словари используются для хранения пар ключ-значение. Каждый ключ ассоциируется со значением, и они обозначаются фигурными скобками с парами ключ-значение, разделенными двоеточиями.

```python
a = {'name': 'John', 'age': 30, 'city': 'New York'}
b = {'mango': 1.99, 'pineapple': 0.99, 'orange': 2.99}
```

### Тип `None`

`None` - это специальный тип данных в Python, который обозначает отсутствие значения.

```python
a = None
```

## Переменная Символа

В Python переменная символа - это одиночный символ, сохраненный в переменной. В отличие от некоторых других языков программирования, Python не имеет отдельного типа данных для символов. Вместо этого символ в Python просто является строкой длиной в 1 символ.

Чтобы объявить переменную символа в Python, вы можете присвоить одиночный символ переменной, используя одинарные кавычки, двойные кавычки или тройные кавычки. Вот несколько примеров:

```python
char1 = 'a'
char2 = "b"
char3 = '''c'''
```

В приведенных выше примерах, `char1`, `char2` и `char3` - это переменные символов, которые хранят символы `a`, `b` и `c` соответственно.

Вы также можете использовать индексацию для извлечения одного символа из строковой переменной. Например:

```python
string = "hello"
char = string[0]   # Output: 'h'
```

В приведенном выше примере, `char` — это переменная символьного типа, которая хранит первый символ строки `hello`.

## Объявление Типов Переменных

Как было упомянуто выше, Python — это язык с динамической типизацией, что означает, что вам не нужно явно объявлять тип переменной. Вместо этого тип переменной определяется во время выполнения на основе присвоенного ей значения.

Однако, начиная с Python 3.5, в языке появился синтаксис для аннотаций типов, который позволяет указывать ожидаемый тип переменной. Это может быть полезно для улучшения читаемости кода, документации и проверки типов.

Вот пример того, как можно использовать аннотации типов в Python:

```python
# declare a variable with an integer type annotation
my_number: int = 42

# declare a variable with a string type annotation
my_string: str = "Hello, world!"

# declare a function with type annotations for parameters and return value
def add_numbers(a: int, b: int) -> int:
    return a + b
```

Обратите внимание, что аннотации типов являются необязательными, и Python будет работать, даже если вы их не используете. Однако использование аннотаций типов может помочь выявить определённые типы ошибок на этапе компиляции, а не во время выполнения.

## Переменные и Константы

В Python переменные используются для хранения данных или значений, которые могут быть изменены или обновлены в ходе выполнения программы. С другой стороны, константные переменные, как следует из названия, это переменные, которые не могут быть изменены после того, как им было присвоено значение.

В Python нет специфического способа объявить переменную или константную переменную, так как переменные являются динамически типизированными и их тип может изменяться во время выполнения программы. Однако, общепринятой конвенцией для различения переменных и константных переменных является использование заглавных букв для последних.

Например, допустим, мы хотим объявить переменную для хранения возраста человека и константную переменную для хранения значения числа пи. Мы можем объявить их следующим образом:

```python
# variable to store age
age = 30

# constant variable to store pi value
PI = 3.14159
```

В приведенном выше примере `age` - это переменная, которую можно изменить, в то время как `PI` - это константная переменная, которую нельзя изменить после присвоения значения.

Важно отметить, что данная конвенция на самом деле не делает переменную константой, и все еще возможно изменить значение константной переменной в Python. Однако следование этой конвенции помогает различать переменные, которые предполагается изменять в процессе выполнения программы, и те, которые должны оставаться константами.

## Определение Глобальных и Локальных Переменных

В Python существует два типа переменных: **глобальные** и **локальные**.

Глобальная переменная в Python - это переменная, определенная вне функции, к которой можно получить доступ из любой части программы, включая функции. Глобальные переменные в Python имеют глобальную область видимости, что означает, что они доступны из любой точки кода.

Вот пример того, как установить глобальную переменную в Python:

```python
x = 10

def my_function():
    print(x)

my_function() # output: 10
```

В приведенном выше примере, `x` является глобальной переменной, которая может быть доступна функции `my_function`. Когда функция вызывается, она печатает значение `x`.

Теперь давайте посмотрим, что такое локальная переменная в Python.

Локальная переменная - это переменная, которая определяется внутри функции и может быть доступна только внутри этой функции. Локальные переменные имеют локальную область видимости, что означает, что они доступны только внутри блока кода, где они определены.

Вот пример определения локальной переменной в Python:

```python
def my_function():
    y = 5
    print(y)

my_function() # output: 5
```

В приведенном выше примере, `y` является локальной переменной, которую можно получить доступ только внутри функции `my_function`. Когда функция вызывается, она печатает значение `y`.

Важно заметить, что если вы определите локальную переменную с таким же именем, как и глобальная переменная, локальная переменная будет иметь приоритет внутри функции. Вот пример:

```python
x = 10

def my_function():
    x = 5
    print(x)

my_function() # output: 5
print(x) # output: 10
```

В приведённом выше примере, `my_function` определяет локальную переменную `x` со значением `5`. Когда функция вызывается, она печатает значение локальной переменной, которое равно `5`. Однако глобальная переменная `x` всё ещё имеет значение `10`, которое выводится, когда она вызывается вне функции.