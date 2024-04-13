> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/binary-files

Arquivos binários são arquivos de computador que contêm dados em um formato que pode ser facilmente lido e manipulado por máquinas. [Arquivos binários](https://en.wikipedia.org/wiki/Binary_file) são importantes porque permitem que programadores trabalhem com dados de uma maneira que é tanto eficiente quanto segura. Este artigo discutirá os fundamentos dos arquivos binários em Python, como ler e escrever neles, e alguns casos de uso comuns onde eles são mais benéficos.

## Como Ler um Arquivo Binário

Em Python, podemos usar a função `open()` para abrir um arquivo binário e ler o conteúdo.

### Abrir um arquivo binário em modo de leitura

```python
file = open("example.bin", "rb")

# Read the contents of the file and store it in a variable
binary_data = file.read()

# Close the file
file.close()

# Print the contents of the file
print(binary_data)
```

No código acima:

- Abrimos o arquivo binário `example.bin` usando a função `open()`, com o modo `rb` (leitura binária).
- Lemos o conteúdo do arquivo usando o método `.read()` e armazenamos na variável `binary_data`.
- Fechamos o arquivo usando o método `.close()`.
- Imprimimos o conteúdo do arquivo usando a função `print()`.

### Abrir um arquivo binário em modo de leitura usando a instrução `with`

```python
with open("example.bin", "rb") as file:
    binary_data = file.read()

# Print the contents of the file
print(binary_data)
```

No código acima:

- Abrimos o arquivo binário ``example.bin`` usando a função `open()` e o modo ``rb`` (ler binário) usando a declaração `with`.
- Lemos o conteúdo do arquivo usando o método `.read()` e o armazenamos na variável `binary_data`.
- Imprimimos o conteúdo do arquivo usando a função `print()`.

Usar a declaração `with` para abrir um arquivo garante que o arquivo seja automaticamente fechado após a leitura de seu conteúdo.

## Como Escrever um Arquivo Binário

Para escrever um arquivo binário, você precisa usar a função integrada `open()` com um parâmetro de modo `wb`. Isso abrirá o arquivo no modo binário, permitindo que você escreva dados binários nele. Aqui estão os passos para escrever um arquivo binário:

1. Abra o arquivo no modo binário usando a função `open()` com um parâmetro de modo `wb`.
2. Escreva os dados binários no arquivo usando o método `write()` do objeto de arquivo.
3. Feche o arquivo usando o método `close()` do objeto de arquivo.

### Abrir um arquivo em modo binário

```python
file = open('binaryfile.bin', 'wb')
try:
    ##### Write binary data to file

    file.write(b'\x00\x01\x02\x03\x04\x05')
finally:
    ### Close the file

    file.close()
```

Em conclusão, escrever arquivos binários é um processo simples que envolve abrir o arquivo em modo binário e escrever dados binários nele usando o método `write()` do objeto de arquivo.

## Uma Lista dos Modos de Arquivo para Arquivos Binários

Ao trabalhar com arquivos binários, você precisa abri-los no modo de arquivo correto para garantir que o arquivo esteja sendo lido e/ou escrito corretamente. Existem seis modos de arquivo para arquivos binários:

1. **rb**: Modo de leitura (binário) - abre o arquivo para leitura em formato binário.
2. **rb+**: Modo de leitura e escrita (binário) - abre o arquivo para leitura e escrita em formato binário.
3. **wb**: Modo de escrita (binário) - abre o arquivo para escrita em formato binário. Se o arquivo já existe, ele será truncado.
4. **wb+**: Modo de escrita e leitura (binário) - abre o arquivo para leitura e escrita em formato binário. Se o arquivo já existe, ele será truncado.
5. **ab**: Modo de acréscimo (binário) - abre o arquivo para escrita em formato binário. Novos dados serão escritos no final do arquivo.
6. **ab+**: Modo de acréscimo e leitura (binário) - abre o arquivo para leitura e escrita em formato binário. Novos dados serão escritos no final do arquivo.

```python
with open("file.bin", "rb") as f:
    data = f.read()
    print(data)
```

Este código abre um arquivo binário chamado `file.bin` no modo de leitura usando a instrução `with`. O modo `rb` garante que o arquivo seja lido em formato binário. O método `read()` é usado para ler o arquivo inteiro e o conteúdo é então impresso no console.

```python
with open("file.bin", "wb") as f:
    data = b"\x48\x65\x6c\x6c\x6f" # Hello in binary
    f.write(data)
```

Este código cria um arquivo binário chamado `file.bin` no modo de escrita usando a instrução `with`. O modo `wb` garante que o arquivo seja escrito em formato binário. O prefixo `b` antes do literal de string indica que a string está em formato binário. O método `write()` é usado para escrever dados binários no arquivo. Esse código escreve os dados binários para a string `Hello` no arquivo.
