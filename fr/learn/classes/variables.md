> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/variables

Python est un langage puissant qui prend en charge différents types de variables et propriétés. Dans cet article, nous discuterons des variables, attributs et propriétés en Python pour vous aider à mieux les comprendre.

## Comprendre les Variables, Attributs et Propriétés

- **Variables :** Une variable est un nom qui fait référence à une valeur. Les variables peuvent contenir n'importe quel type d'objet.
- **Attributs :** Un attribut est une valeur associée à un objet. Les attributs peuvent être accédés en utilisant la notation pointée.
- **Propriétés :** Une propriété est une manière de définir une méthode comme un attribut. Les propriétés sont créées en utilisant le décorateur `@property`.

## Variables de Classe Python

En Python, les variables de classe sont un moyen puissant de partager des données parmi toutes les instances d'une classe. Explorons comment créer, accéder et modifier les variables de classe.

### Créer une Variable de Classe

Pour créer une variable de classe en Python, vous la déclarez simplement à l'intérieur de la classe mais à l'extérieur de toute méthode. Les variables de classe sont partagées parmi toutes les instances de la classe et peuvent être utilisées pour stocker des données communes à tous les objets créés à partir de la classe.

```python
class Team:
    # Creating a class variable
    team_name = "Python Developers"
```

Dans cet exemple, nous créons une variable de classe `team_name` pour stocker le nom de l'équipe.

### Accéder à une Variable de Classe en Python

Pour accéder à une variable de classe, vous pouvez utiliser le nom de la classe suivi du nom de la variable, séparés par un point. Cela vous permet de récupérer les données partagées qui s'appliquent à toutes les instances de la classe.

```python3
class Team:
    team_name = "Python Developers"

# Accessing the class variable using the class name
print("Team Name:", Team.team_name)  # Output: Team Name: Python Developers
```

Dans cet exemple, la variable de classe the `team_name` est accédée en utilisant le nom de la classe, `Team.team_name`.

### Modifier la Valeur d'une Variable de Classe

Modifier la valeur d'une variable de classe est simple. Vous utilisez le nom de la classe pour référencer la variable et lui assigner une nouvelle valeur.

```python3
class Team:
    team_name = "Python Developers"

# Modifying the value of the class variable
Team.team_name = "Advanced Python Developers"

# Accessing the modified value
print("Team Name:", Team.team_name)  # Output: Team Name: Advanced Python Developers
```

Dans cet exemple, nous avons modifié la valeur de la variable de classe `team_name` en lui assignant une nouvelle valeur en utilisant le nom de la classe. La valeur mise à jour est ensuite accédée également par le nom de la classe.

## Variables d'Instance Python

En Python, les variables d'instance sont uniques à chaque instance d'une classe. Elles sont définies à l'intérieur des méthodes d'une classe et sont spécifiques à l'objet auquel elles appartiennent. Explorons comment créer et assigner des valeurs aux variables d'instance.

### Créer une Variable d'Instance

Pour créer une variable d'instance en Python, vous pouvez la définir à l'intérieur de la méthode constructeur `__init__`. Le constructeur est une méthode spéciale qui est appelée lorsqu'un objet de la classe est créé. À l'intérieur du constructeur, vous pouvez initialiser les variables d'instance pour l'objet.

```python
class Person:
    def __init__(self, name, age):
        # Creating instance variables
        self.name = name
        self.age = age

# Creating an instance of the Person class
person = Person("Alice", 30)
```

Dans cet exemple, nous définissons deux variables d'instance, name et `age`, au sein de la méthode `__init__` de la classe `Person`. Ces variables sont uniques à chaque objet `person` créé à partir de la classe.

### Attribuer des Valeaux à une Variable d'Instance

Vous pouvez attribuer des valeurs aux variables d'instance lors de la création de l'objet en passant des arguments au constructeur. De plus, vous pouvez modifier ou mettre à jour les valeurs des variables d'instance à tout moment après que l'objet soit créé.

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

Dans cet exemple, nous créons d'abord un objet `person` avec des valeurs initiales pour `name` et `age`. Plus tard, nous modifions les valeurs de ces variables d'instance en leur attribuant directement de nouvelles valeurs.

Les variables d'instance constituent une partie essentielle de la programmation orientée objet, car elles permettent aux objets d'avoir leurs propres données et état. Ces variables peuvent stocker des informations spécifiques à chaque objet, ce qui facilite le travail avec différentes instances de la même classe.

## Attributs et Propriétés de Classe en Python

