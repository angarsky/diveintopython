> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/string/substring

Uma substring é uma sequência de caracteres que faz parte de uma string maior. É uma sequência contígua de caracteres dentro de uma string, que pode ser extraída ou manipulada independentemente.

Por exemplo, na string "Hello, World!", as substrings "Hello", "World" e "!" são todas substrings da string original.

Vamos revisar as operações e métodos mais comuns relacionados à substring.

## Fatiamento de String

Fatiamento de string é o processo de criar uma nova substring a partir de uma string existente em Python. Você pode fatiar uma string usando a sintaxe `[início:fim]` para extrair uma porção da string que começa no índice `início` e termina no índice `fim` (não inclusivo). Aqui estão alguns exemplos:

```python3
my_string = "Hello, world!"

# Get the substring from index 0 to index 4 (not inclusive)
print(my_string[0:4])  # Output: "Hell"

# Get the substring from index 7 to the end of the string
print(my_string[7:])  # Output: "world!"

# Get the substring from index 2 to index 8 (not inclusive) with a step of 2
print(my_string[2:8:2])  # Output: "lo"

# Get the substring from index 2 to the second-to-last character
print(my_string[2:-1])  # Output: "llo, world"
```

No primeiro exemplo, usamos o fatiamento para extrair a substring `"Hell"` da variável `my_string` especificando o índice inicial `0` e o índice final `4` (não incluso).

No segundo exemplo, usamos o fatiamento para extrair a substring `"world!"` da variável `my_string` especificando apenas o índice inicial `7` e deixando o índice final em branco. Isso indica ao Python para extrair a substring do índice inicial até o final da string.

No terceiro exemplo, usamos o fatiamento para extrair um caractere sim, um caractere não da substring `"lo, "`. Fazemos isso especificando o índice inicial `2`, o índice final `8` (não incluso) e um passo de `2`.

No quarto exemplo, usamos o fatiamento para extrair a substring `"llo, world"` da variável `my_string` especificando o índice inicial `2` e o índice final `-1`. O `-1` especifica o penúltimo caractere da string como o índice final.

Para dividir uma string em um delimitador, você também pode usar o método `split()`. Este método aceita um argumento, que é o caractere delimitador ou string que você deseja usar para dividir a string. Aqui está um exemplo:

```python
my_string = "Hello,world"
my_list = my_string.split(",")
print(my_list) # Output: ['Hello', 'world']
```

Você pode remover o primeiro caractere de uma string em Python usando o fatiamento de string. Aqui está um exemplo:

```python
string = "hello"
new_string = string[1:]
print(new_string) # Output: ello
```

O fatiamento de string também pode ser usado para remover o último caractere de uma string. Aqui está um exemplo:

```python
my_string = "Hello World!"
new_string = my_string[:-1]
print(new_string)  # Output: "Hello World"
```

## Subconjunto de uma String

Para verificar se uma string Python contém uma substring específica, você pode usar a palavra-chave `in` ou o método `find()`.

Aqui está um exemplo usando a palavra-chave in:

```python3
my_string = "Hello, world!"
if "world" in my_string:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

Aqui está um exemplo usando o método `find()`:

```python3
my_string = "Hello, world!"
if my_string.find("world") != -1:
    print("Substring found!")
else:
    print("Substring not found.")
# Output: Substring found!
```

Em ambos os exemplos, verificamos se a substring `"world"` está presente na string `my_string`. Se a substring for encontrada, imprimimos `"Substring encontrada!"`, caso contrário, imprimimos `"Substring não encontrada."`.

## Reversão de String

Há várias maneiras de reverter uma string no Python.

Vamos ver como reverter uma string no python com exemplos::

- Usando fatiamento:

```python
string = "hello"
reversed_string = string[::-1]
print(reversed_string)  # Output: "olleh"
```

- Usando um loop:

```python3
string = "hello"
reversed_string = ""
for char in string:
    reversed_string = char + reversed_string
print(reversed_string)  # Output: "olleh"
```

- Utilizando a função `reversed()`:

```python
string = "hello"
reversed_string = "".join(reversed(string))
print(reversed_string)  # Output: "olleh"
```

Todos esses métodos produzirão o mesmo resultado, que é a versão invertida da string original.

## Os Métodos `startswith()` e `endswith()`

Em Python, `startswith()` e `endswith()` são dois métodos de string que são usados para verificar se uma string começa ou termina com um prefixo ou sufixo específico, respectivamente. Aqui está uma visão geral desses métodos:

O método `startswith()` é usado para verificar se uma string começa com um prefixo específico. O método aceita um ou mais prefixos como argumento e retorna `True` se a string começar com qualquer um deles, e `False` caso contrário. Aqui está a sintaxe para o método `startswith()`:

```python
string.startswith(prefix, start=0, end=len(string))
```

onde:

- `prefix` é o prefixo a ser verificado.
- `start` é um parâmetro opcional que especifica o índice inicial da string a ser pesquisada. Por padrão, `start` é definido como 0, o que significa que toda a string será pesquisada.
- `end` é um parâmetro opcional que especifica o índice final da string a ser pesquisada. Por padrão, `end` é definido como o comprimento da string.

Aqui está um exemplo de uso do método startswith():

```python
s = "Python is a great programming language"
print(s.startswith("Python"))  # True
print(s.startswith("Java"))    # False
print(s.startswith(("Java", "Python")))  # True (checking multiple prefixes)
```

O método `endswith()` é usado para verificar se uma string termina com um sufixo específico. O método recebe um ou mais sufixos como argumento e retorna `True` se a string terminar com qualquer um deles, e `False` caso contrário. Veja a sintaxe do método `endswith()`:

```python
string.endswith(suffix, start=0, end=len(string))
```

onde:

- `suffix` é o sufixo a ser verificado.
- os parâmetros `start` e `end` têm o mesmo significado que no método `startswith()`.

Aqui está um exemplo de uso do método endswith():

```python3
s = "Python is a great programming language"
print(s.endswith("language"))  # True
print(s.endswith("Python"))    # False
print(s.endswith(("Python", "language")))  # True (checking multiple suffixes)
```

Em ambos os métodos, você pode passar uma tupla de prefixos ou sufixos para verificar múltiplas possibilidades. Os parâmetros `start` e `end` são opcionais e podem ser usados para procurar apenas uma parte da string.

## O Método `split()`

Também é um método integrado em Python que é usado para dividir e analisar uma string em uma lista de substrings baseada em um separador especificado. Por padrão, o separador usado é o espaço em branco.

Aqui está um exemplo:

```python3
s = "Hello World! How are you?"

