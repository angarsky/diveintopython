> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/print

Impressão se refere ao processo de exibir a saída de um programa no console ou terminal. É uma operação essencial que permite a você se comunicar com o usuário ou depurar seu código mostrando os valores das variáveis, os resultados de cálculos ou outras informações.
Também existe algo como formatação, que é frequentemente usado na impressão. Formatação de strings (também conhecida como interpolação) é o processo de inserir variáveis ou valores em uma string.

## Impressão

Para imprimir uma variável em Python, você pode usar a função `print()`.

A função `print()` recebe um ou mais argumentos separados por vírgulas e os exibe no console ou terminal.

Vamos olhar exemplos de como imprimir uma variável e uma string em Python:

```python
# Print a string
print("Hello, Python!")

# Print an integer
print(43)

# Print a floating-point number
print(3.14)
```

Python também permite imprimir várias variáveis:

```python
# Print multiple items
print("The answer is:", 42)
```

Você também pode usar várias opções com a função `print()`, como especificar o separador entre itens, terminar a saída com um caractere de nova linha e redirecionar a saída para um arquivo ou outro fluxo.

## Formatação

Há várias maneiras de formatar strings em Python, vamos passar por cada uma delas com exemplos.

- Usando f-strings: Este método envolve o uso de espaços reservados em uma string, que são substituídos por valores dentro de chaves `{}` precedidas pela letra `f`. Por exemplo:

```python
# Print using formatted strings
name = "Tom"
age = 32
print(f"My name is {name} and I am {age} years old.")
```

`f-strings` (ou literais de string formatados) são um recurso introduzido no Python 3.6 que fornecem uma maneira conveniente de incorporar expressões dentro de literais de string, usando uma sintaxe que começa com a letra 'f'.

Com `f-strings`, você pode incorporar expressões dentro de literais de string ao envolvê-las em chaves `{}`. As expressões dentro das chaves são avaliadas em tempo de execução, e seus valores são inseridos na string. Assim, isso ajuda a imprimir várias variáveis em uma única string.

- Usando o método `format()` e chaves: Você pode usar `{}` dentro de uma string para indicar onde deseja inserir os valores das variáveis e, em seguida, usar o método `format()` para substituir pelos valores reais. Aqui está um exemplo:

```python3
name = "John"
age = 30
location = "New York"

print("My name is {}, I'm {} years old, and I live in {}.".format(name, age, location))
```

Este código irá gerar: `My name is John, I'm 30 years old, and I live in New York.`

Neste exemplo, a string `"My name is {}, I'm {} years old, and I live in {}."` contém três chaves `{}` para indicar onde os valores das variáveis devem ser inseridos. O método `format()` é chamado na string, e as variáveis `name`, `age` e `location` são passadas como argumentos para o método.

- Usando o operador `%`: Este método envolve o uso de espaços reservados em uma string, que são então substituídos por valores usando o operador `%`. Por exemplo:

```python3
name = "John"
age = 25
print("My name is %s and I'm %d years old." % (name, age)) # Output: My name is John and I'm 25 years old.
```

Aqui, `%s` é um espaço reservado para uma string, e `%d` é um espaço reservado para um inteiro.

## Modelo de String

Modelos de string fornecem uma maneira de criar strings que incluem espaços reservados para valores que serão preenchidos posteriormente. Isso pode ser útil quando você quer gerar strings dinâmicas com base em alguma entrada.

Para usar modelos de string em Python, você pode usar a classe `string.Template`. Aqui está um exemplo:

```python3
from string import Template

name = "Alice"
age = 30

# Create a string template with placeholders for the name and age
template_str = "My name is ${name} and I am ${age} years old."

# Create a template object from the template string
template = Template(template_str)

# Substitute the values for the placeholders
result = template.substitute(name=name, age=age)

print(result)  # Output: My name is Alice and I am 30 years old.
```

No exemplo acima, primeiro criamos um template de string com espaços reservados para o nome e a idade usando a sintaxe `${}`. Em seguida, criamos um objeto `Template` a partir da string de template e usamos o método `substitute` para substituir os espaços reservados por valores reais. Finalmente, imprimimos a string resultante.

Observe que você precisa passar os valores para os espaços reservados como argumentos de palavra-chave para o método `substitute`.
