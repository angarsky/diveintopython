> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/string/replacement

Assez souvent, nous devons remplacer une ou plusieurs occurrences d'une sous-chaîne ou caractère particulier dans une chaîne par une sous-chaîne ou caractère différent. C'est une opération couramment utilisée en programmation informatique et traitement de texte, car elle permet la manipulation des données textuelles de manière flexible et efficace. Voici quelques méthodes qui peuvent aider à cela.

## Substitution de Chaîne

Dans la plupart des langages de programmation, la substitution de chaîne est généralement effectuée en utilisant une combinaison de fonctions de manipulation de chaîne et d'expressions régulières. Par exemple, en Python, la méthode `replace()` peut être utilisée pour remplacer toutes les occurrences d'une sous-chaîne particulière dans une chaîne :

```python
string.replace(old, new[, count])
```

Ici, `string` est la chaîne d'origine, `old` est la sous-chaîne qui doit être remplacée, `new` est la nouvelle sous-chaîne qui remplacera l'ancienne sous-chaîne, et `count` (facultatif) est le nombre de fois que le remplacement devrait être effectué.

La méthode `replace()` retourne une nouvelle chaîne avec les remplacements spécifiés effectués.

Par exemple, considérez le fragment de code suivant :

```python3
string = "Hello World"
new_string = string.replace("Hello", "Hi")
print(new_string) # Output: Hi World
```

Dans cet exemple, la méthode `replace()` est utilisée pour remplacer la sous-chaîne `"Hello"` par `"Hi"` dans la variable `string`. La chaîne de caractères résultante est ensuite affichée en utilisant la fonction `print()`.

Vous pouvez également utiliser la méthode `replace()` pour remplacer un seul caractère dans une chaîne de caractères.

Notez que la variable de chaîne originale n'est pas modifiée par la méthode `replace()`; à la place, une nouvelle chaîne est créée avec les remplacements spécifiés effectués.

## La méthode `strip()`

Il s'agit d'une méthode de chaîne intégrée qui retourne une copie de la chaîne avec les caractères de début et de fin supprimés. La méthode `strip()` peut être utilisée pour supprimer des caractères d'espacement tels que les espaces, les tabulations et les nouvelles lignes. Dans certains autres langages, connue sous le nom de méthode `trim()`.

Voici un exemple de suppression d'espaces :

```python3
string = "  hello world  "
new_string = string.strip()
print(new_string) # Output: "hello world"
```

Comme vous pouvez le voir, la méthode `strip()` a supprimé les espaces initiaux et finaux de la chaîne de caractères originale. Si vous souhaitez supprimer uniquement les espaces initiaux ou finaux, vous pouvez utiliser les méthodes `lstrip()` ou `rstrip()`, respectivement.

Par exemple :

```python3
string = "  hello world  "
new_string = string.lstrip()
print(new_string) # Output: "hello world  "
```

Dans ce cas, seuls les espaces de début ont été supprimés, et les espaces de fin sont restés. De manière similaire, si vous utilisez `rstrip()` au lieu de `lstrip()`, seuls les espaces de fin seraient supprimés.

## Supprimer les caractères de nouvelle ligne

Vous pouvez supprimer les caractères de nouvelle ligne d'une chaîne en utilisant la méthode `replace()`. Voici un exemple :

```python3
string_with_newline = "This is a string\nwith a newline character."
string_without_newline = string_with_newline.replace("\n", "")
print(string_without_newline) # Output: This is a stringwith a newline character.
```

Dans le code ci-dessus, nous définissons d'abord une chaîne appelée `string_with_newline` qui contient un caractère de nouvelle ligne (`\n`). Nous utilisons ensuite la méthode `replace()` pour remplacer toutes les occurrences du caractère de nouvelle ligne par une chaîne vide (`""`). La chaîne résultante, `string_without_newline`, ne contient aucun caractère de nouvelle ligne. Nous imprimons ensuite la chaîne résultante en utilisant la fonction `print()`.
