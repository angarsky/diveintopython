> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/functions/global-variables

En Python, les variables sont utilisées pour stocker des valeurs qui peuvent être accédées et manipulées au sein d'un programme. Cependant, la portée d'une variable peut différer selon qu'il s'agit d'une variable globale ou d'une variable locale. Les variables globales en Python peuvent être accédées depuis n'importe quelle partie du programme, tandis que les variables locales sont limitées à la fonction ou au bloc dans lequel elles sont définies. Comprendre les différences entre les portées des variables est important pour développer un code Python efficace et efficace.

## Portée des Variables Globales en Python

**Les variables globales** en Python sont les variables qui sont définies à l'extérieur de toute fonction dans un programme. Elles peuvent être accédées et modifiées par n'importe quelle fonction ou module du programme.

La portée d'une variable en Python définit son accessibilité. Il y a deux types de portées en Python : la portée **Globale** et la portée **Locale**. Une portée globale signifie qu'une variable est accessible dans tout le programme, tandis qu'une portée locale signifie qu'une variable est accessible uniquement au sein de la fonction où elle est définie.

### Exemple 1 : Comment Définir une Variable Globale en Python

```python
# Define a global variable
global_var = 10
```

En Python, les variables globales peuvent être accédées et modifiées depuis n'importe quelle fonction ou module du programme. Cependant, attribuer une valeur à une variable globale à l'intérieur d'une fonction crée une nouvelle variable locale au sein de cette fonction.

Voici quelques exemples de comment fonctionne la portée des variables globales en Python :

### Exemple 2 : Accéder à une Variable Globale à l'Intérieur d'une Fonction

```python3
x = 5    #global variable
def func():
  print(x)   #accessing a global variable inside a function

func()   #calling the function
# Output: 5
```

Dans cet exemple, la fonction `func` accède à la variable globale `x` qui est définie en dehors de toute fonction.

### Exemple 3 : Accès à la Variable Globale en dehors de la Fonction

```python3
x = 5   #global variable
def func():
  x = 10   #creating a new local variable
  print(x)   #accessing the local variable inside the function

func()
print(x)    #accessing the global variable outside the function
# Output: 10 5
```

Dans cet exemple, la fonction `func` crée une nouvelle variable locale `x` en lui attribuant une valeur de `10`. Donc, l'instruction `print` à l'intérieur de la fonction se réfère à la variable locale et non à la variable globale. Cependant, lorsque l'instruction `print` est appelée à l'extérieur de la fonction, elle se réfère à la variable globale `x`.

## Comment les variables globales fonctionnent en Python

**Les variables globales** sont des variables qui peuvent être accédées et modifiées à travers le code, peu importe où elles sont déclarées. Les **portées de variable** en Python déterminent l'accessibilité des variables dans différentes parties du code. Python prend en charge trois portées de variables - **locale, globale, et nonlocale**. **Les variables locales** sont des variables qui sont déclarées et utilisées dans une fonction particulière ou un bloc de code, et leur portée est limitée à cette fonction particulière ou bloc de code.

### Comment changer une variable globale dans une fonction

```python3
# declaring and initializing a global variable
global_var = "I am a global variable."

def func():
    # accessing and modifying the global variable within the function
    global global_var
    global_var = "I have been modified."

# calling the function to modify the global variable
func()

# printing the modified value of the global variable
print(global_var)    # Output: "I have been modified."
```

En Python, pour définir une variable globale, vous devez déclarer et initialiser une variable en dehors de toute fonction ou bloc. Dans le code ci-dessus, une **variable globale** nommée `global_var` est déclarée et initialisée en dehors de la fonction. La fonction `func()` accède et modifie la valeur de `global_var` en utilisant le mot-clé `global`. Enfin, la valeur modifiée de la variable globale est imprimée.

### La tentative d'accéder à une variable locale au-delà de sa fonction

```python3
def func():
    # declaring and initializing a local variable
    local_var = "I am a local variable."
    print(local_var)
    
# calling the function that uses the local variable
func()

# trying to access the local variable outside the function
# Output: NameError: name 'local_var' is not defined
# print(local_var)    
```

Dans le code ci-dessus, `local_var` est une **variable locale** déclarée et initialisée au sein de la fonction `func()`. La portée de cette variable est limitée à la fonction uniquement. Lorsque la fonction est appelée, la valeur de `local_var` est imprimée. Cependant, lorsque nous essayons d'accéder à cette variable en dehors de la fonction, nous obtenons une `NameError` car la variable n'est pas définie dans cette portée.

## Le Rôle des Variables Non-Locales en Python

Les variables globales sont des variables qui peuvent être accédées et modifiées de n'importe où dans le programme, tandis que les variables locales ne sont accessibles que dans une fonction spécifique ou un bloc de code. La portée d'une variable fait référence à la zone dans laquelle elle peut être accédée.

