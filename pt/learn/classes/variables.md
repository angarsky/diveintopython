> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/variables

Python é uma linguagem poderosa que suporta diferentes tipos de variáveis e propriedades. Neste artigo, discutiremos variáveis, atributos e propriedades em Python para ajudá-lo a entendê-los melhor.

## Entendendo Variáveis, Atributos e Propriedades

- **Variáveis:** Uma variável é um nome que se refere a um valor. Variáveis podem conter qualquer tipo de objeto.
- **Atributos:** Um atributo é um valor associado a um objeto. Atributos podem ser acessados ​​usando a notação de ponto.
- **Propriedades:** Uma propriedade é uma maneira de definir um método como um atributo. Propriedades são criadas usando o decorador `@property`.

## Variáveis de Classe em Python

Em Python, variáveis de classe são uma forma poderosa de compartilhar dados entre todas as instâncias de uma classe. Vamos explorar como criar, acessar e modificar variáveis de classe.

### Criando uma Variável de Classe

Para criar uma variável de classe em Python, você simplesmente a declara dentro da classe, mas fora de quaisquer métodos. Variáveis de classe são compartilhadas entre todas as instâncias da classe e podem ser usadas para armazenar dados que são comuns a todos os objetos criados a partir da classe.

```python
class Team:
    # Creating a class variable
    team_name = "Python Developers"
```

Neste exemplo, criamos uma variável de classe `team_name` para armazenar o nome da equipe.

### Acessando uma Variável de Classe em Python

Para acessar uma variável de classe, você pode usar o nome da classe seguido pelo nome da variável, separados por um ponto. Isso permite que você recupere os dados compartilhados que se aplicam a todas as instâncias da classe.

```python3
class Team:
    team_name = "Python Developers"

# Accessing the class variable using the class name
print("Team Name:", Team.team_name)  # Output: Team Name: Python Developers
```

Neste exemplo, a variável de classe `the team_name` é acessada usando o nome da classe, `Team.team_name`.

### Modificando o Valor de uma Variável de Classe

Modificar o valor de uma variável de classe é simples. Você usa o nome da classe para referenciar a variável e atribui um novo valor a ela.

```python3
class Team:
    team_name = "Python Developers"

# Modifying the value of the class variable
Team.team_name = "Advanced Python Developers"

# Accessing the modified value
print("Team Name:", Team.team_name)  # Output: Team Name: Advanced Python Developers
```

Neste exemplo, modificamos o valor da variável de classe `team_name` atribuindo um novo valor a ela usando o nome da classe. O valor atualizado é então acessado através do nome da classe também.

## Variáveis de Instância em Python

Em Python, as variáveis de instância são únicas para cada instância de uma classe. Elas são definidas dentro dos métodos de uma classe e são específicas para o objeto ao qual pertencem. Vamos explorar como criar e atribuir valores a variáveis de instância.

### Criando uma Variável de Instância

Para criar uma variável de instância em Python, você pode defini-la dentro do método construtor `__init__`. O construtor é um método especial que é chamado quando um objeto da classe é criado. Dentro do construtor, você pode inicializar variáveis de instância para o objeto.

```python
class Person:
    def __init__(self, name, age):
        # Creating instance variables
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)
```

Neste exemplo, definimos duas variáveis de instância, nome e `age`, dentro do método `__init__` da classe `Person`. Essas variáveis são únicas para cada objeto `person` criado a partir da classe.

### Atribuindo Valores a uma Variável de Instância

Você pode atribuir valores às variáveis de instância durante a criação do objeto, passando argumentos para o construtor. Além disso, você pode modificar ou atualizar os valores das variáveis de instância a qualquer momento após o objeto ser criado.

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)

