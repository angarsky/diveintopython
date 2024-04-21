> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/zip

Les fichiers Zip sont un moyen populaire de compresser et regrouper plusieurs fichiers dans une seule archive. Ils sont couramment utilisés pour des tâches telles que la compression de fichiers, la sauvegarde de données et la distribution de fichiers. Zipper ou compresser des fichiers en Python est une manière utile d'économiser de l'espace sur votre disque dur et de faciliter le transfert de fichiers sur internet.

## Comment zipper un fichier en Python

Le module [zipfile](https://docs.python.org/3/library/zipfile.html) en Python fournit des fonctionnalités pour créer, lire, écrire, ajouter et extraire des fichiers ZIP.

### Zipper un fichier unique

Vous pouvez utiliser le module `zipfile` pour créer un fichier [zip](https://en.wikipedia.org/wiki/ZIP_(file_format)) contenant un seul fichier. Voici comment vous pouvez le faire :

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# name of the source file
file_name = 'file_to_compress.txt'

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add the source file to the zip file
zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

Dans le code ci-dessus, nous avons d'abord importé le module `zipfile`. Ensuite, nous avons défini le nom du fichier zip et le nom du fichier source. Nous avons créé un objet `ZipFile` et ajouté le fichier source à celui-ci en utilisant la méthode `write()`. Nous avons ensuite fermé le fichier zip en utilisant la méthode `close()`.

### Zipper plusieurs fichiers

Vous pouvez également créer un fichier zip contenant plusieurs fichiers. Voici un exemple :

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# names of the source files
file_names = ['file_to_compressed1.txt',
              'file_to_compressed2.txt',
              'file_to_compressed3.txt'
             ]

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add multiple files to the zip file
for file_name in file_names:
    zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

Dans l'exemple ci-dessus, nous avons défini les noms de plusieurs fichiers sources dans une liste. Nous avons ensuite ajouté chacun de ces fichiers au fichier zip en utilisant une boucle `for` et la méthode `write()`. Finalement, nous avons fermé le fichier zip en utilisant la méthode `close()`.

Pour compresser encore plus le fichier zip, vous pouvez définir l'argument `compress_type` sur `zipfile.ZIP_DEFLATED`. Cela applique la méthode de compression [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) aux fichiers en cours de zippage.

## Dézipper un fichier en Python

Il est simple d'extraire des fichiers zip en Python en utilisant le module `zipfile`. Voici deux façons de le faire :

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    zip_ref.extractall('destination_folder')
```

Dans cet exemple, nous importons d'abord le module `zipfile`. Nous créons ensuite une instance de la classe `ZipFile` pour le fichier zip que nous souhaitons extraire. L'argument `r` indique que nous voulons lire à partir du fichier zip, et `myzipfile.zip` est le nom du fichier que nous voulons extraire.

La méthode `extractall()` extrait tous les fichiers du fichier zip et les sauvegarde dans le `destination_folder` spécifié. Si `destination_folder` n'existe pas, il sera créé.

```python
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    for file in zip_ref.namelist():
        if file.endswith('.txt'):
            zip_ref.extract(file, 'destination_folder')
```

Dans cet exemple, nous importons à nouveau le module `zipfile` et créons une instance de la classe `ZipFile`. Nous parcourons ensuite tous les fichiers dans le fichier zip en utilisant `namelist()`. Si un fichier a une extension `.txt`, nous l'extrayons vers `destination_folder`.

En utilisant ces deux exemples de code, vous pouvez facilement extraire des fichiers de fichiers zip en Python. N'oubliez pas d'ajuster les chemins de fichiers et le nommage pour répondre à vos besoins spécifiques.
