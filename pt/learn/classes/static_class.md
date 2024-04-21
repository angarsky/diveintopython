> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/static-class

Python oferece vários tipos de classes, incluindo classes estáticas Python, que permitem definir funcionalidades a nível de classe sem a necessidade de criar instâncias. Uma das vantagens de usar uma classe estática é que ela permite agrupar funções relacionadas dentro de uma classe, integrando classes estáticas Python em seus projetos Python, você pode aproveitar os benefícios da funcionalidade organizada a nível de classe que não depende de instâncias de classes. Para criar um método estático em uma classe, você pode usar o decorador `@staticmethod`. Uma vez criado, você pode chamar o método estático diretamente da classe sem criar uma instância dela. Neste artigo, exploraremos o conceito de classes estáticas e como criar e chamar um método estático em uma classe.

## Entendendo as Classes Estáticas Python

Uma classe estática Python é uma classe que não requer que uma instância seja criada. É criada usando o decorador `@staticmethod` em uma definição de classe. Um método estático não tem acesso à instância, e também não pode modificar a própria classe.

### Como Usar uma Classe Estática Python e Chamar Método Estático em Classe

Além de entender o conceito de um método estático, é crucial compreender a importância de uma classe estática em Python.

```python3
class MyClass:
    @staticmethod
    def static_method():
        print("This is a static method in a class")
        
MyClass.static_method()   # Output: This is a static method in a class
```

No exemplo acima, `static_method()` é um método estático em `MyClass`. Ele pode ser chamado usando o nome da classe sem uma instância da classe.

```python3
class Calculator:
    @staticmethod
    def add_numbers(x, y):
        return x + y
        
result = Calculator.add_numbers(3, 5)
print(result)   # Output: 8
```

No exemplo acima, o método estático `add_numbers()` da classe `Calculator` pode ser chamado diretamente usando o nome da classe `Calculator`. Ele recebe dois argumentos, `x` e `y`, e retorna a soma deles.

De forma geral, classes e métodos estáticos fornecem uma maneira de representar funcionalidades que não dependem de nenhuma instância ou variáveis de classe e podem ser usadas sem criar uma instância de uma classe.

## O que é um Método Estático em Python

Python nos permite criar classes estáticas e métodos estáticos dentro de uma classe. Um método estático em Python não requer que uma instância da classe seja criada antes de ser usado. Enquanto isso, um método estático de uma classe Python é um método cujo primeiro parâmetro é a própria classe, em vez da instância da classe.

Para criar classes e métodos estáticos, simplesmente usamos o decorador `@staticmethod` em Python.

```python3
class Math:
    @staticmethod
    def add(x, y):
        return x + y

    @staticmethod
    def subtract(x, y):
        return x - y
        
# To call the static methods in the class, we don't need to create an instance of the class
print(Math.add(2, 3))       # Output: 5
print(Math.subtract(5, 2))  # Output: 3
```

No exemplo acima, criamos uma **classe estática** chamada **Math** que contém dois **métodos estáticos** chamados **add** e **subtract**. Podemos chamar esses métodos diretamente da classe sem a necessidade de criar uma instância da classe.

```python
class Person:
    count = 0

    def __init__(self, name):
        self.name = name
        Person.count += 1

    @staticmethod
    def total_people():
        return f"There are {Person.count} people."

# Create some instances of Person
person1 = Person("John")
person2 = Person("Jane")
person3 = Person("Jack")

# Call the static method from the class
print(Person.total_people())  # Output: There are 3 people.
```

Neste exemplo, criamos uma classe `Person` com uma **variável de classe** chamada `count` que irá rastrear o número de instâncias da classe criadas. Também criamos um **método estático de classe Python** chamado `total_people` que irá retornar o número total de pessoas criadas. Podemos chamar este método estático diretamente da classe.

## Como Chamar um Método Estático em uma Classe

Para chamar um método estático em uma classe, você precisa definir um método estático usando um decorador integrado `@staticmethod`. Um método estático não requer nenhuma instância para ser chamado, em vez disso, ele está associado com a própria classe.

```python
class MyClass:
    
    @staticmethod  ### Defining static method
    def my_static_method():
        print("This is a static method.")
        
### Calling the static method using the class name

MyClass.my_static_method()   ### Output

```

```python3
class Math:
    
    @staticmethod   ### Defining static method

    def add(a, b):
        return a + b

    @staticmethod  ### Defining static method

    def multiply(a, b):
        return a * b

### Calling the static methods in class using class name
print(Math.add(2, 3))      ### Output 5
print(Math.multiply(2, 3)) ### Output 6

```

Nos exemplos acima, podemos ver como definir e chamar um método estático usando o decorador `@staticmethod` em Python.

## Quando Usar Métodos Estáticos

Métodos estáticos em Python são uma funcionalidade poderosa que pode melhorar significativamente a organização e a manutenibilidade do código. No entanto, é essencial entender quando e onde usá-los efetivamente. Aqui estão alguns cenários comuns onde métodos estáticos podem ser benéficos:

