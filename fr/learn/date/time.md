> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/date/time

Le module de temps Python est un outil puissant pour travailler avec des opérations liées au temps en Python. Il fournit des fonctions pour mesurer les intervalles de temps, le formatage et l'analyse des chaînes de temps et de date, et la gestion des fuseaux horaires. Avec le module de temps, vous pouvez facilement travailler avec des valeurs de temps et de date, et effectuer une large gamme d'opérations liées au temps dans votre code Python. Que vous ayez besoin de mesurer le temps d'exécution de votre code ou de travailler avec des valeurs de date et d'heure, le module de temps de Python vous a couvert.

## Formats de temps en Python

En Python, vous pouvez utiliser la méthode `strftime()` du module `time` pour formater les valeurs de temps selon divers codes de format. Voici quelques codes de format couramment utilisés pour le formatage du temps en Python :

- **%H** : heure sur 2 chiffres au format 24 heures (00-23)
- **%I** : heure sur 2 chiffres au format 12 heures (01-12)
- **%M** : minute sur 2 chiffres (00-59)
- **%S** : seconde sur 2 chiffres (00-59)
- **%p** : désignation AM/PM (AM ou PM)

Vous pouvez combiner ces codes de format avec d'autres caractères pour créer le format de temps souhaité. Voici un exemple de comment obtenir le temps formaté en Python :

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

## Fonction `time.sleep()` de Python

La fonction `time.sleep()` est une fonction Python qui suspend l'exécution du thread courant pendant un nombre spécifié de secondes, vous permettant ainsi de définir facilement votre propre temps d'attente.

La syntaxe de `time.sleep()` pour le temps d'attente ou le délai est la suivante :

```python
import time

time.sleep(seconds)
```

Où `seconds` est le nombre de secondes pendant lesquelles le thread doit être suspendu.

La fonction `sleep()` accepte la durée du sommeil en secondes, et non en millisecondes. Cependant, vous pouvez obtenir un effet similaire en divisant la durée de sommeil souhaitée en millisecondes par 1000 pour la convertir en secondes.

Utiliser la fonction `time.sleep()` vous aidera à mettre en pause l'exécution du programme pour la période de temps définie.

## Fonction `time.time()` en Python

En Python, `time.time()` est une fonction qui retourne l'heure actuelle en secondes depuis l'époque (1er janvier 1970, 00:00:00 UTC) sous forme de nombre à virgule flottante.

Voici un exemple de comment utiliser la fonction `time.time()` pour mesurer le temps en Python :

```python
import time

start_time = time.time()

# do some time-consuming task here

end_time = time.time()

elapsed_time = end_time - start_time

print(f"The task took {elapsed_time:.2f} seconds to complete.")
```

Dans cet exemple, `start_time` et `end_time` sont obtenus en appelant `time.time()` au début et à la fin de la tâche prenant du temps, respectivement. La différence entre les deux temps donne le temps écoulé, qui est ensuite imprimé. Le temps d'exécution calculé est formaté comme une chaîne avec deux décimales en utilisant les f-strings.

Voici également un exemple de calcul de temps pour la création de graphes en Python en utilisant la bibliothèque `networkx` :

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

Ainsi, la fonction `time.time()` peut être utilisée pour compter le temps en Python.

## Mesure du Temps en Ms

Si vous souhaitez mesurer le temps en millisecondes en Python, vous pouvez utiliser la fonction `time()` du module `time` ainsi que la fonction `perf_counter()`. Voici un exemple :

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

Sortie :

```python
Current Time in Milliseconds: 1621842353154
Execution Time in Milliseconds: 42
```

Dans cet exemple, `time.time()` est utilisé pour récupérer le temps actuel sous forme d'un nombre à virgule flottante représentant le nombre de secondes depuis l'époque. En le multipliant par 1000, nous obtenons le temps actuel en millisecondes.

Pour mesurer le temps d'exécution d'un bloc de code, nous utilisons `time.perf_counter()` pour obtenir le temps haute résolution actuel en secondes. Nous capturons le temps de début avant le bloc de code et le temps de fin après le bloc de code. En soustrayant le temps de début du temps de fin, nous obtenons le temps écoulé en secondes. Le multiplier par 1000 nous donne le temps d'exécution en millisecondes.

## Python `timeit()` avec Exemples

Le module `timeit` de Python est un outil puissant pour mesurer le temps d'exécution de petits extraits de code. Il fournit un moyen simple de chronométrer l'exécution du code et de comparer la performance de différentes approches. Le module `timeit` peut être particulièrement utile lorsque vous souhaitez évaluer différentes implémentations et déterminer laquelle est la plus efficace.

### Paramètres de Python `timeit()`

La fonction `timeit` de Python prend plusieurs paramètres qui vous permettent de personnaliser son comportement :

- **stmt** : Il s'agit de l'instruction que vous souhaitez mesurer. Elle peut être une chaîne contenant une seule instruction ou plusieurs instructions séparées par des points-virgules.
- **setup** : Ce paramètre est facultatif et est utilisé pour préparer l'environnement pour le code à mesurer. Il peut également être une chaîne contenant une ou plusieurs instructions.
- **timer** : Ce paramètre spécifie la fonction de minuterie à utiliser. Si non spécifié, le minuterie par défaut pour la plateforme actuelle sera utilisée.
- **number** : Ce paramètre détermine le nombre d'exécutions du code. Plus il y a d'exécutions, plus la mesure du temps est précise.