# Modifying the values of instance variables
person.name = "Bob"
person.age = 35
```

Neste exemplo, primeiro criamos um objeto `person` com valores iniciais para `name` e `age`. Depois, modificamos os valores dessas variáveis de instância atribuindo diretamente novos valores a elas.

Variáveis de instância são uma parte essencial da programação orientada a objetos, pois permitem que os objetos tenham seus próprios dados e estado. Essas variáveis podem armazenar informações específicas para cada objeto, facilitando o trabalho com diferentes instâncias da mesma classe.

## Atributos e Propriedades de Classes em Python

Em Python, atributos e propriedades de classes funcionam de maneira semelhante às variáveis, mas oferecem mais funcionalidade e controle. Vamos explorar como definir e utilizar atributos e propriedades de classes.

### Definindo Atributos de Classe

Atributos de classe são compartilhados entre todas as instâncias de uma classe. Eles são declarados dentro da classe, mas fora de qualquer método. Atributos de classe podem ser acessados usando o nome da classe, e são particularmente úteis para armazenar dados comuns a todos os objetos criados a partir da classe.

```python
class Animal:
    # Defining a class attribute
    kingdom = "Animalia"
```

Neste exemplo, definimos um atributo de classe `kingdom` para armazenar a classificação de reino para todos os animais. Atributos de classe são acessados usando o nome da classe, como em `Animal.kingdom`.

### Usando Propriedades

Propriedades em Python são métodos especiais que funcionam como atributos. São criadas usando o decorador `@property` para definir um método como um atributo, fornecendo funcionalidades adicionais como getters, setters e deleters.

```python3
class Circle:
    def __init__(self, radius):
        self._radius = radius

    @property
    def radius(self):
        return self._radius

    @radius.setter
    def radius(self, value):
        if value > 0:
            self._radius = value

# Creating an instance of the Circle class
circle = Circle(5)

# Accessing and modifying attributes using properties
print("Radius:", circle.radius)  # Output: Radius: 5
circle.radius = 7
print("Modified Radius:", circle.radius)  # Output: Modified Radius: 7
```

Neste exemplo, utilizamos propriedades para controlar o acesso ao atributo `radius`. O decorador `@property` define um método de acesso, enquanto `@radius.setter` define um método de definição.

Atributos e propriedades de classes em Python oferecem maneiras poderosas de aprimorar o comportamento das suas classes e objetos. Eles possibilitam que você encapsule dados e forneça acesso controlado a atributos, tornando seu código mais robusto e fácil de manter.

## Variáveis Privadas em Classes Python

Em Python, variáveis privadas são atributos ou propriedades que têm a intenção de ser usados apenas dentro da classe e não devem ser acessados ou modificados de fora da classe. Elas são denotadas pela adição de um duplo sublinhado `__` antes do nome da variável ou propriedade.

### Definindo Variáveis Privadas

Para definir uma variável privada em Python, você pode usar o prefixo de duplo sublinhado `__` antes do nome da variável. Isso indica que a variável não deve ser acessada ou modificada de fora da classe.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)
```

Neste exemplo, definimos uma variável privada `__private_value` dentro da classe `MyClass`. A intenção é que ela seja usada apenas dentro da classe.

### Acessando Variáveis Privadas

Variáveis privadas só podem ser acessadas de dentro da própria classe. Tentar acessá-las de fora da classe resultará em um AttributeError. No entanto, você ainda pode acessá-las usando métodos de classe ou propriedades.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

    def get_private_value(self):
        return self.__private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)

# Accessing private variable using a class method
private_value = obj1.get_private_value()
```

Neste exemplo, criamos um método `get_private_value` dentro da classe para acessar a variável privada `__private_value`.

Variáveis privadas são valiosas para encapsular dados e garantir que eles não sejam modificados inadvertidamente por códigos externos. Elas ajudam a manter a integridade da sua classe e dos seus dados.

## Variáveis Globais em Python

Em Python, variáveis globais são variáveis que podem ser acessadas de qualquer parte do programa, seja dentro de uma função, classe ou qualquer outro escopo. Variáveis globais são definidas fora de qualquer função ou classe, tornando-as acessíveis em todo lugar.

### Definindo Variáveis Globais

Para definir uma variável global em Python, basta declará-la fora de qualquer função ou classe. Isso permite que a variável seja acessada e modificada de qualquer lugar no código.

```python
global_var = 10
```

Neste exemplo, definimos uma variável global `global_var` com o valor `10`. Essa variável pode ser acessada e modificada de qualquer lugar no programa.

### Usando Variáveis Globais

Variáveis globais podem ser usadas dentro de funções, classes, ou qualquer outro escopo sem a necessidade de declarações especiais. Você pode acessar e modificar variáveis globais diretamente dentro desses escopos.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

# Creating an instance of the MyClass class
obj = MyClass()

# Accessing the global variable from within the class
print(obj.instance_var)  # Output: 10
```

