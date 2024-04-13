> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/date

Python oferece módulos integrados que permitem trabalhar com valores de data e hora em vários formatos. O [módulo DateTime](/pt/learn/date/datetime.md) é um dos mais populares para lidar com objetos de data e hora, incluindo fuso horários, diferenças de tempo e aritmética de tempo. O módulo também oferece uma ampla gama de opções de formatação para exibir datas e horas de diferentes maneiras. Além disso, o [módulo Time](/pt/learn/date/time.md) do Python fornece funções para trabalhar com valores de tempo, como obter o tempo atual, medir o tempo decorrido e definir tempos de espera. Entender como trabalhar com valores de data e hora é essencial para muitas tarefas de programação, incluindo agendamento, análise de dados e gerenciamento de banco de dados.

## Variáveis de Data e Hora em Python

Python tem vários módulos integrados para trabalhar com datas e horas. Aqui estão alguns dos mais usados:

1. **módulo datetime**: O módulo datetime do Python fornece classes para trabalhar com datas e horas. Inclui classes como datetime, date, time e timedelta que podem ser usadas para representar e manipular datas, horas e durações.

2. **módulo time**: Este módulo fornece funções para trabalhar com funções relacionadas ao tempo, como obter o tempo atual, esperar por uma certa quantidade de tempo e converter entre representações de tempo.

3. **módulo calendar**: Este módulo fornece funções para trabalhar com calendários, como obter o número de dias em um mês, determinar o dia da semana para uma data dada e formatar datas de várias maneiras.

4. **módulo dateutil**: Este módulo fornece funcionalidade adicional para trabalhar com datas e horas, incluindo a análise de datas e horas a partir de strings, lidando com fusos horários e realizando aritmética com datas e horas.

## Data em Python

Em Python, o módulo `date` não é um módulo autônomo. No entanto, o módulo `datetime` fornece uma classe date que permite trabalhar especificamente com datas (sem considerar o tempo).

Aqui está um exemplo de como usar a classe `date` para trabalhar com datas em Python:

```python3
from datetime import date

# Create a date object for May 22, 2023
my_date = date(2023, 5, 22)

# Access individual components of the date
year = my_date.year
month = my_date.month
day = my_date.day

print(year, month, day)
```

## O Módulo Calendar

O módulo `calendar` em Python fornece funções para trabalhar com calendários. Ele permite que você gere calendários para um mês ou ano específico e fornece métodos para manipular esses calendários.

Aqui está um exemplo de como usar o módulo `calendar`:

```python3
import calendar

# Print the calendar for the current month
print(calendar.month(2023, 5))

# Print the calendar for the entire year
print(calendar.calendar(2023))

# Check if a year is a leap year
print(calendar.isleap(2023))

# Get the first weekday of a month
print(calendar.monthrange(2023, 5))
```

A função `month()` retorna uma string formatada representando o calendário para o ano e mês dados. A função `calendar()` retorna uma string de múltiplas linhas representando o calendário para o ano inteiro. A função `isleap()` retorna `True` se o ano dado for um ano bissexto, e `False` caso contrário. A função `monthrange()` retorna uma tupla contendo o primeiro dia da semana do mês e o número de dias no mês.

Você pode usar essas funções para gerar instâncias de `calendar` e manipulá-las conforme necessário em suas aplicações Python.

## Módulo Dateutil do Python

O módulo `dateutil` é um módulo de terceiros em Python que fornece várias utilidades para trabalhar com datas e horários. Ele extende a funcionalidade fornecida pelo módulo `datetime` embutido e facilita o trabalho com datas e horários em Python.

Aqui estão alguns exemplos do que você pode fazer com o módulo `dateutil`:

```python3
from dateutil import parser
from dateutil.relativedelta import relativedelta
from dateutil.rrule import rrule, DAILY

# Parse a string and convert it to a datetime object
date_string = 'May 15, 2023'
date = parser.parse(date_string)

# Add or subtract time from a datetime object
new_date = date + relativedelta(months=1)

# Generate a sequence of dates using rrule
dates = rrule(DAILY, count=7, dtstart=date)

# Iterate over the sequence of dates
for d in dates:
    print(d)
```

O método `parser.parse()` é usado para analisar uma representação em string de uma data ou hora e convertê-la em um objeto `datetime`. A classe `relativedelta` é usada para adicionar ou subtrair uma certa quantidade de tempo de um objeto `datetime`. A função `rrule()` é usada para gerar uma sequência de datas de acordo com um conjunto de regras especificado pelo usuário.

O módulo `dateutil` também fornece muitos outros recursos úteis, como suporte a fuso horário, análise de datas e horários relativos e trabalho com intervalos de tempo.

