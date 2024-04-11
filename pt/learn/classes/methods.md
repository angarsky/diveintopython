> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/methods

Este artigo explora os prós e contras de trabalhar com métodos e funções em classes em Python. Especificamente, nos aprofundamos nos conceitos importantes do construtor de classe (ou método `__init__`), métodos de classe abstrata e a diferença entre métodos de classe e métodos estáticos. Então, se você está procurando elevar sua compreensão de funções em uma classe, continue lendo!

## Dominando o Construtor de Classe Python

Podemos definir funções em uma classe, conhecidas como métodos. O construtor da classe ou método `__init__` é um método especial que é chamado quando um objeto da classe é criado. Ele é usado para inicializar as variáveis de instância de uma classe.

Um método de classe abstrata é um método que é declarado, mas não contém implementação. Ele é usado como um modelo para outros métodos que são definidos em uma subclasse.

Um método de classe é um método que é vinculado à classe e não à instância da classe. Ele pode ser acessado usando o nome da classe.

Um método estático é um método que é vinculado à classe e não à instância da classe. Ele não recebe nenhum argumento como self ou cls.

### Exemplo 1: Construtor de Classe

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("John", 36)

print(p1.name)
print(p1.age)

# Output:
# John
# 36
```

No exemplo acima, definimos uma classe `Person` com um construtor que inicializa os atributos de nome e idade da classe. Em seguida, criamos um objeto da classe `p1` e acessamos seus atributos usando notação ponto.

### Exemplo 2: Método de Classe vs Método Estático

```python3
class Calculator:
    @classmethod
    def add(cls, num1, num2):
        return num1 + num2
    
    @staticmethod
    def multiply(num1, num2):
        return num1 * num2

print(Calculator.add(2,3))
print(Calculator.multiply(2,3))
# Output:
# 5
# 6
```

Neste exemplo, definimos uma classe `Calculator` com dois métodos: `add` como um método de classe e `multiply` como um método estático. Acessamos esses métodos usando o nome da classe `Calculator` sem criar um objeto da classe. Usamos os decoradores `@classmethod` e `@staticmethod` para definir esses métodos.

## Método de Classe Abstrata em Python

Um método de classe abstrata é um método que é declarado em uma classe base abstrata, mas não possui uma implementação. É usado para definir um método que deve ser implementado por qualquer classe que herde da classe abstrata. Métodos de classe abstrata são criados usando o decorador `@abstractmethod`. Aqui está um exemplo de um método de classe abstrata em Python:

```python3
from abc import ABC, abstractmethod

class Shape(ABC):
    def __init__(self, type):
        self.type = type

    @abstractmethod
    def area(self):
        pass

class Square(Shape):
    def __init__(self, side):
        super().__init__("Square")
        self.side = side

    def area(self):
        return self.side ** 2

my_square = Square(5)
print(my_square.area()) # Output: 25
```

## Sobrecarga de Métodos  

Sobrecarga de métodos é um recurso em Python que permite a uma classe ter múltiplos métodos com o mesmo nome, mas com parâmetros diferentes. Este recurso ajuda a fornecer flexibilidade e reusabilidade ao design do código. É diferente da sobrescrita de métodos que permite a uma subclasse fornecer sua implementação de um método definido em sua superclasse.

```python
class Example:
    def method(self, a):
        print("Method with one parameter:", a)
    
    def method(self, a, b):
        print("Method with two parameters:", a, b)  
```

```python
class Example:
    def method(self, a=None, b=None, c=None):
        if a != None and b == None and c == None:
            print("Method with one parameter:", a)
        
        elif a != None and b != None and c == None:
            print("Method with two parameters:", a, b)
            
        elif a != None and b != None and c != None:
            print("Method with three parameters:", a, b, c)
```

No primeiro exemplo, definimos uma classe com dois métodos com o mesmo nome, mas com parâmetros diferentes. Python não suporta sobrecarga de método diretamente, então a última definição de método sobrescreve a anterior. Assim, quando criamos um objeto da classe e chamamos o `method`, obteremos a saída da última definição do método.

No segundo exemplo, definimos uma classe com um único `method` que aceita múltiplos parâmetros opcionais. Podemos usar declarações condicionais para verificar o número de parâmetros passados e `print` a saída de acordo. Essa abordagem fornece reutilização ao código, pois podemos chamar o mesmo `method` com parâmetros diferentes.

## Métodos Públicos, Privados e Protegidos em Python

Em Python, podemos diferenciar entre métodos públicos, privados e protegidos com base em seu nível de acesso.

- **Métodos Públicos** são aqueles que podem ser acessados de qualquer lugar, dentro ou fora da classe.
- **Métodos Privados** em uma classe Python são aqueles que só podem ser acessados de dentro da classe.
- **Métodos Protegidos** são aqueles que só podem ser acessados de dentro da classe e de suas subclasses.

### Métodos Públicos

Os métodos públicos são acessíveis de qualquer lugar, dentro ou fora da classe. Eles desempenham um papel significativo na interação com os atributos e funcionalidades da classe. Quando os desenvolvedores criam um método sem qualquer prefixo de sublinhado, ele automaticamente se torna um método público.

```python3
class MyClass:
    def public_method(self):
        print("This is a public method")

obj = MyClass()
obj.public_method()  # Accessing the public method
```

Como mostrado no exemplo, o `public_method()` é acessível fora da classe `MyClass`. Estes métodos permitem que o código externo interaja diretamente com as funcionalidades da classe.

### Métodos Privados em Python

Métodos privados em Python são projetados para serem acessados apenas de dentro da classe na qual são definidos. Eles são indicados pelo prefixo do nome do método com dois sublinhados `__`.

```python3
class MyClass:
    def __private_method(self):
        print("This is a private method")