words = s.split()

print(words)   # Output: ['Hello', 'World!', 'How', 'are', 'you?']
```

No exemplo acima, o método `split()` é chamado na string `s`, que contém palavras separadas por espaços em branco. A lista resultante words contém todas as palavras na string original como elementos separados.

Você também pode especificar um separador diferente usando o método `split()`. Por exemplo:

```python3
s = "mango,pineapple,banana"

fruits = s.split(",")

print(fruits)   # Output: ['mango', 'pineapple', 'banana']
```

Neste exemplo, o método `split()` é chamado na string `s`, que contém nomes de frutas separados por vírgulas. A lista resultante fruits contém todos os nomes de frutas como elementos separados, com a vírgula usada como separador.

## A Função `string.find()`

Esta é uma função embutida do Python que retorna o índice da primeira ocorrência de uma substring dentro de uma string dada. Se a substring não for encontrada, ela retorna `-1`. A sintaxe para usar `string.find()` é a seguinte:

```python
string.find(substring, start=0, end=len(string))
```

onde `string` é a string na qual pesquisar, `substring` é a string a ser procurada, `start` é o índice inicial da pesquisa (o padrão é 0) e `end` é o índice final da pesquisa (o padrão é o comprimento da string).

Aqui está um exemplo:

```python
sentence = "The quick brown fox jumps over the lazy dog"
print(sentence.find("fox"))   # Output: 16
print(sentence.find("cat"))   # Output: -1
```

Na primeira linha, definimos uma string chamada sentence. Em seguida, usamos a função `find()` para procurar a substring `"fox"` na string `sentence`. Como `"fox"` é encontrado no índice 16 na string `sentence`, a função `find()` retorna `16`. Na segunda linha, procuramos pela substring `"cat"`, que não é encontrada na string `sentence`, então a função `find()` retorna `-1`.

## O Método `replace()`

Em Python, as strings são imutáveis, o que significa que você não pode alterar uma string depois que ela foi criada. No entanto, você pode criar uma nova string que contém uma versão modificada da string original.

Para remover um caractere específico ou uma substring de uma string em Python, você pode usar o método `replace()` ou fatiamento de strings.

Aqui está um exemplo de uso do método replace() para remover um caractere específico:

```python3
my_string = "Hello, World!"
new_string = my_string.replace("o", "")
print(new_string) # Output: Hell, Wrld!
```

Aqui, substituímos o caractere `"o"` por uma string vazia, efetivamente removendo-o da string original.

## Truncamento de String

Você pode truncar uma string especificando o comprimento máximo da string que deseja manter.

Aqui está um exemplo:

```python3
text = "This is a long text that needs to be truncated."
max_length = 20
truncated_text = text[:max_length] + "..." if len(text) > max_length else text
print(truncated_text) # Output: This is a long text...
```

Neste exemplo, definimos primeiro uma string `text` que queremos truncar. Também especificamos o comprimento máximo da string truncada usando a variável `max_length`.

Em seguida, usamos o fatiamento para obter os primeiros caracteres `max_length` da string. Se o comprimento da string original for maior que `max_length`, acrescentamos uma elipse ao final da string truncada usando a concatenação de strings. Se o comprimento da string original for menor ou igual a `max_length`, simplesmente atribuímos a string original à variável `truncated_text`.

Finalmente, imprimimos a string truncada usando a função `print()`.

## O Método `count()`

Você pode usar o método embutido `count` para contar o número de ocorrências de uma substring dentro de uma string.

Aqui está um contador da substring `"is"`:

```python3
string = "Hello, world! This is a sample string."
substring = "is"

count = string.count(substring)

print(count) # Output: 2
```

Neste exemplo, temos uma string `"Hello, world! This is a sample string."` e queremos contar o número de ocorrências da substring `"is"`. Usamos o método count para contar o número de vezes que a substring aparece na string.

A saída deste programa será `2`, porque a substring `"is"` aparece duas vezes na string.