## Como converter um Objeto Date em um Objeto Datetime

Em Python, você pode converter um objeto `date` em um objeto `datetime` usando o método `datetime.combine()`. Este método permite combinar o objeto `date` com um objeto `time` separado para criar um novo objeto `datetime`. Aqui está um exemplo:

```python3
from datetime import date, datetime, time

# Create a date object
my_date = date(2023, 5, 22)

# Create a time object
my_time = time(14, 30, 0)

# Combine date and time to create a datetime object
my_datetime = datetime.combine(my_date, my_time)

print(my_datetime)  # Output: 2023-05-22 14:30:00
```

## Conversão de String para Data em Python

Para analisar uma data a partir de uma string em Python, você pode usar a função `datetime.strptime()` do módulo `datetime`. A função `strptime()` permite que você analise uma string representando uma data e hora de acordo com um formato especificado.

Aqui está um exemplo de como criar uma data a partir de uma string em Python:

```python3
from datetime import datetime

date_string = "2023-05-22"

# Parse the date string
parsed_date = datetime.strptime(date_string, "%Y-%m-%d").date()

print(parsed_date)
```

Você pode personalizar o código de formato de acordo com a estrutura da sua string de data. Por exemplo, se sua string de data estiver no formato "22/05/2023", você usaria o formato `%d/%m/%Y` em `strptime()`.

Ao analisar a data a partir de uma string, você pode convertê-la em um objeto `date` e trabalhar com ele usando os métodos e atributos disponíveis no módulo `datetime` do Python.

## Conversão de Data para String

Para converter um objeto `date` em uma string em Python, você pode usar o método `strftime()` do módulo datetime. O método `strftime()` permite formatar um objeto `date` em uma representação em string de acordo com um formato especificado.

Aqui está um exemplo de conversão de um objeto `date` em uma string:

```python3
from datetime import date

my_date = date(2023, 5, 22)

# Convert date to string
date_string = my_date.strftime("%Y-%m-%d")

print(date_string)
```

## Como Obter a Data Atual do Módulo Datetime em Python

Para obter a data de hoje em Python, você pode usar a classe `date` do módulo `datetime` juntamente com o método `today()`.

Aqui está um exemplo de como obter a data de hoje:

```python3
from datetime import date

# Get today's date
today = date.today()

print(today)  # Output: 2023-05-22
```

## Conversão de um Timestamp para um Objeto Data

Para converter um timestamp para um objeto `date` em Python, você pode usar o método `fromtimestamp()` da classe `date` do módulo `datetime`.

Aqui está um exemplo de como converter um timestamp para um objeto `date`:

```python3
from datetime import date

timestamp = 1621687200  # Example timestamp value

# Convert timestamp to date
converted_date = date.fromtimestamp(timestamp)

print(converted_date)  # Output: 2021-05-23
```

## Como Gerar uma Data em Python

Para gerar uma data em Python, você pode usar a classe `date` do módulo `datetime`. A classe `date` permite que você crie um objeto `date` representando uma data específica.

Aqui estão alguns exemplos de como gerar datas em Python:

Gerando a data de hoje:

```python
from datetime import date

today = date.today()
print(today)  # Output: Current date in the format YYYY-MM-DD
```

Gerando uma data específica:

```python
from datetime import date

my_date = date(2023, 5, 22)
print(my_date)  # Output: 2023-05-22
```

## Como Obter a Data de Ontem

Para obter a data referente a ontem em Python, você pode usar a classe `date` do módulo `datetime` junto com a classe `timedelta`. A classe `timedelta` permite representar uma duração ou diferença no tempo.

Aqui está um exemplo de como obter a data de ontem:

```python3
from datetime import date, timedelta

# Get today's date
today = date.today()

# Calculate yesterday's date
yesterday = today - timedelta(days=1)

print(yesterday)  # Output: Date representing yesterday
```

## Uma Função de Data

Em Python, a função `date` faz parte do módulo `datetime` e é usada para criar objetos `date` que representam datas sem nenhum componente de tempo.

Aqui está um exemplo de como usar a função `date` para criar um objeto `date`:

```python
from datetime import date

my_date = date(2023, 5, 22)

print(my_date)  # Output: 2023-05-22
```

## Como Obter o Número de Meses Entre Duas Datas

Não existe uma função ou método especial para o cálculo do número de meses.

Aqui está um exemplo de como calcular o número de meses entre duas datas usando fórmulas simples:

```python3
from datetime import date

# Define the start and end dates
start_date = date(2022, 3, 15)
end_date = date(2023, 8, 22)

# Calculate the number of months
months = (end_date.year - start_date.year) * 12 + (end_date.month - start_date.month)

print(months)  # Output: 17
```
