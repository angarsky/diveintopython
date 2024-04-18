> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/date/datetime

O módulo datetime de Python é uma ferramenta poderosa para trabalhar com datas e horários. Ele oferece uma gama de funções e classes para manipular, formatar e analisar datas e horários em vários formatos. Com o datetime de Python, você pode facilmente realizar operações aritméticas em datas e horários, converter entre diferentes fusos horários, e muito mais. Seja trabalhando com carimbos de tempo, calendários ou agendando tarefas, datetime pode ajudar a tornar seu código Python mais robusto e flexível.

## Formatos de Datetime em Python

O módulo integrado `datetime` serve para trabalhar com datas e horários. Aqui estão alguns formatos de datetime comuns em Python:

1. **AAAA-MM-DD** : Ano, mês e dia separados por hifens.

2. **AAAA/MM/DD** : Ano, mês e dia separados por barras.

3. **MM/DD/AAAA** : Mês, dia e ano separados por barras.

4. **DD-MM-AAAA** : Dia, mês e ano separados por hifens.

5. **DD/MM/AAAA** : Dia, mês e ano separados por barras.

6. **AAAA-MM-DD HH:MM:SS** : Ano, mês e dia separados por hifens, seguidos por horas, minutos e segundos separados por dois pontos.

7. **AAAA-MM-DD HH:MM:SS.mmmmmm** : Ano, mês e dia separados por hifens, seguidos por horas, minutos e segundos separados por dois pontos, e microssegundos separados por um ponto.

## Formatação de Data e Hora em Python

Em Python, você pode formatar datas e horários como uma string usando o método `strftime()` de um objeto `datetime`. Este método permite especificar uma string de formato que define como a data ou hora deve ser formatada.

Aqui está uma lista de alguns formatos de data e hora comumente usados em Python:

- **%Y**: ano (4 dígitos)

- **%m**: mês (com zero à esquerda)

- **%d**: dia do mês (com zero à esquerda)

- **%H**: hora (relógio de 24 horas)

- **%M**: minuto (com zero à esquerda)

- **%S**: segundo (com zero à esquerda)

## Como Obter a Data e Hora Atuais de um Objeto Datetime em Python

Para extrair a data atual de um objeto `datetime` em Python, você pode usar o método `date()`. Aqui está um exemplo de como converter um objeto `datetime` em um objeto `date` acessando o método `date()` do objeto `datetime`:

```python3
from datetime import datetime

current_datetime = datetime.now()
current_date = current_datetime.date()

print(current_date)
```

Este código irá gerar a data atual no formato AAAA-MM-DD. Por exemplo, se você executar o código hoje (17 de maio de 2023), a saída será 2023-05-17.

Aqui está também um exemplo de como obter a data e hora atuais:

```python3
from datetime import datetime

# Get the current date and time
current_datetime = datetime.now()

print(current_datetime)  # Output: Current date and time in the format YYYY-MM-DD
```

## Como Obter o Ano Atual de um Objeto Datetime

Para extrair o ano de um objeto datetime em Python, você pode usar o atributo year. Aqui está um exemplo:

```python3
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Extract the year from the datetime object
year = dt.year

print(year) # Output: 2023
```

## Formato de Data e Hora AM/PM em Python

No módulo `datetime` do Python, você pode formatar um objeto datetime para exibir a hora no formato AM/PM usando as diretivas `%I` e `%p` no método strftime. Aqui está um exemplo:

```python3
from datetime import datetime

# Get the current datetime
now = datetime.now()

# Format the time in AM/PM format
formatted_time = now.strftime("%I:%M %p")

# Print the formatted time
print(formatted_time)
```

Este código irá exibir a hora atual no formato "hh:mm AM/PM". Por exemplo, se a hora atual for 2:30 PM, a saída será "02:30 PM".

## Formato de Hora do Relógio

Em Python, você pode obter a hora atual em um formato de "hora do relógio" usando o módulo `datetime`. Aqui está um exemplo:

```python3
from datetime import datetime

# Get the current time
current_time = datetime.now().time()

# Format the time as a clock time
clock_time = current_time.strftime("%H:%M:%S")

print("Current Clock Time:", clock_time) # Output: Current Clock Time: 12:34:56
```

O método `strftime()` é usado para formatar o tempo como uma string de hora do relógio. O código de formato `%H` representa a hora (relógio de 24 horas), `%M` representa o minuto e `%S` representa o segundo.

Ao aplicar o método `strftime()` com o código de formato apropriado, você pode obter a hora atual em um formato de hora do relógio.

