> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling

Python dispose d'une variété de fonctions intégrées et de bibliothèques qui rendent le travail avec les fichiers très facile, et dans cet article, nous allons explorer les différentes techniques et les meilleures pratiques pour manipuler les fichiers en Python.

## Comment ouvrir des fichiers en Python

Avec Python, vous pouvez facilement lire et écrire des fichiers sur le système. Pour lire un fichier en Python, vous pouvez utiliser la fonction `open()`.

### Lire un Fichier

En Python, vous pouvez lire un fichier en utilisant la fonction `open()`. L'exemple de code suivant montre comment lire un fichier en Python :

```python
file = open('example.txt', 'r')
data = file.read()
print(data)
```

### Lire un fichier ligne par ligne

Parfois, vous pouvez vouloir lire un fichier ligne par ligne. Pour faire ça, vous pouvez utiliser une boucle `for` pour parcourir le fichier ligne par ligne. Le code suivant démontre comment lire un fichier ligne par ligne en Python :

```python
file = open('example.txt', 'r')
for line in file:
    print(line)
```

### Gestion de l'erreur `No such file or directory`

Il n'est pas rare de rencontrer une erreur `No such file or directory` lorsque vous travaillez avec des fichiers en Python. Pour gérer cette erreur, vous pouvez utiliser un bloc `try` et `except` pour attraper l'erreur et la gérer en conséquence. Le code suivant montre comment gérer une erreur `No such file or directory` en Python :

```python3
try:
    file = open('example.txt', 'r')
except FileNotFoundError:
    print("File not found!")
```

## Différents modes pour la manipulation de fichiers en Python

