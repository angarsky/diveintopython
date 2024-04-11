> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/object-instantiation

A instanciação de objeto é um conceito fundamental na programação orientada a objetos que se refere ao processo de criação de novos objetos a partir de uma classe. Esse processo envolve o uso de construtores, que são métodos especiais que definem como novos objetos são inicializados. Este artigo descreve como instanciar um objeto em Python e fornece exemplos de como criar e usar esses objetos em seu código.

## Explorando os Construtores de Classe do Python

Um construtor de classe em Python é um método especial que é executado quando um objeto de uma classe é instanciado. Ele é usado para inicializar os atributos da classe. O método construtor em Python é chamado `__init__()` e é definido dentro da classe.

### Como Instanciar uma Classe Python

Vamos explorar como instanciar uma classe em Python.
Para realizar isso, devemos realizar a instanciação de classe em Python criando uma instância da classe que invoca seu método construtor. Aqui está um exemplo de uma classe simples e como instanciar um objeto dessa classe.

```python3
class Recipe:
    def __init__(self, name, ingredients):
        self.name = name
        self.ingredients = ingredients

# Instantiate a Recipe object
my_recipe = Recipe("Spaghetti Bolognese", ["spaghetti", "tomato sauce", "ground beef"])

# Access the object's attributes
print("Recipe Name:", my_recipe.name)
print("Ingredients:", my_recipe.ingredients)
```

No exemplo acima, a classe `Recipe` possui um construtor que define os atributos `name` e `ingredients` para cada novo objeto que é instanciado. O objeto `my_recipe` é instanciado com o nome "Spaghetti Bolognese" e uma lista de ingredientes. As instruções de impressão vão gerar `Recipe Name: Spaghetti Bolognese` e `Ingredients: ['spaghetti', 'tomato sauce', 'ground beef']`.

## Herança e Construtores em Python

Em Python, os construtores desempenham um papel crucial na herança de classes, permitindo que as classes filhas herdem e estendam atributos e comportamentos das classes pai.

### Básicos da Herança de Construtores

As classes filhas herdam o construtor de sua classe pai, permitindo-lhes reutilizar a lógica de inicialização do pai. Por exemplo:

```python
class Vehicle:
    def __init__(self, make, model):
        self.make = make
        self.model = model

class Car(Vehicle):
    def __init__(self, make, model, year):
        super().__init__(make, model)
        self.year = year
```

Neste exemplo, a classe Car herda de Vehicle e estende seus atributos.

### Sobrescrita de Construtor

Classes filhas também podem sobrescrever o construtor da classe pai para personalizar a inicialização:

```python
class Bike(Vehicle):
    def __init__(self, make, model, wheel_count):
        super().__init__(make, model)
        self.wheel_count = wheel_count
```

### Classes Abstratas Básicas

Classes abstratas básicas permitem que você imponha padrões de inicialização em uma hierarquia de classes. Consulte a [página de classes abstratas](/pt/learn/classes/abstract_class.md) para ler mais.

## Mergulhando no Processo do Python de Instanciar Objetos

Instanciar um objeto, em Python, significa criar uma instância de uma classe. Quando você cria uma instância de uma classe, você instancia o objeto. No Python, o processo de instanciar objetos envolve criar e inicializar objetos.

Para instanciar uma classe Python, você precisa usar o método construtor, que é o método `__init__()`. O método construtor inicializa os atributos ou propriedades de um objeto.

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

person1 = Person("John", 25)
print(person1.name)
print(person1.age)
```

Neste exemplo, definimos uma classe chamada `Person` com dois atributos, `name` e `age`. Instanciamos um objeto `person1` e passamos dois argumentos para o método construtor. Por fim, imprimimos os valores dos atributos nome e idade.

```python3
class Employee:
    def __init__(self, firstname, lastname, salary):
        self.firstname = firstname
        self.lastname = lastname
        self.salary = salary

    def get_fullname(self):
        return self.firstname + " " + self.lastname

employee1 = Employee("Jane", "Doe", 50000)
print(employee1.firstname)
print(employee1.get_fullname())
print(employee1.salary)
```

Neste exemplo, definimos uma classe chamada `Employee` com três atributos, `firstname`, `lastname` e `salary`. Instanciamos um objeto `employee1` e passamos três argumentos para o método construtor. Finalmente, imprimimos os valores dos atributos firstname, get_fullname() e salary.

No Python, instanciar objetos é uma forma poderosa e flexível de criar objetos com comportamentos e atributos específicos.

## Inicializando Objetos Usando o Método `__init__()`

O método `__init__()` é usado em classes Python para inicializar objetos recém-criados. Ele é automaticamente chamado quando um objeto é criado usando o construtor da classe.

Aqui está um exemplo de uma classe com um método `__init__()`:

```python3
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

p1 = Person("Alice", 25)
print(p1.name)  ### Output Alice

