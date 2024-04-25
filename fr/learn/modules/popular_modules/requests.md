> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/modules/popular-modules/requests

Le module `requests` facilite l'interaction avec les pages web et les API en simplifiant le processus d'envoi de requêtes et de gestion des réponses. Avec requests, vous pouvez rapidement et facilement récupérer des données du web et les utiliser dans vos projets Python. Dans cet article, nous allons explorer le module requests et ses fonctionnalités, et démontrer comment l'utiliser dans votre code Python.

## Quelques mots sur le module `requests`

Le module Requests en Python est une bibliothèque HTTP qui vous permet d'envoyer des requêtes HTTP/1.1 en utilisant Python. Cependant, si vous rencontrez l'erreur `no module named requests` lors de la tentative d'utilisation du module `requests` en Python, cela signifie que le module n'est pas installé ou n'est pas accessible dans votre environnement.

Pour installer le module [requests](https://pypi.org/project/requests/), vous pouvez simplement exécuter la commande suivante dans votre terminal :

```shell
pip install requests
```

Une fois que vous avez installé la bibliothèque Requests, vous pouvez l'utiliser pour envoyer des demandes à des serveurs web via Python. Ci-dessous, un exemple de code simple qui démontre comment utiliser le module Requests pour demander `data` à partir d'un site web :

```python3
import requests

response = requests.get('https://www.example.com')
print(response.text)
```

Dans cet exemple, nous `import` le module Requests et utilisons la méthode `requests.get()` pour envoyer une requête GET au site web spécifié dans le paramètre. L'attribut `response.text` contient les `data` renvoyées par le site web, que nous `print` dans la console.

Voici un autre exemple montrant comment envoyer une requête POST avec des données :

```python3
import requests

data = {'key': 'value'}
response = requests.post('https://www.example.com', data=data)
print(response.text)
```

Dans cet exemple, nous utilisons la méthode `requests.post()` pour envoyer une requête POST au site Web spécifié dans le paramètre. Nous passons également des `data` sous forme de dictionnaire, qui seront envoyés comme données de formulaire `data` avec la requête. L'attribut `response.text` contient les `data` renvoyées par le site web, que nous `print`ons dans la console.

## Requêtes avec JSON

JSON est un format de données populaire utilisé pour l'échange de données entre systèmes. Dans ce contexte, nous allons apprendre à utiliser les requêtes Python pour envoyer et recevoir des données JSON.

Pour envoyer une requête `POST` avec JSON en utilisant `requests`, utilisez la méthode `post` et passez les données JSON en utilisant le paramètre `json`.

```python
import requests

data = {
    'name': 'John Doe',
    'email': 'johndoe@example.com',
    'message': 'Hello world!'
}

response = requests.post('https://example.com/api', json=data)

print(response.status_code)
print(response.json())
```

Pour envoyer une demande `GET` avec JSON, utilisez la méthode `get` et passez les données JSON en utilisant le paramètre `params`.

```python
import requests

params = {
    'category': 'books',
    'page': 1
}

response = requests.get('https://example.com/api', params=params)

print(response.status_code)
print(response.json())
```

Pour envoyer des données JSON dans le corps de la requête, utilisez le paramètre `data` au lieu du paramètre `params`.

```python
import requests
import json

data = {
    'name': 'John Doe',
    'email': 'johndoe@example.com',
    'message': 'Hello world!'
}

response = requests.post('https://example.com/api', data=json.dumps(data))

print(response.status_code)
print(response.json())
```

En résumé, `requests` facilite l'envoi et la réception de données JSON. Utilisez le paramètre `json` ou `data` selon que vous envoyez une requête `POST` ou `GET`. Gardez à l'esprit que le serveur doit être capable de traiter les données JSON que vous envoyez.

## Comment définir le délai d'attente de `requests`

Si vous utilisez Python `requests` pour effectuer des requêtes HTTP, il est essentiel de définir une valeur de délai d'attente pour éviter des requêtes qui durent trop longtemps. Définir une valeur de délai d'attente est facile avec la bibliothèque [requests](https://pypi.org/project/requests/). Voici deux exemples de code pour définir une valeur de délai d'attente en utilisant la méthode `get`.

```python
import requests

response = requests.get("https://www.example.com", timeout=5)
```

Dans l'exemple ci-dessus, nous avons défini une valeur de délai d'expiration de 5 secondes. Par conséquent, si le serveur ne répond pas dans les 5 secondes, la requête déclenchera une exception `requests.exceptions.Timeout`.

```python
import requests

try:
    response = requests.get("https://www.example.com", timeout=5)
    response.raise_for_status()
except requests.exceptions.HTTPError as errh:
    print("HTTP Error:", errh)
except requests.exceptions.ConnectionError as errc:
    print("Error Connecting:", errc)
except requests.exceptions.Timeout as errt:
    print("Timeout Error:", errt)
except requests.exceptions.RequestException as err:
    print("Something went wrong:", err)
```

Dans l'exemple ci-dessus, nous avons utilisé un bloc `try-except` pour gérer les exceptions. Si la requête prend plus de 5 secondes, elle lèvera une exception `requests.exceptions.Timeout`.

En définissant la valeur du délai d'attente, nous empêchons le programme d'attendre indéfiniment, et nous pouvons gérer les erreurs de manière élégante.

## Attributs de Requêtes

`Requests` fournit plusieurs attributs qui peuvent être utilisés pour personnaliser et accéder à différentes parties d'une requête, telles que le corps de la requête, les en-têtes, la réponse et les cookies.

### Corps de la Requête

Pour envoyer des données dans le corps de la requête, vous pouvez utiliser le paramètre `data` avec un dictionnaire de paires clé-valeur. Voici un exemple :

```python
import requests

payload = {'key1': 'value1', 'key2': 'value2'}
response = requests.post('https://example.com', data=payload)
```

### En-têtes

Les en-têtes peuvent être ajoutés à une requête en utilisant le paramètre `headers`. Cela peut être utile lors de l'envoi de jetons d'autorisation ou d'en-têtes personnalisés. Voici un exemple :

```python
import requests

headers = {'Authorization': 'Bearer my_token', 'Custom-Header': 'value'}
response = requests.get('https://example.com', headers=headers)
```

### Réponse

L'objet `response` contient la `response` du serveur à la requête. Il inclut des attributs tels que le code de statut de la `response`, le contenu et les en-têtes. Voici un exemple :

```python3
import requests

response = requests.get('https://example.com')
print(response.status_code)
print(response.content)
print(response.headers)
```

### Cookies

Les cookies peuvent être consultés et définis en utilisant l'attribut `cookies`. Cela peut être utile pour maintenir une `session` ou pour définir des données persistantes. Voici un exemple :

```python
import requests

login_data = {'username': 'my_username', 'password': 'my_password'}
response = requests.post('https://example.com/login', data=login_data)

# Get the session cookie
session_cookie = response.cookies['session']

# Use the session cookie for subsequent requests
response2 = requests.get('https://example.com/protected', cookies={'session': session_cookie})
```

## Session de Requêtes  

La Session de Requêtes Python est un outil puissant qui vous permet de maintenir la persistance de vos requêtes HTTP au sein d'un unique objet `session`. Cela signifie que vous pouvez facilement réutiliser la même connexion pour plusieurs requêtes, chaque requête se basant sur la précédente. 

En utilisant la bibliothèque intégrée `requests` en Python, la fonctionnalité Sessions maintient les variables de `session`, y compris les cookies. Ainsi, cela permet d'avoir un stockage temporaire du côté client. Voici un exemple de morceau de code qui illustre la Session de Requêtes Python :

```python
import requests

session = requests.Session()
session.get('http://example.com')
```

Dans ce code, nous créons un nouvel objet `Session` puis utilisons la méthode `get()` pour effectuer une requête GET à l'URL donnée. Par défaut, cette requête inclura les en-têtes et les cookies pertinents qui ont été définis dans les requêtes précédentes effectuées avec cet objet `session`.

Les sessions sont utiles pour émuler des sessions étatiques, où les cookies HTTP sont utilisés pour se souvenir de l'état côté serveur. Un autre exemple serait d'accélérer les requêtes vers le même serveur en réutilisant la même connexion TCP. Cela signifie que le serveur peut envoyer la réponse immédiatement et n'a pas besoin de passer du temps à établir une nouvelle connexion TCP.

Voici un exemple d'ajout d'un en-tête à la `session`, qui sera présent sur toutes les requêtes subséquentes :

```python
import requests

session = requests.Session()
session.headers.update({'x-test': 'true'})

session.get('http://httpbin.org/headers')
```

Au sein de la `Session`, nous définissons l'en-tête `x-test` à `true`. Ensuite, toute requête ultérieure effectuée avec cet objet `session` vers 'http://httpbin.org/headers' inclura cet en-tête.

En conclusion, la Session de Requests Python offre une manière puissante et flexible de maintenir l'état de connexion à travers de multiples requêtes HTTP. C'est un outil indispensable pour tout développeur qui travaille avec des données de requête/réponse HTTP en Python.

## Comment télécharger un fichier avec Requests

Pour télécharger un fichier en utilisant le module `requests` en Python, vous pouvez utiliser la méthode `get()`. Cette méthode vous permet de faire une requête à l'URL spécifiée et de récupérer le contenu comme un objet similaire à un fichier. Vous pouvez ensuite écrire le contenu dans un fichier sur votre machine locale.

```python
import requests

url = 'https://example.com/image.jpg'
response = requests.get(url)

with open('image.jpg', 'wb') as f:
    f.write(response.content)
```

Dans cet exemple, nous téléchargeons une image depuis l'URL `https://example.com/image.jpg` et la sauvegardons dans un fichier nommé `image.jpg`. L'attribut `response.content` contient le contenu binaire de l'image, que nous écrivons dans le fichier en utilisant la méthode `write()`.

Un autre exemple consiste à télécharger un fichier CSV et à le sauvegarder sur le disque :

```python
import requests

url = 'https://example.com/data.csv'
response = requests.get(url)

with open('data.csv', 'wb') as f:
    f.write(response.content)
```

Dans cet exemple, nous téléchargeons un fichier CSV depuis `https://example.com/data.csv` et l'enregistrons sous `data.csv`. Comme précédemment, nous écrivons le contenu dans le fichier en utilisant la méthode `write()`.

Dans les deux exemples, nous utilisons le module `requests` pour faire une requête GET à l'URL spécifiée, et nous récupérons le contenu binaire en utilisant l'attribut `response.content`. Nous écrivons ensuite ce contenu binaire dans un fichier sur le disque en utilisant la fonction `open()` en combinaison avec un bloc `with`.

Donc, voilà comment vous pouvez télécharger un fichier avec `requests` en Python.

## Utilisation de Proxy dans les Requêtes

Si vous souhaitez envoyer des requêtes HTTP en Python à travers un proxy, vous pouvez utiliser la bibliothèque `requests`. Voici comment faire :

```python
import requests

url = 'some_url'

proxies = {
  'http': 'http://user:password@proxy:port',
  'https': 'https://user:password@proxy:port'
}

response = requests.get(url, proxies=proxies)

```

Dans l'exemple de code ci-dessus, vous devez remplacer `user`, `password`, `proxy`, et `port` par vos véritables identifiants et adresse proxy ainsi que le numéro de port.

En utilisant ces paramètres de proxy dans vos requêtes HTTP Python, vous pouvez facilement contourner toutes les restrictions imposées sur votre réseau et accéder aux ressources souhaitées sans aucun problème. De plus, vous pouvez échelonner votre service pour le rendre plus robuste et indépendant, tout en sécurisant votre réseau contre les utilisateurs extérieurs.

## Comment Convertir `curl` en requête Python

Convertir une commande `curl` en requête Python est une tâche courante pour ceux qui travaillent avec les API ou les requêtes web.

Voici deux exemples de conversion d'une commande `curl` en requête Python en utilisant le module `requests` :

### Commande `curl`

```shell
curl https://jsonplaceholder.typicode.com/posts/1
```

### Code de requête Python

```python
import requests

response = requests.get('https://jsonplaceholder.typicode.com/posts/1')

print(response.json())
```

### Commande `curl` Plus Complexe

```shell
curl -X POST \
  https://httpbin.org/post \
  -H 'Content-Type: application/json' \
  -d '{"name": "John Doe", "age": 25}'
```

### Code `request` Python

```python3
import requests

url = 'https://httpbin.org/post'
headers = {'Content-Type': 'application/json'}
data = '{"name": "John Doe", "age": 25}'

response = requests.post(url, headers=headers, data=data)

print(response.json())
```

En conclusion, convertir `curl` en requête Python peut être facilement réalisé en utilisant le module `requests`. En comprenant la syntaxe correcte et la structure de la commande `curl`, il est possible de reproduire la même requête en Python avec quelques lignes de code.

## API Rest

Python est un langage populaire pour construire des API RESTful en raison de sa syntaxe simple et de sa vaste collection de bibliothèques. Avec Python, les développeurs peuvent facilement effectuer des appels API directs et extraire des `data` de services web populaires.

### Exemple d'appel API Python

Ci-dessous un exemple de comment effectuer un appel API en utilisant Python :

```python
import requests

url = "https://api.example.com/data"
response = requests.get(url)

print(response.json())
```

Dans l'extrait de code ci-dessus, nous `import`ons le module 'requests' de Python, utilisons l'URL du point de terminaison de l'API et exécutons la requête en utilisant la méthode 'get'. Finalement, nous `print`ons les `data` récupérées au format JSON.

### Comment utiliser les API RESTful en Python

Python fournit une bibliothèque appelée `Flask` qui est largement utilisée pour construire des API REST. Pour créer une API RESTful en utilisant `Flask`, vous devez installer `Flask` et utiliser les capacités de routage pour définir les points de terminaison de l'API.

### Comment créer un point de terminaison d'API en utilisant Flask

```python
from flask import Flask

app = Flask(__name__)

@app.route('/api/data')
def get_data():
    data = {"name": "John", "age": 30, "city": "New York"}
    return data

if __name__ == '__main__':
    app.run(port=5000)
```

Dans le code ci-dessus, nous définissons une simple `app` `Flask` avec un point de terminaison pour récupérer des `data`. La fonction 'get_data' récupère un objet `data` d'exemple et le retourne au format JSON.

En résumé, Python est un excellent langage pour travailler avec les API RESTful grâce à sa facilité d'utilisation et à la large gamme de bibliothèques existantes disponibles. En utilisant Python et `Flask`, les développeurs peuvent rapidement construire des API REST performantes, ce qui en fait un choix populaire pour de nombreux projets de développement.
