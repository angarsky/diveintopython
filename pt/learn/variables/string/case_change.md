> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/string/case-change

Existem alguns métodos em Python que são comumente usados para normalizar entradas de strings, para converter strings para maiúsculas ou minúsculas, e para capitalizar a primeira letra de uma sentença ou palavra. Esses métodos podem ser particularmente úteis ao lidar com entrada de usuário ou quando trabalhando com dados de texto que precisam ser padronizados ou formatados consistentemente.

## String para minúsculas

Os métodos `lower()` e `upper()` são usados para converter todos os caracteres em uma string para minúsculas e maiúsculas, respectivamente.

O método `lower()` converte todos os caracteres maiúsculos na string para seus equivalentes minúsculos, enquanto deixa quaisquer caracteres minúsculos existentes inalterados. O método tem a seguinte sintaxe:

```python
string.lower()
```

Aqui, `string` é a string original a ser convertida para minúsculas. O método retorna uma nova string com todos os caracteres maiúsculos convertidos para minúsculos.

Por exemplo, considere o seguinte trecho de código:

```python3
string = "Hello World"
new_string = string.lower()
print(new_string) # Output: hello world
```

Neste exemplo, o método `lower()` é usado para converter todos os caracteres em maiúscula na variável string para minúscula. A string resultante em minúscula é então impressa usando a função `print()`.

## String para maiúscula

Da mesma forma, o método `upper()` converte todos os caracteres em minúscula na string para suas equivalentes em maiúscula, enquanto deixa quaisquer caracteres em maiúscula existentes inalterados. O método tem a seguinte sintaxe:

```python
string.upper()
```

Aqui, `string` é a string original a ser convertida para maiúsculas. O método retorna uma nova string com todos os caracteres minúsculos convertidos para maiúsculas.

Por exemplo, considere o seguinte trecho de código:

```python3
string = "Hello World"
new_string = string.upper()
print(new_string) # Output: HELLO WORLD
```

Neste exemplo, o método `upper()` é usado para converter todos os caracteres minúsculos na variável `string` para maiúsculos. A string resultante em maiúsculas é então impressa usando a função print().

## Capitalizar uma string em Python

O método `capitalize()` apenas capitaliza a primeira letra da string, e deixa o restante das letras em minúsculas. Aqui está um exemplo:

```python3
string = "hello world"
capitalized_string = string.capitalize()
print(capitalized_string) # Output: Hello world
```
