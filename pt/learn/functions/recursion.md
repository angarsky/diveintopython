> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/functions/recursion

**Programação recursiva** é uma técnica em programação onde uma função **se chama repetidamente** até que alcance um caso base ou terminal. É uma ferramenta poderosa para lidar com certos tipos de problemas que podem ser naturalmente definidos de maneira recursiva. Em Python, podemos implementar essa técnica por meio de funções recursivas.

## Funções Recursivas em Python

Funções recursivas são funções que **se chamam** durante a execução para resolver um problema, dividindo-o em subproblemas menores. Recursão em Python envolve dois passos principais: definir o(s) caso(s) base e o(s) caso(s) recursivo(s).

### Exemplo 1: Cálculo de Fatorial Usando Recursão

```python3
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# driver code
num = 5
print("Factorial of", num, "is", factorial(num))
```

Neste exemplo, a função `factorial()` recebe um inteiro `n` como entrada e **recursivamente** calcula o **fatorial** de `n` multiplicando-o com o fatorial de `n-1`. O caso base é quando `n` é igual a `0`, caso em que a função retorna `1`.

### Exemplo 2: Cálculo da Série de Fibonacci Usando Recursão

```python3
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return (fibonacci(n-1) + fibonacci(n-2))

# driver code
num_terms = 10

if num_terms <= 0:
    print("Invalid input")
else:
    print("Fibonacci series:")
    for i in range(num_terms):
        print(fibonacci(i), end=" ")
```

Neste exemplo, a função `fibonacci()` recebe um inteiro `n` como entrada e calcula recursivamente o `n` termo da **série de Fibonacci** somando os dois termos anteriores. O caso base é quando `n` é `0` ou `1`, caso em que a função retorna `n`. O código principal imprime os primeiros `num_terms` da série de Fibonacci, onde `num_terms` é um valor inserido pelo usuário.

## Dicas e Melhores Práticas para Programação Recursiva em Python

1. **Defina claramente o caso base**: O caso base é a condição sob a qual a função deve parar de se chamar recursivamente e retornar um valor. Certifique-se de que o caso base esteja claramente definido e que a função eventualmente o alcance para evitar recursão infinita.

2. **Atenção para a profundidade da recursão**: A profundidade da recursão refere-se ao número de vezes que uma função se chama recursivamente. Python tem um **limite de profundidade de recursão padrão de 1000**, então certifique-se de manter suas funções recursivas dentro do limite ou ajustar o limite de profundidade de recursão usando o módulo sys.

3. **Considere usar memoização**: Memoização é uma técnica usada para armazenar em cache os resultados de chamadas de função dispendiosas e reutilizá-los quando as mesmas entradas ocorrem novamente. Isso pode melhorar significativamente o desempenho de funções recursivas em Python, evitando cálculos duplicados.

4. **Teste e depure cuidadosamente**: Funções recursivas podem ser difíceis de depurar devido à sua natureza complexa. Certifique-se de testar sua função com vários valores de entrada e dedique tempo para entender como ela funciona antes de implantá-la em produção.

## Exemplo: Busca Binária

```python
def binary_search(arr, target, low, high):
    # base case
    if low > high:
        return -1
    # recursive case
    mid = (low + high) // 2
    if arr[mid] == target:
        return mid
    elif arr[mid] > target:
        return binary_search(arr, target, low, mid-1)
    else:
        return binary_search(arr, target, mid+1, high)
```

Esta função recursiva executa **busca binária** em um array ordenado **chamando a si mesma** com subarrays menores até encontrar o alvo ou atingir o caso base onde o índice inferior é maior que o índice superior.

## Erros Comuns e Armadilhas na Recursão em Python

Funções recursivas em Python podem ser uma ferramenta poderosa na solução de problemas complexos, mas também são propensas a erros comuns e armadilhas. Aqui estão alguns erros comuns a evitar quando se usa recursão em Python:

1. **Laços infinitos**: É fácil criar laços infinitos em funções recursivas se você não tiver um caso base que ultimatemente interrompe a recursão. Certifique-se de definir um caso base que irá parar a recursão.

2. **Overflow da pilha**: A recursão pode criar um grande overhead de memória, o que pode levar a erros de overflow da pilha. Tenha cuidado ao usar a recursão com grandes conjuntos de dados.

## Aprimorando Funções Recursivas em Python para Maior Eficiência e Desempenho

Aprimoramento recursivo refere-se ao processo de otimização de uma função recursiva em Python para melhor eficiência e desempenho. Isso envolve identificar áreas que podem ser ajustadas, como reduzir a complexidade de espaço ou usar memoização para reduzir o número de chamadas recursivas.

Abaixo estão dois exemplos de como aprimorar funções recursivas em Python para maior eficiência:

### Memoização

Memoização é o processo de armazenar resultados previamente calculados para evitar cálculo repetido. Isso pode reduzir significativamente o tempo de execução de uma função recursiva.

```python
def fibonacci(n, memo={}):
    if n <= 1:
        return n
    elif n in memo:
        return memo[n]
    else:
        memo[n] = fibonacci(n-1, memo) + fibonacci(n-2, memo)
        return memo[n]
```

No código acima, o dicionário `memo` é usado para armazenar os números de Fibonacci previamente calculados. Quando a função é chamada com um `n` previamente calculado, o valor de `memo` é retornado em vez de a função fazer outra chamada recursiva.

### Otimização de Recursão de Cauda

A otimização de recursão de cauda é uma maneira de otimizar funções recursivas para que elas usem menos espaço na pilha de chamadas.

```python3
def sum_n(n, acc=0):
    if n == 0:
        return acc
    else:
        return sum_n(n-1, acc+n)

# Example usage
print(sum_n(5)) # Outputs: 15
```

No código acima, `sum_n()` é uma **função recursiva** que calcula a soma de todos os números de `1` a `n`. O argumento acc é um **acumulador** que armazena os resultados intermediários do cálculo.

Em cada chamada recursiva, a função adiciona o valor atual de `n` ao acumulador e passa o resultado para a próxima chamada recursiva, sem manter o quadro da pilha da chamada anterior na memória. Dessa forma, a função usa uma quantidade constante de memória na pilha de chamadas e evita o risco de estouro de pilha para valores grandes de `n`.

> Observe que a otimização da recursão de cauda só pode ser aplicada a funções recursivas que têm uma chamada de cauda, ou seja, uma chamada recursiva que ocorre no final da execução da função.
