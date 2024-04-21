> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/date/datetime

Le module datetime de Python est un outil puissant pour travailler avec les dates et les heures. Il offre une gamme de fonctions et de classes pour manipuler, formater et analyser les dates et les heures dans divers formats. Avec datetime de Python, vous pouvez facilement effectuer des opérations arithmétiques sur les dates et les heures, convertir entre différents fuseaux horaires, et bien plus encore. Que vous travailliez avec des horodatages, des calendriers ou la planification de tâches, datetime peut aider à rendre votre code Python plus robuste et flexible.

## Formats de Datetime en Python

Le module intégré `datetime` de Python sert à travailler avec les dates et les heures. Voici quelques formats de datetime courants en Python :

1. **AAAA-MM-JJ** : Année, mois et jour séparés par des tirets.

2. **AAAA/MM/JJ** : Année, mois et jour séparés par des barres obliques.

3. **MM/JJ/AAAA** : Mois, jour et année séparés par des barres obliques.

4. **JJ-MM-AAAA** : Jour, mois et année séparés par des tirets.

5. **JJ/MM/AAAA** : Jour, mois et année séparés par des barres obliques.

6. **AAAA-MM-JJ HH:MM:SS** : Année, mois et jour séparés par des tirets, suivis des heures, minutes et secondes séparées par des points.

7. **AAAA-MM-JJ HH:MM:SS.mmmmmm** : Année, mois et jour séparés par des tirets, suivis des heures, minutes et secondes séparées par des points, et des microsecondes séparées par un point.

## Formatage de Date & Heure en Python

En Python, vous pouvez formater les dates et les heures en chaîne de caractères en utilisant la méthode `strftime()` d'un objet `datetime`. Cette méthode vous permet de spécifier une chaîne de format qui définit comment la date ou l'heure doit être formatée.

Voici une liste de certains formats de date et heure couramment utilisés en Python :

- **%Y** : année (4 chiffres)

- **%m** : mois (avec zéro initial)

- **%d** : jour du mois (avec zéro initial)

- **%H** : heure (horloge 24 heures)

- **%M** : minute (avec zéro initial)

- **%S** : seconde (avec zéro initial)

## Comment Obtenir la Date & Heure Actuelles à Partir de l'Objet Datetime en Python

Pour extraire la date actuelle d'un objet `datetime` en Python, vous pouvez utiliser la méthode `date()`. Voici un exemple de comment convertir un objet `datetime` en un objet `date` en accédant à la méthode `date()` de l'objet `datetime` :

```python3
from datetime import datetime

current_datetime = datetime.now()
current_date = current_datetime.date()

print(current_date)
```

Ce code affichera la date actuelle dans le format AAAA-MM-JJ. Par exemple, si vous exécutez le code aujourd'hui (17 mai 2023), la sortie sera 2023-05-17.

Voici également un exemple pour obtenir la date et l'heure actuelles :

```python3
from datetime import datetime

# Get the current date and time
current_datetime = datetime.now()

print(current_datetime)  # Output: Current date and time in the format YYYY-MM-DD
```

## Comment obtenir l'année en cours à partir d'un objet Datetime

Pour extraire l'année d'un objet datetime en Python, vous pouvez utiliser l'attribut year. Voici un exemple :

```python3
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Extract the year from the datetime object
year = dt.year

print(year) # Output: 2023
```

## Format de date et heure AM/PM en Python

Dans le module `datetime` de Python, vous pouvez formater un objet datetime pour afficher l'heure au format AM/PM en utilisant les directives `%I` et `%p` dans la méthode strftime. Voici un exemple :

```python3
from datetime import datetime

# Get the current datetime
now = datetime.now()

# Format the time in AM/PM format
formatted_time = now.strftime("%I:%M %p")

# Print the formatted time
print(formatted_time)
```

Ce code affichera l'heure actuelle au format "hh:mm AM/PM". Par exemple, si l'heure actuelle est 14h30, le résultat sera "02:30 PM".

## Format de l'Heure de l'Horloge

En Python, vous pouvez récupérer l'heure actuelle dans un format "heure de l'horloge" en utilisant le module `datetime`. Voici un exemple :

```python3
from datetime import datetime

# Get the current time
current_time = datetime.now().time()

# Format the time as a clock time
clock_time = current_time.strftime("%H:%M:%S")

print("Current Clock Time:", clock_time) # Output: Current Clock Time: 12:34:56
```

