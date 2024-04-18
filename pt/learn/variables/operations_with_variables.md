> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/operations-with-variables

Python oferece diversas operações e métodos para trabalhar com dados e realizar várias tarefas. Vamos revisar as mais populares que se relacionam a todos os tipos de variáveis.

## Definição de Tipo

Existem várias maneiras de verificar o tipo de uma variável em Python. Vamos ver como verificar o tipo de uma variável em Python.

### Função `type()`

Esta função integrada `type()` retorna o tipo de dados de uma variável, é o equivalente a `typeof` em outras linguagens de programação.

Vamos ver como imprimir o tipo de variável em Python:

```python3
x = 23
print(type(x))   # Output: <class 'int'>

y = 3.14
print(type(y))   # Output: <class 'float'>

z = "Hello, friend!"
print(type(z))   # Output: <class 'str'>

w = True
print(type(w))   # Output: <class 'bool'>
```

Neste exemplo, a função `type()` é usada para determinar o tipo das variáveis `x`, `y`, `z` e `w`. A saída mostra a classe da variável.

### Função `isinstance()`

Esta função integrada verifica se uma variável é uma instância de uma classe especificada ou não. Com essa função, podemos facilmente verificar se uma variável é `string` ou não.

Então, aqui estamos verificando o tipo de variável em Python:

```python3
x = 5
print(isinstance(x, int))  # Output: True

y = "hello"
print(isinstance(y, str))  # Output: True

z = [1, 2, 3]
print(isinstance(z, list))  # Output: True
```

### Usando o Atributo `__class__`

Este atributo retorna a classe de um objeto.

Exemplo:

```python3
x = 17
print(x.__class__)  # Output: <class 'int'>

y = "hello"
print(y.__class__)  # Output: <class 'str'>

z = [1, 2, 3]
print(z.__class__)  # Output: <class 'list'>
```

Este exemplo mostra como imprimir um tipo de uma variável em Python.

### Usando a Função `type()` com uma Declaração `assert`

Esta é uma maneira de verificar o tipo de uma variável e gerar um erro se o tipo não for o esperado.

Exemplo:

```python
x = 98
assert type(x) == int

y = "hello"
assert type(y) == str

z = [1, 2, 3]
assert type(z) == list
```

Estas são maneiras de como obter um tipo de uma variável em Python, por exemplo, você pode verificar se uma variável é uma lista (veja o exemplo acima).

## Deletando Variáveis

### Usando a instrução `del`

Em Python, a instrução `del` é usada para deletar uma variável ou um item de uma lista, dicionário ou qualquer outro objeto de coleção. A sintaxe para usar del é:

```python
del object
```

Onde `object` pode ser uma variável, um item de lista, um item de dicionário ou qualquer outro objeto.

Aqui estão alguns exemplos:

```python
# Delete a variable
x = 5
del x

# Delete an item from a list
my_list = [1, 2, 3, 4, 5]
del my_list[2]

# Delete an item from a dictionary
my_dict = {'a': 1, 'b': 2, 'c': 3}
del my_dict['b']
```

No primeiro exemplo, a variável `x` é deletada usando a instrução `del`. Após a execução da instrução, a variável `x` não existe mais.

No segundo exemplo, o terceiro item da lista `my_list` é deletado usando del `my_list[2]`. Após a execução da instrução, `my_list` contém os itens `[1, 2, 4, 5]`.

No terceiro exemplo, o item com chave `'b'` é deletado do dicionário `my_dict` usando `del my_dict['b']`. Após a execução da instrução, `my_dict` contém os itens `{'a': 1, 'c': 3}`.

Note que `del` apenas deleta a referência ao objeto, não o objeto em si. Se o objeto ainda estiver referenciado em outra parte do código, ele não será deletado da memória.

### Atribuindo `None` à Variável

Mais um método para limpar uma variável é atribuir o valor `None` a uma variável para indicar que ela não possui valor. O valor `None` é uma constante embutida que representa a ausência de um valor. Aqui está um exemplo:

```python
x = None
print(x)  # Output: None
```

Neste exemplo, nós atribuímos o valor `None` à variável `x`. Quando imprimimos o valor de `x`, vemos que ele retorna `None`.

### Usando as Funções `locals()` ou `globals()`

Você pode usar as funções `locals()` e `globals()` para acessar respectivamente o namespace local e global. Essas funções retornam um dicionário que contém todas as variáveis e seus valores no namespace atual. Você pode usar essas funções para remover variáveis do namespace usando a instrução `del`.

Aqui está um exemplo:

```python
def my_function():
    x = 5
    y = 10
    del locals()['y']
    print(x)
    print(y)  # This will raise a NameError

my_function()
```