Neste exemplo, a variável global `global_var` é acessada e atribuída a uma variável de instância dentro da classe `MyClass`.

### Modificando Variáveis Globais

Modificar o valor de uma variável global é simples. Você pode acessar e atualizar seu valor de qualquer parte do programa.

```python3
global_var = 10

def modify_global_variable():
    global global_var
    global_var = 20

# Modifying the global variable
modify_global_variable()

# Accessing the modified global variable
print(global_var)  # Output: 20
```

Neste exemplo, criamos uma função `modify_global_variable` que usa a palavra-chave `global` para modificar o valor da variável global `global_var`. Essa mudança é refletida ao acessar a variável fora da função.

Variáveis globais em Python são úteis para compartilhar dados que precisam ser acessados em diferentes partes do seu programa. No entanto, é essencial usá-las com parcimônia, pois o uso excessivo de variáveis globais pode tornar o código mais difícil de manter e entender.

## Verificando se uma Classe Possui um Atributo

Em Python, você pode verificar se uma classe possui um atributo específico usando a função incorporada `hasattr()`. Esta função permite determinar se uma classe tem um atributo específico, tornando-a uma ferramenta valiosa para a verificação dinâmica de atributos.

### Usando `hasattr()`

Para usar `hasattr()`, forneça o objeto (neste caso, a classe ou uma instância da classe) e o nome do atributo como argumentos. A função retorna um valor booleano, indicando se o atributo existe na classe.

```python3
class MyClass:
    var = 10

obj = MyClass()

# Checking if the class has an attribute
if hasattr(obj, 'var'):
    print('Object has var attribute')
else:
    print('Object does not have var attribute')
```

Neste exemplo, definimos uma classe `MyClass` com um atributo `var`. Usando `hasattr()`, verificamos se a instância `obj` possui o atributo `var`.

### Lidando com a Existência de Atributos

`hasattr()` ajuda você a escrever um código mais robusto, permitindo que você verifique a existência de atributos antes de acessá-los ou modificá-los. Isso pode prevenir erros inesperados no seu programa.

```python
class MyClass:
    var = 10

obj = MyClass()

# Checking if the class has an attribute
if hasattr(obj, 'var'):
    # Accessing the attribute
    value = getattr(obj, 'var')
    print(f'Attribute var exists with value: {value}')
else:
    print('Object does not have var attribute')
```

Neste exemplo estendido, se `hasattr()` confirma que o atributo `var` existe, usamos `getattr()` para acessar o valor do atributo de forma segura.

Usar `hasattr()` pode melhorar a confiabilidade do seu código e melhorar o tratamento de erros quando trabalhando com atributos dinâmicos em classes Python. É uma técnica útil para validação de atributos.

## Imprimindo e Recuperando Atributos de Classe em Python

No Python, você pode querer listar e acessar todos os atributos de uma classe. Não há um método embutido para imprimir todos os atributos, mas você pode usar um loop e a função dir() para alcançar isso. Vamos explorar como imprimir e recuperar atributos de classe.

### Usando `dir()`

A função `dir()` no Python retorna uma lista de todos os atributos de um objeto. Embora isso inclua atributos e métodos internos, você pode filtrá-los para obter uma lista de atributos de classe.

```python
class MyClass:
    var1 = 10
    var2 = 'hello'
    var3 = True

# List of all attributes (including internal ones)
attributes = dir(MyClass)

# Filtering and printing only class attributes
for attr in attributes:
    if not attr.startswith('__'):
        value = getattr(MyClass, attr)
        print(f'{attr}: {value}')
```

