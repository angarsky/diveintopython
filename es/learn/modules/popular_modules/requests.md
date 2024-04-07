> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/modules/popular-modules/requests

El módulo `requests` facilita la interacción con páginas web y APIs simplificando el proceso de enviar solicitudes y manejar respuestas. Con requests, puedes recuperar datos de la web rápida y fácilmente y utilizarlos en tus proyectos de Python. En este artículo, exploraremos el módulo requests y sus características, y demostraremos cómo usarlo en tu código Python.

## Algunas palabras sobre el módulo `requests`

El módulo Requests en Python es una biblioteca HTTP que te permite enviar solicitudes HTTP/1.1 usando Python. Sin embargo, si encuentras el error `no module named requests` al intentar usar el módulo `requests` en Python, significa que el módulo no está instalado o no es accesible en tu entorno.

Para instalar el módulo [requests](https://pypi.org/project/requests/), simplemente puedes ejecutar el siguiente comando en tu terminal:

```shell
pip install requests
```

Una vez que hayas instalado la biblioteca de Requests, puedes usarla para enviar solicitudes a servidores web a través de Python. A continuación, se muestra un ejemplo de código simple que demuestra cómo usar el módulo de Requests para solicitar `data` de un sitio web:

```python3
import requests

response = requests.get('https://www.example.com')
print(response.text)
```

En este ejemplo, `import`amos el módulo Requests y usamos el método `requests.get()` para enviar una solicitud GET al sitio web especificado en el parámetro. El atributo `response.text` contiene los `data` devueltos por el sitio web, los cuales `print`amos en la consola.

Aquí hay otro ejemplo que muestra cómo enviar una solicitud POST con algunos datos:

```python3
import requests

data = {'key': 'value'}
response = requests.post('https://www.example.com', data=data)
print(response.text)
```

En este ejemplo, utilizamos el método `requests.post()` para enviar una solicitud POST al sitio web especificado en el parámetro. También pasamos algunos `datos` como un diccionario, que se enviarán como `data` de formulario con la solicitud. El atributo `response.text` contiene los `datos` devueltos por el sitio web, que `imprimimos` en la consola.

## Solicitudes con JSON

JSON es un formato de datos popular utilizado para el intercambio de datos entre sistemas. En este contexto, aprenderemos cómo usar solicitudes de Python para enviar y recibir datos JSON.

Para enviar una solicitud `POST` con JSON usando `requests`, utiliza el método `post` y pasa los datos JSON utilizando el parámetro `json`.

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

Para enviar una solicitud `GET` con JSON, usa el método `get` y pasa los datos JSON utilizando el parámetro `params`.

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

Para enviar datos JSON como el cuerpo de la solicitud, use el parámetro `data` en lugar del parámetro `params`.

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

En resumen, `requests` facilita el envío y recepción de datos JSON. Utiliza el parámetro `json` o `data` dependiendo de si estás enviando una petición `POST` o `GET`. Ten en cuenta que el servidor debe ser capaz de procesar los datos JSON que envíes.  
  
## Cómo establecer el tiempo de espera de `requests

Si estás usando `requests` de Python para hacer peticiones HTTP, es esencial establecer un valor de tiempo de espera para evitar peticiones que duren demasiado. Establecer un valor de tiempo de espera es fácil con la librería [requests](https://pypi.org/project/requests/). Aquí hay dos ejemplos de código para establecer el valor del tiempo de espera utilizando el método `get`.

```python
import requests

response = requests.get("https://www.example.com", timeout=5)
```

En el ejemplo anterior, establecimos un valor de tiempo de espera de 5 segundos. Por lo tanto, si el servidor no responde dentro de 5 segundos, la solicitud generará una excepción `requests.exceptions.Timeout`.

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

En el ejemplo anterior, utilizamos un bloque `try-except` para manejar excepciones. Si la solicitud tarda más de 5 segundos, se generará una excepción `requests.exceptions.Timeout`.

Al establecer el valor de tiempo de espera, evitamos que el programa espere indefinidamente y podemos manejar los errores de manera elegante.

## Atributos de Requests

`Requests` proporciona varios atributos que se pueden usar para personalizar y acceder a diferentes partes de una solicitud, como el cuerpo de la solicitud, encabezados, respuesta y cookies.

### Cuerpo de la Solicitud

Para enviar datos en el cuerpo de la solicitud, puedes usar el parámetro `data` con un diccionario de pares clave-valor. Aquí hay un ejemplo:

```python
import requests

payload = {'key1': 'value1', 'key2': 'value2'}
response = requests.post('https://example.com', data=payload)
```

### Encabezados

Los encabezados pueden agregarse a una solicitud usando el parámetro `headers`. Esto puede ser útil al enviar tokens de autorización o encabezados personalizados. Aquí hay un ejemplo:

```python
import requests

headers = {'Authorization': 'Bearer my_token', 'Custom-Header': 'value'}
response = requests.get('https://example.com', headers=headers)
```

### Respuesta

El objeto `response` contiene la `response` del servidor a la solicitud. Incluye atributos como el código de estado de la `response`, contenido y encabezados. Aquí hay un ejemplo:

```python3
import requests

response = requests.get('https://example.com')
print(response.status_code)
print(response.content)
print(response.headers)
```

### Cookies

Las cookies pueden ser accedidas y configuradas usando el atributo `cookies`. Esto puede ser útil para mantener una `session` o configurar datos persistentes. Aquí hay un ejemplo:

```python
import requests

login_data = {'username': 'my_username', 'password': 'my_password'}
response = requests.post('https://example.com/login', data=login_data)

# Get the session cookie
session_cookie = response.cookies['session']

# Use the session cookie for subsequent requests
response2 = requests.get('https://example.com/protected', cookies={'session': session_cookie})
```

## Sesión de Solicitudes

La Sesión de Solicitudes de Python es una herramienta poderosa que te permite mantener la persistencia de tus solicitudes HTTP dentro de un único objeto `session`. Esto significa que puedes reutilizar fácilmente la misma conexión para múltiples solicitudes, con cada solicitud construyendo sobre la anterior.

Usando la biblioteca `requests` integrada en Python, la característica de Sesiones mantiene variables de `session`, incluyendo cookies. Por lo tanto, permite tener un almacenamiento temporal en el lado del cliente. Aquí hay un fragmento de código de ejemplo que ilustra la Sesión de Solicitudes de Python:

```python
import requests

session = requests.Session()
session.get('http://example.com')
```

En este código, creamos un nuevo objeto `Session` y luego usamos el método `get()` para hacer una solicitud GET a la URL dada. Por defecto, esta solicitud incluirá los encabezados y cookies relevantes que se establecieron en las solicitudes anteriores realizadas con este objeto `session`.

Las sesiones son útiles para emular sesiones con estado, donde se utilizan cookies HTTP para recordar el estado del lado del servidor. Otro ejemplo sería acelerar las solicitudes al mismo servidor reutilizando la misma conexión TCP. Esto significa que el servidor puede enviar la respuesta inmediatamente y no necesita gastar tiempo configurando una nueva conexión TCP.

Aquí hay un ejemplo de cómo agregar un encabezado a la `session`, el cual estará presente en todas las solicitudes subsiguientes:

```python
import requests

session = requests.Session()
session.headers.update({'x-test': 'true'})

session.get('http://httpbin.org/headers')
```

Dentro de la `Session`, establecemos el encabezado `x-test` a `true`. Luego, cualquier solicitud subsiguiente realizada con este objeto `session` a 'http://httpbin.org/headers' incluirá este encabezado.

En conclusión, la Sesión de Solicitudes de Python ofrece una manera poderosa y flexible de persistir el estado de conexión a través de múltiples solicitudes HTTP. Es una herramienta indispensable para cualquier desarrollador que trabaje con datos de solicitud/respuesta HTTP en Python.

## Cómo Descargar Archivos con Solicitudes

Para descargar un archivo usando el módulo `requests` en Python, puedes usar el método `get()`. Este método te permite realizar una solicitud a la URL especificada y recuperar el contenido como un objeto similar a un archivo. Luego puedes escribir el contenido en un archivo en tu máquina local.

```python
import requests

url = 'https://example.com/image.jpg'
response = requests.get(url)

with open('image.jpg', 'wb') as f:
    f.write(response.content)
```

En este ejemplo, estamos descargando una imagen de la URL `https://example.com/image.jpg` y guardándola en un archivo llamado `image.jpg`. El atributo `response.content` contiene el contenido binario de la imagen, que escribimos en el archivo utilizando el método `write()`.

Otro ejemplo es descargar un archivo CSV y guardarlo en el disco:

```python
import requests

url = 'https://example.com/data.csv'
response = requests.get(url)

with open('data.csv', 'wb') as f:
    f.write(response.content)
```

En este ejemplo, estamos descargando un archivo CSV desde `https://example.com/data.csv` y guardándolo como `data.csv`. Como antes, escribimos el contenido en el archivo usando el método `write()`.

En ambos ejemplos, utilizamos el módulo `requests` para hacer una solicitud GET a la URL especificada, y recuperamos el contenido binario utilizando el atributo `response.content`. Luego escribimos este contenido binario en un archivo en el disco usando la función `open()` en combinación con un bloque `with`.

Así es como puedes descargar un archivo con `requests` en Python.

## Usando Proxy en Requests

Si quieres enviar solicitudes HTTP en Python a través de un proxy, puedes usar la biblioteca `requests`. Aquí te mostramos cómo hacerlo:

```python
import requests

url = 'some_url'

proxies = {
  'http': 'http://user:password@proxy:port',
  'https': 'https://user:password@proxy:port'
}

response = requests.get(url, proxies=proxies)

```

En el ejemplo de código anterior, necesitas reemplazar `user`, `password`, `proxy` y `port` con tus credenciales reales y la dirección y número de puerto del proxy.

Al usar estas configuraciones de proxy en tus peticiones HTTP de Python, puedes fácilmente sortear cualquier restricción impuesta en tu red, y acceder a los recursos deseados sin ningún problema. Además, puedes escalar tu servicio para que sea más robusto e independiente, mientras proteges tu red de usuarios externos.

## Cómo Convertir `curl` a petición Python

Convertir un comando `curl` a petición Python es una tarea común para aquellos que trabajan con APIs o peticiones web.

Aquí hay dos ejemplos de cómo convertir un comando `curl` a petición Python usando el módulo `requests`:

### Comando `curl`

```shell
curl https://jsonplaceholder.typicode.com/posts/1
```

### Código de Solicitud de Python

```python
import requests

response = requests.get('https://jsonplaceholder.typicode.com/posts/1')

print(response.json())
```

### Comando `curl` Más Complejo

```shell
curl -X POST \
  https://httpbin.org/post \
  -H 'Content-Type: application/json' \
  -d '{"name": "John Doe", "age": 25}'
```

### Código `request` de Python

```python3
import requests

url = 'https://httpbin.org/post'
headers = {'Content-Type': 'application/json'}
data = '{"name": "John Doe", "age": 25}'

response = requests.post(url, headers=headers, data=data)

print(response.json())
```

En conclusión, convertir `curl` a solicitud de Python se puede hacer fácilmente utilizando el módulo `requests`. Al entender la sintaxis y estructura correctas del comando `curl`, es posible replicar la misma solicitud en Python con unas pocas líneas de código.

## Rest API

Python es un lenguaje popular para construir APIs RESTful debido a su sintaxis simple y vasta colección de bibliotecas. Con Python, los desarrolladores pueden hacer llamadas directas a la API y extraer `data` de servicios web populares.

### Ejemplo de Llamada a API en Python

A continuación, se muestra un ejemplo de cómo hacer una llamada a la API usando Python:

```python
import requests

url = "https://api.example.com/data"
response = requests.get(url)

print(response.json())
```

En este ejemplo, utilizamos el método `requests.post()` para enviar una solicitud POST al sitio web especificado en el parámetro. También pasamos algunos `datos` como un diccionario, que se enviarán como `data` de formulario con la solicitud. El atributo `response.text` contiene los `datos` devueltos por el sitio web, que `imprimimos` en la consola.

## Solicitudes con JSON

JSON es un formato de datos popular utilizado para el intercambio de datos entre sistemas. En este contexto, aprenderemos cómo usar solicitudes de Python para enviar y recibir datos JSON.

Para enviar una solicitud `POST` con JSON usando `requests`, utiliza el método `post` y pasa los datos JSON utilizando el parámetro `json`.


En el fragmento de código anterior, `importamos` el módulo 'requests' de Python, usamos la URL del punto final de la API y ejecutamos la solicitud usando el método 'get'. Finalmente, `imprimimos` los `datos` recuperados en formato JSON.

### Cómo usar APIs RESTful en Python

Python proporciona una biblioteca llamada `Flask` que se utiliza ampliamente para construir APIs REST. Para crear una API RESTful usando `Flask`, necesitas instalar `Flask` y utilizar las capacidades de enrutamiento para definir puntos finales de API.

### Cómo crear un punto final de API usando Flask

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

En el código anterior, definimos una `app` simple `Flask` con un endpoint para recuperar `data`. La función 'get_data' recupera un objeto `data` de ejemplo y lo devuelve como JSON.

En resumen, Python es un lenguaje excelente para trabajar con API RESTful debido a su facilidad de uso y a la amplia gama de librerías disponibles. Utilizando Python y `Flask`, los desarrolladores pueden crear rápidamente API REST de alto rendimiento, lo que lo convierte en una opción popular para muchos proyectos de desarrollo.