Neste exemplo, definimos uma função `my_function()` que cria duas variáveis `x` e `y`. Em seguida, usamos a declaração del para remover a variável `y` do namespace local usando `del locals()['y']`. Após a declaração ser executada, `y` não está mais definida no namespace local, então, quando tentamos imprimir seu valor, obtemos um `NameError`.

Você também pode usar a função `globals()` para remover variáveis do namespace global. Aqui está um exemplo:

```python
x = 5
y = 10

def my_function():
    del globals()['x']

my_function()

print(x)  # This will raise a NameError
print(y)  # Output: 10
```

Neste exemplo, definimos duas variáveis `x` e `y` no namespace global. Em seguida, definimos uma função `my_function()` que usa `del globals()['x']` para remover a variável `x` do namespace global. Após a função ser chamada, `x` não está mais definido no namespace global, então, quando tentamos imprimir seu valor, recebemos um `NameError`. No entanto, `y` ainda está definido no namespace global, então podemos imprimir seu valor sem quaisquer erros.

Além disso, você pode limpar todas as variáveis do namespace atual usando as funções `globals()` e `locals()`. Veja como você pode fazer isso:

```python
# Clear all global variables
for var in globals().copy():
    if var.startswith("__"):
        continue
    del globals()[var]

# Clear all local variables
for var in locals().copy():
    if var.startswith("__"):
        continue
    del locals()[var]
```

O código acima deletará todas as variáveis dos espaços de nomes global e local, exceto pelas variáveis internas do Python (que começam com `__`). Tenha em mente que isso pode ser perigoso, pois irá deletar todas as suas variáveis e você não será capaz de acessá-las mais tarde em seu programa. Então, certifique-se de usá-lo com cautela.

### Usando o Método `__del__()`

O método `__del__()` é um método especial que é chamado quando um objeto está prestes a ser destruído ou coletado como lixo. Você pode definir esse método na sua classe para realizar quaisquer tarefas de limpeza necessárias antes que o objeto seja destruído.

O método `__del__()` não recebe argumentos e não tem valor de retorno. Aqui está um exemplo:

```python
class MyClass:
    def __init__(self, name):
        self.name = name
    
    def __del__(self):
        print(f"{self.name} has been deleted")
        
obj1 = MyClass("Object 1")
obj2 = MyClass("Object 2")
del obj1
```

Neste exemplo, definimos uma classe `MyClass` com um método `__init__()` que inicializa uma variável de instância chamada name. Também definimos um método `__del__()` que imprime uma mensagem quando o objeto é deletado. Criamos duas instâncias da classe `MyClass` e então deletamos uma delas usando a instrução `del`.

Quando executamos este código, obtemos a seguinte saída:

```python
Object 1 has been deleted
```

Esta saída indica que o método `__del__()` foi chamado quando o objeto `obj1` foi deletado.

Note que o método `__del__()` não é garantido ser chamado em todos os casos. Por exemplo, se o programa terminar abruptamente, o método pode não ser chamado. Portanto, geralmente não é uma boa ideia depender deste método para tarefas críticas de limpeza. Em vez disso, é melhor usar outros mecanismos de limpeza, como declarações `with` ou gerenciadores de contexto, quando possível.

## Operações com Variáveis

Já cobrimos a atribuição de variáveis anteriormente. Mas vamos ver o que mais podemos fazer com as variáveis.

### Copiando uma variável

Para copiar uma variável em Python, você pode usar o operador de atribuição `=` ou o método `copy()`. No entanto, é importante notar que o comportamento desses métodos pode ser diferente dependendo do tipo da variável.

- Cópia rasa: Quando você usa o operador de atribuição para copiar uma lista, dicionário ou outros objetos mutáveis, você cria uma cópia rasa. Isso significa que a nova variável refere-se ao mesmo objeto na memória que a variável original. Quaisquer mudanças feitas na variável original serão refletidas na cópia, e vice-versa. Por exemplo:

```python3
original_list = [1, 2, 3]
copy_list = original_list  # Shallow copy
original_list[0] = 4
print(copy_list)  # Output: [4, 2, 3]
```

- Cópia profunda: Se você quiser criar um novo objeto na memória que seja uma cópia da variável original, você pode usar o método `copy()`. Isso cria uma cópia profunda, o que significa que quaisquer alterações feitas na variável original não serão refletidas na cópia, e vice-versa. Por exemplo:

```python3
import copy

original_list = [1, 2, 3]
copy_list = copy.deepcopy(original_list)  # Deep copy
original_list[0] = 4
print(copy_list)  # Output: [1, 2, 3]
```

