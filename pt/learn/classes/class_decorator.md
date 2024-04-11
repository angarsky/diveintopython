> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/classes/class-decorator

Decoradores de classe são uma ferramenta de programação poderosa usada para modificar o comportamento das classes. Um desses decoradores é o decorador de classe, que pode ser usado para adicionar funcionalidades a uma classe. Outro tipo de decorador é o decorador de método de classe, que pode ser usado para modificar métodos de classe. Além disso, o decorador de propriedade de classe pode ser usado para criar propriedades calculadas para classes. Esses decoradores podem modificar rapidamente e facilmente o comportamento das classes, tornando-os inestimáveis para os desenvolvedores.

## Introdução ao Decorador de Classe em Python

Um decorador de classe é um tipo de decorador que é usado para modificar ou aprimorar o comportamento de uma classe. É usado para adicionar ou remover funcionalidades de uma classe sem alterar sua definição.

Alguns tipos comuns de decoradores de classe incluem:

- **Decorador de classe**: Um decorador de classe que modifica o comportamento de uma classe adicionando ou removendo propriedades, métodos ou atributos.

- **Decorador de método de classe**: Um decorador Python que modifica um método de classe alterando seu comportamento ou adicionando funcionalidade adicional.

- **Decorador de propriedade de classe**: Um decorador de classe que modifica uma propriedade de classe adicionando ou removendo atributos ou métodos.

Aqui estão dois exemplos de uso de decoradores de classe:

```python3
def add_method(cls):
    def square(self, x):
        return x * x
    cls.square = square
    return cls

@add_method
class MyClass:
    pass

obj = MyClass()
print(obj.square(5))

```

```python
def class_method_decorator(cls):
    def new_method(self):
        print("Class method has been decorated")
        return cls.original_method(self)
    cls.original_method = cls.class_method
    cls.class_method = new_method
    return cls

@class_method_decorator
class MyClass:
    @classmethod
    def class_method(cls):
        print("Class method has been called")
        return None

obj = MyClass()
obj.class_method() 

```

No primeiro exemplo, um decorador de classe é usado para adicionar um novo método, `square()`, ao objeto `MyClass`. No segundo exemplo, um `class_method_decorator` é usado para modificar o comportamento do método `class_method()` no objeto `MyClass`.

## Entendendo o Decorador de Método de Classe

O decorador de método de classe é usado para definir um método que está vinculado à classe e não à instância da classe. Ele recebe um parâmetro `cls` em vez de `self`. Este decorador é utilizado para definir métodos que estão relacionados à classe e não a uma instância da classe.

```python
class MyClass:
    counter = 0

    @classmethod
    def increment_counter(cls):
        cls.counter += 1

MyClass.increment_counter()
print(MyClass.counter)  # Output: 1
```

No exemplo acima, o método `increment_counter` é decorado com `@classmethod`, o que o torna um método de classe. Ele incrementa a variável de classe `counter` em 1.

## Explorando o Decorador de Propriedade de Classe  

Em Python, um decorador de classe é uma função que pode ser usada para modificar ou adicionar nova funcionalidade a uma classe. Existem diferentes tipos de decoradores de classe, incluindo decorador de método de classe e decorador de propriedade de classe.

Um decorador de método de classe é uma função que modifica um método de uma classe e espera que o primeiro argumento seja o objeto da classe. Aqui está um exemplo:

```python3
class MyClass:
    my_var = "hello"

    @classmethod
    def my_method(cls):
        print(cls.my_var)

MyClass.my_method() 

```

Um decorador de propriedade de classe é uma função que modifica uma propriedade de classe e retorna um novo objeto de propriedade. Aqui está um exemplo:

```python3
class MyClass:
    def __init__(self, my_var):
        self._my_var = my_var

    @property
    def my_var(self):
        return self._my_var

    @my_var.setter
    def my_var(self, value):
        self._my_var = value

my_obj = MyClass("hello")
print(my_obj.my_var) 

my_obj.my_var = "world"
print(my_obj.my_var) 

```

Em resumo, o decorador de classe, o decorador de método de classe e o decorador de propriedade de classe são ferramentas poderosas que podem ser usadas para modificar ou estender a funcionalidade das classes.

## Benefícios de Usar Decorador de Classe