Les variables non-locales en Python sont des variables qui sont définies dans une fonction externe mais qui peuvent être accédées dans une fonction interne. Le mot-clé `nonlocal` est utilisé pour déclarer une variable non-locale en Python.

```python3
count = 0  # global variable

def increment():
    global count
    count += 1
    print(count)

increment()  # output: 1
increment()  # output: 2
```

Dans cet exemple, `count` est une variable globale qui peut être accédée et modifiée de n'importe où dans le programme. Le mot-clé `global` est utilisé à l'intérieur de la fonction `increment` pour indiquer que nous modifions la variable globale `count`.

```python3
def outer():
    x = "local"  # local variable
    
    def inner():
        nonlocal x  # non-local variable
        x = "nonlocal"
        print("inner:", x)
        
    inner()
    print("outer:", x)

outer()  # output: inner: nonlocal, outer: nonlocal
```

Dans cet exemple, `x` est une variable locale dans la fonction `outer`. La fonction `inner` a accès à cette variable en utilisant le mot clé `nonlocal`, nous pouvons donc modifier sa valeur. Lorsque nous appelons la fonction `outer`, la fonction `inner` est exécutée et la valeur de `x` est modifiée en `nonlocal`. Ce changement se reflète dans la fonction `outer` lorsque nous `print` la valeur de `x` après que la fonction `inner` soit exécutée.

## Le mot clé `global` - Variables Globales de Python dans une Fonction

Examinons comment utiliser les variables globales dans les fonctions en Python. Les variables globales sont des variables qui peuvent être accédées et modifiées de n'importe quelle partie du programme. En Python, la portée d'une variable détermine où elle peut être accédée. La meilleure pratique pour utiliser des variables globales en Python consiste à minimiser leur utilisation, car trop de variables globales peuvent rendre le programme difficile à comprendre, à déboguer et à maintenir.

Un exemple de variable globale est la fonction de puissance en Python. Nous pouvons utiliser une boucle pour calculer la puissance d'un nombre. Voici un exemple :

```python3
power = 1

def calculate_power(num, exponent):
    global power
    power = 1
    for i in range(exponent):
        power *= num
    return power

print("Power of 2^3 is", calculate_power(2, 3))
print("Power of 5^4 is", calculate_power(5, 4))
```

Dans cet exemple, nous déclarons une variable globale `power` en dehors de la fonction `calculate_power()`. À l'intérieur de la fonction, nous utilisons cette variable globale pour stocker la puissance du nombre. Nous réinitialisons la valeur de la variable `power` à 1 pour chaque nouveau calcul.

### Programme pour compter le nombre de fois qu'une fonction est appelée

```python3
count = 0

def my_function():
    global count
    count += 1
    print("This function has been called", count, "times.")

my_function()
my_function()
my_function()
```

Dans cet exemple, nous déclarons la variable globale `count` en dehors de la fonction `my_function()`. À l'intérieur de la fonction, nous incrémentons la valeur de la variable `count` chaque fois que la fonction est appelée. Nous imprimons ensuite la valeur de `count`.

Dans l'ensemble, il est généralement préférable d'éviter les variables globales au profit de variables locales ayant une portée plus limitée. Cependant, dans certains cas, les variables globales peuvent être nécessaires ou utiles, et nous pouvons les utiliser prudemment avec le mot-clé `global` pour y accéder à l'intérieur des fonctions.

## Conseils avancés sur les portées de variables et les conventions de nommage en Python

Les conseils avancés sur les portées de variables en Python incluent d'éviter autant que possible les variables globales pour prévenir les conflits de nommage et les comportements inattendus. Il est également recommandé d'utiliser des noms de variables descriptifs qui suivent les [conventions de nommage PEP 8](https://peps.python.org/pep-0008/#naming-conventions), comme utiliser des lettres minuscules et des underscores pour séparer les mots.

Les conventions de nommage des fonctions en Python suivent les mêmes [lignes directrices PEP 8](https://peps.python.org/pep-0008/#function-and-variable-names), en utilisant des lettres minuscules et des underscores pour séparer les mots. Les noms de fonctions doivent également être descriptifs et transmettre le but de la fonction.

```python3
# Local variable
def greet(name):
    message = "Hello, " + name + "!"
    return message
    
print(greet("Alice"))   # Output: Hello, Alice!
```

Dans cet exemple, nous déclarons une variable locale `message` à l'intérieur de la fonction `greet()`. Cette variable est uniquement accessible au sein de la fonction et ne peut pas être accédée de l'extérieur. La fonction prend un paramètre `name` et retourne un message de salutation incluant le nom.
