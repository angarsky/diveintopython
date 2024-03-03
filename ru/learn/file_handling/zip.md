> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/zip

Zip-файлы являются популярным способом сжатия и объединения нескольких файлов в один архив. Они часто используются для задач, таких как сжатие файлов, резервное копирование данных и распространение файлов. Сжатие или архивация файлов в Python является полезным способом экономии места на жестком диске и упрощения передачи файлов через интернет.

## Как Архивировать Файл в Python

Модуль [zipfile](https://docs.python.org/3/library/zipfile.html) в Python предоставляет функциональные возможности для создания, чтения, записи, добавления и извлечения ZIP-файлов.

### Архивирование Одного Файла

Вы можете использовать модуль `zipfile` для создания [zip](https://en.wikipedia.org/wiki/ZIP_(file_format)) файла, содержащего один файл. Вот как это можно сделать:

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# name of the source file
file_name = 'file_to_compress.txt'

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add the source file to the zip file
zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

В приведенном выше коде мы сначала импортировали модуль `zipfile`. Затем мы определили имя zip-файла и имя исходного файла. Мы создали объект `ZipFile` и добавили в него исходный файл, используя метод `write()`. Затем мы закрыли zip-файл, используя метод `close()`.

### Создание Zip-Архива с Несколькими Файлами

Вы также можете создать zip-файл, содержащий несколько файлов. Вот пример:

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# names of the source files
file_names = ['file_to_compressed1.txt',
              'file_to_compressed2.txt',
              'file_to_compressed3.txt'
             ]

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add multiple files to the zip file
for file_name in file_names:
    zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

В приведенном выше примере мы определили имена нескольких исходных файлов в списке. Затем мы добавили каждый из этих файлов в zip-файл, используя цикл `for` и метод `write()`. Наконец, мы закрыли zip-файл, используя метод `close()`.

Чтобы ещё сильнее сжать zip-файл, можно установить аргумент `compress_type` в значение `zipfile.ZIP_DEFLATED`. Это применяет метод сжатия [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) к добавляемым файлам.

## Распаковать Файл в Python

Используя модуль `zipfile`, распаковать zip-файлы в Python очень просто. Вот два способа сделать это:

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    zip_ref.extractall('destination_folder')
```

В этом примере мы сначала импортируем модуль `zipfile`. Затем мы создаем экземпляр класса `ZipFile` для zip-файла, который хотим извлечь. Аргумент `r` указывает на то, что мы хотим прочитать из zip-файла, а `myzipfile.zip` - это имя файла, который мы хотим извлечь.

Метод `extractall()` извлекает все файлы из zip-файла и сохраняет их в указанную `destination_folder`. Если `destination_folder` не существует, она будет создана.

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    for file in zip_ref.namelist():
        if file.endswith('.txt'):
            zip_ref.extract(file, 'destination_folder')
```

В этом примере мы снова импортируем модуль `zipfile` и создаем экземпляр класса `ZipFile`. Затем мы перебираем все файлы в zip-архиве, используя `namelist()`. Если файл имеет расширение `.txt`, мы извлекаем его в `destination_folder`.

Используя эти два примера кода, вы можете легко извлечь файлы из zip-архивов в Python. Не забудьте настроить пути к файлам и именование, чтобы они соответствовали вашим конкретным потребностям.