En Python, les attributs et propriétés de classe fonctionnent de manière similaire aux variables, mais ils offrent plus de fonctionnalités et de contrôle. Examinons comment définir et utiliser les attributs et propriétés de classe.

### Définir les Attributs de Classe

Les attributs de classe sont partagés entre toutes les instances d'une classe. Ils sont déclarés au sein de la classe mais en dehors de toute méthode. Les attributs de classe peuvent être accédés en utilisant le nom de la classe, et ils sont particulièrement utiles pour stocker des données communes à tous les objets créés à partir de la classe.

```python
class Animal:
    # Defining a class attribute
    kingdom = "Animalia"
```

Dans cet exemple, nous définissons un attribut de classe `kingdom` pour stocker la classification du règne pour tous les animaux. Les attributs de classe sont accessibles en utilisant le nom de la classe, tel que `Animal.kingdom`.

### Utilisation des Propriétés

Les propriétés en Python sont des méthodes spéciales qui agissent comme des attributs. Elles sont créées en utilisant le décorateur `@property` pour définir une méthode comme un attribut, offrant des fonctionnalités supplémentaires telles que les getters, les setters et les deleters.

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

Dans cet exemple, nous utilisons des propriétés pour contrôler l'accès à l'attribut `radius`. Le décorateur `@property` définit une méthode getter, tandis que `@radius.setter` définit une méthode setter.

Les attributs et propriétés de classe Python offrent des moyens puissants pour améliorer le comportement de vos classes et objets. Ils vous permettent d'encapsuler des données et de fournir un accès contrôlé aux attributs, rendant votre code plus robuste et maintenable.

## Variables Privées dans les Classes Python

En Python, les variables privées sont des attributs ou des propriétés qui sont destinés à être utilisés uniquement à l'intérieur de la classe et ne devraient pas être accédés ou modifiés de l'extérieur de la classe. Elles sont indiquées en ajoutant un double trait de soulignement `__` avant le nom de la variable ou de la propriété.

### Définir des Variables Privées

Pour définir une variable privée en Python, vous pouvez utiliser le préfixe à double trait de soulignement `__` avant le nom de la variable. Cela indique que la variable ne devrait pas être accédée ou modifiée de l'extérieur de la classe.

```python
class MyClass:
    def __init__(self, public_value, private_value):
        self.public_value = public_value
        self.__private_value = private_value

# Creating an instance of the MyClass class
obj1 = MyClass(5, 10)
```

Dans cet exemple, nous définissons une variable privée `__private_value` au sein de la classe `MyClass`. Elle est destinée à être utilisée uniquement à l'intérieur de la classe.

### Accéder aux Variables Privées

Les variables privées ne peuvent être accessibles qu'à partir de l'intérieur de la classe elle-même. Tenter d'y accéder depuis l'extérieur de la classe entraînera une AttributeError. Cependant, vous pouvez toujours y accéder en utilisant des méthodes de classe ou des propriétés.

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

Dans cet exemple, nous créons une méthode `get_private_value` dans la classe pour accéder à la variable privée `__private_value`.

Les variables privées sont utiles pour encapsuler des données et s'assurer qu'elles ne soient pas modifiées accidentellement par du code externe. Elles aident à maintenir l'intégrité de votre classe et de ses données.

## Variables globales Python

En Python, les variables globales sont des variables qui peuvent être accédées de n'importe quelle partie du programme, que ce soit à l'intérieur d'une fonction, d'une classe, ou de tout autre portée. Les variables globales sont définies en dehors de toute fonction ou classe, ce qui les rend accessibles partout.

### Définir des Variables Globales

Pour définir une variable globale en Python, vous la déclarez simplement en dehors de toute fonction ou classe. Cela permet à la variable d'être accédée et modifiée de n'importe où dans le code.

```python
global_var = 10
```

Dans cet exemple, nous définissons une variable globale `global_var` avec la valeur `10`. Cette variable peut être accédée et modifiée de n'importe où dans le programme.

### Utilisation des Variables Globales

Les variables globales peuvent être utilisées dans les fonctions, les classes ou tout autre portée sans nécessité de déclarations spéciales. Vous pouvez accéder et modifier directement les variables globales depuis ces portées.

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

Dans cet exemple, la variable globale `global_var` est accédée et assignée à une variable d'instance au sein de la classe `MyClass`.

### Modifier les Variables Globales

Modifier la valeur d'une variable globale est simple. Vous pouvez accéder à sa valeur et la mettre à jour depuis n'importe quelle partie du programme.

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