### Funções de Utilidade

Métodos estáticos são ideais para funções de utilidade que não estão vinculadas a uma instância específica de uma classe. Essas funções fornecem funcionalidade que pode ser usada em várias partes do seu código. Ao encapsulá-las em um método estático, você garante uma estrutura limpa e modular, tornando seu código mais mantível.

```python
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]
```

Neste exemplo, o método `reverse_string` é uma função utilitária que pode ser usada para inverter uma string. Ele não requer acesso a dados específicos da instância e pode ser chamado diretamente na classe.

### Métodos de Fábrica

Métodos estáticos podem ser usados para criar instâncias de uma classe. Isso é particularmente útil quando você deseja encapsular a lógica de criação de objeto dentro da própria classe. Métodos de fábrica simplificam o processo de inicialização de objeto e fornecem interfaces claras e concisas para a criação de objetos.

```python
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

    @staticmethod
    def create_square(side_length):
        return Rectangle(side_length, side_length)
```

Neste exemplo, o método estático `create_square` é um método de fábrica que simplifica a criação de instâncias quadradas de `Rectangle`.

### Armazenamento em Cache e Memoização

Métodos estáticos podem ser usados para fins de armazenamento em cache ou memoização. Quando você precisa armazenar e reutilizar resultados calculados, métodos estáticos podem ajudar a manter um cache dentro da classe, tornando cálculos subsequentes mais eficientes.

```python
class MathUtils:
    _fib_cache = {0: 0, 1: 1}

    @staticmethod
    def fibonacci(n):
        if n not in MathUtils._fib_cache:
            MathUtils._fib_cache[n] = MathUtils.fibonacci(n - 1) + MathUtils.fibonacci(n - 2)
        return MathUtils._fib_cache[n]
```

Neste exemplo, o método estático `fibonacci` calcula números de Fibonacci com memorização para otimizar o desempenho.

### Organização de Código

Use métodos estáticos para agrupar funções relacionadas dentro de uma classe. Isso melhora a organização e a legibilidade do código. Quando as funções compartilham um propósito comum, mas não dependem de dados específicos da instância, encapsulá-las como métodos estáticos dentro da mesma classe mantém sua base de código estruturada.

```python
class FileUtils:
    @staticmethod
    def read_file(filename):
        # Read file content

    @staticmethod
    def write_file(filename, content):
        # Write content to a file
```

Neste exemplo, a classe `FileUtils` agrupa métodos relacionados a operações com arquivos, fornecendo uma maneira clara e organizada de trabalhar com arquivos.

Ao reconhecer esses cenários, você pode efetivamente aproveitar o poder dos métodos estáticos no seu código Python e criar um software mais mantível e organizado. Os métodos estáticos oferecem uma maneira limpa e concisa de encapsular funcionalidades que não dependem de dados específicos da instância, melhorando a legibilidade e a manutenção do código.

## Classes Estáticas vs Classes Regulares

Classes estáticas em Python são classes que possuem atributos e métodos a nível de classe que podem ser acessados sem criar uma instância da classe. Elas são definidas usando o decorador `@staticmethod`. Por outro lado, classes regulares em Python são aquelas que requerem um objeto da classe para acessar atributo ou métodos.

### Classe Estática Python

```python3
class StaticClass:
    @staticmethod
    def my_static_method():
        print("This is a static method")

# Call static method in class
StaticClass.my_static_method()
```

No exemplo acima, definimos uma classe estática `StaticClass` com um método estático `my_static_method`. Podemos chamar esse método sem criar uma instância da classe.

## Como usar Classes Estáticas em Python

Classes estáticas em Python são classes que são usadas para agrupar funções que não podem ser classificadas em classes existentes. Essas classes não requerem que uma instância da classe seja criada para ser acessada. Em vez disso, métodos estáticos podem ser chamados diretamente da própria classe. Aqui estão alguns dos principais benefícios de usar classes estáticas:

1. **Organização de Namespace** - Classes estáticas podem ser usadas para organizar funções que não se encaixam bem em qualquer classe existente. Isso ajuda a manter uma estrutura de código limpa e organizada.

2. **Reutilização de código** - Classes estáticas podem ser reutilizadas em múltiplos módulos e funções, tornando o código reutilizável e fácil de manter.

3. **Melhoria na legibilidade do código** - Classes estáticas tornam mais fácil ler e entender o código, já que as funções são agrupadas sob uma única classe e podem ser acessadas diretamente.

```python
class MathUtils:
    @staticmethod
    def add_numbers(a, b):
        return a + b

result = MathUtils.add_numbers(2, 3)
print(result)
```

Neste exemplo, criamos uma classe estática `MathUtils` e definimos um método estático `add_numbers` que recebe dois argumentos e retorna a soma deles. O método estático pode ser chamado diretamente da classe `MathUtils` sem criar uma instância da classe.

