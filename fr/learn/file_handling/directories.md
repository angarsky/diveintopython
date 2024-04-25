> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/directories

Les répertoires sont une partie cruciale de la gestion des fichiers et jouent un rôle crucial dans le développement de programmes complets en Python.

## Module OS

Le module [os](https://docs.python.org/3/library/os.html) en Python fournit un moyen d'utiliser des fonctionnalités dépendantes du système d'exploitation. Il aide à effectuer diverses opérations telles que la création de répertoires, la suppression de `files`, le changement du répertoire de travail actuel, etc.

Pour utiliser le module OS, nous devons d'abord l'`import`er en utilisant l'instruction `import os`. Voici deux exemples de comment utiliser le module OS :

### Exemple 1 : Créer un Nouveau Répertoire

Pour créer un répertoire à l'aide du module OS, nous pouvons utiliser la fonction `os.mkdir()`. Voici un exemple :

```python
import os

# specify the path where you want to create the directory
path = "/home/user/newdir"

# create the directory
try:
    os.mkdir(path)
    print("Directory created successfully!")
except OSError as error:
    print(error)
```

### Exemple 2 : Obtenir le Répertoire de Travail Actuel

Pour obtenir le répertoire de travail actuel en utilisant le module `os` en Python, nous pouvons utiliser la fonction `os.getcwd()`. Voici un exemple :

```python
import os

# get the current working directory
cwd = os.getcwd()

# print the current working directory
print("Current working directory:", cwd)
```

En utilisant le module `os`, nous pouvons effectuer diverses opérations liées au système d'exploitation, y compris des opérations sur les fichiers, les opérations de `directory` et la gestion des processus.

## Comment obtenir la liste des fichiers dans un répertoire

Pour obtenir une liste des fichiers dans un répertoire, vous pouvez utiliser la fonction `os.listdir()`. Cette fonction retourne une liste de tous les fichiers et répertoires dans le répertoire spécifié.

```python
import os

# get list of files in the current directory
files = os.listdir()

# print the list of files
print(files)

### Output
# ['file1.txt', 'file2.jpg', 'directory1', 'directory2']
```

```python
import os

# get list of files in a directory
directory = "/path/to/directory"
files = os.listdir(directory)

# print the list of files
print(files)
### Output

# ['file1.pdf', 'file2.docx', 'file3.txt']
```

En résumé, en utilisant `os.listdir()`, vous pouvez facilement obtenir une liste des fichiers dans un répertoire. Cela peut être utile pour diverses tâches telles que la manipulation de fichiers, l'analyse de données, et plus encore.

## Comment obtenir le répertoire actuel

Pour obtenir le répertoire actuel, vous pouvez utiliser le module `os`. La méthode `os.getcwd()` renvoie le répertoire de travail actuel sous forme de chaîne de caractères.

```python
import os

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

Vous pouvez également utiliser le module [pathlib](https://docs.python.org/3/library/pathlib.html) pour obtenir le répertoire actuel :

```python
from pathlib import Path

### Get current directory

current_directory = Path.cwd()

### Print current directory

print(current_directory)
```

Pour changer le répertoire courant, vous pouvez utiliser la méthode `os.chdir()`:

```python
import os

### Change current directory

os.chdir('/path/to/new/directory')

### Get current directory

current_directory = os.getcwd()

### Print current directory

print(current_directory)
```

N'oubliez pas d'`import` le module requis pour changer de répertoires avant d'essayer de modifier le répertoire de travail actuel.

## Importer depuis un Autre Répertoire

Pour `importer` des modules depuis un autre répertoire, vous pouvez utiliser le code suivant :

```python
import sys
sys.path.insert(0, '../path/to/parent/directory')

from module_name import function_name
```

Dans l'exemple ci-dessus, nous insérons d'abord le `path` vers le répertoire parent dans le `path` système en utilisant `sys.path.insert`. Ensuite, nous pouvons `import` le module ou la fonction requis depuis le `directory` spécifié en utilisant le mot-clé `from`.

Une autre manière d'`import` des modules depuis un répertoire parent consiste à utiliser le fichier `__init__.py`. Ce fichier est un fichier spécial qui est exécuté lorsque le répertoire est importé comme un module. Dans ce fichier, vous pouvez ajouter le code suivant :

```python
import os
import sys
sys.path.append(os.path.dirname(os.path.abspath(__file__)) + "/../")

from module_name import function_name
```

Dans cette approche, nous commençons par `importer` le module `os` pour accéder aux informations du chemin de fichier et du répertoire. Ensuite, nous ajoutons le répertoire parent au `chemin` système en utilisant `sys.path.append`. Enfin, nous pouvons `importer` le module ou la fonction requis depuis le répertoire parent en utilisant le mot-clé `from`.

En utilisant ces méthodes, vous pouvez facilement `importer` des modules depuis un répertoire parent et rationaliser l'organisation de votre projet.

## Vérifier si un Répertoire Existe

Pour vérifier si un répertoire existe, vous pouvez utiliser la fonction `os.path.exists()`. Si le répertoire existe, elle retournera `True`, sinon elle retournera `False`.

```python
import os

if os.path.exists('/my/directory'):
    print('Directory exists')
else:
    print('Directory does not exist')
```

Si vous souhaitez créer le répertoire s'il n'existe pas, vous pouvez utiliser la fonction `os.makedirs()`. Cela créera le répertoire et tous les répertoires parents nécessaires.

```python
import os

if not os.path.exists('/my/directory'):
    os.makedirs('/my/directory')

### Now you can use the directory for your operations

```

Assurez-vous de remplacer `/my/directory` par le chemin réel du répertoire que vous souhaitez vérifier ou créer.

## Création de répertoire en Python

Pour créer un répertoire en Python, vous pouvez utiliser le module `os`. Vous pouvez également vérifier si le répertoire existe déjà ou non avant de le créer en utilisant la méthode `os.path.exists()`. La méthode `os.makedirs()` crée un répertoire et tous ses répertoires parents s'ils n'existent pas.

```python
import os

# Directory Path
path = "/example/directory"

# Check if directory already exists
if not os.path.exists(path):
    # Create directory
    os.makedirs(path)
    print("Directory created successfully")
else:
    print("Directory already exists")
```

La méthode `os.mkdir()` crée un répertoire seulement s'il n'existe pas déjà. Elle génère une `FileExistsError` si le répertoire existe déjà.

```python
import os

# Directory Path
path = "/example/directory"

try:
    # Create directory
    os.mkdir(path)
    print("Directory created successfully")
except FileExistsError:
    print("Directory already exists")
```

En utilisant l'une ou l'autre de ces méthodes, vous pouvez facilement créer un répertoire en Python et vérifier s'il existe déjà.

## Copier un fichier vers un autre répertoire

Copier un fichier d'un répertoire à un autre en Python est une tâche courante. Il existe plusieurs façons d'y parvenir, mais la méthode la plus simple est d'utiliser le module [shutil](https://docs.python.org/3/library/shutil.html), qui fournit une fonction `copy` pour copier des fichiers.

### Utiliser `shutil.copy()` pour copier un fichier d'un répertoire à un autre

La fonction `copy` dans le module `shutil` prend deux arguments - le fichier source et le répertoire de destination.

```python
import shutil

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

shutil.copy(src_file, dst_dir)
```

Cela copiera le fichier `filename.txt` du répertoire `/home/user` vers le répertoire `/home/user/new_directory`.

### Utiliser `os.rename()` pour déplacer un fichier d'un répertoire à un autre en Python

Une autre méthode pour copier un fichier d'un répertoire à un autre en Python est d'utiliser la fonction `os.rename()`.

```python
import os

src_file = '/home/user/filename.txt'
dst_dir = '/home/user/new_directory'

new_path = os.path.join(dst_dir, os.path.basename(src_file))
os.rename(src_file, new_path)
```

Ceci déplacera le fichier `filename.txt` du répertoire `/home/user` au répertoire `/home/user/new_directory`.

En conclusion, les deux méthodes ci-dessus peuvent être utilisées pour copier un fichier d'un répertoire à un autre en Python facilement.

## Comment Supprimer un Répertoire

Pour supprimer un répertoire en Python, nous pouvons utiliser le module `os` qui nous fournit les méthodes nécessaires pour supprimer les fichiers et les répertoires. Une manière de supprimer tous les fichiers dans un répertoire est de les parcourir tous et de les supprimer un par un. Une autre manière est de simplement supprimer le répertoire en utilisant la méthode `os.rmdir()`.

### Supprimer tous les Fichiers dans un Répertoire

Nous pouvons supprimer tous les fichiers à l'intérieur d'un répertoire en parcourant chaque fichier et en le supprimant à l'aide de la méthode `os.remove()`. Voici un exemple :

```python
import os

dir_name = '/path/to/directory'

# iterate over each file and delete it
for file_name in os.listdir(dir_name):
    file_path = os.path.join(dir_name, file_name)
    if os.path.isfile(file_path):
        os.remove(file_path)
```

### Supprimer le répertoire

Nous pouvons supprimer un répertoire en utilisant la méthode `os.rmdir()`. Cette méthode fonctionne uniquement si le répertoire est vide - s'il y a des fichiers dans le répertoire, la méthode générera une erreur. Pour supprimer un répertoire non vide, nous pouvons utiliser la méthode `rmtree()` du module `shutil`. Voici un exemple :

```python
import os
import shutil

dir_name = '/path/to/directory'

# remove the directory
try:
    os.rmdir(dir_name)
except OSError:
    shutil.rmtree(dir_name)
```

Avec les exemples de code ci-dessus, vous pouvez maintenant facilement supprimer tous les fichiers dans un répertoire et supprimer le répertoire lui-même en utilisant Python.

## Lire tous les fichiers dans un répertoire

Si vous souhaitez lire tous les `files` dans un répertoire en utilisant Python, vous pouvez utiliser le module `os`. Voici deux exemples de comment accomplir cette tâche :

```python
import os

### Method 1

files = os.listdir('/path/to/directory')
for filename in files:
    with open(filename, 'r') as f:
        ##### do something with the file
        pass

### Method 2

for dirpath, dirnames, filenames in os.walk('/path/to/directory'):
    for filename in filenames:
        with open(os.path.join(dirpath, filename), 'r') as f:
            ##### do something with the file
            pass

```

Dans la Méthode 1, la fonction `os.listdir()` retourne une liste de tous les `filenames` dans le répertoire. Vous pouvez ensuite utiliser une boucle `for` pour itérer à travers la liste et ouvrir chaque fichier.

Dans la Méthode 2, la fonction `os.walk()` itère à travers l'arbre du répertoire, retournant un 3-tuple de `(dirpath, `dirnames,` filenames)` pour chaque répertoire qu'elle trouve. Vous pouvez alors utiliser des boucles `for` imbriquées pour itérer à travers tous les `filenames` et ouvrir chaque fichier.

Dans les deux cas, vous devrez peut-être ajuster le chemin `/path/to/directory` pour correspondre à l'emplacement réel du répertoire que vous souhaitez lire.

## Comment Importer depuis le Répertoire Parent

Pour `importer` un module depuis un répertoire parent en Python, vous devez ajouter le répertoire parent à la liste `sys.path` de votre système. Cela peut être fait en utilisant la fonction `sys.path.append()`.

1. Si votre répertoire de travail est un répertoire enfant du répertoire parent, vous pouvez ajouter le répertoire parent au chemin comme ceci :

```python
import sys
sys.path.append('..')

# from parent_module import parent_function
```

2. Si votre répertoire de travail n'est pas un sous-répertoire du répertoire parent, vous pouvez ajouter le chemin complet du répertoire parent au chemin comme ceci :

```python
import sys
sys.path.append('/path/to/parent_directory')

# from parent_module import parent_function
```

Assurez-vous de remplacer `parent_module` et `parent_function` par le nom de votre module et fonction parents.

En ajoutant le répertoire parent à la liste `sys.path` de votre système, vous pouvez `importer` des modules depuis le répertoire parent dans votre code Python.
