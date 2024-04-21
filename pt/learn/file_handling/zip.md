> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/zip

Arquivos zip são uma maneira popular de compactar e agrupar múltiplos arquivos em um único arquivo. Eles são comumente usados para tarefas como compressão de arquivos, backup de dados e distribuição de arquivos. Compactar ou zipar arquivos em Python é uma forma útil de economizar espaço no seu disco rígido e facilitar a transferência de arquivos pela internet.

## Como Zipar um Arquivo em Python

O módulo [zipfile](https://docs.python.org/3/library/zipfile.html) em Python oferece funcionalidades para criar, ler, escrever, anexar e extrair arquivos ZIP.

### Zipar um Único Arquivo

Você pode usar o módulo `zipfile` para criar um arquivo [zip](https://en.wikipedia.org/wiki/ZIP_(file_format)) contendo um único arquivo. Aqui está como você pode fazer isso:

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

No código acima, primeiro importamos o módulo `zipfile`. Em seguida, definimos o nome do arquivo zip e o nome do arquivo de origem. Criamos um objeto `ZipFile` e adicionamos o arquivo de origem a ele usando o método `write()`. Então, fechamos o arquivo zip usando o método `close()`.

### Compactar Múltiplos Arquivos

Você também pode criar um arquivo zip contendo vários arquivos. Aqui está um exemplo:

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

No exemplo acima, definimos os nomes de vários arquivos fonte em uma lista. Em seguida, adicionamos cada um desses arquivos ao arquivo zip usando um loop `for` e o método `write()`. Finalmente, fechamos o arquivo zip usando o método `close()`.

Para compactar ainda mais o arquivo zip, você pode definir o argumento `compress_type` como `zipfile.ZIP_DEFLATED`. Isso aplica o método de compressão [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) aos arquivos sendo compactados.

## Descompactar um Arquivo em Python

É simples extrair arquivos zip em Python usando o módulo `zipfile`. Aqui estão duas maneiras de fazer isso:

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    zip_ref.extractall('destination_folder')
```

Neste exemplo, primeiro importamos o módulo `zipfile`. Em seguida, criamos uma instância da classe `ZipFile` para o arquivo zip que queremos extrair. O argumento `r` indica que queremos ler do arquivo zip, e `myzipfile.zip` é o nome do arquivo que queremos extrair.

O método `extractall()` extrai todos os arquivos do arquivo zip e os salva na `destination_folder` especificada. Se `destination_folder` não existir, ela será criada.

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    for file in zip_ref.namelist():
        if file.endswith('.txt'):
            zip_ref.extract(file, 'destination_folder')
```

Neste exemplo, nós novamente importamos o módulo `zipfile` e criamos uma instância da classe `ZipFile`. Em seguida, percorremos todos os arquivos no arquivo zip usando `namelist()`. Se um arquivo tiver uma extensão `.txt`, extraímos ele para `destination_folder`.

Usando esses dois exemplos de código, você pode facilmente extrair arquivos de arquivos zip em Python. Lembre-se de ajustar os caminhos de arquivo e nomes para atender às suas necessidades específicas.
