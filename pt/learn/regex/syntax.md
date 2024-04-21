> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/regex/syntax

Expressões regulares (regex) são uma ferramenta poderosa para correspondência de padrões e extração de dados em processamento de texto. O módulo `re` do Python fornece um conjunto abrangente de funções para trabalhar com expressões regulares. Este artigo mergulha na sintaxe de expressões regulares em Python, acompanhado de exemplos práticos para ajudá-lo a compreender melhor os conceitos.

## Sintaxe de Expressão Regular

Expressões regulares usam uma sequência de caracteres para definir um padrão de busca. Aqui está uma rápida visão geral de alguns elementos comuns da sintaxe regex em Python:

- **`.`** (Ponto): Corresponde a qualquer caractere único exceto nova linha `'
'`.
- **`^`** (Acento Circunflexo): Corresponde ao início da string.
- **`$`** (Cifrão): Corresponde ao final da string.
- **`*`** (Asterisco): Corresponde a 0 ou mais repetições do elemento anterior.
- **`+`** (Mais): Corresponde a 1 ou mais repetições do elemento anterior.
- **`?`** (Interrogação): Corresponde a 0 ou 1 repetição do elemento anterior.
- **`{m,n}`** (Chaves): Corresponde de m a n repetições do elemento anterior.
- **`[]`** (Colchetes): Corresponde a qualquer caractere único contido dentro dos colchetes.
- **`|`** (Barra Vertical): Atua como um OU lógico entre expressões.
- **`()`** (Parênteses): Agrupa padrões juntos.

Abaixo está uma tabela resumindo esses elementos:

| Símbolo | Descrição |
|---------|-----------|
| `.` | Corresponde a qualquer caractere exceto nova linha |
| `^` | Corresponde ao início da string |
| `$` | Corresponde ao final da string |
| `*` | Corresponde a 0 ou mais repetições |
| `+` | Corresponde a 1 ou mais repetições |
| `?` | Corresponde a 0 ou 1 repetição |
| `{m,n}` | Corresponde de m a n repetições |
| `[]` | Corresponde a qualquer caractere dentro dos colchetes |
| `\|` | OU lógico |
| `()` | Agrupa padrões |

## Exemplos Práticos

Vamos aplicar esses elementos em exemplos práticos usando o módulo `re` do Python:

1. **Encontrando todas as instâncias de 'a' em uma string:**

```python
import re
re.findall('a', 'Mary had a little lamb')
```

2. **Procurando por qualquer caractere entre 'a' e 'z':**

```python
re.findall('[a-z]', 'Hello World!')
```

3. **Correspondendo a qualquer dígito em uma string:**

```python
re.findall('\d', 'The room number is 42.')
```

4. **Encontrando três dígitos consecutivos:**

```python
re.findall('\d{3}', 'Call 911 for emergency')
```

5. **Procurando por palavras que começam com 'S':**

```python
re.findall(r'S\w+', 'The Sun is shining in the Sky.')
```

6. **Combinando uma palavra no início de uma string:**

```python
re.match('^Hello', 'Hello, world!')
```

7. **Encontrando sequências de caracteres não espaços:**

```python
re.findall('\S+', 'Hello, world! How are you?')
```

8. **Substituindo todos os dígitos por um sustenido (#):**

```python
re.sub('\d', '#', 'Password123')
```

9. **Dividindo uma string por qualquer espaço em branco:**

```python
re.split('\s+', 'Split this string by spaces')
```

10. **Verificando se uma string termina com 'world':**

```python
bool(re.search('world$', 'Hello, world'))
```

Esses exemplos demonstram a versatilidade e o poder das expressões regulares em Python para diversas tarefas de processamento de texto. Ao dominar a sintaxe e aplicá-la através de exemplos práticos, você pode aproveitar as expressões regulares para buscar, combinar e manipular strings de maneira eficiente em seus projetos Python.
