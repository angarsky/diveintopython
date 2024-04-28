> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/regex/syntax

Les expressions régulières (regex) sont un outil puissant pour la correspondance de motifs et l'extraction de données dans le traitement de texte. Le module `re` de Python fournit un ensemble complet de fonctions pour travailler avec les expressions régulières. Cet article plonge dans la syntaxe des expressions régulières en Python, accompagné d'exemples pratiques pour vous aider à mieux saisir les concepts.

## Syntaxe des expressions régulières

Les expressions régulières utilisent une séquence de caractères pour définir un motif de recherche. Voici un aperçu rapide de certains éléments de syntaxe regex communs en Python :

- **`.`** (Point) : Correspond à n'importe quel caractère unique sauf le saut de ligne `'
'`.
- **`^`** (Caret) : Correspond au début de la chaîne.
- **`$`** (Dollar) : Correspond à la fin de la chaîne.
- **`*`** (Asterisque) : Correspond à 0 ou plus de répétitions de l'élément précédent.
- **`+`** (Plus) : Correspond à 1 ou plus de répétitions de l'élément précédent.
- **`?`** (Point d'interrogation) : Correspond à 0 ou 1 répétition de l'élément précédent.
- **`{m,n}`** (Accolades) : Correspond de m à n répétitions de l'élément précédent.
- **`[]`** (Crochets) : Correspond à n'importe quel caractère unique contenu dans les crochets.
- **`|`** (Pipe) : Agit comme un OU logique entre les expressions.
- **`()`** (Parenthèses) : Groupe les motifs ensemble.

Ci-dessous se trouve un tableau résumant ces éléments :

| Symbole | Description |
|---------|-------------|
| `.` | Correspond à tout caractère sauf le saut de ligne |
| `^` | Correspond au début de la chaîne |
| `$` | Correspond à la fin de la chaîne |
| `*` | Correspond à 0 ou plus de répétitions |
| `+` | Correspond à 1 ou plus de répétitions |
| `?` | Correspond à 0 ou 1 répétition |
| `{m,n}` | Correspond de m à n répétitions |
| `[]` | Correspond à tout caractère dans les crochets |
| `\|` | OU logique |
| `()` | Groupe les motifs |

## Exemples pratiques

Appliquons ces éléments dans des exemples pratiques en utilisant le module `re` de Python :

1. **Trouver toutes les instances de 'a' dans une chaîne :**

```python
import re
re.findall('a', 'Mary had a little lamb')
```

2. **Recherche de tout caractère entre 'a' et 'z' :**

```python
re.findall('[a-z]', 'Hello World!')
```

3. **Correspondance de tout chiffre dans une chaîne :**

```python
re.findall('\d', 'The room number is 42.')
```

4. **Trouver trois chiffres consécutifs :**

```python
re.findall('\d{3}', 'Call 911 for emergency')
```

5. **Recherche de mots commençant par 'S' :**

```python
re.findall(r'S\w+', 'The Sun is shining in the Sky.')
```

6. **Correspondance d'un mot au début d'une chaîne :**

```python
re.match('^Hello', 'Hello, world!')
```

7. **Trouver des séquences de caractères non-espaces :**

```python
re.findall('\S+', 'Hello, world! How are you?')
```

8. **Remplacer tous les chiffres par un dièse (#) :**

```python
re.sub('\d', '#', 'Password123')
```

9. **Division d'une chaîne par n'importe quel espace blanc :**

```python
re.split('\s+', 'Split this string by spaces')
```

10. **Vérifier si une chaîne se termine par 'world' :**

```python
bool(re.search('world$', 'Hello, world'))
```

Ces exemples mettent en lumière la polyvalence et la puissance des expressions régulières en Python pour diverses tâches de traitement de texte. En maîtrisant la syntaxe et en l'appliquant à travers des exemples pratiques, vous pouvez utiliser les expressions régulières pour rechercher, correspondre et manipuler efficacement des chaînes de caractères dans vos projets Python.
