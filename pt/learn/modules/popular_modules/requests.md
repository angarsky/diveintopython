> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/modules/popular-modules/requests

O módulo `requests` facilita a interação com páginas da web e APIs simplificando o processo de envio de solicitações e manipulação de respostas. Com requests, você pode recuperar dados da web de maneira rápida e fácil e usá-los em seus projetos Python. Neste artigo, exploraremos o módulo requests e suas funcionalidades, e demonstraremos como usá-lo no seu código Python.

## Algumas Palavras sobre o módulo `requests`

O módulo Requests em Python é uma biblioteca HTTP que permite enviar solicitações HTTP/1.1 usando Python. No entanto, se você encontrar o erro `no module named requests` ao tentar usar o módulo `requests` em Python, significa que o módulo não está instalado ou não está acessível no seu ambiente.

Para instalar o módulo [requests](https://pypi.org/project/requests/), você pode simplesmente executar o seguinte comando no seu terminal:

```shell
pip install requests
```

Uma vez que você instalou a biblioteca Requests, você pode usá-la para enviar solicitações a servidores web via Python. Abaixo está um exemplo de código simples que demonstra como usar o módulo Requests para solicitar `data` de um site:

```python3
import requests

response = requests.get('https://www.example.com')
print(response.text)
```

Neste exemplo, nós `import` o módulo Requests e usamos o método `requests.get()` para enviar uma solicitação GET ao site especificado no parâmetro. O atributo `response.text` contém os `data` retornados pelo site, os quais nós `print` no console.

Aqui está outro exemplo mostrando como enviar uma solicitação POST com alguns dados:

```python3
import requests

data = {'key': 'value'}
response = requests.post('https://www.example.com', data=data)
print(response.text)
```

Neste exemplo, usamos o método `requests.post()` para enviar uma solicitação POST para o site especificado no parâmetro. Nós também passamos alguns `data` como um dicionário, que será enviado como `data` de formulário com a requisição. O atributo `response.text` contém os `dados` retornados pelo site, que nós `imprimimos` para o console.  

  
## Requisições com JSON

JSON é um formato de dados popular usado para troca de dados entre sistemas. Neste contexto, vamos aprender a utilizar pedidos Python para enviar e receber dados JSON.

Para enviar uma requisição `post` com JSON usando `requests`, use o método `post` e passe os dados JSON usando o parâmetro `json`.

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

Para enviar um pedido `GET` com JSON, utilize o método `get` e passe os dados JSON utilizando o parâmetro `params`.

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

Para enviar dados JSON como o corpo do pedido, utilize o parâmetro `data` em vez do parâmetro `params`.

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

Em resumo, `requests` facilita o envio e recebimento de dados JSON. Utilize o parâmetro `json` ou `data` dependendo se você está enviando uma requisição `POST` ou `GET`. Tenha em mente que o servidor deve ser capaz de processar os dados JSON que você enviar.  
  
## Como definir o tempo limite do `requests

Se você está usando Python `requests` para fazer requisições HTTP, é essencial definir um valor de timeout para evitar requisições que durem muito tempo. Definir um valor de timeout é fácil com a biblioteca [requests](https://pypi.org/project/requests/). Aqui estão dois exemplos de código para definir o valor de timeout usando o método `get`.

```python
import requests

response = requests.get("https://www.example.com", timeout=5)
```

No exemplo acima, definimos um valor de tempo limite de 5 segundos. Portanto, se o servidor não responder dentro de 5 segundos, a solicitação irá gerar uma exceção `requests.exceptions.Timeout`.

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

No exemplo acima, usamos um bloco `try-except` para tratar exceções. Se a solicitação demorar mais de 5 segundos, ela irá lançar uma exceção `requests.exceptions.Timeout`.

Ao definir o valor de tempo limite, prevenimos que o programa fique esperando indefinidamente e podemos tratar os erros de forma elegante.

## Atributos dos Requests

`Requests` fornece vários atributos que podem ser usados para personalizar e acessar diferentes partes de uma requisição, como o corpo da requisição, cabeçalhos, resposta e cookies.

### Corpo da Requisição

Para enviar dados no corpo da requisição, você pode usar o parâmetro `data` com um dicionário de pares chave-valor. Aqui está um exemplo:

```python
import requests

payload = {'key1': 'value1', 'key2': 'value2'}
response = requests.post('https://example.com', data=payload)
```

### Cabeçalhos

Cabeçalhos podem ser adicionados a uma solicitação usando o parâmetro `headers`. Isso pode ser útil ao enviar tokens de autorização ou cabeçalhos customizados. Aqui está um exemplo:

```python
import requests

headers = {'Authorization': 'Bearer my_token', 'Custom-Header': 'value'}
response = requests.get('https://example.com', headers=headers)
```

### Resposta

O objeto `response` contém a `response` do servidor à solicitação. Ele inclui atributos como o código de status da `response`, conteúdo e cabeçalhos. Aqui está um exemplo:

```python3
import requests

response = requests.get('https://example.com')
print(response.status_code)
print(response.content)
print(response.headers)
```

### Cookies

Cookies podem ser acessados e configurados usando o atributo `cookies`. Isso pode ser útil para manter uma `session` ou configurar dados persistentes. Aqui está um exemplo:

```python
import requests

login_data = {'username': 'my_username', 'password': 'my_password'}
response = requests.post('https://example.com/login', data=login_data)

# Get the session cookie
session_cookie = response.cookies['session']

# Use the session cookie for subsequent requests
response2 = requests.get('https://example.com/protected', cookies={'session': session_cookie})
```

## Sessão de Requisições

A Sessão de Requisições do Python é uma ferramenta poderosa que permite manter a persistência de suas requisições HTTP dentro de um único objeto `session`. Isso significa que você pode facilmente reutilizar a mesma conexão para múltiplas requisições, com cada requisição construindo a partir da anterior.

Usando a biblioteca integrada `requests` no Python, o recurso de Sessões mantém variáveis de `session`, incluindo cookies. Assim, permite-se ter um armazenamento temporário do lado do cliente. Aqui está um exemplo de código que ilustra a Sessão de Requisições do Python:

```python
import requests

session = requests.Session()
session.get('http://example.com')
```

Neste código, criamos um novo objeto `Session` e então usamos o método `get()` para fazer uma solicitação GET para a URL fornecida. Por padrão, esta solicitação incluirá os cabeçalhos e cookies relevantes que foram definidos nas solicitações anteriores feitas com este objeto `session`.

Sessões são úteis para emular sessões com estado, onde cookies HTTP são usados para lembrar o estado do lado do servidor. Outro exemplo seria acelerar solicitações para o mesmo servidor reutilizando a mesma conexão TCP. Isso significa que o servidor pode enviar a resposta imediatamente e não precisa gastar tempo configurando uma nova conexão TCP.

Aqui está um exemplo de como adicionar um cabeçalho à `session`, que estará presente em todas as solicitações subsequentes:

```python
import requests

session = requests.Session()
session.headers.update({'x-test': 'true'})

session.get('http://httpbin.org/headers')
```

Dentro da `Session`, definimos o cabeçalho `x-test` como `true`. Então, quaisquer solicitações subsequentes feitas com este objeto `session` para 'http://httpbin.org/headers' incluirão este cabeçalho.

Em conclusão, a Sessão de Solicitações Python oferece uma maneira poderosa e flexível de persistir o estado da conexão através de múltiplas solicitações HTTP. É uma ferramenta indispensável para qualquer desenvolvedor que trabalhe com dados de solicitação/resposta HTTP em Python.

## Como Baixar Arquivo com Requests

Para baixar um arquivo usando o módulo `requests` em Python, você pode usar o método `get()`. Este método permite que você faça uma solicitação para a URL especificada e recupere o conteúdo como um objeto semelhante a um arquivo. Você pode então escrever o conteúdo em um arquivo no seu computador local.

```python
import requests

url = 'https://example.com/image.jpg'
response = requests.get(url)

with open('image.jpg', 'wb') as f:
    f.write(response.content)
```

Neste exemplo, estamos baixando uma imagem da URL `https://example.com/image.jpg` e salvando-a em um arquivo chamado `image.jpg`. O atributo `response.content` contém o conteúdo binário da imagem, que escrevemos no arquivo usando o método `write()`.

Outro exemplo é baixar um arquivo CSV e salvar no disco:

```python
import requests

url = 'https://example.com/data.csv'
response = requests.get(url)

with open('data.csv', 'wb') as f:
    f.write(response.content)
```

Neste exemplo, estamos baixando um arquivo CSV de `https://example.com/data.csv` e salvando como `data.csv`. Como antes, escrevemos o conteúdo no arquivo usando o método `write()`.

Em ambos os exemplos, usamos o módulo `requests` para fazer uma solicitação GET para a URL especificada, e recuperamos o conteúdo binário usando o atributo `response.content`. Em seguida, escrevemos este conteúdo binário em um arquivo no disco usando a função `open()` em combinação com um bloco `with`.

Então, é assim que você pode baixar um arquivo com `requests` em Python.

## Usando Proxy em Requests

Se você quer enviar solicitações HTTP em Python através de um proxy, você pode usar a biblioteca `requests`. Aqui está como fazer isso:

```python
import requests

url = 'some_url'

proxies = {
  'http': 'http://user:password@proxy:port',
  'https': 'https://user:password@proxy:port'
}

response = requests.get(url, proxies=proxies)

```

No exemplo de código acima, você precisa substituir `user`, `password`, `proxy` e `port` com suas credenciais reais e endereço de proxy e número da porta.

Ao usar essas configurações de proxy em suas solicitações HTTP Python, você pode facilmente contornar quaisquer restrições impostas à sua rede e acessar os recursos desejados sem qualquer problema. Além disso, você pode escalar seu serviço para ser mais robusto e independente, enquanto protege sua rede de usuários externos.

## Como Converter `curl` para solicitação Python

Converter um comando `curl` para solicitação Python é uma tarefa comum para aqueles que trabalham com APIs ou solicitações web.

Aqui estão dois exemplos de como converter um comando `curl` em solicitação Python usando o módulo `requests`:

### Comando `curl`

```shell
curl https://jsonplaceholder.typicode.com/posts/1
```

### Código de Requisição em Python

```python
import requests

response = requests.get('https://jsonplaceholder.typicode.com/posts/1')

print(response.json())
```

### Comando `curl` Mais Complexo

```shell
curl -X POST \
  https://httpbin.org/post \
  -H 'Content-Type: application/json' \
  -d '{"name": "John Doe", "age": 25}'
```

### Código `request` em Python

```python3
import requests

url = 'https://httpbin.org/post'
headers = {'Content-Type': 'application/json'}
data = '{"name": "John Doe", "age": 25}'

response = requests.post(url, headers=headers, data=data)

print(response.json())
```

Em conclusão, converter `curl` para pedido Python pode ser feito facilmente usando o módulo `requests`. Ao entender a sintaxe correta e a estrutura do comando `curl`, é possível replicar o mesmo pedido em Python com poucas linhas de código.

## Rest API

Python é uma linguagem popular para construir APIs RESTful devido à sua sintaxe simples e vasta coleção de bibliotecas. Com Python, os desenvolvedores podem facilmente fazer chamadas diretas à API e extrair `data` de serviços web populares.

### Exemplo de Chamada de API em Python

Abaixo está um exemplo de como fazer uma chamada de API usando Python:

```python
import requests

url = "https://api.example.com/data"
response = requests.get(url)

print(response.json())
```

No trecho de código acima, nós `import` o módulo Python 'requests', usamos a URL do endpoint da API e executamos o pedido usando o método 'get'. Finalmente, nós `print` os `data` recuperados no formato JSON.

### Como usar APIs RESTful em Python

Python fornece uma biblioteca chamada `Flask` que é amplamente usada para construir APIs REST. Para criar uma API RESTful usando o `Flask`, você precisa instalar o `Flask` e usar as capacidades de roteamento para definir os endpoints da API.

### Como criar um endpoint de API usando Flask

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

No código acima, definimos uma `app` simples do `Flask` com um endpoint para recuperar `data`. A função 'get_data' recupera um objeto `data` de amostra e o retorna como JSON.

Em resumo, Python é uma excelente linguagem para trabalhar com APIs RESTful devido à sua facilidade de uso e uma grande variedade de bibliotecas existentes disponíveis. Usando Python e `Flask`, os desenvolvedores podem construir rapidamente APIs REST de alto desempenho, tornando-a uma escolha popular para muitos projetos de desenvolvimento.
