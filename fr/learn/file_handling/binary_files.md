> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/binary-files

Les fichiers binaires sont des fichiers informatiques qui contiennent des données dans un format qui peut être facilement lu et manipulé par les machines. [Les fichiers binaires](https://en.wikipedia.org/wiki/Binary_file) sont importants car ils permettent aux programmeurs de travailler avec des données de manière à la fois efficace et sécurisée. Cet article discutera des bases des fichiers binaires en Python, comment les lire et les écrire, et quelques cas d'utilisation courants où ils sont le plus bénéfiques.

## Comment lire un fichier binaire

En Python, nous pouvons utiliser la fonction `open()` pour ouvrir un fichier binaire et lire le contenu.

### Ouvrir un fichier binaire en mode lecture

```python
file = open("example.bin", "rb")

# Read the contents of the file and store it in a variable
binary_data = file.read()

# Close the file
file.close()

# Print the contents of the file
print(binary_data)
```

Dans le code ci-dessus :

- Nous ouvrons le fichier binaire `example.bin` en utilisant la fonction `open()`, avec le mode `rb` (lire en binaire).
- Nous lisons le contenu du fichier à l'aide de la méthode `.read()` et le stockons dans la variable `binary_data`.
- Nous fermons le fichier en utilisant la méthode `.close()`.
- Nous imprimons le contenu du fichier en utilisant la fonction `print()`.

### Ouvrir un fichier binaire en mode lecture en utilisant l'instruction `with`

```python
with open("example.bin", "rb") as file:
    binary_data = file.read()

# Print the contents of the file
print(binary_data)
```

Dans le code ci-dessus :

- Nous ouvrons le fichier binaire `example.bin` en utilisant la fonction `open()` et le mode `rb` (lire en binaire) en utilisant l'instruction `with`.
- Nous lisons le contenu du fichier en utilisant la méthode `.read()` et le stockons dans la variable `binary_data`.
- Nous imprimons le contenu du fichier en utilisant la fonction `print()`.

Utiliser l'instruction `with` pour ouvrir un fichier garantit que le fichier est automatiquement fermé après avoir lu son contenu.

## Comment écrire un fichier binaire

Pour écrire un fichier binaire, vous devez utiliser la fonction intégrée `open()` avec un paramètre de mode `wb`. Cela ouvrira le fichier en mode binaire, vous permettant d'écrire des données binaires dedans. Voici les étapes pour écrire un fichier binaire :

1. Ouvrez le fichier en mode binaire en utilisant la fonction `open()` avec un paramètre de mode `wb`.
2. Écrivez les données binaires dans le fichier en utilisant la méthode `write()` de l'objet fichier.
3. Fermez le fichier en utilisant la méthode `close()` de l'objet fichier.

### Ouvrir un fichier en mode binaire

```python
file = open('binaryfile.bin', 'wb')
try:
    ##### Write binary data to file

    file.write(b'\x00\x01\x02\x03\x04\x05')
finally:
    ### Close the file

    file.close()
```

En conclusion, écrire des fichiers binaires est un processus simple qui consiste à ouvrir le fichier en mode binaire et à écrire des données binaires dedans en utilisant la méthode `write()` de l'objet fichier.

## Liste des Modes de Fichier pour les Fichiers Binaires

Lorsque vous travaillez avec des fichiers binaires, vous devez les ouvrir dans le mode de fichier correct pour vous assurer que le fichier est lu et/ou écrit correctement. Il existe six modes de fichier pour les fichiers binaires :

1. **rb** : Mode lecture (binaire) - ouvre le fichier pour la lecture en format binaire.
2. **rb+** : Mode lecture et écriture (binaire) - ouvre le fichier pour la lecture et l'écriture en format binaire.
3. **wb** : Mode écriture (binaire) - ouvre le fichier pour l'écriture en format binaire. Si le fichier existe déjà, il sera tronqué.
4. **wb+** : Mode écriture et lecture (binaire) - ouvre le fichier pour la lecture et l'écriture en format binaire. Si le fichier existe déjà, il sera tronqué.
5. **ab** : Mode ajout (binaire) - ouvre le fichier pour l'écriture en format binaire. Les nouvelles données seront écrites à la fin du fichier.
6. **ab+** : Mode ajout et lecture (binaire) - ouvre le fichier pour la lecture et l'écriture en format binaire. Les nouvelles données seront écrites à la fin du fichier.

```python
with open("file.bin", "rb") as f:
    data = f.read()
    print(data)
```

Ce code ouvre un fichier binaire nommé `file.bin` en mode lecture à l'aide de l'instruction `with`. Le mode `rb` garantit que le fichier est lu au format binaire. La méthode `read()` est utilisée pour lire l'intégralité du fichier et le contenu est ensuite affiché sur la console.

```python
with open("file.bin", "wb") as f:
    data = b"\x48\x65\x6c\x6c\x6f" # Hello in binary
    f.write(data)
```

Ce code crée un fichier binaire nommé `file.bin` en mode écriture en utilisant l'instruction `with`. Le mode `wb` garantit que le fichier est écrit en format binaire. Le préfixe `b` avant la chaîne de caractères littérale indique que la chaîne est en format binaire. La méthode `write()` est utilisée pour écrire des données binaires dans le fichier. Ce code écrit les données binaires pour la chaîne `Hello` dans le fichier.
