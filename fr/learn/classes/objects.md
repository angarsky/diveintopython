> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/objects

Si vous cherchez à approfondir vos connaissances en programmation Python, il est essentiel de bien comprendre les classes et les objets. Essentiellement, une classe est un plan pour créer des objets, tandis que les objets eux-mêmes sont des instances de ces classes. Dans ce guide, nous explorerons le monde des objets de classe, et nous plongerons dans les bases des classes et des objets dans ce langage puissant. Alors que vous débutiez avec Python ou que vous cherchiez à améliorer vos compétences existantes, continuez à lire pour en apprendre plus sur cet aspect crucial du langage.

## Comment créer un objet en Python

Les classes et les objets en Python sont des concepts fondamentaux dans la programmation orientée objet. Un objet est simplement une instance d'une classe.

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

Dans cet exemple, nous avons créé une classe appelée `Car` qui possède trois attributs : `make`, `model`, et `year`. La méthode `__init__()` est utilisée pour initialiser les attributs lors de la création d'un nouvel objet. La méthode `display()` est utilisée pour imprimer des informations sur la voiture. Nous avons créé deux objets (`car1` et `car2`) à partir de la classe `Car`. Nous avons passé des valeurs pour les attributs `make`, `model`, et `year` pour chaque voiture. Nous avons ensuite appelé la méthode `display()` sur chaque objet pour imprimer des informations sur la voiture.

Pour résumer, les classes et les objets en Python sont utilisés pour créer des types de données personnalisés qui peuvent avoir des attributs et des méthodes. Utiliser des objets de classe en Python permet un code plus organisé et modulaire.

## Qu'est-ce qu'un objet en Python

Un objet de classe en Python se réfère à un plan ou un modèle pour créer des objets. Il définit les attributs et méthodes qu'un objet aura.
En Python, les classes sont utilisées pour créer des objets de classe qui peuvent être utilisés pour créer des instances ou des objets de cette classe.

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

Dans cet exemple, `Car` est un objet de classe qui définit les attributs - `make`, `model` et `year` d'une voiture et une méthode `get_details()` qui retourne les détails de la voiture.

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

Dans cet exemple, `Dog` est un autre objet de classe qui définit les attributs - `breed` et `age` d'un chien et une méthode `bark()` qui retourne le son d'un chien.

## Explorer les caractéristiques clés de l'objet de classe

Un objet de classe en Python est un plan pour créer des objets. Il définit un ensemble d'attributs et de méthodes que tous les objets créés à partir de cette classe auront.

- Classes : Une classe est un plan pour créer des objets. Elle définit les attributs et les méthodes que tous les objets créés à partir de cette classe auront.

```python
class Car:
    def __init__(self, make, model, year):
        self.make = make
        self.model = model
        self.year = year

car1 = Car("Toyota", "Camry", 2020)
car2 = Car("Honda", "Accord", 2021)
```

- Objets : Un objet est une instance d'une classe. Il possède tous les attributs et méthodes définis dans la classe.

```python3
class Player:
    def __init__(self, name, position, number):
        self.name = name
        self.position = position
        self.number = number

p1 = Player("LeBron James", "Small Forward", 23)
print(p1.name, p1.position, p1.number)
```

## Dépannage des problèmes courants avec l'objet de classe  

Lors de l'utilisation d'objets de classe, certains problèmes courants peuvent survenir. Voici quelques-uns des problèmes les plus courants et leurs solutions :

1. `AttributeError` : Cette erreur se produit lors de la tentative d'accès à un attribut qui n'existe pas dans la classe ou l'objet. Pour résoudre cette erreur, assurez-vous que l'attribut existe et a été correctement défini.

```python3
class MyClass:
    def __init__(self, val):
        self.value = val

obj = MyClass(5)
print(obj.value)  # Output: 5

# print(obj.foo)  Output: AttributeError: 'MyClass' object has no attribute 'foo'
```

`TypeError` : Cette erreur survient lorsqu'une fonction ou méthode est appelée avec un mauvais nombre ou type d'arguments. Pour résoudre cette erreur, assurez-vous que la fonction ou méthode est appelée avec le nombre et le type d'arguments corrects.

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

## Comment obtenir les attributs d'un objet

Les types d'objets Python ont des attributs qui représentent des caractéristiques ou comportements de l'objet. Pour obtenir tous les attributs d'un objet en Python, vous pouvez utiliser la fonction `getattr()` ou y accéder directement en utilisant la notation point.

### Utilisation de la fonction `getattr()`

La fonction `getattr()` prend deux arguments, l'objet et le `nom` de l'attribut, et retourne la valeur de l'attribut.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = getattr(my_obj, 'name')
print(name) # Output: 'John'
```

### Accéder directement aux attributs

Vous pouvez également accéder directement aux attributs d’un objet en utilisant la notation point.

```python3
class MyClass:
  def __init__(self, name, age):
    self.name = name
    self.age = age

