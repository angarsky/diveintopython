> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/import

Em Python, você pode importar uma classe de outro arquivo, proporcionando uma riqueza de benefícios em termos de organização do código, manutenibilidade e colaboração. Esse recurso permite que os programadores aproveitem módulos de código pré-existentes, tornando seus programas mais eficientes e concisos. Ao importar classes, os desenvolvedores podem acessar e utilizar a funcionalidade fornecida por essas classes sem a necessidade de reescrever todo o código do zero. Neste artigo, exploraremos como importar uma classe de outro arquivo em Python.

## Importações e Atributos

O comando de importação em Python nos permite usar módulos e pacotes externos que fornecem funcionalidades adicionais. Atributos em Python referem-se às propriedades ou valores associados a um objeto que podemos acessar e modificar.

### Importando Módulos em Python Usando o Comando `Import`

Podemos usar a instrução `import` em Python para importar módulos e pacotes externos que fornecem funcionalidades adicionais. Por exemplo, para usar o módulo `math` em Python, podemos escrever:

```python3
import math
print(math.pi)
```

Depois de importar o módulo, podemos usar suas funções e atributos.

### Usando Atributos em Python

Em Python, podemos acessar os atributos de um objeto usando a notação `.`. Por exemplo, dado um objeto `obj`, podemos acessar seus atributos usando `obj.attribute`. Por exemplo, considere a seguinte definição de classe:

```python3
import math
class Circle:
    def __init__(self, radius):
        self.radius = radius
        self.area = math.pi * radius ** 2
c = Circle(2)
print(c.radius)  # Output: 2
print(c.area)  # Output: 12.566370614359172
```

Aqui, nós definimos uma classe `Circle` que representa um círculo com um determinado `radius`. Utilizamos o módulo `math` para calcular a área do círculo usando a fórmula `pi * radius ** 2`.

> Observe que atribuímos o valor da área a um atributo `area` do objeto. Aqui, criamos uma instância `c` da classe `Circle` com `radius` `2`. Em seguida, acessamos seus atributos usando a notação `.`. Imprimimos os valores dos atributos `radius` e `area`, que são `2` e `12.57` (aproximadamente), respectivamente.

## Importando uma Única Classe Usando a Instrução `From`

Vamos explorar como importar uma única classe de outro arquivo Python usando a palavra-chave `from`.

Você pode conseguir isso especificando o nome do arquivo e a classe que deseja importar, assim: `from my_module import MyClass`.

Neste exemplo, importamos a classe `MyClass` de um arquivo chamado `my_module`. Então, podemos criar uma instância de `MyClass` e usar seus métodos conforme desejado.

Por exemplo: `from path.to.my_module import MyClass`. Importamos a classe `MyClass` de um arquivo localizado em um caminho específico (`path/to/my_module`). Isso é útil quando o arquivo que você deseja importar está localizado em um subdiretório do seu projeto.

No Python, importar uma classe de outro arquivo é um processo simples que nos permite aproveitar as vantagens oferecidas pelos arquivos importados.

## Importando Múltiplas Classes

No Python, é possível importar múltiplas classes de um módulo listando os nomes das classes e separando-os com vírgulas.

Por exemplo, você pode importar `class1`, `class2` e `class3` do módulo chamado `module_name` da seguinte forma: `from module_name import class1, class2, class3`.

Alternativamente, você pode usar a sintaxe `from module_name import *` para importar todas as classes de module_name. No entanto, vale ressaltar que essa abordagem é desencorajada porque pode levar a conflitos de nomes, especialmente quando várias classes com o mesmo nome existem em diferentes módulos.

## Importando Todas as Classes de um Módulo Usando o Comando `From`

Para importar todas as classes de um módulo no Python, você pode usar a notação `*`. Isso permite evitar ter que especificar cada nome de classe individual ao importar de outro arquivo em um diretório diferente.

Assumindo que temos um módulo chamado `my_module.py` contendo as classes `Class1` e `Class2`.

```python
# my_module.py

class Class1:
    pass
    
class Class2:
    pass
```

Para importar todas as classes de `my_module.py` para outro script, você pode usar a seguinte sintaxe:

```python
# script.py

from my_module import *
```

Isso importará tanto `Class1` quanto `Class2` para `script.py`.

Se você precisar usar apenas uma classe de um módulo, geralmente é melhor ser mais específico sobre o que você importa para evitar conflitos de nomes potenciais ou problemas de desempenho.

Assumindo que temos um módulo chamado `my_module.py` contendo as classes `Class1` e `Class2`.

```python
# my_module.py

class Class1:
    pass

class Class2:
    pass
```

Para importar apenas `Class1` para outro script, você pode usar a seguinte sintaxe:

```python
# script.py

from my_module import Class1
```