## Uma Maneira de Converter Datetime em String em Python

Para converter um objeto `datetime` do Python em uma string, você pode usar o método `strftime()`. O método `strftime()` recebe uma string de formato como argumento e retorna uma representação em string do objeto datetime de acordo com o formato especificado.

Aqui está um exemplo de como formatar a data e a hora atuais:

```python3
import datetime

now = datetime.datetime.now()  # Get the current datetime object
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")  # Format the datetime object
print(formatted_date)  # Print the formatted datetime string
```

## A Conversão de String para Datetime

Você pode usar o módulo `datetime` no Python para converter uma string para um objeto datetime no Python. Aqui está um exemplo de conversão de string para tempo:

```python3
from datetime import datetime

# define the format of the input string
input_format = '%Y-%m-%d %H:%M:%S'

# input string
input_string = '2022-05-14 10:30:00'

# convert the input string to a datetime object
dt_object = datetime.strptime(input_string, input_format)

# print the datetime object
print(dt_object)
```

Neste exemplo, usamos o método `datetime.strptime()` do Python para converter a string de entrada em um objeto datetime. O método `strptime()` recebe dois argumentos: a string de entrada e o formato da string de entrada. A string de formato usa vários códigos de formato para especificar o formato da string de entrada. Neste caso, o código de formato `%Y` representa o ano, `%m` representa o mês, `%d` representa o dia, `%H` representa a hora, `%M` representa o minuto e `%S` representa o segundo.

A variável `dt_object` agora contém um objeto datetime que representa a data e hora na string de entrada. Você pode então realizar várias operações no objeto datetime, como formatá-lo de uma maneira diferente ou realizar operações aritméticas nele.

O mesmo algoritmo pode ser usado para converter uma string em um objeto `date`.

Vamos olhar para o exemplo de conversão de uma string para objeto `date` em Python:

```python3
from datetime import datetime

date_string = "2023-05-22"

# Convert string to date object
my_date = datetime.strptime(date_string, "%Y-%m-%d").date()

print(my_date)  # Output: 2023-05-22
```

## Os Métodos `datetime.now()` e `datetime.today()`

Em Python, você pode usar o módulo interno `datetime` para trabalhar com valores de data e hora. Para obter a data e hora atuais, você pode usar o método `datetime.now()`.

No seguinte exemplo primeiro obtemos a data e a hora e depois as imprimimos:

```python
from datetime import datetime

now = datetime.now()
print("Current date and time:", now)
```

Isso irá exibir a data e a hora atual no formato AAAA-MM-DD HH:MM:SS.ssssss.

Há mais uma maneira de obter a data e a hora atual, você pode usar o método `datetime.today()`. Aqui está um exemplo:

```python
import datetime

now = datetime.datetime.today()
print(now) # This will output the current date and time in the format YYYY-MM-DD HH:MM:SS.mmmmmm.
```

Se você quer exibir apenas a hora atual sem a data, pode usar o método `strftime()` para formatar a saída antes de imprimir:

```python
import datetime
current_time = datetime.datetime.now().strftime("%H:%M:%S")
print("Current time:", current_time)
```

Este irá exibir a hora atual no formato HH:MM:SS.

## Como Extrair a Data de um Objeto `datetime`

Em Python, você pode extrair a parte da data de um objeto datetime usando o método `.date()`. Aqui está um exemplo:

```python
import datetime

# create a datetime object
dt = datetime.datetime(2023, 5, 14, 10, 30, 0)

# extract the date portion
date = dt.date()

# print the date
print(date)  # output: 2023-05-14
```

## Conversão de Datetime para Epoch

Você pode converter um objeto `datetime` do Python para tempo de época (ou seja, o número de segundos desde 1 de Janeiro de 1970, 00:00:00 UTC) usando o método `timestamp()`. Vamos olhar para o exemplo de como converter um objeto `datetime` do Python em um timestamp:

```python3
import datetime

# Create a datetime object for May 14, 2023 at 12:34:56 UTC
dt = datetime.datetime(2023, 5, 14, 12, 34, 56)

# Convert the datetime object to epoch time
epoch_time = int(dt.timestamp())

print(epoch_time)  # Output: 1687877696
```

## Conversão de Epoch para Datetime

Você pode converter um tempo Unix epoch (ou seja, o número de segundos desde 1 de Janeiro de 1970, 00:00:00 UTC) para um objeto `datetime` de Python usando o método `datetime.fromtimestamp()`.

