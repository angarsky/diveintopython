> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/statements/match

Declarações switch são um recurso popular em muitas linguagens de programação, permitindo aos desenvolvedores lidar de maneira limpa e eficiente com múltiplos casos condicionais. No entanto, Python não inclui uma declaração switch embutida. Neste artigo, exploraremos várias maneiras de implementar funcionalidade semelhante a switch em Python, usando várias técnicas e bibliotecas. Seja você um desenvolvedor experiente ou apenas começando, este guia fornecerá insights valiosos sobre esse importante conceito de programação.

## Declaração Match

A declaração `match` foi introduzida no Python 3.10 para proporcionar uma maneira concisa e legível de expressar lógica condicional. Ela permite comparar um valor contra um conjunto de padrões e executar o código correspondente baseado na correspondência.

Para usar `match` em Python, você pode criar uma declaração `case` para cada padrão a ser comparado. Aqui está um exemplo de trecho de código que demonstra a declaração de caso match python:

```python
def describe_number(num):
    match num:
        case 0:
            return "Zero"
        case 1:
            return "Single"
        case _:
            return "Multiple"
```

Neste exemplo, a função `describe_number` recebe um parâmetro `num` e retorna uma string baseada no valor de `num`. Se `num` for `0`, ela retorna ``Zero``. Se `num` for `1`, ela retorna `Single`. Caso contrário, ela retorna `Multiple` usando um padrão de correspondência curinga com `_`.

Aqui está outro exemplo de caso de instrução Python:

```python
def calculate_discount(total_amount):
    match total_amount:
        case amount if amount < 1000:
            return amount * 0.05
        case amount if amount >= 1000 and amount < 5000:
            return amount * 0.10
        case amount if amount >= 5000:
            return amount * 0.15
```

Neste exemplo, a função `calculate_discount` recebe um parâmetro `total_amount` e retorna o desconto correspondente com base no valor de `total_amount`. A instrução `match` possui três declarações de `case` com condições específicas, cada uma retornando a porcentagem de desconto aplicável.

Em conclusão, a instrução `match` é uma adição poderosa à linguagem Python que simplifica declarações condicionais. Ela pode melhorar a legibilidade e ajudar você a escrever um código mais conciso.

## Declaração de Alternativa

Infelizmente, o Python não possui uma declaração de caso de alternância nativa. No entanto, existem vários métodos para emular sua funcionalidade por meio de outros construtos, como declarações if-elif-else ou dicionários.

```python3
def switch_case(argument):
    if argument == 0:
        return "Zero"
    elif argument == 1:
        return "One"
    elif argument == 2:
        return "Two"
    else:
        return "Invalid argument"

print(switch_case(2)) # Output: Two
```

```python3
def switch_case(argument):
    return {
        0: "Zero",
        1: "One",
        2: "Two"
    }.get(argument, "Invalid argument")

print(switch_case(2)) # Output: Two
```

Embora não seja tão conciso quanto uma instrução `switch case`, essas alternativas podem fornecer lógica e legibilidade semelhantes no seu código Python.