En Python, il existe plusieurs modes pour la manipulation de fichiers (modes d'ouverture de fichiers) incluant :

- **Mode lecture ('r')** : Ce mode est utilisé pour lire un fichier existant.

- **Mode écriture ('w')** : Ce mode est utilisé pour écrire dans un fichier. Il créera un nouveau fichier si le fichier n'existe pas, et écrasera le fichier s'il existe.

- **Mode ajout ('a')** : Ce mode est utilisé pour ajouter de nouvelles données à la fin d'un fichier existant (ajouter au fichier). Si le fichier n'existe pas, un nouveau fichier sera créé.

- **Mode binaire ('b')** : Ce mode est utilisé pour lire ou écrire des données binaires, comme des images ou des fichiers audio.

### Ouvrir un fichier en mode écriture

```python
file = open('example.txt', 'w')

# Write to the file
file.write('Hello, World!')

# Close the file
file.close()
```

Dans cet exemple, nous ouvrons d'abord un fichier nommé `example.txt` en mode écriture. Nous écrivons la chaîne `'Hello, World!'` dans le fichier puis nous le fermons.

### Ouvrir un fichier en mode lecture

```python
file = open('example.txt', 'r')

# Read the file contents
content = file.read()

# Print the contents
print(content)

# Close the file
file.close()
```

Dans cet exemple, nous ouvrons le même fichier, `example.txt`, mais cette fois en mode lecture. Nous lisons le contenu du fichier en utilisant la méthode `read()`, le sauvegardons dans une variable nommée `content`, puis imprimons le contenu sur la console. Finalement, nous `close()` le fichier.

## Opérations sur les fichiers

Python fournit des modules importants comme `os` et `shutil` pour effectuer des opérations sur les fichiers telles que supprimer, renommer, copier et déplacer des fichiers.

### Suppression de fichier

Vous pouvez utiliser la méthode `os.remove()` pour supprimer un fichier en Python. Le code suivant montre comment supprimer un fichier nommé `example.txt`.

```python
import os

os.remove("example.txt")
```

### Renommage de fichier

Vous pouvez utiliser la méthode `os.rename()` pour renommer un fichier en Python. Le fragment de code suivant montre comment renommer le fichier nommé `example.txt` en `new_example.txt`.

```python
import os

os.rename("example.txt", "new_example.txt")
```

### Copie de fichier

Vous pouvez utiliser la méthode `shutil.copy()` pour copier un fichier en Python. Le morceau de code suivant montre comment copier le fichier nommé `example.txt` dans un nouveau fichier nommé `new_example.txt`.

```python
import shutil

shutil.copy("example.txt", "new_example.txt")
```

### Déplacement de fichier

Vous pouvez utiliser la méthode `shutil.move()` pour déplacer un fichier en Python. Le morceau de code suivant montre comment déplacer le fichier nommé `example.txt` vers un nouvel emplacement nommé `new_folder`.

```python
import shutil

shutil.move("example.txt", "/path/to/new_folder/example.txt")
```

## Méthodes de fichier en Python

Lorsque vous travaillez avec des fichiers en Python, il existe plusieurs méthodes intégrées qui vous permettent de lire, écrire et manipuler le contenu des fichiers. Ces méthodes fournissent des options flexibles pour la manipulation de fichiers. Voici un guide de certaines méthodes de fichiers Python couramment utilisées :

### Comment lire un fichier

La méthode `read()` lit l'intégralité du contenu d'un fichier et le retourne sous forme de chaîne de caractères. D'autre part, la méthode `readline()` lit une seule ligne du fichier. Elle retourne la ligne sous forme de chaîne de caractères et déplace le pointeur de fichier à la ligne suivante.

```python
file = open("example.txt", "w")
content = file.read()
line = file.readline()
file.close()
```

### Comment écrire dans un fichier

La méthode `write()` est utilisée pour écrire des données dans un fichier. Elle prend une chaîne de caractères en argument et l'écrit dans le fichier. Alternativement, la méthode `writelines()` vous permet d'écrire plusieurs lignes dans un fichier en fournissant une liste de chaînes de caractères.

```python
file = open("example.txt", "w")
file.write("Hello, World!")
lines = ["Line 1", "Line 2", "Line 3"]
file.writelines(lines)
file.close()
```

### Comment fermer un fichier

La méthode `close()` est essentielle pour une bonne gestion des fichiers. Elle ferme le fichier et libère toutes les ressources système qui lui sont associées. Il est crucial de fermer le fichier après avoir effectué des opérations dessus pour éviter d'éventuels problèmes.

```python
file = open("example.txt", "w")
# Perform operations on the file
file.close()
```

Voici juste quelques exemples de méthodes de fichiers Python qui vous permettent de lire, écrire et manipuler des fichiers. Il est important de gérer les exceptions et de fermer correctement les fichiers pour assurer une gestion efficace des fichiers et une utilisation optimale des ressources. En utilisant efficacement ces méthodes de fichiers, vous pouvez gérer les opérations de fichiers facilement dans vos programmes Python.

## Opérations sur la Taille des Fichiers

Pour obtenir la taille d'un fichier en Python, vous pouvez utiliser diverses méthodes fournies par la bibliothèque standard de Python. Voici deux exemples qui montrent comment récupérer la taille d'un fichier en utilisant différentes approches.

### Comment obtenir la Taille d'un Fichier

Le module `os.path` fournit une méthode pratique, `getsize()`, pour récupérer la taille d'un fichier en octets.

```python3
import os

file_path = "example.txt"

try:
    file_size = os.path.getsize(file_path)
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

Dans cet exemple, nous utilisons la fonction `getsize()` du module `os.path` pour obtenir la taille du fichier spécifié par `file_path`. Si le fichier est trouvé, la taille est affichée en octets. Si le fichier n'est pas trouvé, une erreur `FileNotFoundError` est levée.

### Obtenir la taille d'un fichier avec la fonction `os.stat`

Une autre manière de récupérer la taille d'un fichier est d'utiliser la fonction `os.stat()`, qui renvoie un tuple nommé contenant les attributs du fichier, y compris la taille du fichier.

```python3
import os

file_path = "example.txt"

try:
    file_stats = os.stat(file_path)
    file_size = file_stats.st_size
    print("File size:", file_size, "bytes")
except FileNotFoundError:
    print("File not found.")
```

Dans cet exemple, nous appelons `os.stat()` pour obtenir les attributs du fichier, y compris la taille, qui est accessible en utilisant l'attribut `st_size` du tuple nommé retourné.

En utilisant ces approches, vous pouvez facilement récupérer la taille d'un fichier en Python. N'oubliez pas de gérer les exceptions, telles que `FileNotFoundError`, pour prendre en compte les cas où le fichier n'existe pas.

## Opérations avec une Extension de Fichier

Lorsque vous travaillez avec des fichiers en Python, vous aurez souvent besoin d'extraire l'extension du fichier pour déterminer le type de fichier avec lequel vous avez affaire. Python propose plusieurs manières d'obtenir l'extension d'un fichier à partir d'un nom de fichier ou d'un chemin.

```python
import os

filename = "example.txt"
extension = os.path.splitext(filename)[1]

print("File Extension:", extension)
```

Dans cet exemple, nous utilisons le module `os.path`, spécifiquement la fonction `splitext()`, pour séparer l'extension du fichier du nom de fichier donné. Elle renvoie un tuple contenant le nom de base et l'extension, et nous extrayons l'`extension` en utilisant l'indexation.

## Comment vérifier si un fichier existe avec Python

Pour vérifier si un fichier existe, vous pouvez utiliser le module intégré [os](https://docs.python.org/3/library/os.html) qui fournit des fonctionnalités pour interagir avec le système d'exploitation.

```python3
import os

# Define the path of the file to check
file_path = "/path/to/file"

# Check if the file exists
if os.path.exists(file_path):
    print("File exists!")
else:
    print("File does not exist.")
```

Dans cet exemple, nous `import`ons d'abord le module `os` puis nous définissons la variable `file_path` avec le chemin vers le fichier que nous souhaitons vérifier. La fonction `os.path.exists()` est utilisée pour vérifier si le fichier existe, et si c'est le cas, nous `print`ons un message indiquant que le fichier existe. Si le fichier n'existe pas, nous `print`ons un message indiquant qu'il n'existe pas.

```python
import os

# Define the path of the file to check
file_path = "/path/to/file"

try:
    # Check if the file exists
    with open(file_path) as f:
        print("File exists!")
except FileNotFoundError:
    print("File does not exist.")
```

Dans cet exemple, nous utilisons un bloc `try` et `except` pour attraper l'exception `FileNotFoundError` qui est levée si le fichier n'existe pas. Nous essayons d'ouvrir le fichier : `with open(file_path) as f:` et si le fichier existe, nous `print` un message indiquant que le fichier existe. Si le fichier n'existe pas, nous attrapons l'exception `FileNotFoundError` et `print` un message indiquant que le fichier n'existe pas.

En utilisant l'un de ces deux exemples de code, vous pouvez facilement vérifier si un fichier existe en Python et prendre l'action appropriée en fonction du résultat.

## Comment créer un fichier simple

Pour créer un fichier en Python, utilisez la fonction intégrée `open()`. Vous pouvez spécifier le nom du fichier et le mode dans lequel vous voulez ouvrir le fichier (lecture, écriture ou ajout).

Pour écrire dans un fichier en Python, vous pouvez utiliser la fonction `print()` avec le paramètre `file` :

```python
with open("example.txt", "w") as file:
  print("Hello, World!", file=file)
```

Ce code crée un nouveau fichier nommé `example.txt` en mode écriture, et écrit la chaîne `Hello, World!` dans le fichier.

Pour écrire dans un fichier en Python, vous pouvez utiliser la méthode `.write()` :

```python
with open("example.txt", "w") as file:
  file.write("Hello, World!")
```

Ce code crée un nouveau fichier nommé `example.txt` en mode écriture et écrit la chaîne de caractères `Hello, World!` dans le fichier en utilisant la méthode `write()`.

N'oubliez pas de fermer le fichier après avoir terminé l'écriture. L'utilisation de l'instruction `with` gère cela automatiquement.
