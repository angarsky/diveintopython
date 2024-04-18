> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/date/time

O módulo time do Python é uma ferramenta poderosa para trabalhar com operações relacionadas ao tempo em Python. Ele fornece funções para medir intervalos de tempo, formatação e análise de strings de data e hora, e manipulação de zonas de tempo. Com o módulo time, você pode facilmente trabalhar com valores de data e hora, e realizar uma ampla gama de operações relacionadas ao tempo em seu código Python. Se você precisa medir o tempo de execução do seu código ou trabalhar com valores de data e hora, o módulo time do Python te oferece cobertura.

## Formatos de Tempo em Python

No Python, você pode usar o método `strftime()` do módulo `time` para formatar valores de tempo de acordo com vários códigos de formato. Aqui estão alguns códigos de formato comumente usados para formatação de tempo em Python:

- **%H**: Hora de 2 dígitos no formato de 24 horas (00-23)
- **%I**: Hora de 2 dígitos no formato de 12 horas (01-12)
- **%M**: Minuto de 2 dígitos (00-59)
- **%S**: Segundo de 2 dígitos (00-59)
- **%p**: Designação AM/PM (AM ou PM)

Você pode combinar esses códigos de formato com outros caracteres para criar o formato de tempo desejado. Aqui está um exemplo de como obter o tempo formatado em Python:

```python3
import time

# Get the current time
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%H:%M:%S", current_time)
formatted_time_am_pm = time.strftime("%I:%M:%S %p", current_time)

# Print the formatted time
print("Formatted Time (24-hour format):", formatted_time)
print("Formatted Time (12-hour format):", formatted_time_am_pm)

# Output:
# Formatted Time (24-hour format): 12:34:56
# Formatted Time (12-hour format): 12:34:56 PM
```

## Função `time.sleep()` do Python

A `time.sleep()` é uma função do Python que suspende a execução do thread atual por um número especificado de segundos, assim você pode facilmente definir seu próprio tempo de espera.

A sintaxe de `time.sleep()` para tempo de espera ou atraso é a seguinte:

```python
import time

time.sleep(seconds)
```

Onde `seconds` é o número de segundos pelos quais a thread deve ser suspensa.

A função `sleep()` aceita a duração do sono em segundos, não em milissegundos. No entanto, você pode alcançar um efeito semelhante dividindo o tempo desejado de duração do sono em milissegundos por 1000 para converter para segundos.

Usar a função `time.sleep()` ajudará você a pausar a execução do programa pelo período de tempo definido.

## Função `time.time()` em Python

Em Python, `time.time()` é uma função que retorna o horário atual em segundos desde a época (1 de janeiro de 1970, 00:00:00 UTC) como um número de ponto flutuante.

Aqui está um exemplo de como usar a função `time.time()` para medir o tempo em Python:

```python
import time

start_time = time.time()

# do some time-consuming task here

end_time = time.time()

elapsed_time = end_time - start_time

print(f"The task took {elapsed_time:.2f} seconds to complete.")
```

Neste exemplo, `start_time` e `end_time` são obtidos chamando `time.time()` no início e no fim da tarefa que consome tempo, respectivamente. A diferença entre os dois tempos dá o tempo decorrido, que é então impresso. O tempo de execução calculado é formatado como uma string com duas casas decimais usando f-strings.

Aqui está também um exemplo de cálculo de tempo para criação de grafos em Python usando a biblioteca `networkx`:

```python
import networkx as nx
import time

start_time = time.time()

# Create a graph with 100 nodes
G = nx.complete_graph(100)

end_time = time.time()

# Compute the time taken to create the graph
time_taken = end_time - start_time

print(f"Time taken to create the graph: {time_taken:.4f} seconds")
```

Portanto, a função `time.time()` pode ser usada para contar tempo em Python.

## Medindo Tempo em Ms

Se você deseja medir o tempo em milissegundos em Python, você pode usar a função `time()` do módulo `time` juntamente com a função `perf_counter()`. Aqui está um exemplo:

```python3
import time

# Get the current time in milliseconds
current_time_ms = int(time.time() * 1000)
print("Current Time in Milliseconds:", current_time_ms)

# Measure the execution time of a code block in milliseconds
start_time = time.perf_counter()

# Code or operation to measure

end_time = time.perf_counter()
execution_time_ms = int((end_time - start_time) * 1000)
print("Execution Time in Milliseconds:", execution_time_ms)
```

