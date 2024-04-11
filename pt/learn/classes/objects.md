> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/objects

Se você está procurando aprofundar seu conhecimento de programação em Python, é essencial ter uma sólida compreensão de classes e objetos. Essencialmente, uma classe é um modelo para criar objetos, enquanto os próprios objetos são instâncias dessas classes. Neste guia, vamos explorar o mundo dos objetos de classe e aprofundar nos conceitos básicos de classes e objetos nessa poderosa linguagem. Então, seja você iniciante em Python ou buscando melhorar suas habilidades existentes, continue lendo para aprender mais sobre esse aspecto crucial da linguagem.

## Como Criar um Objeto em Python

Classes e objetos em Python são conceitos fundamentais na programação orientada a objetos. Um objeto é simplesmente uma instância de uma classe.

```python
# Creating a Class
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

    def display(self):
        print(f"The car is a {self.year} {self.make} {self.model}.")
        
# Creating Objects
car1 = Car('Toyota', 'Corolla', 2018)
car2 = Car('Honda', 'Civic', 2019)

car1.display() # The car is a 2018 Toyota Corolla.
car2.display() # The car is a 2019 Honda Civic.
```

Neste exemplo, criamos uma classe chamada `Car` que possui três atributos: `make`, `model` e `year`. O método `__init__()` é usado para inicializar os atributos ao criar um novo objeto. O método `display()` é usado para imprimir informações sobre o carro. Criamos dois objetos (`car1` e `car2`) da classe `Car`. Passamos valores para os atributos `make`, `model` e `year` para cada carro. Depois, chamamos o método `display()` em cada objeto para imprimir informações sobre o carro.

Resumindo, classes e objetos em Python são usados para criar tipos de dados personalizados que podem ter atributos e métodos. Usar objetos de classe em Python permite um código mais organizado e modular.

## O que é um Objeto em Python

Objeto de classe em Python refere-se a um esquema ou um modelo para criar objetos. Ele define os atributos e métodos que um objeto terá.
Em Python, classes são usadas para criar objetos de classe que podem ser usados para criar instâncias ou objetos dessa classe.

```python
class Car:
    # Class object
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year
    
    # Class method
    def get_details(self):
        return f"{self.make} {self.model} ({self.year})"
```

Neste exemplo, `Car` é um objeto de classe que define os atributos - `make`, `model` e `year` de um carro e um método `get_details()` que retorna os detalhes do carro.

```python
class Dog:
    # Class object
    def __init__(self, breed, age):
        self.breed = breed
        self.age = age
        
    # Class method
    def bark(self):
        return "Woof! Woof!"
```

Neste exemplo, `Dog` é outro objeto de classe que define os atributos - `breed` e `age` de um cachorro e um método `bark()` que retorna o som de um cachorro.

## Explorando as Principais Características do Objeto de Classe

Um objeto de classe em Python é um modelo para criar objetos. Ele define um conjunto de atributos e métodos que todos os objetos criados a partir dessa classe terão.

- Classes: Uma classe é um modelo para criar objetos. Ela define os atributos e métodos que todos os objetos criados a partir dessa classe terão.

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

car1 = Car("Toyota", "Camry", 2020)
car2 = Car("Honda", "Accord", 2021)
```

- Objetos: Um objeto é uma instância de uma classe. Ele possui todos os atributos e métodos definidos na classe.

```python3
class Player:
    def __init__(self, name, position, number):
        self.name = name
        self.position = position
        self.number = number

p1 = Player("LeBron James", "Small Forward", 23)
print(p1.name, p1.position, p1.number)
```

## Solucionando Problemas Comuns com Objetos de Classe

Ao trabalhar com objetos de classe, podem ocorrer alguns problemas comuns. Aqui estão alguns dos problemas mais comuns e suas soluções:

1. `AttributeError`: Esse erro ocorre ao tentar acessar um atributo que não existe na classe ou objeto. Para resolver esse erro, certifique-se de que o atributo existe e foi devidamente definido.

```python3
class MyClass:
    def __init__(self, val):
        self.value = val

obj = MyClass(5)
print(obj.value)  # Output: 5

# print(obj.foo)  Output: AttributeError: 'MyClass' object has no attribute 'foo'
```

2. `TypeError`: Esse erro ocorre quando uma função ou método é chamado com o número ou tipo errado de argumentos. Para resolver esse erro, certifique-se de que a função ou método seja chamado com o número e tipo corretos de argumentos.

```python3
class MyClass:
    def __init__(self, val):
        self.value = val

    def add(self, num):
        return self.value + num

obj = MyClass(5)
print(obj.add(3))  # Output: 8

