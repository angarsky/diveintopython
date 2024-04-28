> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/print

L'impression se réfère au processus d'affichage de la sortie d'un programme sur la console ou le terminal. C'est une opération essentielle qui vous permet de communiquer avec l'utilisateur ou de déboguer votre code en affichant les valeurs des variables, les résultats de calculs ou d'autres informations.
Il existe également ce qu'on appelle le formatage, qui est souvent utilisé dans l'impression. Le formatage de chaîne (également connu sous le nom d'interpolation) est le processus d'insertion de variables ou de valeurs dans une chaîne.

## Impression

Pour imprimer une variable en Python, vous pouvez utiliser la fonction `print()`.

La fonction `print()` prend un ou plusieurs arguments séparés par des virgules et les affiche sur la console ou le terminal.

Voyons des exemples de comment imprimer une variable et une chaîne en Python :

```python
# Print a string
print("Hello, Python!")

# Print an integer
print(43)

# Print a floating-point number
print(3.14)
```

Python permet également d'imprimer plusieurs variables :

```python
# Print multiple items
print("The answer is:", 42)
```

Vous pouvez également utiliser diverses options avec la fonction `print()`, telles que spécifier le séparateur entre les éléments, terminer la sortie avec un caractère de nouvelle ligne et rediriger la sortie vers un fichier ou un autre flux.

## Mise en Forme

Il existe plusieurs façons de formater les chaînes de caractères en Python, examinons-les une par une avec des exemples.

- Utiliser les f-strings : Cette méthode implique l'utilisation de placeholders dans une chaîne, qui sont ensuite remplacés par des valeurs à l'intérieur des accolades `{}` précédées par la lettre `f`. Par exemple :

```python
# Print using formatted strings
name = "Tom"
age = 32
print(f"My name is {name} and I am {age} years old.")
```

Les `f-strings` (ou littéraux de chaîne formatée) sont une fonctionnalité introduite dans Python 3.6 qui offre un moyen pratique d'incorporer des expressions à l'intérieur de littéraux de chaîne, en utilisant une syntaxe qui commence par la lettre 'f'.

Avec les `f-strings`, vous pouvez incorporer des expressions à l'intérieur des littéraux de chaîne en les entourant d'accolades `{}`. Les expressions à l'intérieur des accolades sont évaluées à l'exécution, et leurs valeurs sont insérées dans la chaîne. Cela aide donc à imprimer plusieurs variables dans une seule chaîne.

- Utilisation de la méthode `format()` et des accolades : Vous pouvez utiliser `{}` à l'intérieur d'une chaîne pour indiquer où vous souhaitez insérer les valeurs des variables, puis utiliser la méthode `format()` pour substituer les valeurs réelles. Voici un exemple :

```python3
name = "John"
age = 30
location = "New York"

print("My name is {}, I'm {} years old, and I live in {}.".format(name, age, location))
```

Ce code produira : `My name is John, I'm 30 years old, and I live in New York.`

Dans cet exemple, la chaîne `"Mon nom est {}, j'ai {} ans, et je vis à {}."` contient trois accolades `{}` pour indiquer où les valeurs des variables doivent être insérées. La méthode `format()` est appelée sur la chaîne, et les variables `name`, `age`, et `location` sont passées en arguments à la méthode.

- En utilisant l'opérateur `%` : Cette méthode implique l'utilisation de placeholders dans une chaîne, qui sont ensuite remplacés par des valeurs en utilisant l'opérateur `%`. Par exemple :

```python3
name = "John"
age = 25
print("My name is %s and I'm %d years old." % (name, age)) # Output: My name is John and I'm 25 years old.
```

Ici, `%s` est un espace réservé pour une chaîne de caractères, et `%d` est un espace réservé pour un entier.

## Modèle de chaîne de caractères

Les modèles de chaîne de caractères offrent un moyen de créer des chaînes qui incluent des espaces réservés pour des valeurs qui seront remplies plus tard. Cela peut être utile lorsque vous souhaitez générer des chaînes dynamiques en fonction de certaines entrées.

Pour utiliser les modèles de chaîne de caractères en Python, vous pouvez utiliser la classe `string.Template`. Voici un exemple :

```python3
from string import Template

name = "Alice"
age = 30

# Create a string template with placeholders for the name and age
template_str = "My name is ${name} and I am ${age} years old."

# Create a template object from the template string
template = Template(template_str)

# Substitute the values for the placeholders
result = template.substitute(name=name, age=age)

print(result)  # Output: My name is Alice and I am 30 years old.
```

Dans l'exemple ci-dessus, nous créons d'abord un modèle de chaîne avec des emplacements réservés pour le nom et l'âge en utilisant la syntaxe `${}`. Nous créons ensuite un objet `Template` à partir de la chaîne de modèle et utilisons la méthode `substitute` pour remplacer les emplacements réservés par les valeurs réelles. Enfin, nous imprimons la chaîne résultante.

Notez que vous devez passer les valeurs pour les emplacements réservés en tant qu'arguments de mot-clé à la méthode `substitute`.