my_obj = MyClass('John', 30)
name = my_obj.name
print(name) # Output: 'John'
```

En conclusion, obtenir les attributs des types d'objets Python peut se faire en utilisant la fonction `getattr()` ou en y accédant directement en utilisant la notation par point.

## Exploration de l'Héritage et de la Recherche d'Attributs

Les attributs peuvent être hérités des classes parents aux classes enfants. L'héritage d'attributs permet aux classes enfants d'accéder et d'utiliser les attributs définis dans leurs classes parents. Python fournit une fonction intégrée `issubclass()` pour vérifier si une classe donnée est une sous-classe d'une autre classe.

### Exemple d'une Classe en Python

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

Dans cet exemple, `Student` est une classe enfant de `Person`. La classe `Student` hérite des attributs `name` et `age` de la classe `Person`.

### Héritage d'attribut

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

Dans cet exemple, `A` est la classe parent, `B` est la classe enfant et `C` est la classe petit-enfant. L'attribut `x` défini dans la classe `A` est hérité à la fois par les classes `B` et `C`.

### Ordre de recherche d'attribut

```python3
class A:
    x = 10

class B(A):
    x = 20

class C(B):
    pass

print(C.x)   ### Output 20

```

Dans cet exemple, `A` est la classe parent, `B` est la classe enfant et `C` est la classe petit-enfant. Les deux classes `A` et `B` ont un attribut nommé `x`. Dans ce cas, l'ordre de recherche d'attribut va de la classe actuelle (qui est `C`), à sa classe parent `B` et finalement à la classe grand-parent `A`. La valeur de `x` trouvée chez l'ancêtre le plus proche (`B`) est imprimée en sortie.

## Comment imprimer tous les attributs d'un objet

Pour obtenir les attributs d'un objet en Python, vous pouvez utiliser la fonction intégrée `dir`. Pour imprimer les attributs d'un objet, vous devez itérer sur le résultat de la fonction `dir` et utiliser la fonction `getattr` pour obtenir les valeurs des attributs. Voici deux exemples de code :

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

Dans les deux exemples, la fonction `dir` est utilisée pour obtenir une liste de tous les attributs de l'objet. Le premier exemple utilise une boucle for simple pour itérer sur la liste et `print` chaque attribut ainsi que sa `value` en utilisant la fonction `getattr`. Le second exemple utilise une compréhension de liste pour filtrer tout attribut `callable` (tel que les méthodes) et tout attribut commençant par deux underscores (qui sont considérés comme privés). La liste résultante des attributs est ensuite imprimée en utilisant `getattr`.

## Comment vérifier le type d'objet en Python

En Python, vous pouvez vérifier le `type` d'un objet en utilisant la fonction `type()`. Cette fonction retourne le `type` de l'objet que vous passez en argument. Voici deux exemples pour illustrer comment utiliser la fonction `type()`:

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

L'utilisation de la fonction `type()` vous permet d'obtenir le `type` de n'importe quel objet Python rapidement et facilement. Cela peut être utile lorsque vous souhaitez déboguer votre code ou écrire des instructions conditionnelles basées sur le `type` d'un objet.

## Sérialiser l'Objet

La sérialisation en Python se réfère au processus de conversion d'un objet Python en un flux d'octets. Cela peut être utile lors du transfert de données entre différents systèmes ou lors de l'enregistrement d'un état de programme sur disque. Le module de sérialisation le plus courant en Python est `pickle`, qui peut sérialiser la plupart des objets Python.

Voici deux exemples de comment utiliser [pickle](https://docs.python.org/3/library/pickle.html) pour sérialiser un objet en Python :

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

Dans le premier cas, nous créons un objet dictionnaire et le déchargeons dans un fichier à l'aide de `pickle.dump()`. Dans le deuxième cas, nous créons une instance de `MyClass` et la sérialisons en une chaîne d'octets en utilisant `pickle.dumps()`.

Utiliser `pickle` pour la sérialisation d'objets Python est facile et puissant. Cependant, veuillez noter que `pickle` n'est pas sécurisé et ne devrait pas être utilisé pour sérialiser ou désérialiser des données non fiables.

## Erreur : L'objet Python n'a pas d'attribut

Lorsque vous rencontrez un message d'erreur qui dit `Python Object has no Attribute` en Python, cela signifie que vous essayez d'accéder à un attribut ou une méthode qui n'existe pas dans cet objet. Cela pourrait être dû à une faute de frappe dans le nom de l'attribut ou à l'utilisation de la mauvaise variable pour accéder à l'attribut.

Voici deux exemples de comment cette erreur peut se produire et comment la corriger :

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

Explication : Dans cet exemple, nous essayons d'accéder à l'attribut 'color', qui n'existe pas dans l'objet `my_car`.

Pour corriger cette erreur, vous devez soit ajouter l'attribut `color` à la classe `Car`, soit utiliser un attribut existant.

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

Explication : Dans cet exemple, nous essayons d'ajouter une chaîne `value` à la variable `total`, ce qui entraîne une erreur car la méthode `numeric()` ne fonctionne qu'avec des valeurs numériques.

Pour corriger cette erreur, vous pouvez utiliser la fonction `isinstance()` pour vérifier `if` la `value` est numérique avant de l'ajouter à la variable `total`.

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

## Comment lister les méthodes disponibles dans une classe

En Python, vous pouvez lister toutes les méthodes disponibles dans votre classe en utilisant la fonction `dir()` ou `vars()`. Ces fonctions vous permettent d'introspecter votre classe et de voir toutes les méthodes et attributs qu'elle contient.

### Utilisation de la fonction `dir()`

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

### Utilisant la fonction `vars()`

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

Utiliser ces fonctions peut vous aider à comprendre comment une classe est structurée et comment interagir avec elle.