# print(obj.add("3"))  Output: TypeError: unsupported operand type(s) for +: 'int' and 'str'
```

## Como Obter Atributos de um Objeto

Tipos de objeto em Python têm atributos que representam características ou comportamentos do objeto. Para obter todos os atributos de um objeto em Python, você pode usar a função `getattr()` ou acessá-los diretamente usando a notação por ponto.

### Usando a função `getattr()`

A função `getattr()` recebe dois argumentos, o objeto e o `name` do atributo, e retorna o valor do atributo.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = getattr(my_obj, 'name')
print(name) # Output: 'John'
```

### Acessando atributos diretamente

Você também pode acessar os atributos de um objeto diretamente usando a notação por ponto.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = my_obj.name
print(name) # Output: 'John'
```

Em conclusão, obter atributos de tipos de objeto Python pode ser feito usando a função `getattr()` ou acessando-os diretamente usando a notação ponto.

## Explorando Herança de Atributos e Busca

Atributos podem ser herdados de classes pais para classes filhas. A herança de atributos permite que classes filhas acessem e usem atributos definidos em suas classes pais. Python oferece uma função embutida `issubclass()` para verificar se uma determinada classe é uma subclasse de outra classe.

### Exemplo de uma Classe em Python

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

class Student(Person):
    def __init__(self, name, age, student_id):
        super().__init__(name, age)
        self.student_id = student_id
```

Neste exemplo, `Student` é uma classe filha de `Person`. A classe `Student` herda os atributos `name` e `age` da classe `Person`.

### Herança de atributos

```python
class A:
    x = 10

class B(A):
    pass

class C(B):
    pass

print(B.x)   # 10

print(C.x)   # 10

```

Neste exemplo, `A` é a classe pai, `B` é a classe filha e `C` é a classe neta. O atributo `x` definido na classe `A` é herdado tanto pelas classes `B` quanto `C`.

### Ordem de busca de atributo

```python3
class A:
    x = 10

class B(A):
    x = 20

class C(B):
    pass

print(C.x)   ### Output 20

```

Neste exemplo, `A` é a classe pai, `B` é a classe filha e `C` é a classe neta. Ambas as classes `A` e `B` possuem um atributo chamado `x`. Neste caso, a ordem de busca do atributo é da classe atual (que é `C`), para a sua classe pai `B` e finalmente para a classe avô `A`. O valor de `x` encontrado no ancestral mais próximo (`B`) é impresso como saída.

## Como Imprimir todos os Atributos de um Objeto

Para obter atributos de um objeto em Python, você pode usar a função embutida `dir`. Para imprimir atributos de objetos, você precisa iterar sobre a saída da função `dir` e usar a função `getattr` para obter os valores dos atributos. Aqui estão dois exemplos de código:

```python
class MyClass:
    def __init__(self, foo, bar):
        self.foo = foo
        self.bar = bar
        
my_obj = MyClass(5, "hello")

### using the dir function

for attr in dir(my_obj):
    print(f"{attr}: {getattr(my_obj, attr)}")
```

```python
class Person:
    def __init__(self, name, age, city):
        self.name = name
        self.age = age
        self.city = city
        
person_obj = Person("John", 30, "New York")

### using list comprehension

attrs = [attr for attr in dir(person_obj) if not callable(getattr(person_obj, attr)) and not attr.startswith("__")]
for attr in attrs:
    print(f"{attr}: {getattr(person_obj, attr)}")
```

Em ambos os exemplos, a função `dir` é usada para obter uma lista de todos os atributos do objeto. O primeiro exemplo usa um laço de repetição simples para iterar sobre a lista e `print` cada atributo junto com seu `value` usando a função `getattr`. O segundo exemplo usa uma compreensão de lista para filtrar quaisquer atributos `callable` (como métodos) e quaisquer atributos que começam com dois sublinhados (que são considerados privados). A lista resultante de atributos é então impressa usando `getattr`.

## Como Verificar o Tipo de Objeto em Python

Em Python, você pode verificar o `type` de um objeto usando a função `type()`. Esta função retorna o `type` do objeto que você passar como argumento. Aqui estão dois exemplos para ilustrar como usar a função `type()`:

```python3
# Checking the type of an integer
number = 42
print(type(number))  # Output: <class 'int'>
```

```python3
# Checking the type of a list
fruits = ['apple', 'banana', 'cherry']
print(type(fruits))  # Output: <class 'list'>
```

Usar a função `type()` permite que você obtenha o `type` de qualquer objeto Python de forma rápida e fácil. Isso pode ser útil quando você quer depurar seu código ou escrever declarações condicionais baseadas no `type` de um objeto.

## Serializar Objeto

