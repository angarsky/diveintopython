> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/super-class

Neste artigo, mergulharemos nas complexidades das Super Classes Python. Prepare-se para desbloquear todo o potencial do Desenvolvimento Python dominando os elementos vitais da Super Classe em Python.

## Entendendo a Super Classe do Python

A função `super()` no python é usada para chamar um método em uma classe pai a partir de uma classe filha. A função `super()` ajuda a criar uma hierarquia entre classes no Python que é fácil de manter e entender. No Python 3, `super()` é comumente usado para inicializar classes abstratas.

### Usando `super()` em Classe Python

```python3
class MyParentClass:
    def do_something(self):
        print("Parent class doing something.")

class MyChildClass(MyParentClass):
    def do_something(self):
        super().do_something()
        print("Child class doing something.")
        
child = MyChildClass()
child.do_something()
```

Em conclusão, `super()` é uma função poderosa em Python que fornece uma maneira limpa e concisa de chamar métodos da classe pai de uma classe filha. Ela ajuda a criar uma hierarquia clara entre as classes e a manter o código limpo.

## Classe Abstrata Python

Classe abstrata é uma classe que não pode ser instanciada e destina-se a ser subclasses por outras classes. A função `super()` é usada para acessar e chamar métodos de um pai ou superclasse em Python. Aqui estão dois exemplos de código que ilustram o uso de `super()` em classes abstratas Python.

### Definir uma Classe Abstrata

```python3
import abc

class MyAbstractClass(metaclass=abc.ABCMeta):
    
    def __init__(self):
        super().__init__()
        print("Initializing MyAbstractClass")
        
    @abc.abstractmethod
    def my_method(self):
        pass
        
class MySubclass(MyAbstractClass):
    
    def __init__(self):
        super().__init__()
        print("Initializing MySubclass")
        
    def my_method(self):
        print("Calling my_method in MySubclass")
        
my_obj = MySubclass()
my_obj.my_method()

# Output:
# Initializing MyAbstractClass
# Initializing MySubclass
# Calling my_method in MySubclass
```

Neste exemplo, definimos uma classe abstrata `MyAbstractClass` com um método abstrato `my_method()`. A classe tem um método `__init__` que usa `super()` para chamar o método `__init__` da superclasse. Em seguida, definimos uma subclasse `MySubclass` que sobrescreve o método `__init__` e implementa o método `my_method()`. Quando instanciamos um objeto de `MySubclass`, ambos os métodos `__init__` são chamados em ordem, e o método `my_method()` de `MySubclass` é chamado.

### Definir uma Classe Pai

```python3
class MyParentClass:
    
    def my_method(self):
        print("Calling my_method in MyParentClass")
        
class MyChildClass(MyParentClass):
    
    def my_method(self):
        super().my_method()
        print("Calling my_method in MyChildClass")
        
my_obj = MyChildClass()
my_obj.my_method()

# Output:
# Calling my_method in MyParentClass
# Calling my_method in MyChildClass
```

Neste exemplo, definimos uma classe pai `MyParentClass` com um método `my_method()`. Em seguida, definimos uma classe filha `MyChildClass` que sobrescreve `my_method()` e usa `super()` para chamar o mesmo método na classe pai. Quando instanciamos um objeto de `MyChildClass`, o método `my_method()` na classe pai é chamado primeiro, seguido pelo mesmo método na classe filha.

## O Papel de `super()` na Herança de Classes

Em Python, `super()` é uma função embutida que fornece acesso aos métodos de uma classe pai através de herança. É usada para chamar um método da classe pai sem nomear explicitamente a classe pai. Também é usada em classes abstratas do Python 3 para chamar o método `super().__init__()`.

```python3
class Parent:
    def __init__(self, name):
        self.name = name

class Child(Parent):
    def __init__(self, name, age):
        super().__init__(name) # Call Parent class __init__ method
        self.age = age

child = Child("John", 10)
print(child.name) # Output: John
```

No exemplo acima, a classe `Child` herda a classe `Parent` e inicializa o atributo `name` usando a função `super()`.

```python3
from abc import ABC, abstractmethod

class Parent(ABC):
    @abstractmethod
    def calculate(self, x, y):
        pass

class Child(Parent):
    def __init__(self, name):
        self.name = name
        super().__init__() # Call Parent class __init__ method

    def calculate(self, x, y):
        return x + y

child = Child("John")
print(child.calculate(4, 5)) # Output: 9
```

No exemplo acima, a classe `Parent` é uma classe abstrata. A classe `Child` herda a classe `Parent` e inicializa a classe pai usando o método `super().__init__()`. O método `calculate()` é implementado na classe `Child`.

