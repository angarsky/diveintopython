> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/variables/array/convert

В Python преобразование между списками и массивами - это обычное задание при работе с числовыми данными. Процесс преобразования из списка в массив позволяет нам использовать преимущества эффективных числовых вычислений и операций, предоставляемых библиотеками, такими как NumPy. С другой стороны, в некоторых случаях нам нужно сделать 2d массив из 1d массива. Давайте рассмотрим наиболее общие темы по преобразованиям, связанным с массивами.

## Преобразование Между Списками и Массивами NumPy

Преобразования между списками и массивами NumPy обеспечивают гибкость в манипуляциях с данными и облегчают беспрепятственную интеграцию с другими библиотеками числовых вычислений в Python.

### Как Преобразовать Массив NumPy в Список Python

Чтобы преобразовать массив NumPy в список Python, вы можете использовать метод `tolist()`, предоставляемый библиотекой NumPy. Этот метод преобразует массив NumPy во вложенный список Python. Вот пример:

```python
import numpy as np

numpy_array = np.array([1, 2, 3, 4, 5])
python_list = numpy_array.tolist()
print(python_list) # Output: [1, 2, 3, 4, 5]
```

Аналогично, если у вас есть многомерный массив NumPy, метод `tolist()` преобразует его во вложенную структуру списка Python:

```python
import numpy as np

numpy_array = np.array([[1, 2, 3], [4, 5, 6]])
python_list = numpy_array.tolist()
print(python_list) # Output: [[1, 2, 3], [4, 5, 6]]
```

В этом примере, numpy_array является двумерным массивом NumPy с двумя строками и тремя столбцами. Метод `tolist()` преобразует его во вложенный список Python с такой же структурой.

### Преобразование Списка в Массив в Python

Чтобы преобразовать список Python в массив, вы можете использовать функцию `array()`, предоставляемую библиотекой NumPy. Функция `array()` создает новый массив NumPy из элементов данного списка. Вот пример преобразования списка в массив:

```python
import numpy as np

my_list = [1, 2, 3, 4, 5]
my_array = np.array(my_list)
print(my_array) # Output: [1 2 3 4 5]
```

Массивы NumPy являются однородными, что означает, что они могут содержать элементы только одного типа данных. Если элементы списка имеют разные типы, NumPy автоматически приведёт элементы к общему типу данных.

Например:

```python
import numpy as np

my_list = [1, 2.5, 'three', True]
my_array = np.array(my_list)
print(my_array) # Output: ['1' '2.5' 'three' 'True']
```

В этом случае элементы списка имеют разные типы данных (int, float, str и bool). NumPy приводит все элементы к общему типу данных, который в данном случае - str. Полученный массив содержит строки, представляющие элементы списка.

## Преобразование Между Строкой и Массивом

Преобразование между строками и массивами в Python может быть полезным при работе с текстовыми данными или при манипулировании отдельными символами.

### Преобразование Строки Python в Массив

Чтобы преобразовать строку Python в массив из отдельных символов, вы можете итерировать по строке и создать список символов. Вот пример:

```python
string = "Hello, world!"
array = [char for char in string]
print(array) # Output: ['H', 'e', 'l', 'l', 'o', ',', ' ', 'w', 'o', 'r', 'l', 'd', '!']
```

В приведенном выше примере мы итерируем каждый символ в строке, используя списковое включение. Каждый символ добавляется в список, в результате чего получается массив, где каждый элемент представляет отдельный символ из строки.

Если вы хотите разделить строку на массив слов, а не символов, вы можете использовать метод `split()`. По умолчанию метод `split()` разделяет строку на основе символов пробела (пробелы, табуляции, новые строки). Вот пример:

```python
string = "Hello, world! How are you?"
array = string.split()
print(array) # Output: ['Hello,', 'world!', 'How', 'are', 'you?']
```

В этом примере метод `split()` разделяет строку на список подстрок на основе пробельных символов, в результате чего получается массив, где каждый элемент представляет собой слово из строки.

### Преобразование Массива в Строку

Чтобы преобразовать массив (или список) в строку в Python, вы можете использовать метод `join()`. Метод `join()` соединяет элементы итерируемого объекта в одну строку, используя указанный разделитель. Вот пример:

```python
array = ['Hello', 'world', 'How', 'are', 'you?']
string = ' '.join(array)
print(string) # Output: Hello world How are you?
```

Изменив разделитель, передаваемый в метод `join()`, вы можете изменить способ разделения элементов в полученной строке. Например, используя запятую (',') в качестве разделителя:

```python
array = ['apple', 'banana', 'orange']
string = ', '.join(array)
print(string) # Output: apple, banana, orange
```