Saída:

```python
Current Time in Milliseconds: 1621842353154
Execution Time in Milliseconds: 42
```

Neste exemplo, `time.time()` é usado para recuperar o tempo atual como um número de ponto flutuante representando o número de segundos desde a época. Ao multiplicá-lo por 1000, obtemos o tempo atual em milissegundos.

Para medir o tempo de execução de um bloco de código, usamos `time.perf_counter()` para obter o tempo de alta resolução atual em segundos. Capturamos o tempo de início antes do bloco de código e o tempo de término após o bloco de código. Subtraindo o tempo de início do tempo de término, obtemos o tempo decorrido em segundos. Multiplicando-o por 1000 nos dá o tempo de execução em milissegundos.

## Python `timeit()` com Exemplos

O módulo `timeit` do Python é uma ferramenta poderosa para medir o tempo de execução de pequenos trechos de código. Ele oferece uma maneira simples de cronometrar a execução do código e comparar o desempenho de diferentes abordagens. O módulo `timeit` pode ser particularmente útil quando você quer comparar diferentes implementações e determinar qual delas é mais eficiente.

### Parâmetros do Python `timeit()`

A função `timeit` em Python aceita vários parâmetros que permitem personalizar seu comportamento:

- **stmt**: Essa é a declaração que você deseja medir. Pode ser uma string contendo uma única declaração ou múltiplas declarações separadas por ponto e vírgula.
- **setup**: Este parâmetro é opcional e é usado para configurar o ambiente para o código a ser medido. Também pode ser uma string contendo uma ou mais declarações.
- **timer**: Este parâmetro especifica a função de temporização a ser usada. Se não especificado, o temporizador padrão para a plataforma atual será utilizado.
- **number**: Esse parâmetro determina o número de execuções do código. Quanto mais execuções, mais precisa será a medida de tempo.

### Cronometrando Múltiplas Linhas em Código Python

Você pode usar o módulo `timeit` para cronometrar múltiplas linhas de código Python. Aqui estão dois exemplos usando abordagens diferentes.

#### Exemplo 1: **Usando ponto e vírgula**

```python
import timeit

code_to_measure = """
def square_numbers():
    result = []
    for i in range(1000):
        result.append(i ** 2)
    return result

square_numbers()
"""

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### Exemplo 2: **Usando Aspas Triplas**

```python
import timeit

code_to_measure = '''
def square_numbers():
    result = []
    for i in range(1000):
        result.append(i ** 2)
    return result

square_numbers()
'''

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

Em ambos os exemplos, definimos uma função (`square_numbers`) e então a chamamos usando o módulo `timeit`. O código a ser medido é envolvido em aspas triplas, permitindo-nos abranger múltiplas linhas.

### Métodos `timeit()`

O módulo timeit fornece diferentes métodos para medir o tempo de execução. Aqui estão alguns deles.

#### `timeit.timeit()`

O método `timeit.timeit()` é usado para medir o tempo de execução de um trecho de código. Ele recebe o código como uma string, o número de execuções e uma instrução de configuração opcional.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### `timeit.repeat()`

O método `timeit.repeat()` permite que você repita a medição diversas vezes e retorna uma lista dos tempos de execução.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_times = timeit.repeat(stmt=code_to_measure, number=10000, repeat=5)
print(f"Execution times: {execution_times}")
```

Neste exemplo, o código é executado 10.000 vezes, e a medição é repetida 5 vezes.

#### `timeit.default_timer()`

O método `timeit.default_timer()` retorna o tempo atual de acordo com o relógio de maior resolução disponível na plataforma.

```python
import timeit

start_time = timeit.default_timer()

# Code to be measured
result = [i**2 for i in range(1000)]

end_time = timeit.default_timer()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

Utilizando os métodos `timeit`, você pode escolher aquele que melhor se adapta às suas necessidades de medição e comparar facilmente o desempenho de diferentes implementações de código.

## Obtendo Tempo em Milissegundos

Para obter o tempo atual em milissegundos usando Python, você pode usar o módulo `time` e sua função `time()`, que retorna o número de segundos desde a Época (1 de Janeiro de 1970, 00:00:00 UTC). Você pode então multiplicar esse valor por 1000 para obter o tempo em milissegundos:

```python
import time

milliseconds = int(round(time.time() * 1000))
print(milliseconds)
```

Isso imprimirá o horário atual em milissegundos. Observe que o resultado é arredondado para um inteiro usando a função `round()` antes de convertê-lo em um inteiro usando `int()`. Isso porque `time.time()` retorna um valor de ponto flutuante com alta precisão.

## Um Timer em Python

Para criar um timer em Python, você pode usar o módulo `time` incorporado. Aqui está um exemplo de trecho de código que demonstra como criar um timer:

```python3
import time

def countdown(t):
    while t:
        mins, secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins, secs)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1
    print('Timer completed!')

# Set the time for the timer (in seconds)
t = 60

# Call the countdown function with the time value as the argument
countdown(t)
```

Este código criará um temporizador regressivo de 60 segundos e imprimirá o tempo restante na tela a cada segundo até que o temporizador seja concluído. Você pode ajustar o valor de `t` para definir a duração desejada do temporizador.

Utilizando essa funcionalidade, você pode criar uma função de temporizador para medir o tempo decorrido.

## Funções de Tempo em Python

Em Python, o módulo `time` fornece uma gama de funções para trabalhar com tempo. Aqui estão algumas funções comumente usadas (à parte de `time()` e `sleep()`, que já mencionamos):

- **ctime()** - Essa função recebe um tempo em segundos e retorna uma representação em string desse tempo no formato "Dia Mês Data Hora Ano".
Exemplo de uso:

```python3
import time

current_time = time.time()
time_string = time.ctime(current_time)
print("Current time: ", time_string)
```

- **gmtime()** - Esta função recebe um tempo em segundos e retorna um objeto struct_time representando o horário UTC.
Exemplo de uso:

```python3
import time

current_time = time.time()
utc_time = time.gmtime(current_time)
print("UTC time: ", utc_time)
```

Existem muitas mais funções disponíveis no módulo time do Python para trabalhar com o tempo, incluindo `localtime()`, `strftime()` e `strptime()`.

## A Função `perf_counter()` do Módulo Time

No Python, a função `perf_counter()` do módulo `time` é usada para medir o tempo decorrido com a maior resolução disponível no sistema. Ela oferece um cronômetro mais preciso em comparação com a função `time()` regular. Aqui está um exemplo de como usar o `perf_counter()`:

```python
import time

start_time = time.perf_counter()

# Code to be measured
for i in range(1000):
    # Perform some computation
    result = i ** 2

end_time = time.perf_counter()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

Ao usar `perf_counter()`, você pode medir o tempo de execução de um bloco específico de código com alta precisão. Essa função é comumente usada para perfilamento de desempenho e fins de benchmarking.

## A Função `monotonic()` do Módulo Time

Em Python, a função `monotonic()` do módulo `time` é usada para obter um relógio monotônico, que é um relógio que aumenta continuamente e não é afetado por ajustes de tempo do sistema. É adequado para medir intervalos e determinar o tempo decorrido entre eventos. Aqui está um exemplo de como usar `monotonic()`:

```python
import time

start_time = time.monotonic()

# Code to be measured
for i in range(1000):
    # Perform some computation
    result = i ** 2

end_time = time.monotonic()

elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")
```

Usar `monotonic()` garante que o tempo decorrido seja calculado com base em um relógio monotônico, não afetado por alterações no horário do sistema, como ajustes de relógio ou mudanças de fuso horário. Ele fornece uma medida confiável de tempo decorrido para medições de desempenho e fins de benchmarking.

## Como Parar a Execução de um Programa Após um Determinado Período de Tempo

Se você deseja parar a execução de um programa Python após um determinado período de tempo, você pode usar o módulo `signal` juntamente com um temporizador. O módulo `signal` permite que você lide com vários sinais, incluindo um sinal de temporizador, para controlar o comportamento do programa. Aqui está um exemplo que demonstra como parar o programa após uma duração especificada:

```python3
import signal
import time

# Define the handler function for the alarm signal
def timeout_handler(signum, frame):
    raise TimeoutError("Program execution timed out")

# Set the duration (in seconds) after which the program should be stopped
duration = 10