Um Decorador de classe é um recurso que é simplesmente uma função que altera uma definição de classe, de modo que ela é retornada como a classe modificada. **Decoradores de classe** se tornaram populares por sua capacidade de adicionar funcionalidade a uma classe existente sem modificar a classe original diretamente.

Os decoradores de Python são usados para estender e modificar o comportamento ou propriedades de uma função, método ou classe. Aqui estão alguns benefícios de usar decorador de classe:

1. **Decorador de Método de Classe:** Os decoradores de Python fornecem uma maneira fácil de modificar o comportamento de um método de classe de alguma maneira. Decoradores de método de classe podem ser usados para verificar entradas, saída ou modificar comportamento antes das respostas do método de classe.

```python3
class Pizza:
    def __init__(self, toppings):
        self.toppings = toppings

    @classmethod
    def recommend(cls):
        """Recommend some pizza toppings."""
        return cls(['mozzarella', 'tomatoes'])

print(Pizza.recommend().toppings)

```

2. **Decorador de Propriedade de Classe:** o decorador de classe pode ser usado para definir propriedades de classe de maneira concisa e fácil de ler. Por exemplo, eles podem ser usados para calcular atributos que não estão disponíveis quando a classe é definida pela primeira vez.

```python3
class Person:
    def __init__(self, name):
        self.name = name
 
    @property
    def name(self):
        return self._name
 
    @name.setter
    def name(self, value):
        if not isinstance(value, str):
            raise TypeError('Expected a string')
        self._name = value.title()
 
person = Person('jessica')
print(person.name)

```

## Melhores Práticas para Usar Decorador de Método de Classe  

O decorador de classe é amplamente utilizado para estender o comportamento de uma classe ou seu método. Os decoradores de método de classe em Python são usados para modificar o comportamento existente de um método de classe, adicionando funcionalidades adicionais. O decorador de propriedade de classe em Python permite que você defina uma propriedade a nível de classe que estará disponível para todas as instâncias dessa classe.

Aqui estão algumas melhores práticas a ter em mente ao usar decorador de método de classe e decorador de propriedade de classe:

1. Use `@classmethod` para definir um decorador de método de classe.

```python3
class MyClass:

    def __init__(self, value):
        self.value = value

    @classmethod
    def from_string(cls, string):
        value = int(string)
        return cls(value)

obj = MyClass.from_string('10')
print(obj.value) 

```

2. Use `@property` para definir um decorador de propriedade de classe.

```python3
class MyClass:

    def __init__(self, value):
        self._value = value

    @property
    def value(self):
        return self._value

    @value.setter
    def value(self, new_val):
        if new_val < 0:
            raise ValueError("Value cannot be negative")
        else:
            self._value = new_val

obj = MyClass(10)
print(obj.value) # Output 10

# obj.value = -1 Raises valueerror

```

Em conclusão, decorador de classe, decorador de método de classe e decorador de propriedade de classe são ferramentas poderosas que podem ajudá-lo a modificar o comportamento de uma classe ou de seus métodos. Mantenha essas melhores práticas em mente para escrever um código limpo, legível e sustentável.

## Uso do Decorador de Propriedade de Classe

Uma das aplicações mais comuns do decorador de propriedade de classe no mundo real é o trabalho com consultas de banco de dados.

```python3
class User:
    def __init__(self, name, email):
        self.name = name
        self.email = email

    @property
    def email_id(self):
        return self.email.split('@')[0]

user = User('Foo', 'foo@example.com')
print(user.email_id) # Outputs foo
```

No exemplo acima, a `email_id property` expõe apenas o endereço de email do usuário sem a parte do `@domain.com`. Isso pode ser útil ao trabalhar com bancos de dados, onde frequentemente é necessário filtrar ou agrupar dados baseados em um identificador.

Outro exemplo comum do uso de decorador de propriedade de classe é para fins de validação.

```python3
class User:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    @property
    def age(self):
        return self._age

    @age.setter
    def age(self, value):
        if not isinstance(value, int):
            raise TypeError('Age must be an integer')
        if value < 0 or value > 130:
            raise ValueError('Age must be between 0 and 130')
        self._age = value

user = User('Foo', 25)
print(user.age) # Outputs 25

# user.age = 150 Throws ValueError: Age must be between 0 and 130
```

No exemplo acima, a propriedade `age` é validada para garantir que está dentro de um intervalo válido.
