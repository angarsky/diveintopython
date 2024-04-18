> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/exceptions

Um dos aspectos fundamentais do Python que contribui para a sua robustez é o seu sistema de tratamento de exceções. Exceções no Python são erros detectados durante a execução que podem interromper o fluxo normal de um programa. Entender as exceções é crucial para escrever código Python confiável e eficiente.

Uma exceção no Python pode surgir de várias situações, como dividir por zero, acessar um arquivo inexistente ou tentar importar um módulo que não existe. Em vez de permitir que esses erros façam o programa travar, o Python permite ao programador capturar e tratar essas exceções de maneira elegante. Isso é feito através do bloco try-except, onde o programador tenta executar o código que pode gerar uma exceção na cláusula try e trata a exceção na cláusula except.

O sistema de exceção do Python é hierárquico, com todas as exceções herdando da classe BaseException. Esse sistema inclui exceções embutidas como `IOError`, `ValueError`,`ZeroDivisionError`, e muitas outras. Os programadores também podem definir suas próprias exceções personalizadas para tratar condições de erro específicas de suas aplicações.

## Por que Utilizar Exceções

Na programação Python, as exceções são uma parte essencial de escrever um código limpo, robusto e eficiente. Exceções são usadas para tratar erros de forma elegante e gerenciar o fluxo do programa quando problemas inesperados ocorrem. Aproveitando a estrutura `try except`, os programadores podem antecipar problemas potenciais e garantir que o seu código possa lidar com circunstâncias incomuns sem travar. O mecanismo de exceção do Python aprimora a confiabilidade do código e a experiência do usuário ao lidar com erros e fornecer um feedback informativo.

### Entendendo Try Except em Python

A estrutura básica de tratamento de exceções no Python envolve os blocos `try` e `except`. Veja como funciona:

1. **Bloco Try:** Este bloco contém o código que pode gerar uma exceção ou um erro. O Python tentará executar esse código, e se um erro ocorrer, interromperá a execução deste bloco e moverá para o bloco `except`.
   
2. **Bloco Except:** O código dentro deste bloco será executado se um erro ocorrer no bloco try. Isso permite o tratamento de erros, registro ou ações de recuperação.

### Exemplo: Try Except Básico

```python3
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
```

### Lidando com Múltiplas Exceções

Python permite o tratamento de múltiplas exceções para lidar com diferentes tipos de erro de forma distinta. Essa capacidade é crucial para criar uma lógica de tratamento de erro mais granular e fornecer respostas específicas para diferentes condições de erro.

### Exemplo: Múltiplos Try Except

```python
try:
    with open('non_existent_file.txt', 'r') as file:
        print(file.read())
except FileNotFoundError:
    print("The file does not exist.")
except Exception as e:
    print(f"An error occurred: {str(e)}")
```

### Utilizando as Melhores Práticas de Exceções

Utilizar exceções corretamente é chave para maximizar seus benefícios no seu código Python. Aqui estão algumas das melhores práticas a seguir:

- **Use classes de exceção específicas** sempre que possível em vez de capturar todas as exceções. Esta prática aumenta a clareza e a confiabilidade do tratamento de erros.
- **Evite except vazio:** Sempre especifique o tipo de exceção a ser capturada para evitar capturar exceções inesperadas.
- **Use finally para limpeza:** O bloco `finally` pode ser usado para garantir que certas ações sejam tomadas, como fechar um arquivo, independentemente de ter ocorrido uma exceção ou não.

> Nota: Ao usar exceções, é importante encontrar um equilíbrio entre tratar erros genuínos e controlar o fluxo do programa. O uso excessivo de exceções para controle de fluxo pode levar a um código difícil de entender e manter.

### Quando Usar Exceções

Na programação Python, exceções devem ser usadas em situações onde um erro é esperado e pode ser tratado de uma maneira que o programa possa continuar ou terminar de forma graciosa. Isso inclui, mas não se limita a:

1. Operações de entrada/saída
2. Trabalhando com arquivos ou conexões de rede
3. Analisando dados
4. Trabalhando com APIs externas ou bibliotecas que podem falhar sob certas condições

Ao usar exceções de forma eficaz, desenvolvedores Python podem criar aplicações resilientes que podem suportar erros e proporcionar uma experiência de usuário suave.

