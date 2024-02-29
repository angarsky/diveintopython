> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/binary-files

Бинарные файлы — это компьютерные файлы, которые содержат данные в формате, который можно легко считывать и манипулировать машинами. [Бинарные файлы](https://en.wikipedia.org/wiki/Binary_file) важны, потому что они позволяют программистам работать с данными таким образом, который является эффективным и безопасным. В этой статье будет обсуждаться основы бинарных файлов в Python, как их читать и записывать, и некоторые распространенные случаи использования, где они наиболее полезны.

## Как Прочитать Бинарный Файл

В Python мы можем использовать функцию `open()`, чтобы открыть бинарный файл и прочитать его содержимое.

### Открыть Бинарный Файл в Режиме Чтения

```python
file = open("example.bin", "rb")

# Read the contents of the file and store it in a variable
binary_data = file.read()

# Close the file
file.close()

# Print the contents of the file
print(binary_data)
```

В приведенном выше коде:

- Мы открываем бинарный файл `example.bin` с помощью функции `open()`, с режимом `rb` (чтение бинарных данных).
- Мы читаем содержимое файла, используя метод `.read()`, и сохраняем его в переменной `binary_data`.
- Мы закрываем файл, используя метод `.close()`.
- Мы печатаем содержимое файла, используя функцию `print()`.

### Открытие Бинарного Файла в Режиме Чтения с Использованием Оператора `with`

```python
with open("example.bin", "rb") as file:
    binary_data = file.read()

# Print the contents of the file
print(binary_data)
```

В коде выше:

- Мы открываем бинарный файл ``example.bin`` с помощью функции `open()` и режима ``rb`` (чтение бинарных данных) с использованием инструкции `with`.
- Мы читаем содержимое файла с помощью метода `.read()` и сохраняем его в переменной `binary_data`.
- Мы выводим содержимое файла с помощью функции `print()`.

Использование инструкции `with` для открытия файла гарантирует, что файл будет автоматически закрыт после чтения его содержимого.

## Как Записать Бинарный Файл

Для записи бинарного файла необходимо использовать встроенную функцию `open()` с параметром режима `wb`. Это откроет файл в бинарном режиме, позволяя вам записывать в него бинарные данные. Вот шаги для записи бинарного файла:

1. Откройте файл в бинарном режиме с помощью функции `open()` с параметром режима `wb`.
2. Запишите бинарные данные в файл с помощью метода `write()` объекта файла.
3. Закройте файл с помощью метода `close()` объекта файла.

### Открыть Файл в Бинарном Режиме

```python
file = open('binaryfile.bin', 'wb')
try:
    ##### Write binary data to file

    file.write(b'\x00\x01\x02\x03\x04\x05')
finally:
    ### Close the file

    file.close()
```

В заключение, запись двоичных файлов - это простой процесс, который включает открытие файла в двоичном режиме и запись в него двоичных данных с использованием метода `write()` объекта файла.
  
## Список Режимов Файлов Для Двоичных Файлов

При работе с двоичными файлами вам нужно открыть их в правильном файловом режиме, чтобы убедиться, что файл читается и/или записывается корректно. Существует шесть файловых режимов для двоичных файлов:

1. **rb**: Режим чтения (двоичный) - открывает файл для чтения в двоичном формате.
2. **rb+**: Режим чтения и записи (двоичный) - открывает файл для чтения и записи в двоичном формате.
3. **wb**: Режим записи (двоичный) - открывает файл для записи в двоичном формате. Если файл уже существует, он будет усечен.
4. **wb+**: Режим записи и чтения (двоичный) - открывает файл для чтения и записи в двоичном формате. Если файл уже существует, он будет усечен.
5. **ab**: Режим добавления (двоичный) - открывает файл для записи в двоичном формате. Новые данные будут записаны в конец файла.
6. **ab+**: Режим добавления и чтения (двоичный) - открывает файл для чтения и записи в двоичном формате. Новые данные будут записаны в конец файла.

```python
with open("file.bin", "rb") as f:
    data = f.read()
    print(data)
```

Этот код открывает двоичный файл с именем `file.bin` в режиме чтения с использованием оператора `with`. Режим `rb` гарантирует, что файл считывается в двоичном формате. Метод `read()` используется для чтения всего файла, а затем содержимое выводится на консоль.

```python
with open("file.bin", "wb") as f:
    data = b"\x48\x65\x6c\x6c\x6f" # Hello in binary
    f.write(data)
```

Этот код создает двоичный файл с именем `file.bin` в режиме записи с использованием оператора `with`. Режим `wb` гарантирует, что файл записывается в двоичном формате. Префикс `b` перед строковым литералом указывает на то, что строка находится в двоичном формате. Метод `write()` используется для записи двоичных данных в файл. Этот код записывает в файл двоичные данные строки `Hello`.