print(p1.age)  ### Output 25
```

Neste exemplo, a classe `Person` tem um método `init` que recebe dois argumentos: `name` e `age`. Quando você cria um novo objeto `Person`, você passa valores para esses argumentos, e o método `__init__()` define as variáveis de instância correspondentes.

Você também pode ter argumentos opcionais ou padrão no método `__init__()`:

```python3
class Rectangle:
    def __init__(self, width=0, height=0):
        self.width = width
        self.height = height

r1 = Rectangle()
print(r1.width)  ### Output 0

print(r1.height)  ### Output 0

r2 = Rectangle(10, 20)
print(r2.width)  ### Output 10

print(r2.height)  ### Output 20
```

Neste exemplo, a classe `Rectangle` possui um método `__init__()` que aceita dois argumentos opcionais: `width` e `height`. Se nenhum argumento for fornecido, os valores padrão de `0` são usados.

## Customizando a Inicialização de Objetos em Python

Em Python, o método `__init__()` é chamado quando um objeto de uma classe é criado. Ele é usado para inicializar os atributos do objeto. No entanto, às vezes, podemos precisar personalizar a inicialização do objeto especificando nossos próprios parâmetros. Isso pode ser alcançado usando os seguintes métodos:

### Criando Classe Python sem `__init__()`

Uma maneira de personalizar a inicialização do objeto é definir um método personalizado que inicializa os atributos. Esse método pode receber parâmetros que são usados para definir os valores dos atributos. Aqui está um exemplo:

```python3
class Car:
    def set_values(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

my_car = Car()
my_car.set_values('Toyota', 'Camry', 2022)
print(my_car.make)  # Output: Toyota
```

Neste exemplo, definimos um método personalizado `set_values()` para inicializar os atributos `make`, `model` e `year`. Em seguida, chamamos este método em um objeto da classe `Car` para definir os valores dos atributos.

### Criando Classe com `__init__()`

Outra forma de personalizar a inicialização do objeto é usar atributos de nível de classe. Esses atributos podem ser definidos na definição da classe e usados para inicializar os atributos do objeto. Aqui está um exemplo:

```python3
class Car:
    make = ''
    model = ''
    year = 0

    def __init__(self):
        self.make = Car.make
        self.model = Car.model
        self.year = Car.year

my_car = Car()
my_car.make = 'Toyota'
my_car.model = 'Camry'
my_car.year = 2022
print(my_car.make)  # Output: Toyota
```

Neste exemplo, definimos `make`, `model` e `year` como atributos de nível de classe e definimos seus valores padrão para uma string vazia e `0`. Em seguida, usamos esses atributos para inicializar os atributos do objeto no método `__init__()`. Podemos mais tarde modificar os valores dos atributos do objeto como no exemplo anterior.

## Criando Objeto de Classe Python com Inicializadores Flexíveis

A programação orientada a objetos nos permite criar objetos com diferentes propriedades. Podemos inicializar um objeto com propriedades fixas ou flexíveis, passando diferentes argumentos para o construtor. Em Python, podemos usar o método `__init__()` para inicializar um objeto com propriedades flexíveis.

```python3
class Rectangle:
    def __init__(self, width, height):
        self.width = width
        self.height = height

rect = Rectangle(5, 10)
print(rect.width)   # Output: 5
print(rect.height)  # Output: 10
```

No exemplo acima, inicializamos o objeto `Rectangle` com propriedades fixas `width` e `height`. O objeto retornado pelo construtor sempre terá as mesmas propriedades.

```python3
class Circle:
    def __init__(self, radius, color='red', border=None):
        self.radius = radius
        self.color = color
        self.border = border

circle = Circle(5)
print(circle.radius)  # Output: 5
print(circle.color)   # Output: red
print(circle.border)  # Output: None
```

No exemplo acima, inicializamos o objeto `Circle` com propriedades flexíveis `radius`, `color` e `border`. Passamos apenas um argumento `radius` para o construtor, mas também especificamos valores padrão para `color` e `border`. Isso nos permite criar um objeto `Circle` com apenas um argumento, ou três argumentos, ou qualquer número de argumentos intermediário.

## Criação de Objetos usando o Método `__new__()`

O método `__new__()` é usado em Python para criar objetos dinamicamente. Ele permite que o desenvolvedor crie um objeto de classe usando o nome da classe, e então você pode adicionar atributo após a inicialização da classe python.

```python3
class Person:
    pass

dave = Person.__new__(Person)
dave.name = "Dave"
dave.age = 25

print(dave.name)
```

No exemplo acima, criamos uma classe chamada `Person` e depois usamos o método .new() para criar um objeto chamado `dave`. Em seguida, adicionamos os atributos `name` e `age` a este objeto após a inicialização.

```python3
class Car:
    def __init__(self, model, make):
        self.model = model
        self.make = make

car = Car.__new__(Car)
car.__init__("Corvette", "Chevrolet")
car.color = "red"

print(car.color)
```

Neste exemplo, criamos uma classe chamada `Car` e definimos seus atributos durante a inicialização usando `__init__()`. Em seguida, criamos um objeto chamado `car` usando o método `__new__()` e o inicializamos com os atributos de modelo e marca. Finalmente, adicionamos o atributo `color` ao objeto `car` após a inicialização.