# Register the handler function to be called when the alarm signal is received
signal.signal(signal.SIGALRM, timeout_handler)

# Set the alarm to trigger after the specified duration
signal.alarm(duration)

try:
    # Code to be executed
    while True:
        # Perform some computation
        time.sleep(1)  # Simulate some work

except TimeoutError:
    print("Program execution stopped after the specified duration")
```

Neste exemplo, o programa define um alarme usando `signal.alarm(duration)`, onde duração é a duração desejada em segundos. Quando o alarme é acionado após a duração especificada, ele gera uma exceção `TimeoutError`, que é capturada pelo bloco try-except. No bloco except, você pode tratar a terminação do programa ou imprimir uma mensagem para indicar que o programa foi interrompido.

> Nota: o módulo signal não está disponível em todas as plataformas, e seu comportamento pode variar. Adicionalmente, esse método pode não ser adequado para interromper tarefas de longa duração ou intensivas em cálculo. Para cenários mais complexos, você pode precisar considerar técnicas de multiprocessing ou threading para alcançar o comportamento desejado.

## Como Medir um Tempo de Execução de uma Função em Python

Para medir o tempo de execução de uma função específica em Python, você pode usar o módulo `time` e um decorador. Aqui está um exemplo de como você pode medir o tempo de uma função usando um decorador:

```python3
import time

def timer_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        elapsed_time = end_time - start_time
        print("Elapsed Time: {:.6f} seconds".format(elapsed_time))
        return result
    return wrapper

# Example function to be timed
@timer_decorator
def my_function():
    time.sleep(2)  # Simulating some time-consuming operation
    return "Finished"

# Call the function
my_function() # Output: Elapsed Time: 2.001987 seconds
```

Neste exemplo, a função `timer_decorator` é um decorador que envolve a função alvo (`my_function`) com funcionalidade de cronometragem. O decorador registra o horário de início antes de invocar a função e o horário de término após a conclusão da função. Ele calcula o tempo decorrido e o imprime.

Ao aplicar o decorador `@timer_decorator` à `my_function`, a função é automaticamente cronometrada quando chamada.

Você pode usar esse decorador em qualquer função que deseja cronometrar aplicando o decorador `@timer_decorator` acima da definição da função.

> Nota: O exemplo utiliza a chamada da função `time.sleep(2)` para simular uma operação demorada. Substitua-a pelo código real ou operação que deseja cronometrar.

## Como Obter o Horário Atual

Se você quer saber que horas são agora, pode usar a função `time()` do módulo `time`. Aqui está um exemplo de como obter o horário atual em Python:

```python
import time

current_time = time.time()
print("Current Time (in seconds since the epoch):", current_time)
```

Neste exemplo, `time.time()` retorna o tempo atual como um número de ponto flutuante representando o número de segundos desde a época. Dessa forma, podemos obter o tempo Unix atual em Python.

## A Função `time.strftime()`

A função `strftime()` no módulo `time` do Python é usada para formatar um objeto `time.struct_time` ou uma tupla de tempo em uma representação de string baseada nos códigos de formato especificados. Aqui está um exemplo:

```python
import time

# Get the current time as a time tuple
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_time)

# Print the formatted time
print("Formatted Time:", formatted_time) # Output: Formatted Time: 2023-05-22 12:34:56
```

## Imprimindo a Hora em Python

Para imprimir a hora atual em Python, você pode usar o módulo `time` ou o módulo `datetime`. Aqui está um exemplo de uso do módulo `time`:

```python
import time

current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)

print("Current Time (using time module):", formatted_time)
```

## Como Obter a Hora Atual

Para recuperar a hora atual em Python, você pode usar o módulo `time` ou o módulo `datetime`. Aqui está como você pode obter a hora atual usando o módulo `time`:

```python
import time

current_time = time.localtime()
print("Current Time (using time module):", time.strftime("%H:%M:%S", current_time))
```

Aqui está também um exemplo de como obter o horário atual em milissegundos:

```python
import time

current_time_ms = int(time.time() * 1000)
print("Current Time (in milliseconds using time module):", current_time_ms)
```

## Gerando um Timestamp em Python

Você pode usar o módulo `time` para gerar um timestamp. Aqui está um exemplo:

```python
import time

timestamp = int(time.time())
print("Timestamp (using time module):", timestamp)
```
