> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes

Classes em Python permitem que desenvolvedores criem componentes reutilizáveis para seus códigos, tornando mais fácil a manutenção e modificação. Neste artigo, vamos explorar os conceitos básicos de classes em Python e como usá-las efetivamente em seus projetos.

## Princípios Básicos da Programação Orientada a Objetos

Programação orientada a objetos (POO) é um paradigma de programação que usa objetos e suas interações para projetar aplicações. Python é uma linguagem de programação orientada a objetos que suporta os seguintes conceitos de POO:

1. **Encapsulamento**: Encapsulamento é o mecanismo de agrupar dados (atributos) e métodos juntos dentro de uma classe. Ele esconde os detalhes internos de um objeto e fornece interfaces públicas para interagir com ele. Encapsulamento ajuda a alcançar abstração de dados e modularidade de código.

2. **Herança**: Herança permite que uma classe (subclasse) herde propriedades e métodos de outra classe (superclasse). A subclasse pode estender ou modificar o comportamento herdado enquanto herda as características comuns da superclasse. Herança promove a reutilização de código e suporta a relação "é-um".

3. **Polimorfismo**: Polimorfismo permite que objetos de diferentes classes sejam tratados como objetos de uma superclasse comum. Ele possibilita o uso de uma única interface para representar diferentes tipos de objetos. Polimorfismo é alcançado através da sobrescrita e sobrecarga de métodos.

4. **Abstração**: Abstração foca em representar características essenciais de um objeto enquanto esconde os detalhes desnecessários. Ela permite que programadores criem classes e métodos abstratos que definem o comportamento comum, deixando os detalhes de implementação para as subclasses.

## O que é uma Classe em Python

Em Python, uma classe é um plano para criar objetos (também conhecidos como instâncias). Ela define um conjunto de atributos (variáveis) e métodos (funções) que os objetos criados a partir da classe terão. Em outras palavras, uma classe serve como um modelo ou uma estrutura para criar objetos com características e comportamentos predefinidos.

### Como Criar uma Classe em Python

