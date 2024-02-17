> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/modules/popular-modules/requests

Модуль `requests` упрощает взаимодействие со страницами в Интернете и API, оптимизируя процесс отправки запросов и обработки ответов. С помощью `requests` вы можете быстро и легко извлекать данные из Интернета и использовать их в своих проектах на Python. В этой статье мы рассмотрим модуль `requests`, его функции и покажем, как использовать его в вашем коде на Python.

## Несколько Слов о Модуле `requests`

Модуль Requests в Python — это библиотека HTTP, которая позволяет отправлять запросы HTTP/1.1 с использованием Python. Однако, если при попытке использовать модуль `requests` в Python вы сталкиваетесь с ошибкой `no module named requests`, это означает, что модуль не установлен или не доступен в вашем окружении.

Чтобы установить модуль [requests](https://pypi.org/project/requests/), вы можете просто выполнить следующую команду в терминале:

```shell
pip install requests
```

После установки библиотеки Requests, вы можете использовать её для отправки запросов веб-серверам через Python. Ниже приведен простой пример кода, который демонстрирует, как использовать модуль Requests для запроса `data` с веб-сайта:

```python
import requests

response = requests.get('https://www.example.com')
print(response.text)
```

В этом примере мы `import` модуль Requests и используем метод `requests.get` для отправки GET-запроса на указанный в параметре веб-сайт. Атрибут `response.text` содержит `data`, возвращенные веб-сайтом, которые мы выводим в консоль.

Вот еще один пример, показывающий, как отправить POST-запрос с некоторыми данными:

```python
import requests

data = {'key': 'value'}
response = requests.post('https://www.example.com', data=data)
print(response.text)
```

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

Чтобы отправить запрос `GET` с JSON, используйте метод `get` и передайте данные JSON, используя параметр `params`.

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

```python
import requests

response = requests.get("https://www.example.com", timeout=5)
```

В приведенном выше примере мы установили значение тайм-аута равным 5 секундам. Следовательно, если сервер не ответит в течение 5 секунд, запрос вызовет исключение `requests.exceptions.Timeout`.

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

В приведенном выше примере мы использовали блок `try-except` для обработки исключений. Если запрос занимает более 5 секунд, будет сгенерировано исключение `requests.exceptions.Timeout`.

Устанавливая значение тайм-аута, мы предотвращаем бесконечное ожидание программы и можем изящно обрабатывать ошибки.

## Атрибуты Requests

`requests` предоставляет несколько атрибутов, которые можно использовать для настройки и доступа к различным частям запроса, таким как тело запроса, заголовки, ответ и куки.

### Тело Запроса

Чтобы отправить данные в теле запроса, вы можете использовать параметр `data` со словарем пар ключ-значение. Вот пример:

```python
import requests

payload = {'key1': 'value1', 'key2': 'value2'}
response = requests.post('https://example.com', data=payload)
```

### Заголовки

Заголовки можно добавлять в запрос, используя параметр `headers`. Это может быть полезно при отправке токенов авторизации или пользовательских заголовков. Вот пример:

```python
import requests

headers = {'Authorization': 'Bearer my_token', 'Custom-Header': 'value'}
response = requests.get('https://example.com', headers=headers)
```

### Ответ

Объект `response` содержит `response` сервера на запрос. В него входят атрибуты, такие как статус-код `response`, содержимое и заголовки. Вот пример:

```python
import requests

response = requests.get('https://example.com')
print(response.status_code)
print(response.content)
print(response.headers)
```

### Куки

Куки могут быть получены и установлены с использованием атрибута `cookies`. Это может быть полезно для поддержания `session` или установки постоянных данных. Вот пример:

```python
import requests

login_data = {'username': 'my_username', 'password': 'my_password'}
response = requests.post('https://example.com/login', data=login_data)

# Get the session cookie
session_cookie = response.cookies['session']

# Use the session cookie for subsequent requests
response2 = requests.get('https://example.com/protected', cookies={'session': session_cookie})
```

## Сессии Запросов

Сессия запросов Python - это мощный инструмент, который позволяет сохранять устойчивость ваших HTTP-запросов в пределах одного объекта `session`. Это означает, что вы можете легко использовать то же самое соединение для множества запросов, при этом каждый запрос строится на основе предыдущего.

Используя встроенную библиотеку `requests` в Python, функционал сессий поддерживает переменные `session`, включая куки. Таким образом, это позволяет иметь временное хранилище на стороне клиента. Вот пример кода, который иллюстрирует Сессию запросов Python:

```python
import requests

session = requests.Session()
session.get('http://example.com')
```

В этом коде мы создаем новый объект `Session` и затем используем метод `get()`, чтобы сделать GET-запрос к указанному URL. По умолчанию этот запрос будет включать соответствующие заголовки и куки, которые были установлены в предыдущих запросах, сделанных с этим объектом `session`.

Сессии полезны для эмуляции состояний сессий, где HTTP-куки используются для запоминания состояния на стороне сервера. Другой пример — ускорение запросов к одному и тому же серверу за счет повторного использования того же TCP-соединения. Это означает, что сервер может немедленно отправить ответ и не нуждается в времени на установление нового TCP-соединения.

Вот пример добавления заголовка к `session`, который будет присутствовать во всех последующих запросах:

```python
import requests

session = requests.Session()
session.headers.update({'x-test': 'true'})

session.get('http://httpbin.org/headers')
```

В рамках `Session`, мы устанавливаем заголовок `x-test` в значение `true`. Затем любые последующие запросы, сделанные с использованием этого объекта `session` по адресу 'http://httpbin.org/headers', будут включать этот заголовок.

В заключение, сессии запросов Python предоставляют мощный и гибкий способ сохранения состояния соединения через несколько HTTP-запросов. Это незаменимый инструмент для любого разработчика, работающего с данными HTTP-запросов/ответов в Python.

## Как Скачать Файл с Помощью Requests

Чтобы скачать файл с использованием модуля `requests` в Python, вы можете использовать метод `get()`. Этот метод позволяет вам сделать запрос к указанному URL и получить содержимое в виде объекта, подобного файлу. Затем вы можете записать содержимое в файл на вашем локальном компьютере.

```python
import requests

url = 'https://example.com/image.jpg'
response = requests.get(url)

with open('image.jpg', 'wb') as f:
    f.write(response.content)
```

В этом примере мы загружаем изображение по URL `https://example.com/image.jpg` и сохраняем его в файл под именем `image.jpg`. Атрибут `response.content` содержит бинарное содержимое изображения, которое мы записываем в файл с использованием метода `write()`.

Еще один пример - загрузка файла CSV и его сохранение на диск:

```python
import requests

url = 'https://example.com/data.csv'
response = requests.get(url)

with open('data.csv', 'wb') as f:
    f.write(response.content)
```

В этом примере мы загружаем CSV-файл с `https://example.com/data.csv` и сохраняем его как `data.csv`. Как и раньше, мы записываем содержимое в файл с использованием метода `write()`.

В обоих примерах мы используем модуль `requests` для отправки GET-запроса на указанный URL, и мы получаем бинарное содержимое, используя атрибут `response.content`. Затем мы записываем это бинарное содержимое в файл на диске с использованием функции `open()` в сочетании с блоком `with`.

Итак, вот как можно скачать файл с помощью `requests` в Python.

## Использование Proxy в Requests

Если вы хотите отправлять HTTP-запросы в Python через прокси, вы можете использовать библиотеку `requests`. Вот как это сделать:

```python
import requests

url = 'some_url'

proxies = {
  'http': 'http://user:password@proxy:port',
  'https': 'https://user:password@proxy:port'
}

response = requests.get(url, proxies=proxies)

```

В приведенном выше примере кода вам нужно заменить `user`, `password`, `proxy` и `port` на ваши актуальные учетные данные и адрес прокси с номером порта.

Используя эти настройки прокси в ваших HTTP-запросах на Python, вы можете легко обойти любые ограничения, наложенные на вашу сеть, и получить доступ к желаемым ресурсам без каких-либо проблем. Более того, вы можете масштабировать ваш сервис, сделав его более надежным и независимым, одновременно обеспечивая защиту вашей сети от внешних пользователей.

## Как Конвертировать `curl` в Запрос Python

Конвертация команды `curl` в запрос Python является обычной задачей для тех, кто работает с API или веб-запросами.

Вот два примера конвертации команды `curl` в запрос Python с использованием модуля `requests`:

### Команда `curl`

### Код Запроса Python

```python
import requests

response = requests.get('https://jsonplaceholder.typicode.com/posts/1')

print(response.json())
```

### Более Сложная Команда `curl`

  {
  "имя": "Джон Доу", "возраст": 25
  }

### Код `request` на Python

```python
import requests

url = 'https://httpbin.org/post'
headers = {'Content-Type': 'application/json'}
data = '{"name": "John Doe", "age": 25}'

response = requests.post(url, headers=headers, data=data)

print(response.json())
```

В заключение, конвертация `curl` в Python request может быть легко выполнена с использованием модуля `requests`. Понимая правильный синтаксис и структуру команды `curl`, можно воссоздать тот же запрос в Python всего несколькими строками кода.

## Rest Api

Python популярен для создания RESTful API благодаря своему простому синтаксису и обширной библиотеке. С Python разработчики могут легко совершать прямые вызовы API и извлекать `data` из популярных веб-сервисов.

### Пример Вызова Api на Python

Ниже приведен пример того, как сделать вызов API с использованием Python:

```python
import requests

url = "https://api.example.com/data"
response = requests.get(url)

print(response.json())
```


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