## Tipos de Exceção

Ao trabalhar com Python, tratar erros de forma eficaz é crucial para construir aplicações robustas. Python fornece uma hierarquia de tipos de exceção, permitindo que desenvolvedores capturem e respondam a diferentes erros em seu código. Entender esses tipos e como `print` informações de exceção pode imensamente ajudar na depuração e no tratamento de erros.

### Tipos Comuns de Exceção

Exceções Python cobrem uma ampla gama de tipos de erro, desde erros de sintaxe até erros de tempo de execução. Aqui está uma olhada em alguns tipos de exceção comumente encontrados:

- `SyntaxError`: Ocorre quando o Python não consegue entender seu código.
- `NameError`: Acontece quando um nome local ou global não é encontrado.
- `TypeError`: Causado por uma operação ou função aplicada a um objeto de tipo inapropriado.
- `ValueError`: Levantado quando uma função recebe um argumento do tipo correto, mas valor inapropriado.
- `IndexError`: Disparado ao tentar acessar um índice que está fora do intervalo.

### Como Imprimir o Tipo de Exceção

Quando ocorre uma exceção, pode ser útil saber exatamente com que tipo de exceção você está lidando. Você pode capturar e `print` o tipo de exceção usando as declarações `try` e `except` com `except Exception as e`.

### Exemplo: Imprimir uma Exceção

```python
try:
    # This will raise a ValueError
    print(int("xyz"))
except Exception as e:
    print(f"Caught an exception: {type(e).__name__}")
```

Este exemplo irá gerar:

```python
Caught an exception: ValueError
```

### Exemplo: Imprimir Exceções Específicas

Você também pode capturar e tratar múltiplas exceções específicas separadamente:

```python
try:
    # Code that can raise multiple exceptions
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"Caught a division error: {type(e).__name__}")
except ValueError as e:
    print(f"Caught a value error: {type(e).__name__}")
```

Este código irá especificamente dizer se um `ZeroDivisionError` ou um `ValueError` foi capturado.

### Utilizando a Tabela de Hierarquia de Exceções

A hierarquia de exceções do Python permite que as exceções sejam capturadas com base na sua especificidade. Aqui está uma visão simplificada da hierarquia de exceções:

| Exceção Base | Herda De | Descrição |
| --------------- | ------------- | ----------- |
| `BaseException` | N/A | Classe base para todas as exceções incorporadas |
| `Exception` | `BaseException` | Todas as exceções incorporadas, não finalizando o sistema |
| `ArithmeticError` | `Exception` | Classe base para erros aritméticos |
| `BufferError` | `Exception` | Levantada quando uma operação relacionada a buffer não pode ser realizada |
| `LookupError` | `Exception` | Classe base para erros de busca |

> Nota: Esta tabela não cobre todas as exceções possíveis, mas fornece uma visão sobre a estrutura de herança, o que pode ser útil para capturar exceções de forma eficaz.

## Tratando Exceções  

O tratamento de exceções no Python é um aspecto crítico da escrita de códigos confiáveis e mantidos. Uma exceção no Python é um evento que interrompe o fluxo normal do programa. O Python fornece exceções incorporadas e permite aos usuários definirem as suas próprias. Saber como capturar e tratar essas exceções adequadamente é essencial para depurar e a prova de erros em suas aplicações.

### Exceções Incorporadas no Python

As exceções incorporadas no Python cobrem uma ampla gama de condições de erro. Desde `ValueError`, que indica um valor inapropriado, até `FileNotFoundError`, que sinaliza que um arquivo não pôde ser encontrado, essas exceções ajudam os desenvolvedores a diagnosticar rapidamente problemas.

### Capturando Exceções com `try` e `except`

A estrutura básica para o tratamento de exceções no Python envolve os blocos `try` e `except`. Você coloca o código que pode levantar uma exceção dentro do bloco `try` e o código a executar se ocorrer uma exceção no bloco `except`.

### Exemplo: Bloco básico `try` e `except`

```python
try:
    # Code that might raise an exception
    result = 10 / 0
except ZeroDivisionError:
    print("Caught a division by zero!")
```

