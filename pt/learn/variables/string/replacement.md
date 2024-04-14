> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/string/replacement

Com bastante frequência, precisamos substituir uma ou mais ocorrências de uma substring ou caractere específicos dentro de uma string por outra substring ou caractere. Essa é uma operação comumente usada na programação de computadores e no processamento de texto, pois permite a manipulação de dados de texto de maneira flexível e eficiente. Aqui estão alguns métodos que podem ajudar nisso.

## Substituição de String

Na maioria das linguagens de programação, a substituição de string é tipicamente realizada usando uma combinação de funções de manipulação de strings e expressões regulares. Por exemplo, em Python, o método `replace()` pode ser usado para substituir todas as ocorrências de uma substring específica dentro de uma string:

```python
string.replace(old, new[, count])
```

Aqui, `string` é a string original, `old` é a substring que precisa ser substituída, `new` é a nova substring que substituirá a antiga substring, e `count` (opcional) é o número de vezes que a substituição deve ser feita.

O método `replace()` retorna uma nova string com as substituições especificadas realizadas.

Por exemplo, considere o seguinte trecho de código:

```python3
string = "Hello World"
new_string = string.replace("Hello", "Hi")
print(new_string) # Output: Hi World
```

Neste exemplo, o método `replace()` é usado para substituir a substring `"Hello"` por `"Hi"` na variável `string`. A string resultante é então impressa usando a função `print()`.

Você também pode usar o método `replace()` para substituir um único caractere em uma string.

Note que a variável de string original não é modificada pelo método `replace()`; em vez disso, uma nova string é criada com as substituições especificadas feitas.

## O Método `strip()`

Este é um método de string integrado que retorna uma cópia da string com caracteres iniciais e finais removidos. O método `strip()` pode ser usado para remover caracteres de espaço em branco como espaços, tabulações e novas linhas. Em alguns outros idiomas conhecido como método `trim()`.

Aqui está um exemplo de remoção de espaços:

```python3
string = "  hello world  "
new_string = string.strip()
print(new_string) # Output: "hello world"
```

Como você pode ver, o método `strip()` removeu os espaços iniciais e finais da string original. Se você quiser remover apenas os espaços iniciais ou finais, você pode usar os métodos `lstrip()` ou `rstrip()`, respectivamente.

Por exemplo:

```python3
string = "  hello world  "
new_string = string.lstrip()
print(new_string) # Output: "hello world  "
```

Neste caso, apenas os espaços iniciais foram removidos, e os espaços finais permaneceram. Da mesma forma, se você usar `rstrip()` ao invés de `lstrip()`, apenas os espaços finais seriam removidos.

## Remover Caracteres de Nova Linha

Você pode remover caracteres de nova linha de uma string usando o método `replace()`. Aqui está um exemplo:

```python3
string_with_newline = "This is a string\nwith a newline character."
string_without_newline = string_with_newline.replace("\n", "")
print(string_without_newline) # Output: This is a stringwith a newline character.
```

No código acima, primeiro definimos uma string chamada `string_with_newline` que contém um caractere de nova linha (`\n`). Em seguida, usamos o método `replace()` para substituir todas as ocorrências do caractere de nova linha por uma string vazia (`""`). A string resultante, `string_without_newline`, não contém nenhum caractere de nova linha. Então, imprimimos a string resultante usando a função `print()`.
