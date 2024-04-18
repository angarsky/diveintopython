> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/lambda

**Funções lambda** em Python são funções **anônimas** que podem ser definidas e declaradas **inline** com o resto do código.

## O que é uma Função Lambda em Python

Em Python, uma função lambda é uma maneira concisa de criar pequenas funções anônimas. Diferente das funções regulares definidas com a palavra-chave `def`, funções lambda são criadas usando a palavra-chave `lambda` e são tipicamente usadas para operações curtas e imediatas.

A sintaxe para uma função lambda é simples:

```python
lambda arguments: expression
```

Aqui, `lambda` é a palavra-chave, `arguments` são os parâmetros de entrada da função, e `expression` é a operação que a função executa.

Aqui estão também alguns exemplos de declaração e uso:

### Adição Básica

```python
add = lambda x, y: x + y
print(add(3, 4))  # Output: 7
```

### Usando em Funções de Ordem Superior

```python3
numbers = [1, 2, 3, 4, 5]
doubled = list(map(lambda x: x * 2, numbers))
print(doubled)  # Output: [2, 4, 6, 8, 10]
```

### Ordenando uma Lista de Tuplas

```python3
students = [('Alice', 25), ('Bob', 20), ('Charlie', 30)]
students.sort(key=lambda x: x[1])
print(students)  # Output: [('Bob', 20), ('Alice', 25), ('Charlie', 30)]
```

As funções lambda são particularmente úteis quando uma pequena função é necessária por um breve período. Sua simplicidade é benéfica em casos onde definir uma função regular poderia ser exagero.

Pontos chave para lembrar:

- As funções lambda são anônimas e não requerem um nome.
- Elas podem lidar com operações simples em uma única linha.
- Frequentemente usadas com funções de ordem superior como map, filter e sort.
  
## Benefícios e Razões para Usar Funções Lambda na Programação Python

1. **Código conciso**: Funções lambda podem ser definidas em uma única linha de código, tornando-as fáceis de usar e ler.

2. Fácil de **usar funções de outro arquivo Python**: Você pode usar funções `lambda` para definir uma função que pode ser usada de outro arquivo Python.

3. **Programação funcional**: Funções lambda possibilitam que programadores Python usem técnicas de programação funcional, facilitando a escrita de código puro e modular.

### Exemplo de uma função lambda

```python3 
x = lambda a : a + 10
print(x(5)) # output: 15
```

Neste exemplo, uma função `lambda` é definida com o parâmetro `a`. A função adiciona `10` ao parâmetro e retorna o resultado. A função `lambda` é então chamada com o parâmetro `5`, o que resulta na saída de `15`.

## Exemplos e Casos de Uso para Funções Lambda em Python

1. **Ordenando uma lista de tuplas**: Funções lambda podem ser usadas como um **argumento chave** na função `sorted()` para ordenar uma lista de tuplas baseada em um elemento específico da tupla.

```python3 
# Sorting a list of tuples based on the age of a person
people = [('Jane', 23), ('John', 19), ('Adam', 25), ('Kate', 18)]
sorted_people = sorted(people, key=lambda x: x[1])
print(sorted_people)
# Output: [('Kate', 18), ('John', 19), ('Jane', 23), ('Adam', 25)]
```

2. **Filtrando uma lista**: Funções lambda podem ser usadas com `filter()` para criar uma nova lista que satisfaz uma condição específica.

```python3 
 # Filter a list of numbers greater than 5
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
filtered_numbers = list(filter(lambda x: x > 5, numbers))
print(filtered_numbers)
# Output: [6, 7, 8, 9, 10]
```

## Diferenças Entre Funções Lambda e Funções Regulares em Python

1. **Sintaxe**: Funções Lambda são escritas em uma única linha de código e não requerem a palavra-chave `def`. Funções regulares são definidas usando a palavra-chave `def` e podem ser escritas em várias linhas.