La méthode `strftime()` est utilisée pour formater le temps comme une chaîne de caractères d'heure de l'horloge. Le code de format `%H` représente l'heure (horloge de 24 heures), `%M` représente la minute, et `%S` représente la seconde.

En appliquant la méthode `strftime()` avec le code de format approprié, vous pouvez obtenir l'heure actuelle dans un format d'heure d'horloge.

## Une manière de convertir un Datetime en chaîne de caractères en Python

Pour convertir un objet `datetime` de Python en une chaîne de caractères, vous pouvez utiliser la méthode `strftime()`. La méthode `strftime()` prend une chaîne de format comme argument et renvoie une représentation en chaîne de caractères de l'objet datetime selon le format spécifié.

Voici un exemple de comment formater la date et l'heure actuelles :

```python3
import datetime

now = datetime.datetime.now()  # Get the current datetime object
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")  # Format the datetime object
print(formatted_date)  # Print the formatted datetime string
```

## La conversion de chaîne en date/heure

Vous pouvez utiliser le module `datetime` en Python pour convertir une chaîne en un objet datetime en Python. Voici un exemple de conversion de chaîne en heure :

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

Dans cet exemple, nous utilisons la méthode `datetime.strptime()` de Python pour convertir la chaîne d'entrée en un objet datetime. La méthode `strptime()` prend deux arguments : la chaîne d'entrée et le format de la chaîne d'entrée. La chaîne de format utilise divers codes de format pour spécifier le format de la chaîne d'entrée. Dans ce cas, le code de format `%Y` représente l'année, `%m` représente le mois, `%d` représente le jour, `%H` représente l'heure, `%M` représente la minute et `%S` représente la seconde.

La variable `dt_object` contient maintenant un objet datetime qui représente la date et l'heure dans la chaîne d'entrée. Vous pouvez ensuite effectuer diverses opérations sur l'objet datetime, comme le formater différemment ou effectuer des opérations arithmétiques dessus.

Le même algorithme peut être utilisé pour convertir une chaîne en un objet `date`.

Examinons l'exemple de conversion d'une chaîne en objet `date` en Python :

```python3
from datetime import datetime

date_string = "2023-05-22"

# Convert string to date object
my_date = datetime.strptime(date_string, "%Y-%m-%d").date()

print(my_date)  # Output: 2023-05-22
```

## Les méthodes `datetime.now()` et `datetime.today()`

En Python, vous pouvez utiliser le module intégré `datetime` pour travailler avec des valeurs de date et d'heure. Pour obtenir la date et l'heure actuelles, vous pouvez utiliser la méthode `datetime.now()`.

Dans l'exemple suivant, nous obtenons d'abord la date et l'heure, puis nous l'imprimons :

```python
from datetime import datetime

now = datetime.now()
print("Current date and time:", now)
```

Cela affichera la date et l'heure actuelles dans le format AAAA-MM-JJ HH:MM:SS.ssssss.

Il existe une autre manière d'obtenir la date et l'heure actuelles, vous pouvez utiliser la méthode `datetime.today()`. Voici un exemple :

```python
import datetime

now = datetime.datetime.today()
print(now) # This will output the current date and time in the format YYYY-MM-DD HH:MM:SS.mmmmmm.
```

Si vous souhaitez afficher uniquement l'heure actuelle sans la date, vous pouvez utiliser la méthode `strftime()` pour formater la sortie avant d'imprimer :

```python
import datetime
current_time = datetime.datetime.now().strftime("%H:%M:%S")
print("Current time:", current_time)
```

Cela affichera l'heure actuelle au format HH:MM:SS.

## Comment extraire la date d'un objet `datetime`

En Python, vous pouvez extraire la partie date d'un objet datetime en utilisant la méthode `.date()`. Voici un exemple :

```python
import datetime

# create a datetime object
dt = datetime.datetime(2023, 5, 14, 10, 30, 0)

# extract the date portion
date = dt.date()

# print the date
print(date)  # output: 2023-05-14
```

## Conversion de Datetime en Epoch