Dans cet exemple, nous créons une fonction `modify_global_variable` qui utilise le mot-clé `global` pour modifier la valeur de la variable globale `global_var`. Ce changement se reflète lorsque l'on accède à la variable à l'extérieur de la fonction.

Les variables globales Python sont utiles pour partager des données qui doivent être accessibles dans différentes parties de votre programme. Cependant, il est essentiel de les utiliser avec discernement, car l'utilisation excessive de variables globales peut rendre le code plus difficile à maintenir et à comprendre.

## Vérification de l'existence d'un attribut dans une classe

En Python, vous pouvez vérifier si une classe possède un attribut spécifique en utilisant la fonction intégrée `hasattr()`. Cette fonction vous permet de déterminer si une classe a un attribut particulier, ce qui en fait un outil précieux pour la vérification dynamique d'attributs.

### Utiliser `hasattr()`

Pour utiliser `hasattr()`, fournissez l'objet (dans ce cas, la classe ou une instance de la classe) et le nom de l'attribut comme arguments. La fonction retourne une valeur booléenne, indiquant si l'attribut existe dans la classe.

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

Dans cet exemple, nous définissons une classe `MyClass` avec un attribut `var`. En utilisant `hasattr()`, nous vérifions si l'instance `obj` possède l'attribut `var`.

### Gestion de l'existence des attributs

`hasattr()` vous aide à écrire du code plus robuste en vous permettant de vérifier l'existence des attributs avant d'y accéder ou de les modifier. Cela peut prévenir des erreurs inattendues dans votre programme.

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

Dans cet exemple approfondi, si `hasattr()` confirme que l'attribut `var` existe, nous utilisons `getattr()` pour accéder en toute sécurité à la valeur de l'attribut.

Utiliser `hasattr()` peut améliorer la fiabilité de votre code et améliorer la gestion des erreurs lors du travail avec des attributs dynamiques dans les classes Python. C'est une technique utile pour la validation d'attributs.

## Impression et Récupération des Attributs de Classe en Python

En Python, vous pouvez vouloir lister et accéder à tous les attributs d'une classe. Il n'y a pas de méthode intégrée pour imprimer tous les attributs, mais vous pouvez utiliser une boucle et la fonction dir() pour y parvenir. Explorons comment imprimer et récupérer les attributs de classe.

### Utiliser `dir()`

La fonction `dir()` en Python renvoie une liste de tous les attributs d'un objet. Bien que cela inclue les attributs et méthodes internes, vous pouvez les filtrer pour obtenir une liste des attributs de classe.

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

Dans cet exemple, nous utilisons `dir(MyClass)` pour obtenir une liste de tous les attributs. Nous filtrons ensuite les attributs internes et imprimons les noms et valeurs des attributs de classe.

Cette technique vous permet d'obtenir un aperçu des attributs au sein d'une classe.

### Utilisation de `vars()`

Alors que `vars()` est plus communément utilisé pour accéder aux variables d'instance, il peut également être appliqué aux classes. Il retourne l'attribut `__dict__` d'un objet, qui contient les attributs de classe.

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

Dans cet exemple, nous utilisons `vars(MyClass)` pour récupérer les attributs de la classe et imprimer leurs noms et valeurs.

Les méthodes `dir()` et `vars()` fournissent des moyens d'accéder et d'afficher les attributs des classes, vous permettant de mieux comprendre et travailler avec vos classes.

## Variables Privées de Classe

En Python, les variables privées de classe sont des variables qui sont destinées à être utilisées uniquement à l'intérieur de la classe et ne devraient pas être accédées ou modifiées depuis l'extérieur de la classe. Ces variables sont indiquées par un double underscore `__` en préfixe. Explorons comment créer et travailler avec des variables privées de classe.

### Créer des Variables Privées de Classe

Pour créer une variable privée de classe en Python, ajoutez un double underscore `__` avant le nom de la variable à l'intérieur de la classe. Cette convention signifie que la variable ne devrait pas être accédée directement depuis l'extérieur de la classe.

```python
class MyClass:
    __private_var = 10
```

Dans cet exemple, nous créons une variable privée de classe `__private_var`.

### Accéder aux Variables Privées de Classe

Tenter d'accéder à une variable privée de classe depuis l'extérieur de la classe entraînera une AttributeError. Les variables privées sont destinées à être utilisées uniquement au sein de la classe pour encapsuler des données.

```python3
class MyClass:
    __private_var = 10

    def get_private_var(self):
        return self.__private_var

obj = MyClass()

# Accessing the private variable using a class method
print(obj.get_private_var())  # Output: 10
```