Neste exemplo, utilizamos `dir(MyClass)` para obter uma lista de todos os atributos. Em seguida, filtramos os atributos internos e imprimimos os nomes e valores dos atributos da classe.

Esta técnica permite que você tenha uma visão geral dos atributos dentro de uma classe.

### Usando `vars()`

Embora `vars()` seja mais comumente usado para acessar variáveis de instâncias, ele também pode ser aplicado a classes. Ele retorna o atributo `__dict__` de um objeto, que contém os atributos da classe.

```python
class MyClass:
    var1 = 10
    var2 = 'hello'
    var3 = True

# Using vars() to retrieve class attributes
class_attrs = vars(MyClass)

for attr, value in class_attrs.items():
    print(f'{attr}: {value}')
```

Neste exemplo, usamos `vars(MyClass)` para recuperar os atributos da classe e imprimir seus nomes e valores.

Tanto `dir()` quanto `vars()` oferecem métodos para acessar e exibir atributos de classe, permitindo que você entenda melhor e trabalhe com suas classes.

## Variáveis Privadas de Classe

Em Python, variáveis privadas de classe são variáveis que se destinam a ser usadas apenas dentro da classe e não devem ser acessadas ou modificadas de fora da classe. Essas variáveis são denotadas com um prefixo de sublinhado duplo `__`. Vamos explorar como criar e trabalhar com variáveis privadas de classe.

### Criando Variáveis Privadas de Classe

Para criar uma variável privada de classe em Python, adicione um sublinhado duplo `__` antes do nome da variável dentro da classe. Essa convenção indica que a variável não deve ser acessada diretamente de fora da classe.

```python
class MyClass:
    __private_var = 10
```

Neste exemplo, criamos uma variável privada de classe `__private_var`.

### Acessando Variáveis Privadas de Classe

Tentar acessar uma variável privada de classe de fora da classe resultará em um AttributeError. As variáveis privadas são destinadas a serem usadas apenas dentro da classe para encapsular dados.

```python3
class MyClass:
    __private_var = 10

    def get_private_var(self):
        return self.__private_var

obj = MyClass()

# Accessing the private variable using a class method
print(obj.get_private_var())  # Output: 10
```

Neste exemplo, definimos um método `get_private_var` dentro da classe para acessar a variável privada `__private_var`.

### O Papel das Variáveis Privadas de Classe

Variáveis privadas desempenham um papel crucial na encapsulação de dados e na manutenção da integridade do estado interno de uma classe. Elas impedem que códigos externos modifiquem ou acessem dados sensíveis dentro da classe de forma não intencional.

```python
class BankAccount:
    def __init__(self, account_number, balance):
        self.__account_number = account_number
        self.__balance = balance

    def withdraw(self, amount):
        if amount > 0 and amount <= self.__balance:
            self.__balance -= amount
        else:
            print("Invalid withdrawal amount")

# Creating an instance of the BankAccount class
account = BankAccount("123456789", 1000)

# Attempting to directly access private variables (results in AttributeError)
# print(account.__account_number)
# print(account.__balance)

# Performing a withdrawal using a class method
account.withdraw(500)
```

Neste exemplo, a classe `BankAccount` define variáveis privadas `__account_number` e `__balance` para encapsular dados sensíveis da conta. Essas variáveis privadas são acessadas e modificadas usando métodos de classe como `withdraw`.

Variáveis privadas são um aspecto fundamental da encapsulação de dados e controle de acesso em programação orientada a objetos, garantindo que a integridade dos dados de uma classe seja mantida.

## Variáveis Globais de Classe em Python

Em Python, variáveis globais de classe são variáveis que são acessíveis de qualquer parte do programa. Elas são definidas fora de qualquer função ou classe, tornando-as globalmente disponíveis. Vamos explorar como criar e trabalhar com variáveis globais de classe.

### Criando Variáveis Globais de Classe

Para criar uma variável global de classe em Python, defina a variável fora de qualquer função ou classe. Variáveis globais estão disponíveis para todas as partes do seu programa.

```python
global_var = 10
```