Este apenas importará `Class1` para `script.py`.

## Importando Classes com Alias

Em Python, podemos importar classes com alias para tornar nosso código mais legível e conciso. Alias nos permitem usar um nome mais curto e conveniente para uma classe, sem ter que digitar seu nome completo toda vez que a usarmos.

```python3
# Importing the math module and aliasing it as m
import math as m

# Calculating the square root of 4 using the math.sqrt() method
print(m.sqrt(4))  # Output: 2.0
```

Neste exemplo, estamos importando o módulo `math` e atribuindo a ele o apelido `m`. Isso nos permite usar `m` como uma abreviação para `math` em todo o nosso código. Em seguida, usamos o método `m.sqrt()` para calcular a raiz quadrada de 4 e imprimir o resultado.

```python3
# Importing the square and cube functions from the math module and aliasing them as sq and cu
from math import sqrt as sq, pow as cu

# Calculating the square root of 4 using the sq() function
print(sq(4))  # Output: 2.0

# Calculating the cube of 3 using the cu() function
print(cu(3, 3))  # Output: 27.0
```

Neste exemplo, estamos importando as funções `sqrt` e `pow` do módulo `math` e criando apelidos para elas como `sq` e `cu`, respectivamente. Isso nos permite usar `sq` e `cu` como abreviações para `sqrt` e `pow` em todo o nosso código. Em seguida, usamos a função `sq()` para calcular a raiz quadrada de 4 e a função `cu()` para calcular o cubo de 3 e imprimir os resultados.

No geral, usar apelidos pode tornar nosso código Python mais sucinto e fácil de ler, especialmente ao lidar com classes ou módulos complicados.

## Importando Classes de um Submódulo ou Pacote

Para importar uma classe de outro arquivo/módulo em Python, podemos usar a palavra-chave `import` seguida do nome do módulo ou arquivo onde a classe está definida, e então acessar a classe usando a sintaxe de ponto.

Suponha que temos um módulo `my_module.py` com uma classe `MyClass` definida dentro dele. Para importar essa classe em outro arquivo, podemos fazer `from my_module import MyClass`.

Suponha que temos um pacote chamado `example` que contém um submódulo `utils` com uma classe `MyUtils` definida dentro dele. Para importar essa classe em outro arquivo, podemos fazer:

```python
# we are importing the class MyUtils from the utils submodule inside the example package
# from example.utils import MyUtils

# creating an instance of MyUtils
# obj = MyUtils()
```

Após importar a classe, podemos criar uma instância dela chamando o construtor com parênteses.

## Importando Classes de um Diretório Pai com `sys.path`

O módulo `sys` em Python fornece acesso a vários parâmetros e funções específicos do sistema. A lista `sys.path` é um dos atributos deste módulo e contém os diretórios onde o Python procura por módulos. Para importar classes ou módulos de um diretório fora do caminho de busca padrão, você pode manipular esta lista.

Aqui está um guia passo a passo para importar todas as classes de outra pasta no diretório pai:

1. **Identifique o Diretório Alvo**: Primeiro, você precisa identificar o diretório de onde deseja importar as classes. Este diretório deve estar no diretório pai do seu script atual.
2. **Atualizar `sys.path`**: Para adicionar o diretório alvo ao `sys.path`, você pode usar o método `sys.path.append()`. Por exemplo:

```python
import sys
sys.path.append('/path/to/your/directory')
```

Substitua `'/path/to/your/directory'` pelo caminho real do seu diretório de destino.

3. **Importar Módulos**: Uma vez que o diretório de destino é adicionado ao `sys.path`, você pode importar módulos e classes desse diretório como se estivessem no diretório corrente. Por exemplo:

```python
from target_directory import module_name
```

Substitua `target_directory` pelo nome da pasta da qual você deseja importar e `module_name` pelo nome do módulo ou classe que você deseja usar.

Se você quiser importar todas as classes ou módulos do diretório alvo, você pode usar uma importação com curinga:

```python
from target_directory import *
```

Seja cauteloso ao usar importações com caracteres curinga, pois eles podem levar a conflitos de nomes e tornar seu código mais difícil de entender.

4. **Importar e Usar**: Com os módulos e classes importados, você pode usá-los em seu código conforme necessário. Lembre-se de que o diretório alvo deve conter um arquivo `__init__.py` para ser reconhecido como um pacote.

O comando `import sys` do Python pode ser uma ferramenta poderosa quando você precisa importar classes ou módulos de diretórios localizados fora do caminho de busca padrão. Manipulando a variável `sys.path`, você pode estender as capacidades do Python para incluir diretórios adicionais, permitindo que você organize seu código de forma mais eficaz e mantenha uma estrutura de projeto limpa.