```python3
class StringUtils:
    @staticmethod
    def reverse_string(string):
        return string[::-1]

class TextUtils:
    @staticmethod
    def reverse_and_uppercase(string):
        reversed_string = StringUtils.reverse_string(string)
        return reversed_string.upper()

result = TextUtils.reverse_and_uppercase("Hello World")
print(result)
```

Neste exemplo, criamos duas classes estáticas `StringUtils` e `TextUtils`. A classe `StringUtils` contém um método estático `reverse_string` que retorna uma string invertida. A classe `TextUtils` contém um método estático `reverse_and_uppercase` que chama o método `reverse_string` da classe `StringUtils` e retorna a string invertida em maiúsculas.

## Variáveis Estáticas em Classe

Em Python, variáveis estáticas são variáveis de nível de classe que são compartilhadas entre todas as instâncias da classe. Essas variáveis são definidas dentro da classe, mas fora de qualquer método, e mantêm seu valor através de diferentes instâncias da classe.

Variáveis estáticas são úteis quando você quer armazenar dados que são compartilhados por todas as instâncias de uma classe ou quando você quer manter uma contagem ou uma configuração comum através de todas as instâncias.

Aqui estão dois exemplos de código que demonstram o uso de variáveis estáticas em classes Python:

### Exemplo 1: Contagem de Instâncias

```python3
class Car:
    # Static variable to keep track of the number of instances
    count = 0

    def __init__(self, name):
        self.name = name
        # Increment the count when a new instance is created
        Car.count += 1

# Creating instances of the Car class
car1 = Car("Tesla")
car2 = Car("BMW")
car3 = Car("Audi")

# Accessing the static variable using the class name
print("Total cars:", Car.count)  # Output: Total cars: 3
```

No exemplo acima, a variável `count` é uma variável estática que mantém o controle do número de instâncias de `Car` criadas. Ela é incrementada no construtor (`__init__`) sempre que uma nova instância é criada. A variável estática é acessada usando o nome da classe (`Car.count`).

### Exemplo 2: Configuração Comum

```python3
class Circle:
    # Class-level constant for pi
    PI = 3.14159

    def __init__(self, radius):
        self.radius = radius

    def calculate_area(self):
        # Accessing the static variable inside an instance method
        area = Circle.PI * self.radius * self.radius
        return area

# Creating instances of the Circle class
circle1 = Circle(5)
circle2 = Circle(7)

# Calling the instance method to calculate the area
area1 = circle1.calculate_area()
area2 = circle2.calculate_area()

print("Area 1:", area1)  # Output: Area 1: 78.53975
print("Area 2:", area2)  # Output: Area 2: 153.93791

```

Neste exemplo, a variável `PI` é uma variável estática que armazena o valor de `pi`. É usada dentro do método calculate_area para calcular a área de um círculo. A variável estática é acessada usando o nome da classe (`Circle.PI`).

Variáveis estáticas são compartilhadas entre todas as instâncias de uma classe e podem ser acessadas usando o nome da classe ou através de uma instância da classe. Elas são uma ferramenta útil para gerenciar dados que são comuns a todas as instâncias ou para manter uma configuração compartilhada entre objetos.

## A Diferença entre um Método de Classe e um Método Estático

Agora que você está familiarizado com métodos de classe e métodos estáticos, é hora de mergulhar no mundo da classe estática do Python e suas propriedades distintas.

O método de classe abstrata é definido como um método que é declarado mas não contém implementação. Cabe à subclasse fornecer a implementação. Um método abstrato é definido usando o decorador **@abstractmethod** no Python.

Métodos de classe são usados para modificar a classe ou suas propriedades. Eles são definidos usando o decorador `@classmethod` e passam a classe como seu primeiro argumento em vez da instância.

Métodos estáticos do Python são chamados na classe e não levam nenhum argumento especial primeiro. Eles são definidos usando o decorador `@staticmethod`.

### Principais Diferenças Entre Método de Classe vs Método Estático no Python

| Método de classe  | Método estático  |
|---|---|
| Decorador: **@classmethod** | Decorador: **@staticmethod** |
| Primeiro argumento: **cls** (a própria classe) | Sem argumento especial primeiro |
| Pode modificar o estado ou propriedades da classe | Não pode modificar o estado ou propriedades da classe |
| Útil para operações específicas da classe | Útil para operações utilitárias não relacionadas à classe |
| Pode acessar variáveis de nível de classe | Não pode acessar variáveis de nível de classe |

### Exemplo 1: Método de classe

```python3
class Car:
    wheels = 4

    def __init__(self, make, model):
        self.make = make
        self.model = model

    @classmethod
    def set_wheels(cls, num_wheels):
        cls.wheels = num_wheels

car1 = Car('Toyota', 'Corolla')
print(car1.wheels) # Output: 4
Car.set_wheels(3)
print(car1.wheels) # Output: 3
```

### Exemplo 2: Método estático

```python
class Formatter:
    @staticmethod
    def format_string(string):
        return string.upper()

print(Formatter.format_string('hello')) # Output: 'HELLO'
```