Vous pouvez convertir un objet `datetime` Python en temps epoch (c'est-à-dire le nombre de secondes depuis le 1er janvier 1970, 00:00:00 UTC) en utilisant la méthode `timestamp()`. Regardons l'exemple de comment convertir un objet `datetime` Python en un timestamp :

```python3
import datetime

# Create a datetime object for May 14, 2023 at 12:34:56 UTC
dt = datetime.datetime(2023, 5, 14, 12, 34, 56)

# Convert the datetime object to epoch time
epoch_time = int(dt.timestamp())

print(epoch_time)  # Output: 1687877696
```

## Conversion d'Epoch en Datetime

Vous pouvez convertir un temps Unix epoch (c'est-à-dire, le nombre de secondes depuis le 1 janvier 1970, 00:00:00 UTC) en un objet `datetime` Python en utilisant la méthode `datetime.fromtimestamp()`.

Voici un exemple de comment convertir le temps Unix en datetime en Python :

```python
import datetime

# Unix epoch time for May 14, 2023 at 12:34:56 UTC
epoch_time = 1687877696

# Convert the epoch time to a datetime object
dt = datetime.datetime.fromtimestamp(epoch_time)

print(dt)  # Output: 2023-05-14 12:34:56
```

Si vous souhaitez convertir un timestamp en un objet `datetime` dans un fuseau horaire spécifique en Python, vous pouvez utiliser des bibliothèques comme `pytz` ou `dateutil` pour définir le fuseau horaire souhaité.

## Analyse dans un module `datetime`

Pour analyser une chaîne de date ou d'heure en un objet `datetime`, vous pouvez utiliser la méthode `datetime.datetime.strptime()`.

La méthode `strptime()` prend deux arguments : la chaîne que vous souhaitez analyser, et une chaîne de format qui spécifie le format de la chaîne d'entrée. La chaîne de format utilise des codes spéciaux pour représenter différentes parties de la date et de l'heure, telles que `%Y` pour l'année, `%m` pour le mois, `%d` pour le jour, `%H` pour l'heure, `%M` pour la minute et `%S` pour la seconde.

Voici un exemple de comment analyser une chaîne de date au format "AAAA-MM-JJ" :

```python3
import datetime

date_string = "2023-05-14"
date_object = datetime.datetime.strptime(date_string, "%Y-%m-%d")

print(date_object)
```

## Fuseaux horaires et module DateTime en Python

Vous pouvez utiliser le module `datetime` pour travailler avec les dates, les heures et les fuseaux horaires en Python.

Pour travailler avec les fuseaux horaires, vous devez utiliser la bibliothèque `pytz`. Cette bibliothèque fournit une base de données complète de fuseaux horaires et des outils pour travailler avec.

Voici un exemple de la façon dont vous pouvez travailler avec les fuseaux horaires en utilisant le module `datetime` et la bibliothèque `pytz` en Python :

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

Dans cet exemple, nous créons d'abord un objet `datetime` dans le fuseau horaire UTC en utilisant la méthode `datetime.datetime.now()` et en passant l'objet fuseau horaire `pytz.utc` comme paramètre `tz`. Nous imprimons ensuite la date et heure UTC.

Ensuite, nous créons un objet `pytz.timezone` représentant le fuseau horaire local (America/New_York), puis utilisons la méthode `astimezone()` pour convertir l'objet datetime UTC au fuseau horaire local. Finalement, nous imprimons la date et heure locale.

## Module DateTime et Classe Timedelta

Le module `datetime` en Python propose diverses classes pour travailler avec les dates, les heures et les intervalles de temps. Une des classes disponibles dans le module est `timedelta`, qui représente une durée ou la différence entre deux dates ou heures.

Voici un exemple de comment utiliser `timedelta` :

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

Voici également un exemple de comment trouver la différence de temps ou l'écart de temps en Python :

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

De cette manière, vous pouvez mesurer le temps d'exécution de n'importe quel extrait de code.

Pour calculer la différence de temps en secondes, vous pouvez utiliser la méthode `total_seconds()`.

La classe `timedelta` fournit plusieurs autres arguments qui peuvent être utilisés pour spécifier différentes unités de temps, y compris `weeks`, `hours`, `minutes`, `seconds`, `microseconds`, et `milliseconds`.

## Comment Comparer les Objets Datetime

En Python, vous pouvez comparer les objets `datetime` en utilisant les opérateurs de comparaison (`<`, `>`, `<=`, `>=`, `==`, `!=`).

Voyons l'exemple de comment comparer des dates en Python :

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

En résultat de la comparaison des dates, nous obtenons "date1 est avant date2".

Vous pouvez également comparer des objets `datetime` avec des objets `date`. Dans ce cas, l'objet `date` est considéré comme s'il avait une heure de minuit. Par exemple :

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

## Comment ajouter des jours à un objet Datetime

Pour ajouter du temps à un objet `datetime` de Python, vous pouvez utiliser la classe `timedelta` du module `datetime`.

Voici un extrait de code qui montre comment ajouter 3 jours à la date actuelle :

```python3
from datetime import datetime, timedelta

current_date = datetime.now()
print("Current date:", current_date)

new_date = current_date + timedelta(days=3)
print("New date:", new_date)
```

Vous pouvez ajuster le nombre de jours à ajouter en changeant la valeur de l'argument jours lors de la création de l'objet `timedelta`.

## Module Datetime et méthode `isoformat()` en Python

La méthode `isoformat()` est utilisée pour obtenir la représentation en chaîne de caractères d'un objet de date ou de temps au format ISO 8601. Voici un exemple :

```python3
import datetime

# create a datetime object for May 14, 2023 at 2:30 PM
dt = datetime.datetime(2023, 5, 14, 14, 30)

# get the ISO 8601 string representation of the datetime object
iso_str = dt.isoformat()

print(iso_str)  # output: 2023-05-14T14:30:00
```

Dans le format ISO 8601, la date et l'heure sont séparées par la lettre "T", et l'heure est indiquée au format 24 heures. La représentation en chaîne de caractères de l'objet datetime obtenue en utilisant la méthode `isoformat()` n'inclut pas les informations de fuseau horaire. Si vous avez besoin d'inclure des informations de fuseau horaire, vous pouvez utiliser la méthode `strftime()` avec une chaîne de format appropriée.

## La méthode `datetime.utcnow()`

En Python, le module `datetime` fournit une méthode appelée `datetime.utcnow()` qui retourne la date et l'heure actuelles en tant qu'objet datetime en UTC (Temps Universel Coordonné).

Voici un exemple :

```python
import datetime

now_utc = datetime.datetime.utcnow()
print(now_utc)
```

Ceci affichera la date et l'heure UTC actuelles dans le format `YYYY-MM-DD HH:MM:SS.mmmmmm`.

Il est à noter que `datetime.utcnow()` renvoie l'heure UTC actuelle, ce qui ne prend pas en compte le décalage horaire. Si vous souhaitez convertir cette heure en une heure locale, vous devrez utiliser la méthode `datetime.astimezone()`.

## Comment imprimer un objet Datetime en Python

Pour imprimer un objet `datetime` dans un format spécifique en Python, vous pouvez utiliser la méthode `strftime()` du module `datetime`. Cette méthode vous permet de formater un objet datetime en une représentation en chaîne de caractères.

Voici un exemple d'impression d'un objet datetime dans un format spécifique :

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Format and print the datetime object
formatted_datetime = dt.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_datetime)
```

Dans cet exemple, nous créons un objet `datetime` `dt` représentant une date et une heure spécifiques. Ensuite, nous utilisons la méthode `strftime()` pour le formater en tant que chaîne de caractères. La chaîne de format `"%Y-%m-%d %H:%M:%S"` spécifie le format désiré pour la chaîne de datetime. `%Y` représente l'année avec quatre chiffres, `%m` représente le mois avec un zéro initial, `%d` représente le jour avec un zéro initial, `%H` représente l'heure au format 24 heures, `%M` représente la minute, et `%S` représente la seconde.

La sortie sera la chaîne de datetime formatée :

```python
2023-05-17 12:34:56
```

Vous pouvez personnaliser la chaîne de format en fonction de vos besoins spécifiques. Pour plus de détails sur les codes de format pour `strftime()`, vous pouvez consulter la documentation Python : [Codes de format strftime() et strptime()](https://docs.python.org/3/library/datetime.html#strftime-strptime-behavior).

## Classe Date du Module Datetime

Le module `datetime` fournit la classe `date`, qui vous permet de travailler spécifiquement avec les dates (sans tenir compte de l'heure). Voici un exemple d'utilisation de la classe `date` :

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