A palavra-chave `class` é usada para criar uma classe. Aqui está um exemplo de uma simples classe `Person`:

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age
    
    def greet(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")

person = Person("John", 30)
person.greet()

# Output:
# 
# Hello, my name is John and I am 30 years old.
```

Neste exemplo, a classe `Person` possui dois atributos `name` e `age`, e um método `greet` que imprime uma mensagem de saudação. O método `__init__` é um construtor que inicializa os atributos do objeto. Para criar um objeto da classe `Person`, usamos o construtor da classe e passamos os parâmetros necessários.

A herança é um mecanismo que permite a uma subclasse herdar as propriedades (métodos e atributos) de sua superclasse. O Polimorfismo permite que objetos de diferentes classes sejam tratados como se fossem do mesmo tipo.

## Vantagens de Utilizar Classes

A classe Python é um blueprint para criar objetos que possuem um conjunto de atributos e métodos. É um conceito fundamental na programação orientada a objetos. Aqui estão alguns benefícios de utilizar classes:

- **Organização do código:** Classes permitem agrupar dados e funcionalidades relacionados em um único bloco de código. Isso melhora a legibilidade do código, reduz a duplicação e torna mais fácil manter e atualizar seu código.

- **Herança:** Classes podem ser usadas para criar novas classes que herdam propriedades e métodos de existentes. Isso permite reutilizar o código e evitar escrever código redundante.

```python
class Employee:
    """A class representing an employee."""

    def __init__(self, name, salary):
        self.name = name
        self.salary = salary

    def get_salary(self):
        return self.salary

    def set_salary(self, new_salary):
        self.salary = new_salary

class Manager(Employee):
    """A class representing a manager, inheriting from Employee."""

    def __init__(self, name, salary, bonus):
        super().__init__(name, salary)
        self.bonus = bonus

    def get_salary(self):
        return self.salary + self.bonus
```

## Como Criar um Objeto Python

Um objeto é uma instância de uma classe que encapsula dados juntamente com métodos ou funções para operar esses dados. Criar um objeto envolve definir uma classe e depois instanciar a classe usando o construtor da classe.

### Exemplo de Criação de Objetos Python

```python3

class Car:
    def __init__(self, make, model):
        self.make = make
        self.model = model
    
    def get_make(self):
        return self.make
    
    def get_model(self):
        return self.model

new_car = Car("Toyota", "Camry")
print(new_car.get_make())
print(new_car.get_model())

# Output:
# Toyota
# Camry
```

Para criar um objeto em Python, você define uma classe e depois instancia a classe usando o construtor da classe. Você pode então chamar métodos ou acessar atributos do objeto. Com esses exemplos, você pode começar a criar objetos Python nos seus próprios projetos.

## Definindo Classes em Python

Criar uma classe em Python é feito usando a palavra-chave `class`. Classes em Python permitem a criação de objetos que possuem atributos e métodos.

O código a seguir define uma classe simples chamada `Car` e cria uma instância dessa classe chamada `my_car`:

### Exemplo de uma Definição de Classe

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

my_car = Car("Toyota", "Corolla", 2022)
```

Neste exemplo, o método `__init__` é usado para **inicialização de classe Python**. O parâmetro `self` refere-se à instância do objeto que está sendo criada. Os parâmetros `make`, `model` e `year` são atributos do objeto que podem ser acessados e modificados usando a notação de ponto. Por fim, uma instância da classe `Car` é criada com a variável `my_car`, na qual são passados os argumentos `Toyota`, `Corolla` e 2022.

O próximo exemplo define uma classe mais complexa chamada `BankAccount`:

### Exemplo de uma Classe Complexa

```python
class BankAccount:
    def __init__(self, account_number, balance):
        self.account_number = account_number
        self.balance = balance
        self.transactions = []

    def deposit(self, amount):
        self.balance += amount
        self.transactions.append(("deposit", amount))

    def withdraw(self, amount):
        if amount > self.balance:
            raise ValueError("Not enough funds")
        self.balance -= amount
        self.transactions.append(("withdrawal", amount))

my_account = BankAccount("123456", 500)
my_account.deposit(200)
my_account.withdraw(50)
```

Neste exemplo, a classe `BankAccount` é definida com um `__init__` que define os atributos `account_number` e `balance`. Uma lista `transactions` também é inicializada, a qual manterá registro de todas as transações na conta. Os métodos `deposit` e `withdraw` podem ser chamados em um objeto `BankAccount` para modificar o saldo da conta e adicionar uma transação. Finalmente, a variável `my_account` é criada como um objeto `BankAccount` com um saldo inicial de `500`, e a conta é modificada com um `deposit` e um saque.

Estes exemplos ilustram os fundamentos da definição de classes em Python, incluindo o uso da palavra-chave `class`, o método `__init__` para inicializar objetos e a criação de métodos de instância para modificar atributos de objeto.

## A Diferença entre Classes e Instâncias

Classes em Python são o modelo para a criação de objetos. Um objeto é uma instância de uma classe e pode ter atributos (variáveis) e métodos (funções).

Para criar uma classe em Python, usamos a palavra-chave `class` seguida pelo nome da classe. Aqui está um exemplo:

```python3
class Dog:
   def __init__(self, name, breed):
      self.name = name
      self.breed = breed

   def bark(self):
      print("Woof!")

my_dog = Dog("Fido", "Labrador")

print(my_dog.name) 

print(my_dog.breed) 

my_dog.bark() 
```

Neste exemplo, nós criamos uma classe `Dog` com dois atributos (`name` e `breed`) e um método (`bark`). O método `__init__` é um método especial que é chamado quando nós criamos uma nova instância da classe.

Para criar uma nova instância de uma classe em Python, nós podemos simplesmente chamar a classe como uma função e passar os argumentos necessários.

Neste exemplo, criamos uma nova instância da classe `Dog` e a atribuímos à variável `my_dog`. Passamos dois argumentos (`Fido` e `Labrador`) que foram usados para definir os atributos `name` e `breed` do objeto.

Podemos então acessar os atributos e métodos do objeto usando a notação de ponto.

Em resumo, classes em Python nos permitem criar objetos com atributos e métodos, e as instâncias de uma classe são criadas chamando a classe como uma função.

## Métodos vs Funções em Python

Métodos e funções Python são dois conceitos de programação cruciais em Python. Um método é uma função que está associada a um objeto, enquanto uma função não está associada a nenhum objeto. Em outras palavras, um método é uma função que pertence a uma classe, enquanto uma função não está ligada a nenhuma classe.

Em Python, um método é tipicamente chamado na forma `object.method()`, enquanto uma função é chamada na forma `function()`. Os métodos são usados para realizar ações em um objeto ou `return` um valor que está relacionado ao objeto. Por outro lado, funções são usadas para realizar uma tarefa ou operação sobre dados e `return` um resultado.

Aqui estão dois exemplos para diferenciar entre métodos e funções em Python:

### Um Exemplo de Método

```python3
# Define a list
my_list = [1, 2, 3, 4, 5]

# Use the append method to add a value to the list
my_list.append(6)

# Print the updated list
print(my_list)  # Output: [1, 2, 3, 4, 5, 6]
```

No exemplo acima, o método `append()` está associado ao objeto `my_list`. Ele adiciona o valor `6` à lista.

### Um Exemplo de Função

```python3
# Define a function to calculate the area of a rectangle
def calculate_area(length, width):
    area = length * width
    return area

# Call the function with two arguments
rectangle_area = calculate_area(5, 10)

# Print the area of the rectangle
print(rectangle_area)  # Output: 50
```

No exemplo acima, a função `calculate_area()` não está associada a nenhum objeto. Ela recebe dois argumentos `length` e `width` e retorna a `area` do retângulo.

Em conclusão, embora métodos e funções possam ter algumas semelhanças, a principal diferença entre eles é que os métodos estão associados a objetos, enquanto funções não estão. Saber quando usar métodos e funções é um aspecto importante da programação em Python.

## Invocação de Métodos de Classe

Em Python, métodos de classe são definidos usando o decorador `@classmethod`. Métodos de classe podem ser chamados pela classe ou por uma instância da classe.

Para invocar um método de classe em Python, você pode usar a seguinte sintaxe:

```python
class MyClass:
    def __init__(self, name):
        self.name = name

    @classmethod
    def greet(cls):
        print(f"Hello from {cls.__name__}!")

    def say_hello(self):
        print(f"Hello, {self.name}!")

# Invoking class method without creating an instance
MyClass.greet()

# Creating an instance and invoking instance method
obj = MyClass("Alice")
obj.say_hello()
```

Neste exemplo, temos uma classe chamada `MyClass` com dois métodos: `greet()` e `say_hello()`.

O método `greet()` é um método de classe decorado com `@classmethod`. Ele recebe o parâmetro cls, que se refere à própria classe. Ele imprime uma mensagem de saudação junto com o nome da classe.

O método `say_hello()` é um método de instância. Ele recebe o parâmetro `self`, que se refere à instância da classe. Ele imprime uma mensagem de saudação personalizada usando o atributo `name` da instância.

Para invocar um método de classe, você pode chamá-lo diretamente na própria classe, sem criar uma instância.

## Implementação de Árvores de Classes em Python

Na programação Python, uma classe é um modelo para criar objetos com atributos e métodos comuns. Uma árvore de classes representa uma hierarquia de classes, onde cada classe herda atributos e métodos de sua classe pai ou superclasse.

### Exemplo de Árvore de Classe

```python3
class Animal:
    def __init__(self, name, sound):
        self.name = name
        self.sound = sound

    def make_sound(self):
        return self.sound

class Dog(Animal):
    def __init__(self, name, sound):
        Animal.__init__(self, name, sound)

dog = Dog("Rufus", "Woof")
print(dog.make_sound())   # Output: Woof
```

Neste exemplo, definimos duas classes, `Animal` e `Dog`. A classe `Dog` herda da classe `Animal` usando a sintaxe `class Dog(Animal):`. A classe `Dog` possui seu próprio construtor (`__init__`) mas também chama o construtor de sua classe pai (`Animal.__init__(self, name, sound)`).

### Exemplo de Árvore de Classe Mais Complexa

```python3
class A:
    def method(self):
        print("Method of class A")

class B:
    def method(self):
        print("Method of class B")

class C(A, B):
    pass

c = C()
c.method()  # Output: Method of class A
```

Neste exemplo, definimos três classes `A`, `B` e `C`. A classe `C` herda de ambas `A` e `B` usando a sintaxe `class C(A, B):`. Ao chamar a função `method` no objeto `C`, ela se resolve para o método da `A` porque `A` está listada primeiro na cadeia de herança.

## A Essência da POO: Reutilização de Código

A programação orientada a objetos (POO) é um paradigma de programação de software popular que enfatiza a criação de componentes de código reutilizáveis. A programação POO é poderosa em Python devido à sua capacidade de implementar tal código reutilizável na forma de classes e módulos.

### Uma Importação de Classe em Python

Python é uma linguagem orientada a objetos, o que significa que as classes desempenham um papel central em seu design. Para acessar métodos e atributos de classe de outro módulo, a classe deve ser importada usando a declaração `import`: `from module_name import Class_Name`.

## Herança

Em Python, a herança permite que uma classe herde propriedades e métodos de outra classe. Isso ajuda na reutilização de código, facilitando a criação de novas classes sem ter que reescrever o código do zero.

### Como Herdar de Duas Classes

Python também permite que uma classe herde de duas classes e chama isso de herança em dois níveis. Nesse caso, a nova classe herda de uma classe que já herdou de outra classe.

```python3
class A:
    def hello(self):
        print("Hello from A")

class B(A):
    pass

class C(B):
    pass

obj = C()
obj.hello() # Output: Hello from A
```

No código acima, a classe `C` herda da classe `B`, que já herda da classe `A`, e, portanto, pode acessar métodos de ambas as classes.

### Como Herdar de Múltiplas Classes em Python

Python permite que uma classe herde de múltiplas classes ao mesmo tempo. Isso é conhecido como herança múltipla e permite que a nova classe tenha as características de ambas as classes.

```python3
class A:
    def hello(self):
        print("Hello from A")

class B:
    def hi(self):
        print("Hi from B")

class C:
    def greet(self):
        print("Greet from C")

class D:
    def good_morning(self):
        print("Good_morning from D")

class E(A,B,C, D):
    pass

obj = E()
obj.hello() # Output: Hello from A
obj.hi() # Output : Hi from B
obj.good_morning() # Output : Good_morning from D
```

No código acima, a classe `E` herda de `A`, `B`, `C`, `D` classes e pode acessar métodos de todas essas classes.
