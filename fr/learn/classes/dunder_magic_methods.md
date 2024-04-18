> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/dunder-magic-methods

**Dunder** (double underscore) ou **magique** sont des méthodes spéciales en Python qui permettent la personnalisation des classes et des objets. Ces méthodes sont appelées **magiques** car elles peuvent changer le comportement du code de manière inattendue. Comprendre et mettre en œuvre ces méthodes peut grandement améliorer la fonctionnalité et la flexibilité de vos programmes Python.

## Construire des Objets et des Expressions

En Python, les objets sont des instances de classes, qui définissent les attributs et méthodes de l'objet. Le processus de création d'un objet en Python implique de définir une classe, qui spécifie la structure et le comportement de l'objet, puis de créer des instances de cette classe.

### Définir des Classes en Python

Pour définir une classe en Python, vous utilisez le mot-clé `class`, suivi du nom de la classe. Par exemple, le code suivant définit une classe simple appelée `Person` :

```python
class Person:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def say_hello(self):
        print(f"Hello, my name is {self.name} and I am {self.age} years old.")
```

La méthode `__init__` est une méthode spéciale qui est appelée lorsqu'une instance de la classe est créée. Elle initialise les attributs de l'objet.

### Méthode Magique `__init__` en Python

La méthode `__init__` est une méthode magique spéciale qui est appelée lorsqu'une instance d'une classe est créée. Elle initialise les attributs de l'objet. Dans l'exemple ci-dessus, la méthode `__init__` prend deux paramètres, `name` et `age`, qui sont utilisés pour initialiser les attributs `name` et `age` de l'objet.

### Création d'Instances de Classes en Python

Pour créer une instance d'une classe, vous appelez la classe comme si c'était une fonction, en passant tout argument que la méthode dunder `__init__` nécessite. Par exemple, le code suivant crée deux instances de la classe `Person` :

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

## Création d'objets itérateurs

Un itérateur est un objet qui permet une itération séquentielle (bouclage) sur une collection d'éléments, un élément à la fois. En Python, vous pouvez créer des objets itérateurs à l'aide de classes ou de fonctions.

### Classe Générateur Python

Vous pouvez créer un itérateur en utilisant la classe générateur en Python. La classe générateur est un type d'objet qui est utilisé pour créer des objets itérables en utilisant l'instruction `yield`.

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

Dans cet exemple, `MyGenerator` est une classe générateur qui hérite de la classe intégrée `object`. Elle définit une méthode `__init__()` qui initialise l'attribut `num` à 0. Elle définit également une méthode `__iter__()` qui retourne l'objet itérateur (`self` dans ce cas) et une méthode magique `__next__()` qui génère la valeur suivante dans la séquence.

Vous pouvez aussi créer un itérateur en utilisant un générateur de fonction Python. Un générateur de fonction est une fonction qui contient l'instruction `yield`.

Dans cet exemple, la fonction `my_generator` est un générateur de fonction qui utilise l'instruction `yield` pour générer la valeur suivante dans la séquence.

Dans les deux exemples ci-dessus, vous pouvez créer un objet itérateur comme suit :

Les deux exemples de code produiront les valeurs `0`, `1`, `2`, `3`, `4`, et `5` lorsqu'ils seront itérés.

## Gestion des Références d'Attributs

Les références d'attributs sont utilisées pour accéder aux attributs d'un objet en Python. Elles peuvent être accédées en utilisant la syntaxe de notation par point et peuvent également être accédées dynamiquement en utilisant la fonction `getattr()`.

La fonction `getattr()` prend deux arguments - l'objet dont l'attribut doit être accédé et le nom de l'attribut sous forme de chaîne de caractères. Si l'attribut n'est pas trouvé, une `AttributeError` est levée.

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

Dans le premier cas, nous créons une classe `Dog` et accédons à l'attribut `name` en utilisant la syntaxe de notation par point.

Dans le second cas, nous créons un objet dictionnaire `my_cat` et accédons à l'attribut `name` de manière dynamique en utilisant la fonction `getattr()`. Nous stockons la valeur de l'attribut dans `cat_name` et l'imprimons.

## Représenter des Objets en Chaînes avec la Méthode Magique

En Python, nous pouvons représenter des objets sous forme de chaîne en utilisant la méthode dunder `__repr__()`. Cette méthode est appelée lorsque nous utilisons la fonction `repr()` ou lorsque nous imprimons un objet en utilisant la fonction `print()`.

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

Dans le code ci-dessus, nous avons défini une classe `Point` avec les attributs `x` et `y`. Nous avons également défini une méthode dunder `__repr__()` qui retourne une représentation en chaîne de caractères de l'objet `Point`. Lorsque nous imprimons l'objet `p`, cela appelle la méthode magique `__repr__()` pour obtenir sa représentation en chaîne de caractères.

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

Dans cet exemple, nous avons défini une classe `Car` avec les attributs `make`, `model`, et `year`. Nous avons également défini une méthode `__repr__()` qui retourne une représentation en chaîne de l'objet `Car`. Lorsque nous imprimons l'objet `c`, cela appelle la méthode dunder `__repr__()` pour obtenir sa représentation sous forme de chaîne.

## Nettoyage des Objets avec Méthode Dunder

En Python, les objets sont automatiquement collectés par le garbage collector lorsqu'ils ne sont plus nécessaires. Cependant, il peut parfois être nécessaire de définir des actions de nettoyage additionnelles pour un objet. Cela peut être réalisé en utilisant la méthode `__del__`, qui est appelée lorsque l'objet est sur le point d'être détruit.

Cette méthode dunder est utile pour libérer des ressources telles que des fichiers, des connexions réseau, ou d'autres objets de niveau système qui ne sont pas automatiquement gérés par Python.

```python
class MyClass:
    def __init__(self):
        self.file = open('example.txt', 'r')

    def __del__(self):
        self.file.close()
```

Dans cet exemple, le constructeur `MyClass` crée un objet fichier et le stocke dans la variable d'instance `file`. Lorsque l'objet est détruit, la méthode `__del__` est appelée, ce qui ferme le fichier.

## Effectuer des Comparaisons avec les Méthodes Dunder

Python offre plusieurs moyens de comparer des valeurs, des variables ou des expressions. Certains opérateurs couramment utilisés pour effectuer des comparaisons incluent `==`, `!=`, `>`, `<`, `>=`, `<=`, `in` et `is`.

### Comparer des Chaînes en Python

La méthode `__lt__()` est utilisée pour implémenter l'opérateur de comparaison inférieur à en Python. Elle retourne `True` si la première chaîne est inférieure à la seconde chaîne et `False` sinon.

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

Dans l'exemple ci-dessus, nous avons trié la liste des fruits par ordre croissant en fonction de si le premier caractère de chaque chaîne est inférieur ou supérieur à `c`. `lambda x: x.__lt__(`c`)` retourne `True` si le premier caractère de `x` est inférieur à `c` et `False` sinon.