### Mesurer Plusieurs Lignes dans du Code Python

Vous pouvez utiliser le module `timeit` pour mesurer plusieurs lignes de code Python. Voici deux exemples utilisant des approches différentes.

#### Exemple 1 : **Utilisation de Points-Virgules**

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

#### Exemple 2 : **Utilisation des Guillemets Triples**

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

Dans les deux exemples, nous définissons une fonction (`square_numbers`) puis l'appelons en utilisant le module `timeit`. Le code à mesurer est enclos entre des guillemets triples, ce qui nous permet de couvrir plusieurs lignes.

### Méthodes `timeit()`

Le module timeit fournit différentes méthodes pour mesurer le temps d'exécution. En voici quelques-unes.

#### `timeit.timeit()`

La méthode `timeit.timeit()` est utilisée pour mesurer le temps d'exécution d'un extrait de code. Elle prend le code sous forme de chaîne de caractères, le nombre d'exécutions, et une instruction de configuration optionnelle.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### `timeit.repeat()`

La méthode `timeit.repeat()` vous permet de répéter la mesure plusieurs fois et retourne une liste des temps d'exécution.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_times = timeit.repeat(stmt=code_to_measure, number=10000, repeat=5)
print(f"Execution times: {execution_times}")
```

Dans cet exemple, le code est exécuté 10 000 fois, et la mesure est répétée 5 fois.

#### `timeit.default_timer()`

La méthode `timeit.default_timer()` renvoie l'heure actuelle selon l'horloge de la plus haute résolution disponible sur la plateforme.

```python
import timeit

start_time = timeit.default_timer()

# Code to be measured
result = [i**2 for i in range(1000)]

end_time = timeit.default_timer()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

En utilisant les méthodes `timeit`, vous pouvez choisir celle qui correspond le mieux à vos besoins de mesure et comparer facilement la performance de différentes implémentations de code.

## Obtenir le Temps en Millisecondes

Pour obtenir le temps actuel en millisecondes en utilisant Python, vous pouvez utiliser le module `time` et sa fonction `time()`, qui renvoie le nombre de secondes depuis l'Époque (1er janvier 1970, 00:00:00 UTC). Vous pouvez ensuite multiplier cette valeur par 1000 pour obtenir le temps en millisecondes :

```python
import time

milliseconds = int(round(time.time() * 1000))
print(milliseconds)
```

Cela affichera l'heure actuelle en millisecondes. Notez que le résultat est arrondi à un entier en utilisant la fonction `round()` avant de le convertir en un entier en utilisant `int()`. Cela est dû au fait que `time.time()` renvoie une valeur à virgule flottante avec une haute précision.

## Un Minuteur en Python

Pour créer un minuteur en Python, vous pouvez utiliser le module intégré `time`. Voici un exemple de code qui démontre comment créer un minuteur :

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

Ce code créera un minuteur de compte à rebours de 60 secondes et imprimera le temps restant à l'écran chaque seconde jusqu'à ce que le minuteur soit terminé. Vous pouvez ajuster la valeur de `t` pour définir la durée souhaitée du minuteur.

En utilisant cette fonctionnalité, vous pouvez créer une fonction de minuterie pour mesurer le temps écoulé.

## Fonctions de Temps en Python

En Python, le module `time` fournit une gamme de fonctions pour travailler avec le temps. Voici quelques fonctions couramment utilisées (à part `time()` et `sleep()` que nous avons déjà mentionnées) :

- **ctime()** - Cette fonction prend un temps en secondes et retourne une représentation sous forme de chaîne de ce temps au format "Jour Mois Date Heure Année".
Exemple d'utilisation :

```python3
import time

current_time = time.time()
time_string = time.ctime(current_time)
print("Current time: ", time_string)
```

- **gmtime()** - Cette fonction prend un temps en secondes et retourne un objet struct_time représentant l'heure UTC.
Exemple d'utilisation :

```python3
import time

current_time = time.time()
utc_time = time.gmtime(current_time)
print("UTC time: ", utc_time)
```

Il y a bien plus de fonctions disponibles dans le module `time` de Python pour travailler avec le temps, incluant `localtime()`, `strftime()`, et `strptime()`.

## La fonction `perf_counter()` du module Time

En Python, la fonction `perf_counter()` du module `time` est utilisée pour mesurer le temps écoulé avec la plus haute résolution disponible sur le système. Elle fournit un minuteur plus précis par rapport à la fonction régulière `time()`. Voici un exemple de comment utiliser `perf_counter()`:

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

En utilisant `perf_counter()`, vous pouvez mesurer le temps d'exécution d'un bloc de code spécifique avec une grande précision. Cette fonction est couramment utilisée à des fins de profilage de performance et de benchmarking.

## La fonction `monotonic()` du module Time