obj = MyClass()
obj.__private_method()  # Attempting to access the private method (Raises an error)
```

Tentar acessar um método privado de fora da classe resulta em um AttributeError. O embaralhamento de nomes em Python torna o nome do método prefixado com sublinhados duplos mais difícil de ser acessado diretamente de códigos externos. Esses métodos são usados para operações internas da classe, aumentando o encapsulamento e prevenindo uso acidental ou sobrescrita.

### Métodos Protegidos

Métodos protegidos são indicados prefixando o nome do método com um único sublinhado `_`. Eles podem ser acessados dentro da própria classe e suas subclasses.

```python3
class MyClass:
    def _protected_method(self):
        print("This is a protected method")

class SubClass(MyClass):
    def access_protected(self):
        self._protected_method()  # Accessing the protected method from a subclass

obj = SubClass()
obj.access_protected()  # Accessing the protected method from the subclass
```

Métodos protegidos fornecem uma maneira de permitir que subclasses acessem certos métodos enquanto ainda previnem o acesso direto a partir de código externo. No entanto, ao contrário de algumas outras linguagens, Python não impõe restrições estritas de visibilidade.

## Métodos de Acesso e Modificação em Python

Python oferece métodos de conveniência para acessar e modificar variáveis de instância privadas para classes. Os métodos de acesso (getter) e modificação (setter) são importantes porque sem eles, as variáveis de instância privadas não seriam acessíveis fora da classe.

O método de acesso permite acessar o valor de uma variável de instância privada de fora da classe, e o método de modificação permite definir o valor de uma variável de instância privada de fora da classe.

Aqui está um exemplo simples de classe com métodos de acesso e modificação:

```python3
class MyClass:
    def __init__(self):
        self._value = None

    def get_value(self):
        return self._value

    def set_value(self, value):
        self._value = value

obj = MyClass()
obj.set_value(10)
print(obj.get_value())
```

Agora, você pode usar esses métodos para acessar e definir o valor do atributo `value` de `MyClass`.

```python3
class MyClass:
    def __init__(self):
        self._value = None

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, value):
        self._value = value

obj = MyClass()
obj.value = 10
print(obj.value) 
```

Agora, você pode usar a propriedade `value` de `MyClass` para obter e definir o valor do atributo `value`:

Em conclusão, métodos getter e setter fornecem uma maneira controlada de acessar e definir os valores de variáveis de instância privadas em classes Python.

## Método vs Função

No Python, tanto métodos quanto funções são usados para realizar uma tarefa específica. No entanto, eles têm algumas diferenças distintas.

### Funções

Funções são definidas fora da classe e podem ser chamadas em qualquer lugar no código usando seu nome. Elas recebem parâmetros de entrada e `return` um valor. Aqui está um exemplo de uma função que recebe dois números como entrada e retorna a soma deles:

```python3
def add_numbers(x, y):
    return x + y

result = add_numbers(3, 5)
print(result)  # Output: 8
```

Para utilizar esta função, podemos chamá-la e fornecer os parâmetros de entrada:

### Métodos

Métodos, por outro lado, são definidos dentro de classes e são chamados em instâncias dessa classe. Eles têm acesso aos atributos da instância e podem modificar seu estado.

Aqui está um exemplo de um método que recebe um parâmetro de entrada e modifica o estado da instância:

```python3
class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model
        self.speed = 0

    def accelerate(self, speed):
        self.speed += speed

my_car = Car("Toyota", "Corolla")
my_car.accelerate(20)
print(my_car.speed)  # Output: 20
```

Neste exemplo, o método `accelerate()` é definido dentro da classe `Car` e é chamado em uma instância da classe `Car`. Ele acelera a velocidade do carro adicionando o parâmetro de entrada ao atributo `speed` da instância.

Em resumo, funções são blocos independentes de código que recebem parâmetros de entrada e retornam um valor, enquanto métodos são definidos dentro de classes e são chamados em instâncias dessa classe, com acesso aos atributos da instância e a capacidade de modificar seu estado.

## Sobrescrever Método de Classe

A sobrescrita de método é um recurso em programação orientada a objetos que permite a uma subclasse fornecer uma implementação diferente de um método que já está definido em sua superclasse. Em Python, a sobrescrita de método é direta e é alcançada definindo um método na subclasse com o mesmo nome do método na superclasse.

```python3
class Parent:
  def my_method(self):
    print("Parent method called")

class Child(Parent):
  def my_method(self):
    print("Child method called")

obj = Child()
obj.my_method() ### prints Child method called

```

Neste exemplo, a classe `Child` estende a classe `Parent` e sobrescreve o método `my_method()`. Quando criamos um objeto da classe `Child` e chamamos `my_method()`, ele imprimirá `Child method called` em vez de `Parent method called`.

```python3
class Animal:
  def move(self):
    print("Animal is moving")

class Bird(Animal):
  def move(self):
    super().move()
    print("Bird is flying")

obj = Bird()
obj.move() ### prints "Animal is moving" and "Bird is flying

```

Neste exemplo, a classe `Bird` estende a classe `Animal` e sobrescreve o método de classe `move()`. No entanto, ela também chama a implementação do método `move()` da superclasse primeiro, usando a função `super()`, e então adiciona sua própria implementação de `Bird is flying`. O resultado será `Animal is moving` e `Bird is flying`.

Usar a sobreposição de métodos em Python permite mais flexibilidade e personalização no comportamento das suas classes.