2. **Argumentos**: Funções Lambda podem ter qualquer número de argumentos, mas podem ter apenas uma expressão. Funções regulares podem receber qualquer número de argumentos e podem ter várias expressões.

3. **Nome**: Funções Lambda são anônimas, significando que elas não têm um nome. Funções regulares têm um nome que é usado para chamar a função.

4. **Escopo**: Funções Lambda são limitadas em termos de escopo e só podem acessar variáveis globais. Funções regulares têm um escopo mais amplo e podem acessar tanto variáveis locais quanto globais.
  
## Melhores Práticas para Usar Funções Lambda em Python  

1. Mantenha suas funções Lambda **curtas e simples**: Funções Lambda são melhores utilizadas para operações pequenas que podem ser escritas de forma concisa em uma única linha de código. Se sua função é muito longa ou complexa, pode ser melhor escrever uma função Python regular.

2. Use funções Lambda com `map()`, `filter()` e `reduce()`: Essas funções de ordem superior requerem um argumento de função, e funções Lambda são uma ótima maneira de criar funções simples instantaneamente.

3. **Não abuse das funções Lambda**: Enquanto funções Lambda podem ser úteis para certas tarefas, elas também podem tornar seu código menos legível se usadas excessivamente. Se sua expressão Lambda em Python está ficando muito longa, pode ser melhor escrever uma função Python regular.

## Conceitos Avançados de Lambda: `map()`, `reduce()` e `filter()`  

A função `map()` é usada para aplicar uma dada função lambda **a cada elemento em uma coleção**. O resultado é uma nova coleção com a função lambda aplicada a cada elemento. Aqui está um exemplo de uso da função map para adicionar um valor constante a cada elemento em uma lista usando uma função lambda:

```python3 
numbers = [1, 2, 3, 4, 5]
add_two = lambda x: x + 2
result = map(add_two, numbers)
print(list(result)) # [3, 4, 5, 6, 7]
```

A função `reduce()` é usada para aplicar uma dada função lambda **a uma coleção e reduzi-la** a um único valor. A função lambda deve receber dois argumentos e retornar um único valor. Aqui está um exemplo de uso da função reduce para calcular o produto de todos os números em uma lista usando uma função lambda:

```python 
from functools import reduce
numbers = [1, 2, 3, 4, 5]
multiply = lambda x, y: x * y
result = reduce(multiply, numbers)
print(result) # 120
```

A função `filter()` é usada para **aplicar** uma dada função lambda **a cada elemento em uma coleção** e **filtrar elementos** que não atendem a uma certa condição. O resultado é uma nova coleção apenas com os elementos que atendem à condição. Aqui está um exemplo do uso da função filter para manter apenas números pares em uma lista usando uma função lambda:

```python 
numbers = [1, 2, 3, 4, 5]
is_even = lambda x: x % 2 == 0
result = filter(is_even, numbers)
print(list(result)) # [2, 4]
```

## Explorando as Limitações e Advertências do Uso de Funções Lambda no Código Python

Uma limitação das funções lambda é que elas são **restritas a uma única expressão**. Isso significa que operações mais complexas, como um loop ou múltiplos comandos, não podem ser realizadas dentro de uma função lambda. Por exemplo, se quiséssemos criar uma função de potência em Python usando um loop, não podemos usar funções lambda.

Outra limitação das funções lambda é que elas **não podem ser usadas para definir funções recursivas**. Recursão requer que uma função se chame, e uma função lambda **não pode referir-se a si mesma**.

Além disso, usar funções lambda pode tornar o código mais difícil de ler e entender, especialmente para operações complexas. Nesses casos, pode ser melhor usar uma função Python regular.

Adicionalmente, o uso de funções lambda em código crítico à performance **pode incorrer em uma pequena sobrecarga** devido ao processo de criação da função. Nesses casos, pode ser melhor **usar uma função Python pré-definida**, como a função `exp()` da biblioteca `math`.

```python 
# Example of using the exp() function
import math
x = 2.0
y = math.exp(x)
```