## O Poder da Super Classe

A função `super()` no Python é usada para chamar um método de uma superclasse a partir de uma subclasse. É muito poderoso e útil, e pode simplificar hierarquias de herança quando usado apropriadamente.

No Python 3, `super()` recebe dois argumentos: o primeiro é a subclasse que está chamando `super()`, e o segundo é ou a instância da subclasse ou a classe em si. Por exemplo:

```python3
class A:
    def __init__(self):
        print("I am in A's __init__")

class B(A):
    def __init__(self):
        super().__init__()
        print("I am in B's __init__")

b = B()  
# Output
# I am in A's __init__
# I am in B's __init__

```

Neste exemplo, `super().__init__()` chama o método `__init__()` da classe `A`, a superclasse de `B`. Desta forma, tanto `A` quanto `B` são inicializados quando um novo objeto de `B` é criado.

Outro caso de uso é com classes abstratas que contêm `super().__init__()` em seu método `__init__()`:

```python3
from abc import ABC, abstractmethod

class MyAbstractClass(ABC):
    def __init__(self):
        super().__init__()

    @abstractmethod
    def my_abstract_method(self):
        pass

class MyClass(MyAbstractClass):
    def __init__(self):
        super().__init__()

    def my_abstract_method(self):
        print("I am implementing my abstract method")

c = MyClass()  

```

Neste exemplo, `MyAbstractClass` é uma classe abstrata que define um `abstractmethod()` chamado `my_abstract_method()`. A classe `MyClass` herda de `MyAbstractClass` e define sua própria implementação de `my_abstract_method()`. Quando um novo objeto do `MyClass` é criado, seu método `__init__()` chama `super().__init__()`, o que inicializa a classe abstrata `MyAbstractClass`.

No geral, a função `super()` é uma ferramenta poderosa em Python que pode simplificar hierarquias de herança e otimizar a inicialização de objetos.

## Implementando Múltipla Herança Com Super Classe

Python suporta múltipla herança, o que significa que uma classe pode herdar de múltiplas classes pai. Em tais casos, a função `super()` desempenha um papel crucial na gestão da ordem em que os métodos das classes pai são chamados. Ao lidar com múltipla herança, você pode usar `super()` para navegar de forma eficaz na ordem de resolução de métodos (MRO).

Exemplo:

```python3
class A:
    def some_method(self):
        print("Method from class A")

class B:
    def some_method(self):
        print("Method from class B")

class C(A, B):
    def some_method(self):
        super().some_method()
        print("Method from class C")

obj = C()
obj.some_method()
```

Saída:

```python
Method from class A
Method from class C
```

Neste exemplo, a classe `C` herda tanto de `A` quanto de `B`. A função `super()` ajuda a chamar o método da classe `A` no MRO, seguido pelo seu próprio método.

## Ordem de Resolução de Métodos (MRO)

A Ordem de Resolução de Métodos (MRO) é um conceito crítico em heranças múltiplas. O Python utiliza o algoritmo de linearização C3 para determinar a ordem na qual os métodos são chamados. Entender o MRO pode ajudar você a prever como a função `super()` funciona em hierarquias de herança complexas.

Exemplo:

```python3
class A:
    def some_method(self):
        print("Method from class A")

class B(A):
    def some_method(self):
        print("Method from class B")

class C(A):
    def some_method(self):
        print("Method from class C")

class D(B, C):
    def some_method(self):
        super().some_method()
        print("Method from class D")

obj = D()
obj.some_method()
```

Saída:

```python
Method from class B
Method from class C
Method from class D
```

Neste exemplo, `D` herda tanto de `B` quanto de `C`, e o MRO garante a ordem correta de chamadas de método.

Incluir essas seções no seu artigo fornecerá um entendimento abrangente de como `super()` funciona em diferentes cenários de herança e a importância da Ordem de Resolução de Método no Python.

## Herança Multinível Com Super Classe

Herança multinível é um padrão comum na programação orientada a objetos, onde uma subclasse herda de outra subclasse. Nesses cenários, `super()` permite que você acesse e estenda o comportamento da classe pai sem acoplar seu código a nomes de classes específicos.

Exemplo:

```python3
class Grandparent:
    def speak(self):
        print("Grandparent speaks")

class Parent(Grandparent):
    def speak(self):
        super().speak()
        print("Parent speaks")

class Child(Parent):
    def speak(self):
        super().speak()
        print("Child speaks")

obj = Child()
obj.speak()
```

Saída:

```python
Grandparent speaks
Parent speaks
Child speaks
```

Aqui, a função `super()` garante que cada nível da hierarquia de classes contribua para o comportamento final.