Aqui está um exemplo de como converter o tempo Unix para datetime em Python:

```python
import datetime

# Unix epoch time for May 14, 2023 at 12:34:56 UTC
epoch_time = 1687877696

# Convert the epoch time to a datetime object
dt = datetime.datetime.fromtimestamp(epoch_time)

print(dt)  # Output: 2023-05-14 12:34:56
```

Se você deseja converter um carimbo de data/hora em um objeto `datetime` em um fuso horário específico no Python, você pode usar bibliotecas como `pytz` ou `dateutil` para definir o fuso horário desejado.

## Convertendo para um Módulo `datetime`

Para analisar uma string de data ou hora em um objeto `datetime`, você pode usar o método `datetime.datetime.strptime()`.

O método `strptime()` aceita dois argumentos: a string que você deseja analisar e uma string de formato que especifica o formato da string de entrada. A string de formato usa códigos especiais para representar diferentes partes da data e da hora, como `%Y` para o ano, `%m` para o mês, `%d` para o dia, `%H` para a hora, `%M` para o minuto e `%S` para o segundo.

Aqui está um exemplo de como analisar uma string de data no formato "YYYY-MM-DD":

```python3
import datetime

date_string = "2023-05-14"
date_object = datetime.datetime.strptime(date_string, "%Y-%m-%d")

print(date_object)
```

## Fusos Horários e o Módulo DateTime em Python

Você pode usar o módulo `datetime` para trabalhar com datas, horários e fusos horários no Python.

Para trabalhar com fusos horários, você precisa usar a biblioteca `pytz`. Esta biblioteca fornece um banco de dados abrangente de fusos horários e ferramentas para trabalhar com eles.

Aqui está um exemplo de como você pode trabalhar com fusos horários usando o módulo `datetime` e a biblioteca `pytz` no Python:

```python3
import datetime
import pytz

# create a datetime object in UTC timezone
utc_datetime = datetime.datetime.now(tz=pytz.utc)
print("UTC datetime:", utc_datetime)

# convert the datetime object to a different timezone
local_timezone = pytz.timezone('America/New_York')
local_datetime = utc_datetime.astimezone(local_timezone)
print("Local datetime:", local_datetime)
```

Neste exemplo, primeiro criamos um objeto `datetime` no fuso horário UTC usando o método `datetime.datetime.now()` e passando o objeto de fuso horário `pytz.utc` como o parâmetro `tz`. Em seguida, imprimimos a data e hora UTC.

Depois, criamos um objeto `pytz.timezone` representando o fuso horário local (America/New_York), e então usamos o método `astimezone()` para converter o objeto datetime UTC para o fuso horário local. Por fim, imprimimos a data e hora local.

## Módulo DateTime e Classe Timedelta

O módulo `datetime` em Python oferece várias classes para trabalhar com datas, horas, e intervalos de tempo. Uma das classes disponíveis no módulo é `timedelta`, que representa uma duração ou diferença entre duas datas ou horários.

Aqui está um exemplo de como usar `timedelta`:

```python3
import datetime

# create a datetime object for the current time
now = datetime.datetime.now()

# create a timedelta object representing a duration of 1 day
one_day = datetime.timedelta(days=1)

# calculate a new datetime object that is 1 day in the future
tomorrow = now + one_day

# print the result
print(tomorrow)
```

Aqui está também um exemplo de como encontrar delta de tempo ou diferença de tempo em Python:

```python3
import datetime

# create two datetime objects
start_time = datetime.datetime(2023, 5, 15, 10, 30, 0)
end_time = datetime.datetime(2023, 5, 15, 14, 45, 0)

# calculate the time difference
delta = end_time - start_time

# print the result
print(delta)  # prints: 4:15:00
```

Dessa forma, você pode medir o tempo de execução de qualquer trecho de código.

Para calcular a diferença de tempo em segundos, você pode usar o método `total_seconds()`.

A classe `timedelta` fornece vários outros argumentos que podem ser usados para especificar diferentes unidades de tempo, incluindo `weeks`, `hours`, `minutes`, `seconds`, `microseconds` e `milliseconds`.

## Como Comparar Objetos Datetime

No Python, você pode comparar objetos `datetime` usando os operadores de comparação (`<`, `>`, `<=`, `>=`, `==`, `!=`).

Vamos ver o exemplo de como comparar datas no Python:

```python3
from datetime import datetime

# create datetime objects
date1 = datetime(2021, 9, 1)
date2 = datetime(2021, 9, 2)

# compare datetime objects
if date1 < date2:
    print("date1 is before date2")
else:
    print("date1 is after date2")
```

