> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/classes/class-decorator

Les décorateurs de classes sont un puissant outil de programmation utilisé pour modifier le comportement des classes. Un tel décorateur est le décorateur de classe, qui peut être utilisé pour ajouter des fonctionnalités à une classe. Un autre type de décorateur est le décorateur de méthode de classe, qui peut être utilisé pour modifier les méthodes de classe. De plus, le décorateur de propriété de classe peut être utilisé pour créer des propriétés calculées pour les classes. Ces décorateurs peuvent modifier rapidement et facilement le comportement des classes, les rendant inestimables pour les développeurs.

## Introduction au Décorateur de Classe Python

Un décorateur de classe est un type de décorateur qui est utilisé pour modifier ou améliorer le comportement d'une classe. Il est utilisé pour ajouter ou supprimer des fonctionnalités d'une classe sans changer sa définition.

Quelques types courants de décorateurs de classe incluent :

- **Décorateur de classe** : Un décorateur de classe qui modifie le comportement d'une classe en ajoutant ou en supprimant des propriétés, des méthodes ou des attributs.

- **Décorateur de méthode de classe** : Un décorateur Python qui modifie une méthode de classe en changeant son comportement ou en ajoutant des fonctionnalités supplémentaires.

- **Décorateur de propriété de classe** : Un décorateur de classe qui modifie une propriété de classe en ajoutant ou en supprimant des attributs ou des méthodes.

Voici deux exemples d'utilisation de décorateurs de classe :

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

Dans le premier exemple, un décorateur de classe est utilisé pour ajouter une nouvelle méthode, `square()`, à l'objet `MyClass`. Dans le second exemple, un `class_method_decorator` est utilisé pour modifier le comportement de la méthode `class_method()` dans l'objet `MyClass`.  

## Comprendre le décorateur de méthode de classe  

Le décorateur de méthode de classe est utilisé pour définir une méthode qui est liée à la classe et non à l'instance de la classe. Il prend un paramètre `cls` au lieu de `self`. Ce décorateur est utilisé pour définir des méthodes qui sont liées à la classe et non à une instance de la classe.

```python
class MyClass:
    counter = 0

    @classmethod
    def increment_counter(cls):
        cls.counter += 1

MyClass.increment_counter()
print(MyClass.counter)  # Output: 1
```

Dans l'exemple ci-dessus, la méthode `increment_counter` est décorée avec `@classmethod` ce qui en fait une méthode de classe. Elle incrémente la variable de classe `counter` de 1.

## Explorer le décorateur de propriété de classe

En Python, un décorateur de classe est une fonction qui peut être utilisée pour modifier ou ajouter de nouvelles fonctionnalités à une classe. Il existe différents types de décorateurs de classe, y compris le décorateur de méthode de classe et le décorateur de propriété de classe.

Un décorateur de méthode de classe est une fonction qui modifie une méthode d'une classe et s'attend à ce que le premier argument soit l'objet de classe. Voici un exemple :

```python3
class MyClass:
    my_var = "hello"

    @classmethod
    def my_method(cls):
        print(cls.my_var)

MyClass.my_method() 

```

Un décorateur de propriété de classe est une fonction qui modifie une propriété de classe et retourne un nouvel objet propriété. Voici un exemple :

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

En résumé, le décorateur de classe, le décorateur de méthode de classe et le décorateur de propriété de classe sont des outils puissants qui peuvent être utilisés pour modifier ou étendre la fonctionnalité des classes.

## Avantages de l'utilisation du décorateur de classe

Un décorateur de classe est une fonctionnalité qui est simplement une fonction qui modifie une définition de classe, de sorte qu'elle est renvoyée en tant que classe modifiée. Les **décorateurs de classe** sont devenus populaires pour leur capacité à ajouter des fonctionnalités à une classe existante sans modifier directement la classe originale.

Les décorateurs Python sont utilisés pour étendre et modifier le comportement ou les propriétés d'une fonction, d'une méthode ou d'une classe. Voici quelques avantages de l'utilisation du décorateur de classe :

1. **Décorateur de méthode de classe :** Les décorateurs Python fournissent un moyen facile de modifier le comportement d'une méthode de classe d'une manière ou d'une autre. Les décorateurs de méthode de classe peuvent être utilisés pour vérifier les entrées, les sorties ou modifier le comportement avant les réponses de la méthode de classe.

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

2. **Décorateur de propriété de classe :** le décorateur de classe peut être utilisé pour définir les propriétés d'une classe de manière concise et facile à lire. Par exemple, ils peuvent être utilisés pour calculer des attributs qui ne sont pas disponibles lorsque la classe est définie pour la première fois.

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

## Meilleures pratiques pour utiliser le décorateur de méthode de classe

Le décorateur de classe est largement utilisé pour étendre le comportement d'une classe ou de sa méthode. Les décorateurs de méthode de classe Python sont utilisés pour modifier le comportement existant d'une méthode de classe en ajoutant des fonctionnalités supplémentaires. Le décorateur de propriété de classe Python vous permet de définir une propriété au niveau de la classe qui sera disponible pour toutes les instances de cette classe.

Voici quelques meilleures pratiques à garder à l'esprit lors de l'utilisation du décorateur de méthode de classe et du décorateur de propriété de classe :

1. Utilisez `@classmethod` pour définir un décorateur de méthode de classe.

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

2. Utilisez `@property` pour définir un décorateur de propriété de classe.

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

En conclusion, le décorateur de classe, le décorateur de méthode de classe et le décorateur de propriété de classe sont des outils puissants qui peuvent vous aider à modifier le comportement d'une classe ou de ses méthodes. Gardez ces meilleures pratiques à l'esprit pour écrire du code propre, lisible et maintenable.

## Utilisation du Décorateur de Propriété de Classe

L'une des applications les plus courantes du décorateur de propriété de classe dans le monde réel est le travail avec les requêtes de base de données.

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

Dans l'exemple ci-dessus, la `propriété email_id` expose uniquement l'adresse e-mail de l'utilisateur sans la partie `@domain.com`. Cela peut être utile lors du travail avec des bases de données, où il est souvent nécessaire de filtrer ou de regrouper les données sur la base d'un identifiant.

Un autre exemple courant de l'utilisation du décorateur de propriété de classe est pour des fins de validation.

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

Dans l'exemple ci-dessus, la propriété `age` est validée pour s'assurer qu'elle se trouve dans une plage valide.