É importante usar o método apropriado para copiar variáveis a fim de evitar comportamentos inesperados no seu código.

### Verificar se uma Variável está Definida ou não

Você pode usar o operador `in` para verificar se uma variável foi definida ou não.

Aqui está um exemplo:

```python3
if 'my_variable' in locals() or 'my_variable' in globals():
    print('my_variable is defined')
else:
    print('my_variable is not defined')
```

Este código verifica se a variável `my_variable` está definida no namespace local ou global. Se estiver definida, o código imprimirá `'my_variable is defined'`, caso contrário, imprimirá `'my_variable is not defined'`.

Observe que, se a variável foi definida mas tem um valor de `None`, este método ainda a considerará como definida. Se você quiser verificar especificamente por um valor não-`None`, você pode modificar o código assim:

```python3
if 'my_variable' in locals() and locals()['my_variable'] is not None or 'my_variable' in globals() and globals()['my_variable'] is not None:
    print('my_variable is defined and has a non-None value')
else:
    print('my_variable is not defined or has a value of None')
```

Este código verifica tanto se a variável está definida quanto se ela possui um valor não-`None`. Se ambas as condições forem atendidas, ele imprimirá `'my_variable está definida e possui um valor não-None'`, caso contrário, ele imprimirá `'my_variable não está definida ou possui um valor None'`.

### Verificar se uma Variável está Vazia

Em Python, existem várias maneiras de verificar se uma variável está vazia:

- Usando a instrução `if` com o nome da variável:

```python
if my_variable:
    # do something
    pass
else:
    # the variable is empty
    pass
```

Se `my_variable` estiver vazio ou avaliado como `False`, o bloco `else` será executado.

- Usando o operador `not` com o nome da variável:

```python
if not my_variable:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Se `my_variable` estiver vazio ou resultar em `False`, o bloco `if` será executado.

- Usando a função integrada `len()`:

```python
if len(my_variable) == 0:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Se `my_variable` tem um comprimento de 0, é considerada vazia.

- Usando o operador `is` com `None`:

```python
if my_variable is None:
    # the variable is empty
    pass
else:
    # do something
    pass
```

Se `my_variable` for igual a `None`, ela é considerada vazia. No entanto, é importante ressaltar que `None` é um valor específico em Python e não é o mesmo que uma string vazia, lista ou outros tipos de dados.

### Obtendo o Nome de uma Variável

Variáveis são simplesmente nomes que se referem a objetos na memória. Em Python, você pode obter o nome de uma variável usando as funções `locals()` ou `globals()`, dependendo se a variável está no namespace local ou global.

Aqui está um exemplo:

```python3
x = 42
var_name = [k for k,v in locals().items() if v is x][0]
print(var_name)
```

Este código atribui o valor `42` à variável `x`. Em seguida, usa uma compreensão de lista para iterar sobre todos os itens no namespace local, e encontrar o nome da variável que se refere ao objeto com o valor de `x`. Finalmente, imprime o nome dessa variável, que neste caso é `x`.

Note que essa abordagem pressupõe que a variável tenha um valor único no namespace, o que nem sempre pode ser o caso. Além disso, geralmente não é recomendado confiar em nomes de variáveis na lógica do seu código, pois isso pode tornar seu código mais frágil e difícil de refatorar.

### Verificar se uma Variável Existe

Você pode verificar se uma variável existe em Python usando a palavra-chave `in` junto com a função `locals()` ou `globals()`. Aqui está um exemplo:

```python3
if 'my_variable' in locals():
    print("my_variable exists in the local scope.")

if 'my_variable' in globals():
    print("my_variable exists in the global scope.")
```

No exemplo acima, verificamos se uma variável chamada `my_variable` existe no escopo local ou global usando a palavra-chave `in` com a função `locals()` ou `globals()`, respectivamente. Se a variável existir, imprimimos uma mensagem indicando que ela existe no escopo especificado.

Note que a verificação da existência de uma variável usando a palavra-chave `in` e a função `locals()` ou `globals()` só funcionará para variáveis que já foram definidas no programa. Se você não tem certeza se uma variável foi definida ou não, você pode usar um bloco `try`-`except` para capturar uma exceção de `NameError` que seria levantada se a variável não existir. Aqui está um exemplo:

```python3
try:
    my_variable
    print("my_variable exists.")
except NameError:
    print("my_variable does not exist.")
```

Neste exemplo, tentamos acessar a variável `my_variable`, e se ela não existir, uma exceção `NameError` é levantada. Capturamos a exceção usando o bloco except e imprimimos uma mensagem indicando que a variável não existe.