No código acima, tentar dividir por zero gera um `ZeroDivisionError`, que é então capturado pelo bloco `except`, evitando que o programa trave.

### Capturar Qualquer Exceção

Para capturar qualquer exceção, você pode usar uma cláusula `except:` simples, que capturará todas as exceções. No entanto, capturar todas as exceções é geralmente desaconselhado, pois pode tornar a depuração mais desafiadora.

### Exemplo: Capturando Qualquer Exceção

```python3
try:
    # Code that might raise any exception
    result = 10 / unknown_var
except:
    print("An unexpected error occurred!")
```

### Tratamento Específico de Exceções

Para um controle mais refinado sobre quais exceções capturar, Python permite especificar múltiplos blocos `except`, cada um tratando um tipo diferente de exceção.

### Except com `SystemExit`

É necessária uma atenção especial ao lidar com `SystemExit`, pois capturar essa exceção pode interferir com o processo normal de encerramento de um script. `SystemExit` é gerada pela função `sys.exit()` e, geralmente, deve ser permitida a propagação.

> Nota: Use `except SystemExit` para capturar explicitamente uma exceção `SystemExit` se você tem uma operação de limpeza específica necessária antes do script sair.

### Registrando Exceção

Registrar exceções pode fornecer uma riqueza de informações para depuração. O módulo [logging](https://docs.python.org/3/library/logging.html) de Python pode ser usado para registrar exceções, fornecendo não apenas a mensagem de erro, mas também o traceback.

### Exemplo: Exemplo de Registro de uma Exceção

```python3
import logging

try:
    # Code that might raise an exception
    result = 1 / 0
except ZeroDivisionError:
    logging.exception("Exception occurred")
```

Este registro exibirá a mensagem de exceção junto com o rastreamento, auxiliando na depuração.

### Melhores Práticas de Tratamento de Exceções

1. **Capture exceções específicas** sempre que possível.
2. **Use `finally`** para ações de limpeza que devem ser executadas em todas as circunstâncias.
3. **Evite capturar `SystemExit`**, a menos que você tenha um bom motivo para isso.
4. **Registre exceções** para auxiliar na depuração.
5. **Use exceções personalizadas** para relatórios de erros mais claros.

Seguir estas recomendações melhorará a robustez e clareza do seu código Python ao lidar com exceções.

## Gerando Exceções

Ao desenvolver aplicações em Python, tratar erros de forma graciosa é crucial para garantir a confiabilidade e robustez do seu software. Ao gerar exceções, você pode controlar o fluxo do seu programa quando situações inesperadas surgirem. Este artigo aborda os fundamentos de como levantar exceções em Python, fornecendo entendimento sobre como elevar uma exceção de forma eficaz no seu código.

### Entendendo o Tratamento de Exceções

O tratamento de exceções é um conceito fundamental em Python que permite a um desenvolvedor antecipar e gerenciar erros durante a execução de um programa. Quando se fala em levantar uma exceção em Python, muitas vezes refere-se à criação intencional de exceções quando certas condições são atendidas.

### Como `raise` uma Exceção

Levantar uma exceção em Python é simples. Você pode usar a palavra-chave `raise` seguida de uma instância da exceção que deseja lançar. Isso é comumente referido como levantar exceção.

### Exemplo: Levantando `ValueError`

```python3
def check_age(age):
    if age < 18:
        raise ValueError("Access denied due to age restrictions.")
    return "Access granted."

try:
    user_status = check_age(17)
    print(user_status)
except ValueError as err:
    print(err)
```

> Nota: Neste exemplo, tentar chamar `check_age` com um argumento menor que 18 leva a um `ValueError`, que é então capturado no bloco `except`.

### Levantando Exceção Personalizada

Você também pode definir suas próprias classes de exceção herdando da classe `Exception` integrada do Python. Isso é útil quando a exceção lançada precisa ser mais específica para o contexto da sua aplicação.

```python3
class AgeRestrictionError(Exception):
    """Exception raised for errors in age restrictions."""

    def __init__(self, message="Age is below the required limit."):
        self.message = message
        super().__init__(self.message)

def verify_age(age):
    if age < 18:
        raise AgeRestrictionError
    return "Verification successful."

try:
    result = verify_age(16)
    print(result)
except AgeRestrictionError as err:
    print(err)
```

> Nota: Exceções personalizadas oferecem uma maneira de criar erros mais descritivos, tornando seu código mais fácil de compreender e depurar.

### Quando Usar o Tratamento de Exceções

Aqui estão circunstâncias quando você pode querer `raise` uma exceção:

1. **Validação de Entrada:** Garantir que a entrada de dados em uma função é válida.
2. **Disponibilidade de Recursos:** Verificar se os recursos necessários estão disponíveis (por exemplo, arquivos ou rede).
3. **Resultados de Operações:** Validar o resultado de uma operação para garantir que atende a certos critérios.

Usar exceções apropriadamente assegura que seu código não é somente robusto, mas também mais fácil de manter e entender.

| Situação             | Motivo para Levantar uma Exceção                                                         |
| -------------------- | ---------------------------------------------------------------------------------------- |
| Parâmetros Inválidos | Para prevenir que funções prossigam com valores que poderiam levar a resultados inesperados |
| Operação Falhada     | Para interromper o fluxo de execução quando uma operação não pode ser completada como pretendido |
| Manipulação de Recursos | Para garantir que recursos como arquivos ou conexões de rede estejam adequadamente disponíveis e utilizáveis |

Entender e implementar estratégias de levantar exceções são habilidades cruciais na programação Python. Elas não apenas ajudam a tornar seu código mais confiável, mas também sinalizam para outros desenvolvedores onde os possíveis problemas estão. Lembre-se, o tratamento eficaz de exceções pode melhorar significativamente a depurabilidade e resiliência de sua aplicação.

## Utilizando a Estrutura `try/except/else`

Ao trabalhar com Python, o tratamento de exceções se torna uma parte integral da escrita de código robusto e livre de erros. A estrutura `try/except/else` é um recurso poderoso que permite aos desenvolvedores antecipar erros potenciais, manuseá-los graciosamente e também executar código que deve rodar apenas se não foram levantadas exceções. Este guia demonstrará como usar efetivamente esta estrutura com exemplos, focando em como `print` e lançar exceções no Python.

### Entendendo `try/Except/else`

O bloco `try` permite testar um bloco de código para erros. O bloco `except` permite que você manuseie o erro. O bloco `else` executa um pedaço de código quando não há exceções. Aprender a usar esses blocos proficientemente pode melhorar muito a confiabilidade e a legibilidade do seu código.

### Exemplo: Sintaxe Básica de `try/except/else`

```python
try:
  pass
   # Attempt to execute this code
except ExceptionType:
  pass
   # Handle the exception
else:
  pass
   # Execute code if no exceptions
```

## Exemplos de `try/except/else`

Vamos mergulhar em alguns exemplos práticos para entender como implementar esses construtos em tarefas cotidianas de codificação.

### Exemplo: Tratando um `ZeroDivisionError`

Aqui, vamos tratar um erro de divisão por zero, que é uma armadilha comum para iniciantes.

```python
try:
    result = 10 / 0
except ZeroDivisionError:
    print("ZeroDivisionError: Cannot divide by zero.")
else:
    print(f"Division result is {result}")
```

Neste exemplo, o bloco `except` captura o `ZeroDivisionError`, evitando assim que o programa trave, e usa `print exception python` para informar o usuário sobre o erro.

### Exemplo: Leitura de Arquivos com Tratamento de Exceção

Ler arquivos sem saber se existem pode levar a um `IOError`. Veja como lidar com tais cenários.

```python3
try:
    with open('nonexistent_file.txt', 'r') as file:
        print(file.read())
except IOError:
    print("IOError: File not found.")
else:
    print("File read successfully.")
```

Este trecho de código informa ao usuário de forma elegante quando um arquivo não existe, em vez de terminar o programa abruptamente.

## Imprimindo e Lançando Exceções

### Como `print` uma Exceção

Imprimir o problema exato pode ajudar na depuração. Você pode capturar e `print` a exceção da seguinte forma:

```python
try:
    # some code that can raise an exception
except Exception as e:
    print(f"An error occurred: {e}")
```

### Melhores Práticas para Usar `try/except/else`

Aqui vai um resumo rápido das melhores práticas ao usar a estrutura try/except/else no Python:
 
1. **Capturar Exceções Específicas**: Sempre tente capturar exceções específicas ao invés de usar uma declaração `except` ampla. Esta abordagem evita a captura de exceções não intencionais.
   
2. **Usar Else para Código que Depende do Bloco Try**: O bloco else deve conter código que deve ser executado apenas se o bloco try não gerar uma exceção.

3. **Manter o Bloco Try Minimalista**: Inclua apenas código que possa levantar uma exceção no bloco try para evitar capturar exceções que não deveriam ser tratadas pelo bloco except.

Ao aderir a essas práticas, os desenvolvedores podem garantir que seu código Python seja eficiente e fácil de solucionar problemas.  
  
## Empregando o Construto `try/finally`  

Ao escrever código, é essencial garantir que certas operações sejam executadas não importa o quê. Isso é especialmente verdadeiro ao lidar com recursos externos ou ações que devem ser finalizadas, como fechar um arquivo ou uma conexão de rede. Python fornece um construto poderoso para abordar isso: o mecanismo `try/finally`, uma parte integral do tratamento de exceções que garante a execução de código de limpeza ou término.

### O Que É o Construto `try/finally`

No Python, o construto `try/finally` é usado para definir um bloco de código onde a parte `try` permite testar um bloco de código para erros, e a parte `finally` permite executar código, independentemente do resultado do bloco try. Esta estrutura garante que o bloco finally seja executado mesmo que ocorra um erro no bloco try.

Este construto é especialmente importante para gerenciamento de recursos, como manipulação de arquivos ou conexões de rede, onde você tem que garantir que os recursos sejam devidamente liberados após o uso, independentemente de ocorrer um erro ou não.

### Como Usar `try/finally`

Aqui está um guia passo a passo:

1. Comece com a palavra-chave `try` seguida de dois pontos para iniciar o bloco try.
2. Escreva o código que você deseja executar e que pode gerar um erro dentro do bloco try.
3. Após o bloco try, use a palavra-chave `finally` seguida de dois pontos para iniciar o bloco finally.
4. Escreva o código que deve ser executado independente de um erro ter ocorrido no bloco try.

> Nota: O construto `try/finally` pode ser usado com ou sem o bloco `except`. No entanto, esta seção foca no uso sem tratamento de exceção explícito (`except`).

### Exemplos de Código para `try/finally`

Para ilustrar o construto `try/finally`, vamos olhar dois exemplos.

Imagine que você está trabalhando com um arquivo e quer garantir que ele seja corretamente fechado após suas operações:

```python
try:
    f = open("test.txt", "r")
    print(f.read())
finally:
    f.close()
    print("File has been closed.")
```

Neste exemplo, não importa o que aconteça após a abertura do arquivo, o bloco `finally` garante que o arquivo seja fechado.

Aqui está um exemplo envolvendo um cenário de gerenciamento de recursos mais genérico:

```python
resource_allocated = False
try:
    print("Allocating Resource")
    resource_allocated = True
    # Simulate an error
    raise Exception("An error occurred!")
finally:
    if resource_allocated:
        print("Cleaning up Resource")
```

Mesmo que um erro ocorra e seja gerado após a alocação de recursos, o bloco `finally` é executado, garantindo a limpeza do recurso.

### Melhores Práticas para Usar `try/finally` em Python

- **Gerenciamento de Recursos**: Sempre use `try/finally` ao lidar com o gerenciamento de recursos, como manipulação de arquivos, comunicação em rede ou ao trabalhar com bancos de dados para garantir que os recursos sejam liberados apropriadamente.
- **Evitar Lógica Complicada no Finally**: Mantenha a lógica do bloco finally simples e direta. Seu propósito principal é a limpeza e liberação de recursos.
- **Depuração e Registro de Erros**: Embora a construção `try/finally` não trate exceções, garanta que quaisquer erros em potencial sejam registrados ou gerenciados fora desta construção para uma melhor depuração e rastreamento de erros.

## Mesclando `finally` e `except` por meio de Aninhamento

Ao trabalhar com o tratamento de exceções em Python, é essencial entender como gerenciar efetivamente tanto os erros quanto o processo de limpeza. Mesclar blocos `finally` e `except` por meio de aninhamento oferece uma maneira sofisticada de lidar com exceções (`except Exception as e`) e garantir que as operações de limpeza necessárias sejam realizadas, independentemente de um erro ter ocorrido. Essa abordagem é particularmente útil em cenários onde você precisa de um alto nível de controle sobre o gerenciamento de erros e recursos.

### Entendendo Try Except Aninhado em Python

Aninhar declarações `try` em Python permite uma abordagem matizada para o tratamento de exceções. Colocar um bloco `try-except` dentro de outro bloco `try` permite capturar exceções de maneira mais granular. Essa técnica, conhecida como **python try except aninhado**, é benéfica ao lidar com código que pode lançar múltiplos tipos de exceções.

### Try Except Aninhado Básico

```python
try:
    # Outer try block
    try:
        # Possible error-prone code
        result = 10 / 0
    except ZeroDivisionError as e:
        print(f"Caught an exception: {e}")
    finally:
        print("This is the inner finally block executing.")
except Exception as e:
    # Outer except block
    print(f"Outer exception caught: {e}")
finally:
    print("This is the outer finally block executing.")
```

Neste exemplo, lidamos com um `ZeroDivisionError` dentro do bloco `try-except` interno, demonstrando o método **de tratamento de exceções captura tudo**. Ambos os blocos `finally` garantem que o código de limpeza seja executado, mostrando como fundir efetivamente os blocos `finally` e `except`.

### Cenário Avançado

```python
try:
    # Outer block attempting file operations
    with open("nonexistent_file.txt", "r") as f:
        content = f.read()
    try:
        # Code that could potentially cause another exception
        process_content(content)
    except Exception as e:
        print(f"Error processing content: {e}")
    finally:
        print("Inner clean-up code executed.")
except FileNotFoundError as e:
    print(f"File error: {e}")
finally:
    print("Outer clean-up code executed, ensuring resources are freed.")
```

Este exemplo avançado ilustra o tratamento de um `FileNotFoundError` específico e uma exceção geral usando a abordagem **except exception as e**. Os blocos `try-except` aninhados permitem um controle preciso sobre o tratamento de exceções e o gerenciamento de recursos.

> Nota: Sempre garanta que o bloco `finally` contenha código que deve ser executado, como fechar arquivos ou liberar recursos do sistema, para prevenir vazamento de recursos.

### Benefícios de Aninhar Finally e Except

1. **Melhoria no Tratamento de Erros**: Permite o tratamento de diferentes exceções em múltiplos níveis, proporcionando flexibilidade.
2. **Gerenciamento de Recursos**: Assegura que o código de limpeza seja executado, crucial para gerenciar recursos como manipuladores de arquivos ou conexões de rede.
3. **Legibilidade do Código**: Torna mais fácil entender qual parte do código é responsável por tratar exceções específicas.

Usar blocos `try-except` aninhados, juntamente com `finally`, é um padrão poderoso em **tratamento de exceções**. Ele fornece o conjunto de ferramentas necessário para escrever código robusto e tolerante a erros, garantindo tanto um tratamento preciso de erros quanto um gerenciamento eficaz de recursos. Esta abordagem é especialmente benéfica em aplicações complexas onde falhar em liberar recursos ou tratar erros adequadamente pode ter implicações significativas.

## Objetos de Exceções

Ao trabalhar com Python, encontrar erros e exceções é inevitável. Exceções são objetos no Python que interrompem o fluxo normal da execução de um programa quando ocorre um erro. O Python fornece uma hierarquia de classes de exceção integradas que podem ser estendidas para criar exceções personalizadas. Esse mecanismo é crucial para o tratamento de erros e contribui para a robustez das aplicações Python.

### O Que São Exceções

Exceções são objetos que encapsulam informações sobre erros que ocorrem durante a execução do programa. Quando um erro ocorre, o Python gera um objeto de exceção. Se não tratado, esse objeto propaga para cima e pode causar a terminação do programa. Tratar exceções adequadamente permite que seu programa responda a erros de maneira graciosa.

### Classe de Exceção Python

A classe base para todas as exceções em Python é `Exception`. Esta classe pode ser subclasseada para criar exceções personalizadas, permitindo que desenvolvedores adicionem funcionalidades ou informações adicionais às suas rotinas de tratamento de exceções.

### Criando uma Exceção Personalizada

Para criar uma exceção personalizada, você simplesmente subclassifica a classe `Exception` e define quaisquer métodos ou propriedades adicionais que precisar.

```python
class MyCustomError(Exception):
    """A custom exception class."""
    pass
```

### Adicionando uma Mensagem de Exceção

Ao lançar uma exceção personalizada, é frequentemente útil fornecer uma mensagem de erro detalhada passando uma string para o construtor da exceção. Esta mensagem é armazenada no atributo `args` do objeto de exceção.

```python
raise MyCustomError("This is an error message")
```

### Trabalhando Com Objetos de Exceção

Quando uma exceção é levantada, ela pode ser capturada usando um bloco `try` e `except`. O objeto de exceção pode então ser acessado no bloco `except` para recuperar informações sobre o erro.

1. Capturando Exceções
2. Acessando a Mensagem da Exceção
3. Manipulação Personalizada Baseada no Tipo de Exceção

### Acessando a Mensagem da Exceção

Neste exemplo, acessamos a mensagem de uma mensagem de exceção dentro de um bloco `except`:

```python3
try:
    raise ValueError("A sample value error")
except ValueError as e:
    print("Exception:", str(e))
```

> Nota: Sempre considere usar as classes de exceção integradas antes de criar as suas próprias, pois suas necessidades podem já estar cobertas pela biblioteca padrão do Python.

## Projetando Exceções

Ao trabalhar com Python, tratar erros de forma graciosa é uma parte crítica do projeto de aplicações robustas. A construção `try except` permite que você capture e trate erros, evitando que seu programa trave inesperadamente. O tratamento de exceções não é apenas sobre capturar erros, mas também sobre fornecer mensagens de erro significativas e, quando necessário, habilitar o desenvolvimento ou o processo de depuração imprimindo o rastreamento de pilha. Vamos mergulhar em como você pode projetar exceções de forma eficaz no Python.

### Utilizando Mensagem de Erro `try/except`

Quando um erro ocorre, é crucial fornecer uma mensagem de erro clara e informativa para o usuário ou o desenvolvedor. Isso pode ser alcançado aproveitando os blocos `try` e `except` do Python. Aqui está um exemplo:

```python
try:
    # Code block where you suspect an error might occur
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"An error occurred: {e}")
```

Neste exemplo, se a divisão por zero ocorrer, o bloco `except` captura o `ZeroDivisionError` e imprime uma mensagem de erro personalizada.

### Exemplo: Imprimir Rastreamento de Pilha da Exceção

Para fins de depuração, pode ser imperativo ver a sequência de chamadas de função que levou ao erro. É aqui que imprimir o rastreamento de pilha se torna útil. Python fornece o módulo [traceback](https://docs.python.org/3/library/traceback.html), que pode ser usado para `print` o rastreamento de pilha. Veja como você pode fazer isso:

```python
import traceback

try:
    # Code block where an error is expected
    result = 10 / 0
except ZeroDivisionError:
    traceback.print_exc()
```

Este trecho de código não só capturará o `ZeroDivisionError` mas também irá `print` a pilha de chamadas, facilitando a depuração do erro.

### Melhores Práticas para Projetar Exceções

Ao lidar com exceções, existe várias práticas recomendadas que você deve seguir:

1. **Capturar Exceções Específicas**: Sempre tente capturar exceções específicas em vez de capturar todas as exceções de maneira genérica. Isso evita que erros não intencionais sejam ignorados silenciosamente.

2. **Fornecer Mensagens Informativas**: Ao capturar exceções, certifique-se de fornecer mensagens de erro informativas e amigáveis ao usuário.

3. **Usar Finally para Limpeza**: Use o bloco `finally` para garantir que ações de limpeza sejam realizadas, como fechar arquivos ou liberar recursos, independentemente de uma exceção ter sido capturada ou não.

> Nota: É importante encontrar um equilíbrio entre capturar exceções específicas e não tornar o tratamento de erro demasiadamente granular, o que pode tornar o código pesado e difícil de manter.