Dans cet exemple, nous définissons une méthode `get_private_var` au sein de la classe pour accéder à la variable privée `__private_var`.

### Le Rôle des Variables Privées de Classe

Les variables privées jouent un rôle crucial dans l'encapsulation des données et le maintien de l'intégrité de l'état interne d'une classe. Elles empêchent le code externe de modifier ou d'accéder accidentellement à des données sensibles au sein de la classe.

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

Dans cet exemple, la classe `BankAccount` définit des variables privées `__account_number` et `__balance` pour encapsuler des données de compte sensibles. Ces variables privées sont accédées et modifiées à l'aide de méthodes de classe comme `withdraw`.

Les variables privées constituent un aspect fondamental de l'encapsulation des données et du contrôle d'accès dans la programmation orientée objet, garantissant que l'intégrité des données d'une classe est maintenue.

## Variables Globales de Classe en Python

En Python, les variables globales de classe sont des variables accessibles de n'importe quelle partie du programme. Elles sont définies en dehors de toute fonction ou classe, les rendant globalement disponibles. Explorons comment créer et travailler avec des variables globales de classe.

### Création de Variables Globales de Classe

Pour créer une variable globale de classe en Python, définissez la variable en dehors de toute fonction ou classe. Les variables globales sont disponibles pour toutes les parties de votre programme.

```python
global_var = 10
```

Dans cet exemple, nous créons une variable globale de classe `global_var`.

### Accéder aux Variables Globales de Classe

Les variables globales de classe peuvent être accédées et utilisées de n'importe quelle partie de votre programme, y compris à l'intérieur des classes et des fonctions.

```python3
global_var = 10

class MyClass:
    def __init__(self):
        self.instance_var = global_var

obj = MyClass()

# Accessing the class global variable from within a class
print(obj.instance_var)  # Output: 10
```

Dans cet exemple, nous définissons une variable globale de classe `global_var` et y accédons depuis la classe `MyClass`.

### Le rôle des variables globales de classe

Les variables globales de classe fournissent un moyen de partager des données à travers différentes parties de votre programme. Elles sont souvent utilisées pour stocker des informations pertinentes pour l'ensemble de l'application.

```python3
user_name = "John"

class User:
    def __init__(self, name):
        self.name = name

# Accessing the class global variable from within a class
new_user = User(user_name)
print(new_user.name)  # Output: John
```

Dans cet exemple, la variable globale de classe `user_name` stocke le nom d'un utilisateur et est accessible depuis la classe `User`.

Les variables globales de classe jouent un rôle significatif dans la mise à disposition des données à travers différentes parties de votre programme, vous permettant de partager des informations et de maintenir la cohérence dans l'ensemble de votre code.

## Attributs et Propriétés Publics, Protégés et Privés en Python

En Python, les attributs et propriétés peuvent avoir différents niveaux de visibilité et de contrôle d'accès basés sur des conventions de nommage. Ces niveaux comprennent public, protégé et privé.

### Attributs et Propriétés Publics

Les attributs et propriétés publics n'ont pas de restrictions de nom. Ils sont accessibles de partout dans votre code, tant à l'intérieur qu'à l'extérieur de la classe. Par défaut, si un attribut ou une propriété n'a pas de nom avec un préfixe double underscore, il est considéré comme public.

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

Dans les exemples ci-dessus, des attributs comme `name`, `radius` et `value` sont publics et peuvent être accédés de l'extérieur des classes.

### Attributs et Propriétés Protégés

En Python, les attributs et les propriétés peuvent être marqués comme protégés en préfixant leurs noms avec un seul trait de soulignement. Il s'agit d'une convention de nommage qui suggère que ces attributs ne devraient pas être accédés directement de l'extérieur de la classe, bien qu'ils puissent toujours l'être.

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

Dans la classe `Employee`, `_salary` est marqué comme un attribut protégé. Bien qu'il soit accessible, le simple underscore indique qu'il ne devrait pas être accédé directement.

### Attributs et Propriétés Privés

Les attributs et propriétés peuvent être rendus privés en Python en préfixant leurs noms avec un double underscore. Cette convention de nommage implique que ces attributs ne devraient pas être accédés directement de l'extérieur de la classe. Tenter de le faire résultera en une transformation de mangling de nom.

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

Dans la classe `BankAccount`, `__balance` est un attribut privé, et `__get_balance` est une méthode privée. Essayer d'y accéder depuis l'extérieur de la classe entraîne une AttributeError.