Serialização em Python refere-se ao processo de converter um objeto Python em um fluxo de bytes. Isso pode ser útil ao transferir dados entre diferentes sistemas ou salvar o estado de um programa no disco. O módulo de serialização mais comum em Python é o `pickle`, que pode serializar a maioria dos objetos Python.

Aqui estão dois exemplos de como usar [pickle](https://docs.python.org/3/library/pickle.html) para serializar um objeto em Python:

```python
import pickle
my_dict = {'key': 'value'}
with open('serialized_dict.pickle', 'wb') as f:
    pickle.dump(my_dict, f)

class MyClass:
    def __init__(self, value):
        self.value = value

my_object = MyClass('hello')
serialized_object = pickle.dumps(my_object)
```

No primeiro caso, criamos um objeto dicionário e o despejamos em um arquivo usando `pickle.dump()`. No segundo caso, criamos uma instância de `MyClass` e a serializamos para uma string de bytes usando `pickle.dumps()`.

Usar `pickle` para serializar objetos Python é fácil e poderoso. No entanto, observe que `pickle` não é seguro e não deve ser usado para serializar ou desserializar dados não confiáveis.

## Erro: Objeto Python não tem Atributo

Quando você encontra uma mensagem de erro que diz `Python Object has no Attribute` em Python, significa que você está tentando acessar um atributo ou método que não existe nesse objeto. Isso pode ser devido a um erro de digitação no nome do atributo ou ao uso da variável errada para acessar o atributo.

Aqui estão dois exemplos de como esse erro pode ocorrer e como corrigi-lo:

```python
class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model

my_car = Car('Toyota', 'Camry')
print(my_car.color)

# Output:
# 
# AttributeError: 'Car' object has no attribute 'color'
```

Explicação: Neste exemplo, estamos tentando acessar o atributo 'color', que não existe no objeto `my_car`.

Para corrigir esse erro, você precisa adicionar o atributo `color` à classe `Car` ou usar um atributo existente.

```python3
class Car:
    def __init__(self, make, model, color):
        self.make = make
        self.model = model
        self.color = color

my_car = Car('Toyota', 'Camry', 'red')
print(my_car.color)

# Output:
# 
# 'red'
```

```python
def get_average(numbers):
    total = 0
    for num in numbers:
        total += num
    return total / len(numbers)

my_nums = [1, 2, 3, '4', 5] 
average = get_average(my_nums)

# Output:
# 
# TypeError: unsupported operand type(s) for +=: 'int' and 'str'
```

Explicação: Neste exemplo, estamos tentando adicionar uma string `value` à variável `total`, o que resulta em um erro porque o método `numeric()` só funciona com valores numéricos.

Para corrigir esse erro, você pode usar a função `isinstance()` para verificar `if` o `value` é numérico antes de adicioná-lo à variável `total`.

```python3
def get_average(numbers):
    total = 0
    count = 0
    for num in numbers:
        if isinstance(num, (int, float)):
            total += num
            count += 1
    return total / count

my_nums = [1, 2, 3, '4', 5] 
average = get_average(my_nums)
print(average)

# Output:
# 
# 2.75
```

## Como Listar os Métodos Disponíveis em uma Classe

No Python, você pode listar todos os métodos disponíveis na sua classe usando a função `dir()` ou `vars()`. Essas funções permitem que você introspecte sua classe e veja todos os métodos e atributos que ela contém.

### Usando a Função `dir()`

```python3
class MyClass:
    def __init__(self):
        self.my_var = "Hello world"
        
    def my_method(self):
        print("My Method")

print(dir(MyClass))

# Output:
# 
# ['__class__', '__delattr__', '__dict__', '__dir__', '__doc__', 
# '__eq__', '__format__', '__ge__', '__getattribute__', '__gt__',
# '__hash__', '__init__', '__le__', '__lt__', '__module__', '__ne__',
# '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', 
# '__sizeof__', '__str__', '__subclasshook__', '__weakref__',
#  'my_method']
```

### Utilizando a Função `vars()`

```python3
class MyClass:
    def __init__(self):
        self.my_var = "Hello world"
        
    def my_method(self):
        print("My Method")

print(vars(MyClass))

# Output:
# 
# {'__module__': '__main__', '__init__': <function MyClass.__init__ at 0x7f1f9f0bd430>, 
#  'my_method': <function MyClass.my_method at 0x7f1f9f0bd4c0>, '__dict__':
# <u>attribute '__dict__' of 'MyClass' objects</u>, '__weakref__':
# <u>attribute '__weakref__' of 'MyClass' objects</u>, '__doc__': None}
```

Utilizar estas funções pode ajudá-lo a entender como uma classe é estruturada e como interagir com ela.