Neste exemplo, nós criamos uma variável global de classe `global_var`.

### Acessando Variáveis Globais de Classe

Variáveis globais de classe podem ser acessadas e usadas de qualquer parte do seu programa, incluindo dentro de classes e funções.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

obj = MyClass()

# Accessing the class global variable from within a class
print(obj.instance_var)  # Output: 10
```

Neste exemplo, definimos uma variável global de classe `global_var` e acessamos ela dentro da classe `MyClass`.

### O Papel das Variáveis Globais de Classe

Variáveis globais de classe fornecem uma forma de compartilhar dados entre diferentes partes do seu programa. Elas são frequentemente usadas para armazenar informações que são relevantes para toda a aplicação.

```python3
user_name = "John"

class User:
    def __init__(self, name):
        self.name = name

# Accessing the class global variable from within a class
new_user = User(user_name)
print(new_user.name)  # Output: John
```

Neste exemplo, a variável global da classe `user_name` armazena o nome de um usuário e é acessível de dentro da classe `User`.

Variáveis globais de classe desempenham um papel significativo ao tornar dados disponíveis em diferentes partes do seu programa, permitindo que você compartilhe informações e mantenha consistência em todo o seu código.

## Atributos e Propriedades Públicos, Protegidos e Privados em Python

Em Python, atributos e propriedades podem ter diferentes níveis de visibilidade e controle de acesso com base em convenções de nomenclatura. Esses níveis incluem público, protegido e privado.

### Atributos e Propriedades Públicos

Atributos e propriedades públicas não têm restrições de nome. Eles são acessíveis de qualquer lugar no seu código, tanto dentro quanto fora da classe. Por padrão, se um atributo ou propriedade não tem um nome com um prefixo de duplo sublinhado, ele é considerado público.

```python3
class Person:
    def __init__(self, name):
        self.name = name  # Public attribute

class Circle:
    def __init__(self, radius):
        self.radius = radius  # Public attribute

class MyClass:
    def __init__(self, value):
        self.value = value  # Public attribute

# Accessing public attributes and properties
person = Person("Alice")
print(person.name)  # Output: Alice

circle = Circle(5)
print(circle.radius)  # Output: 5

obj = MyClass(42)
print(obj.value)  # Output: 42
```

Nos exemplos acima, atributos como `name`, `radius` e `value` são públicos e podem ser acessados de fora das classes.

### Atributos e Propriedades Protegidos

Em Python, atributos e propriedades podem ser marcados como protegidos prefixando seus nomes com um único sublinhado. Esta é uma convenção de nomenclatura que sugere que esses atributos não devem ser acessados diretamente de fora da classe, embora ainda possam ser acessados.

```python3
class Employee:
    def __init__(self, name, _salary):
        self.name = name
        self._salary = _salary  # Protected attribute

    def _get_salary(self):
        return self._salary  # Protected method

# Accessing protected attributes and methods
employee = Employee("Bob", 50000)
print(employee._salary)  # Output: 50000
print(employee._get_salary())  # Output: 50000
```

Na classe `Employee`, `_salary` é marcado como um atributo protegido. Embora seja acessível, o sublinhado único indica que não deve ser acessado diretamente.

### Atributos e Propriedades Privadas

Atributos e propriedades podem ser tornados privados em Python prefixando seus nomes com um sublinhado duplo. Essa convenção de nomenclatura implica que esses atributos não devem ser acessados diretamente de fora da classe. Tentar fazer isso resultará em uma transformação de embaralhamento de nome.

```python3
class BankAccount:
    def __init__(self, account_number, __balance):
        self.account_number = account_number
        self.__balance = __balance  # Private attribute

    def __get_balance(self):
        return self.__balance  # Private method

# Attempting to access private attributes and methods
account = BankAccount("123456789", 1000)

# Results in an AttributeError
# print(account.__balance)
# print(account.__get_balance())
```

Na classe `BankAccount`, `__balance` é um atributo privado, e `__get_balance` é um método privado. Tentar acessá-los de fora da classe resulta em um AttributeError.