En Python, la fonction `monotonic()` du module `time` est utilisée pour obtenir une horloge monotone, qui est une horloge qui augmente continuellement et qui n'est pas affectée par les ajustements de l'heure système. Elle convient pour mesurer des intervalles et déterminer le temps écoulé entre des événements. Voici un exemple de comment utiliser `monotonic()`:

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

L'utilisation de `monotonic()` garantit que le temps écoulé est calculé sur la base d'une horloge monotone, non affectée par les changements de l'heure système, tels que les ajustements de l'horloge ou les changements de fuseau horaire. Il fournit une mesure fiable du temps écoulé pour les mesures de performance et les fins de benchmarking.

## Comment arrêter l'exécution d'un programme après une certaine période de temps

Si vous souhaitez arrêter l'exécution d'un programme Python après une certaine période de temps, vous pouvez utiliser le module `signal` conjointement avec un minuteur. Le module `signal` vous permet de gérer divers signaux, y compris un signal de minuterie, pour contrôler le comportement du programme. Voici un exemple qui montre comment arrêter le programme après une durée spécifiée :

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

Dans cet exemple, le programme définit une alarme en utilisant `signal.alarm(duration)`, où la durée est la durée souhaitée en secondes. Lorsque l'alarme est déclenchée après la durée spécifiée, elle provoque une exception `TimeoutError`, qui est interceptée par le bloc try-except. Dans le bloc except, vous pouvez gérer la fin du programme ou imprimer un message pour indiquer que le programme a été arrêté.

> Note : le module signal n'est pas disponible sur toutes les plateformes, et son comportement peut varier. De plus, cette méthode peut ne pas être adaptée pour interrompre des tâches de longue durée ou nécessitant beaucoup de calculs. Pour des scénarios plus complexes, vous pourriez avoir besoin d'envisager des techniques de multiprocessing ou de threading pour obtenir le comportement souhaité.

## Comment Mesurer un Temps d'Exécution d'une Fonction en Python

Pour mesurer le temps d'exécution d'une fonction spécifique en Python, vous pouvez utiliser le module `time` et un décorateur. Voici un exemple de la façon dont vous pouvez mesurer le temps d'une fonction à l'aide d'un décorateur :

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

Dans cet exemple, la fonction `timer_decorator` est un décorateur qui enveloppe la fonction cible (`my_function`) avec une fonctionnalité de chronométrage. Le décorateur enregistre l'heure de début avant d'invoquer la fonction et l'heure de fin après que la fonction soit terminée. Il calcule le temps écoulé et l'imprime.

En appliquant le décorateur `@timer_decorator` à la `my_function`, la fonction est automatiquement chronométrée lorsqu'elle est appelée.

Vous pouvez utiliser ce décorateur sur n'importe quelle fonction que vous souhaitez chronométrer en appliquant le décorateur `@timer_decorator` au-dessus de la définition de la fonction.

> Note : L'exemple utilise l'appel de fonction `time.sleep(2)` pour simuler une opération prenant du temps. Remplacez-le par le code ou l'opération réelle que vous souhaitez chronométrer.

## Comment obtenir l'heure actuelle

Si vous voulez savoir quelle heure il est maintenant, vous pouvez utiliser la fonction `time()` du module `time`. Voici un exemple pour obtenir l'heure actuelle en Python :

```python
import time

current_time = time.time()
print("Current Time (in seconds since the epoch):", current_time)
```

Dans cet exemple, `time.time()` renvoie l'heure actuelle sous forme d'un nombre à virgule flottante représentant le nombre de secondes écoulées depuis l'époque. De cette façon, nous pouvons obtenir l'heure Unix actuelle en Python.

## La fonction `time.strftime()`

La fonction `strftime()` du module `time` de Python est utilisée pour formater un objet `time.struct_time` ou un tuple de temps en une représentation en chaîne de caractères basée sur les codes de format spécifiés. Voici un exemple :

```python
import time

# Get the current time as a time tuple
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_time)

# Print the formatted time
print("Formatted Time:", formatted_time) # Output: Formatted Time: 2023-05-22 12:34:56
```

## Impression de l'heure en Python

Pour imprimer l'heure actuelle en Python, vous pouvez utiliser le module `time` ou le module `datetime`. Voici un exemple d'utilisation du module `time` :

```python
import time

current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)

print("Current Time (using time module):", formatted_time)
```

## Comment obtenir l'heure actuelle

Pour récupérer l'heure actuelle en Python, vous pouvez utiliser soit le module `time` soit le module `datetime`. Voici comment vous pouvez obtenir l'heure actuelle en utilisant le module `time` :

```python
import time

current_time = time.localtime()
print("Current Time (using time module):", time.strftime("%H:%M:%S", current_time))
```

Voici également un exemple de comment obtenir l'heure actuelle en millisecondes :

```python
import time

current_time_ms = int(time.time() * 1000)
print("Current Time (in milliseconds using time module):", current_time_ms)
```

## Générer un horodatage en Python

Vous pouvez utiliser le module `time` pour générer un horodatage. Voici un exemple :

```python
import time

timestamp = int(time.time())
print("Timestamp (using time module):", timestamp)
```