Como resultado da comparação de datas, obtemos "date1 é anterior a date2".

Você também pode comparar objetos `datetime` com objetos `date`. Nesse caso, o objeto `date` é tratado como se tivesse um horário de meia-noite. Por exemplo:

```python3
from datetime import datetime, date

# create datetime and date objects
date1 = datetime(2021, 9, 1, 10, 30)
date2 = date(2021, 9, 2)

# compare datetime and date objects
if date1 < date2:
    print("date1 is before date2")
else:
    print("date1 is after date2")
```

## Como Adicionar Dias a um Objeto Datetime

Para adicionar tempo a um objeto `datetime` do Python, você pode usar a classe `timedelta` do módulo `datetime`.

Aqui está um exemplo de código que mostra como adicionar 3 dias à data atual:

```python3
from datetime import datetime, timedelta

current_date = datetime.now()
print("Current date:", current_date)

new_date = current_date + timedelta(days=3)
print("New date:", new_date)
```

Você pode ajustar o número de dias a adicionar alterando o valor do argumento days ao criar o objeto `timedelta`.

## Módulo Datetime e Método `isoformat()` em Python

O método `isoformat()` é usado para obter a representação em string de um objeto de data ou hora no formato ISO 8601. A seguir, um exemplo:

```python3
import datetime

# create a datetime object for May 14, 2023 at 2:30 PM
dt = datetime.datetime(2023, 5, 14, 14, 30)

# get the ISO 8601 string representation of the datetime object
iso_str = dt.isoformat()

print(iso_str)  # output: 2023-05-14T14:30:00
```

No formato ISO 8601, a data e a hora são separadas pela letra "T", e a hora é dada em formato de 24 horas. A representação em string do objeto datetime obtida usando o método `isoformat()` não inclui informações sobre o fuso horário. Se você precisar incluir informações sobre o fuso horário, pode usar o método `strftime()` com uma string de formato apropriada.

## O Método `datetime.utcnow()`

Em Python, o módulo `datetime` fornece um método chamado `datetime.utcnow()` que retorna a data e a hora atual como um objeto datetime em UTC (Tempo Universal Coordenado).

Aqui está um exemplo:

```python
import datetime

now_utc = datetime.datetime.utcnow()
print(now_utc)
```

Isto irá exibir a data e hora UTC atual no formato `YYYY-MM-DD HH:MM:SS.mmmmmm`.

Vale ressaltar que `datetime.utcnow()` retorna a hora UTC atual, que não leva em conta nenhum deslocamento de fuso horário. Se você quiser converter essa hora para um fuso horário local, precisará usar o método `datetime.astimezone()`.

## Como Imprimir um Objeto Datetime em Python

Para imprimir um objeto `datetime` em um formato específico em Python, você pode usar o método `strftime()` do módulo `datetime`. Este método permite formatar um objeto datetime em uma representação de string.

Aqui está um exemplo de como imprimir um objeto datetime em um formato específico:

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Format and print the datetime object
formatted_datetime = dt.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_datetime)
```

Neste exemplo, criamos um objeto `datetime` `dt` representando uma data e hora específicas. Em seguida, usamos o método `strftime()` para formatá-lo como uma string. A string de formato `"%Y-%m-%d %H:%M:%S"` especifica o formato desejado para a string de datetime. `%Y` representa o ano com quatro dígitos, `%m` representa o mês com zero à esquerda, `%d` representa o dia com zero à esquerda, `%H` representa a hora no formato de 24 horas, `%M` representa o minuto, e `%S` representa o segundo.

A saída será a string de data e hora formatada:

```python
2023-05-17 12:34:56
```

Você pode personalizar a cadeia de formato com base em seus requisitos específicos. Para mais detalhes sobre os códigos de formato para `strftime()`, você pode consultar a documentação do Python: [Códigos de Formato para strftime() e strptime()](https://docs.python.org/3/library/datetime.html#strftime-strptime-behavior).

## Classe Date do Módulo Datetime

O módulo `datetime` fornece a classe `date`, que permite trabalhar especificamente com datas (sem considerar o tempo). Aqui está um exemplo de como usar a classe `date`:

```python3
from datetime import date

# Create a date object for May 22, 2023
my_date = date(2023, 5, 22)

# Get individual components of the date
year = my_date.year
month = my_date.month
day = my_date.day

print(year, month, day)  # Output: 2023 5 22
```
