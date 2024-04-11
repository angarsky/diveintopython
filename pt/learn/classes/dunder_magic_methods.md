> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/dunder-magic-methods

**Dunder** (duplo sublinhado) ou métodos **mágicos** são métodos especiais em Python que permitem a personalização de classes e objetos. Esses métodos são chamados de **mágicos** porque podem mudar o comportamento do código de maneiras inesperadas. Entender e implementar esses métodos pode aprimorar grandemente a funcionalidade e flexibilidade dos seus programas Python.

## Construindo Objetos e Expressões

Em Python, objetos são instâncias de classes, que definem os atributos e métodos do objeto. O processo de criação de um objeto em Python envolve a definição de uma classe, que especifica a estrutura e comportamento do objeto, e então criando instâncias dessa classe.

### Definindo Classes em Python

Para definir uma classe em Python, você usa a palavra-chave `class`, seguida pelo nome da classe. Por exemplo, o seguinte código define uma classe simples chamada `Person`:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def say_hello(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")
```

O método `__init__` é um método especial que é chamado quando uma instância da classe é criada. Ele inicializa os atributos do objeto.

### Método Mágico `__init__` em Python

O método `__init__` é um método mágico especial que é chamado quando uma instância de uma classe é criada. Ele inicializa os atributos do objeto. No exemplo acima, o método `__init__` leva dois parâmetros, `name` e `age`, que são usados para inicializar os atributos `name` e `age` do objeto.

### Criando Instâncias de Classes em Python

Para criar uma instância de uma classe, você chama a classe como se fosse uma função, passando quaisquer argumentos que o método dunder `__init__` exija. Por exemplo, o seguinte código cria duas instâncias da classe `Person`:

```python
# Defining a car class
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
    
    def describe_car(self):
        print(f"The car is a {self.year} {self.make} {self.model}.")
    
    
# Creating an instance of Car class
car1 = Car("Honda", "Accord", 2021)

# Calling the describe_car method
car1.describe_car()

# Output: The car is a 2021 Honda Accord.
```

```python
# Defining a book class
class Book:
    def __init__(self, title, author, pages):
        self.title = title
        self.author = author
        self.pages = pages
    
    def describe_book(self):
        print(f"The book '{self.title}' is written by {self.author} and has {self.pages} pages.")
        

# Creating an instance of Book class
book1 = Book("The Alchemist", "Paulo Coelho", 208)

# Calling the describe_book method
book1.describe_book()

# Output: The book 'The Alchemist' is written by Paulo Coelho and has 208 pages.
```

## Criando Objetos Iteradores

Um iterador é um objeto que possibilita a iteração sequencial (loop) sobre uma coleção de itens, um item por vez. Em Python, você pode criar objetos iteradores usando classes ou funções.

### Classe Geradora Python

Você pode criar um iterador usando a classe geradora em Python. A classe geradora é um tipo de objeto que é usado para criar objetos iteráveis utilizando a declaração `yield`.

```python3
class MyGenerator:
    def __init__(self):
        self.num = 0

    def __iter__(self):
        return self
    
    def __next__(self):
        if self.num <= 5:
            value = self.num
            self.num += 1
            return value
        else:
            raise StopIteration
def my_generator():
    num = 0
    while num <= 5:
        yield num
        num += 1

# Using the generator class
gen = MyGenerator()
for x in gen:
    print(x)

# Using the function generator
gen = my_generator()
for x in gen:
    print(x)
```

Neste exemplo, `MyGenerator` é uma classe geradora que herda da classe `object` integrada. Ela define um método `__init__()` que inicializa o atributo `num` como 0. Também define o método `__iter__()` que retorna o objeto iterador (`self` neste caso) e o método mágico `__next__()` que gera o próximo valor na sequência.

Você também pode criar um iterador usando um gerador de função Python. Um gerador de função é uma função que contém a instrução `yield`.

Neste exemplo, a função `my_generator` é um gerador de função que usa a instrução `yield` para gerar o próximo valor na sequência.

Em ambos os exemplos acima, você pode criar um objeto iterador da seguinte forma:

Ambos exemplos de código irão gerar os valores `0`, `1`, `2`, `3`, `4`, e `5` quando iterados.

## Manipulação de Referências de Atributos

Referências de atributo são usadas para acessar atributos de um objeto em Python. Elas podem ser acessadas usando a sintaxe de notação de ponto e também podem ser acessadas dinamicamente usando a função `getattr()`.

A função `getattr()` recebe dois argumentos - o objeto cujo atributo precisa ser acessado e o nome do atributo como uma string. Se o atributo não for encontrado, um `AttributeError` é levantado.

```python3

class Dog:
    def __init__(self, name, breed):
        self.name = name
        self.breed = breed

my_dog = Dog("Max", "German Shepherd")
print(my_dog.name) ### Output

my_cat = {"name": "Fluffy", "breed": "Persian"}
cat_name = getattr(my_cat, "name")
print(cat_name) ### Output
```

No primeiro caso, criamos uma classe `Dog` e acessamos o atributo `name` usando a sintaxe de notação por ponto.

No segundo caso, criamos um objeto dicionário `my_cat` e acessamos o atributo `name` dinamicamente usando a função `getattr()`. Armazenamos o valor do atributo em `cat_name` e o imprimimos.

## Representando Objetos como Strings com Método Mágico

Em Python, podemos representar objetos como string usando o método dunder `__repr__()`. Este método é chamado quando usamos a função `repr()` ou quando imprimimos um objeto usando a função `print()`.

```python
class Point:
    def __init__(self, x, y):
        self.x = x
        self.y = y
        
    def __repr__(self):
        return f"Point({self.x}, {self.y})"
        
p = Point(2, 3)
print(p)  ### Output
```

No código acima, definimos uma classe `Point` com atributos `x` e `y`. Também definimos um método dunder `__repr__()` que retorna uma representação em string do objeto `Point`. Quando imprimimos o objeto `p`, ele chama o método mágico `__repr__()` para obter sua representação em string.

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
        
    def __repr__(self):
        return f"Car(make={self.make}, model={self.model}, year={self.year})"
        
c = Car("Toyota", "Camry", 2021)
print(c)  ### Output
```

Neste exemplo, definimos uma classe `Car` com os atributos `make`, `model` e `year`. Também definimos um método `__repr__()` que retorna uma representação em string do objeto `Car`. Quando imprimimos o objeto `c`, ele chama o método dunder `__repr__()` para obter sua representação em string.

## Limpando Objetos com Método Dunder

Em Python, os objetos são automaticamente coletados como lixo quando não são mais necessários. No entanto, às vezes pode ser necessário definir ações de limpeza adicionais para um objeto. Isso pode ser feito usando o método `__del__`, que é chamado quando o objeto está prestes a ser destruído.

Esse método dunder é útil para liberar recursos, tais como arquivos, conexões de rede ou outros objetos de nível de sistema que não são automaticamente gerenciados pelo Python.

```python
class MyClass:
    def __init__(self):
        self.file = open('example.txt', 'r')

    def __del__(self):
        self.file.close()
```

Neste exemplo, o construtor `MyClass` cria um objeto de arquivo e o armazena na variável de instância `file`. Quando o objeto é destruído, o método `__del__` é chamado, o que fecha o arquivo.

## Realizando Comparações com Métodos Dunder

Python oferece múltiplas maneiras de comparar valores, variáveis ou expressões. Alguns operadores comumente usados para realizar comparações incluem `==`, `!=`, `>`, `<`, `>=`, `<=`, `in` e `is`.

### Comparar Strings em Python

O método `__lt__()` é usado para implementar o operador de comparação menor que em Python. Ele retorna `True` se a primeira string for menor que a segunda string e `False` caso contrário.

```python3
string1 = "apple"
string2 = "banana"
if string1.__lt__(string2):
    print("string1 is less than string2")
else:
    print("string1 is greater than or equal to string2")

# Output:
#string1 is less than string2
```

```python3
fruits = ["apple", "banana", "orange", "kiwi"]
sorted_fruits = sorted(fruits, key=lambda x: x.__lt__("c"))
print(sorted_fruits)
# Output:

# ['orange', 'kiwi', 'apple', 'banana']
```

No exemplo acima, classificamos a lista de frutas em ordem crescente com base em se o primeiro caractere de cada string é menor ou maior que `c`. `lambda x: x.__lt__(`c`)` retorna `True` se o primeiro caractere de `x` for menor que `c` e `False` caso contrário.
