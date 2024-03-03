> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/directories

Директории являются ключевой частью управления файлами и играют важную роль в разработке комплексных программ на Python.

## Модуль OS

Модуль `os` в Python предоставляет возможность использования функциональности, зависящей от операционной системы. Он помогает выполнять различные операции, такие как создание директорий, удаление `files`, изменение текущей рабочей `directory` и т.д.

Чтобы использовать модуль OS, сначала его нужно `import` с помощью команды `import os`. Вот два примера того, как использовать модуль OS:

### Пример 1: Создание Новой Директории

Чтобы создать директорию с помощью модуля OS, мы можем использовать функцию `os.mkdir()`. Вот пример:

```python
import os

# specify the path where you want to create the directory
path = "/home/user/newdir"

# create the directory
try:
    os.mkdir(path)
    print("Directory created successfully!")
except OSError as error:
    print(error)
```

### Пример 2: Получение Текущей Рабочей Директории

Чтобы получить текущую рабочую директорию с использованием модуля `os` в Python, мы можем использовать функцию `os.getcwd()`. Вот пример:

```python
import os

# get the current working directory
cwd = os.getcwd()

# print the current working directory
print("Current working directory:", cwd)
```

Используя модуль [os](https://docs.python.org/3/library/os.html), мы можем выполнять различные операции, связанные с операционной системой, включая операции с файлами, операции с `directory` и управление процессами.

## Как Получить Список Файлов в Директории

Чтобы получить список файлов в директории, вы можете использовать функцию `os.listdir()`. Эта функция возвращает список всех файлов и директорий в указанной директории.

```python
import os

# get list of files in the current directory
files = os.listdir()

# print the list of files
print(files)

### Output
# ['file1.txt', 'file2.jpg', 'directory1', 'directory2']
```

```python
import os

# get list of files in a directory
directory = "/path/to/directory"
files = os.listdir(directory)

# print the list of files
print(files)
### Output

# ['file1.pdf', 'file2.docx', 'file3.txt']
```

В заключение, используя `os.listdir()`, вы можете легко получить список файлов в директории. Это может быть полезно для различных задач, таких как манипуляции с файлами, анализ данных и многое другое.

## Как Получить Текущую Директорию

Чтобы получить текущую директорию, вы можете использовать модуль `os`. Метод `os.getcwd()` возвращает текущую рабочую директорию в виде строки.

```python
import os

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

Вы также можете использовать модуль [pathlib](https://docs.python.org/3/library/pathlib.html) для получения текущей директории:

```python
from pathlib import Path

### Get current directory

current_directory = Path.cwd()

### Print current directory

print(current_directory)
```

Чтобы изменить текущий каталог, вы можете использовать метод `os.chdir()`:

```python
import os

### Change current directory

os.chdir('/path/to/new/directory')

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

Не забудьте `import` необходимый модуль для смены каталогов, прежде чем пытаться изменить текущий рабочий каталог.

## Импорт из Другой Директории

Чтобы `import` модули из другой директории, вы можете использовать следующий код:

```python
import sys
sys.path.insert(0, '../path/to/parent/directory')

from module_name import function_name
```

В приведенном выше примере мы сначала вставляем `path` к родительскому каталогу в системный `path` с использованием `sys.path.insert`. Далее мы можем `import` необходимый модуль или функцию из указанного `directory` используя ключевое слово `from`.

Другой способ `import` модулей из родительского каталога - использование файла `__init__.py`. Этот файл является особым файлом, который исполняется, когда каталог импортируется как модуль. В этом файле вы можете добавить следующий код:

```python
import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + "/../")

from module_name import function_name
```

В этом подходе мы сначала `import` модуль `os` для доступа к пути файла и информации о каталоге. Затем мы добавляем родительский каталог в системный `path` с помощью `sys.path.append`. Наконец, мы можем `import` необходимый модуль или функцию из родительского каталога с использованием ключевого слова `from`.

Используя эти методы, вы можете легко `import` модули из родительского каталога и оптимизировать организацию вашего проекта.

## Проверить Существует ли Каталог

Чтобы проверить, существует ли каталог, вы можете использовать функцию `os.path.exists()`. Если каталог существует, она вернет `True`, в противном случае она вернет `False`.

```python
import os

if os.path.exists('/my/directory'):
    print('Directory exists')
else:
    print('Directory does not exist')
```

Если вы хотите создать каталог, если он не существует, вы можете использовать функцию `os.makedirs()`. Это создаст каталог и все необходимые родительские каталоги.

```python
import os

if not os.path.exists('/my/directory'):
    os.makedirs('/my/directory')

### Now you can use the directory for your operations

```

Убедитесь, что замените `/my/directory` на фактический путь к каталогу, который вы хотите проверить или создать.

## Создание Каталога в Python

Чтобы создать каталог в Python, вы можете использовать модуль `os`. Также вы можете проверить, существует ли каталог уже до его создания, используя метод `os.path.exists()`. Метод `os.makedirs()` создаёт каталог и все его родительские каталоги, если они не существуют.

```python
import os

# Directory Path
path = "/example/directory"

# Check if directory already exists
if not os.path.exists(path):
    # Create directory
    os.makedirs(path)
    print("Directory created successfully")
else:
    print("Directory already exists")
```

Метод `os.mkdir()` создает директорию только в том случае, если она не существует. Выдает ошибку `FileExistsError`, если директория уже существует.

```python
import os

# Directory Path
path = "/example/directory"

try:
    # Create directory
    os.mkdir(path)
    print("Directory created successfully")
except FileExistsError:
    print("Directory already exists")
```

Используя любой из этих методов, вы можете легко создать каталог в Python и проверить, существует ли он уже.

## Копирование Файла в Другую Директорию

Копирование файла из одной директории в другую в Python - это обычная задача. Есть несколько способов достичь этого, но самый простой метод - использование модуля [shutil](https://docs.python.org/3/library/shutil.html), который предоставляет функцию `copy` для копирования файлов.

### Использование `shutil.copy()` для Копирования Файла из Одной Директории в Другую

Функция `copy` в модуле `shutil` принимает два аргумента - исходный файл и директорию назначения.

```python
import shutil

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

shutil.copy(src_file, dst_dir)
```

Это скопирует файл `filename.txt` из директории `/home/user` в директорию `/home/user/new_directory`.

### Использование `os.rename()` для Перемещения Файла из Одной Директории в Другую в Python

Другой метод копирования файла из одной директории в другую в Python заключается в использовании функции `os.rename()`.

```python
import os

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

new_path = os.path.join(dst_dir, os.path.basename(src_file))
os.rename(src_file, new_path)
```

Это переместит файл `filename.txt` из директории `/home/user` в директорию `/home/user/new_directory`.

В заключение, вышеупомянутые два метода могут быть использованы для копирования файла из одной директории в другую на Python с легкостью.

## Как Удалить Директорию

Чтобы удалить директорию в Python, мы можем использовать модуль `os`, который предоставляет нам необходимые методы для удаления файлов и директорий. Один из способов удаления всех файлов в директории - это итерация по всем файлам и их последующее удаление по одному. Другой способ - просто удалить директорию, используя метод `os.rmdir()`.

### Удалить Все Файлы в Директории

Мы можем удалить все файлы в директории, итерируя по каждому файлу и удаляя его с использованием метода `os.remove()`. Вот пример:

```python
import os

dir_name = '/path/to/directory'

# iterate over each file and delete it
for file_name in os.listdir(dir_name):
    file_path = os.path.join(dir_name, file_name)
    if os.path.isfile(file_path):
        os.remove(file_path)
```

### Удаление Директории

Мы можем удалить директорию, используя метод `os.rmdir()`. Этот метод работает только в том случае, если директория пуста - если в директории есть какие-либо файлы, метод вызовет ошибку. Чтобы удалить непустую директорию, мы можем использовать метод `rmtree()` из модуля `shutil`. Вот пример:

```python
import os
import shutil

dir_name = '/path/to/directory'

# remove the directory
try:
    os.rmdir(dir_name)
except OSError:
    shutil.rmtree(dir_name)
```

С данными примерами кода, теперь вы можете легко удалить все файлы в директории и удалить саму директорию, используя Python.

## Чтение Всех Файлов в Директории  

Если вы хотите прочитать все `files` в директории, используя Python, вы можете использовать модуль `os`. Вот два примера того, как выполнить эту задачу:

```python
import os

### Method 1

files = os.listdir('/path/to/directory')
for filename in files:
    with open(filename, 'r') as f:
        ##### do something with the file
        pass


### Method 2

for dirpath, dirnames, filenames in os.walk('/path/to/directory'):
    for filename in filenames:
        with open(os.path.join(dirpath, filename), 'r') as f:
            ##### do something with the file
            pass

```

В методе 1 функция `os.listdir()` возвращает список всех `filenames` в директории. Затем вы можете использовать цикл `for` для итерации по списку и открытия каждого файла.

В методе 2 функция `os.walk()` проходит по дереву директорий, возвращая 3-элементный кортеж `(dirpath, `dirnames,` filenames)` для каждой найденной директории. Затем вы можете использовать вложенные циклы `for` для итерации по всем `filenames` и открытия каждого файла.

В обоих случаях вам может потребоваться настроить путь `/path/to/directory`, чтобы он соответствовал фактическому расположению директории, которую вы хотите прочитать.

## Как Импортировать из Родительской Директории

Чтобы `import` модуль из родительской директории в Python, вам нужно добавить родительскую директорию в список `sys.path` вашей системы. Это можно сделать с помощью функции `sys.path.append()`.

1. Если ваша рабочая директория является дочерней для родительской директории, вы можете добавить родительскую директорию в путь следующим образом:

```python
import sys
sys.path.append('..')

# from parent_module import parent_function
```

2. Если ваш рабочий каталог не является дочерним каталогом родительского каталога, вы можете добавить полный путь к родительскому каталогу к пути следующим образом:

```python
import sys
sys.path.append('/path/to/parent_directory')

# from parent_module import parent_function
```

Убедитесь, что вы заменили `parent_module` и `parent_function` на имя вашего родительского модуля и функции.

Добавив родительский каталог в список `sys.path` вашей системы, вы можете `import` модули из родительского каталога в вашем коде Python.
