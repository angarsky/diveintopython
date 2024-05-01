> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/string/case-change

Il existe certaines méthodes en Python qui sont couramment utilisées pour normaliser les entrées de chaînes de caractères, pour convertir des chaînes en majuscules ou en minuscules, et pour mettre en capital la première lettre d'une phrase ou d'un mot. Ces méthodes peuvent être particulièrement utiles lorsqu'on traite des entrées utilisateur ou lorsqu'on travaille avec des données textuelles qui doivent être standardisées ou formatées de manière cohérente.

## Chaîne en minuscules

Les méthodes `lower()` et `upper()` sont utilisées pour convertir tous les caractères d'une chaîne en minuscules et en majuscules, respectivement.

La méthode `lower()` convertit tous les caractères majuscules dans la chaîne en leurs équivalents minuscules, tout en laissant inchangés les caractères minuscules existants. La méthode a la syntaxe suivante :

```python
string.lower()
```

Ici, `string` est la chaîne originale à convertir en minuscules. La méthode renvoie une nouvelle chaîne avec tous les caractères en majuscules convertis en minuscules.

Par exemple, considérez le morceau de code suivant :

```python3
string = "Hello World"
new_string = string.lower()
print(new_string) # Output: hello world
```

Dans cet exemple, la méthode `lower()` est utilisée pour convertir tous les caractères en majuscules de la variable de chaîne en minuscules. La chaîne en minuscules résultante est ensuite affichée à l'aide de la fonction `print()`.

## Chaîne en majuscules

De manière similaire, la méthode `upper()` convertit tous les caractères en minuscules de la chaîne en leurs équivalents majuscules, tout en laissant inchangés les caractères majuscules déjà existants. La méthode a la syntaxe suivante :

```python
string.upper()
```

Ici, `string` est la chaîne originale à convertir en majuscules. La méthode renvoie une nouvelle chaîne avec tous les caractères minuscules convertis en majuscules.

Par exemple, considérons le bout de code suivant :

```python3
string = "Hello World"
new_string = string.upper()
print(new_string) # Output: HELLO WORLD
```

Dans cet exemple, la méthode `upper()` est utilisée pour convertir tous les caractères en minuscules de la variable `string` en majuscules. La chaîne en majuscules résultante est alors affichée en utilisant la fonction print().

## Mettre une chaîne en majuscule en Python

La méthode `capitalize()` ne met en majuscule que la première lettre de la chaîne, et laisse le reste des lettres en minuscules. Voici un exemple :

```python3
string = "hello world"
capitalized_string = string.capitalize()
print(capitalized_string) # Output: Hello world
```
