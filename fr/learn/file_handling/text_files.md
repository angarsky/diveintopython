> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/text-files

Les fichiers texte sont utilisés pour stocker et lire des données, telles qu'un document texte simple ou une sortie de base de données. Python offre diverses manières de travailler avec des [Fichiers Texte](https://en.wikipedia.org/wiki/Text_file), incluant la lecture, l'écriture et l'ajout à des fichiers. Comprendre comment gérer les fichiers texte est important pour tout programmeur travaillant en Python, car cela peut les aider à gérer et manipuler efficacement les données au sein de leur programme.

## Comment lire un fichier texte en Python

Pour lire un fichier texte en Python, vous pouvez utiliser la fonction intégrée `open()` pour ouvrir le fichier en mode lecture. Voici 2 exemples de code :

### Ouvrir un fichier texte

```python
with open('filename.txt', 'r') as file:
    content = file.read()
```

Ici, la fonction `open()` ouvre le fichier `filename.txt` en mode lecture et retourne un objet fichier. L'instruction `with` est utilisée pour garantir que le fichier est bien fermé après son utilisation. La fonction `read()` lit le contenu du fichier et le stocke dans la variable `content`.

### Lire un fichier texte ligne par ligne

```python
with open('filename.txt', 'r') as file:
    for line in file:
        print(line)
```

Ici, la fonction `open()` ouvre le fichier `filename.txt` en mode lecture et retourne un objet fichier. L'instruction `with` est utilisée pour garantir que le fichier est correctement fermé après son utilisation. La boucle `for` lit le fichier ligne par ligne et l’imprime sur la console.

Dans les deux exemples, vous pouvez remplacer `filename.txt` par le chemin du fichier texte réel que vous souhaitez lire.

## Écrire dans un fichier texte en Python

Écrire dans un fichier texte en Python est une opération de fichier de base qui implique la création d'un nouveau fichier, l’écriture de données dedans, et éventuellement la fermeture du fichier. Voici deux exemples de comment écrire dans un fichier texte en Python :

```python
file = open('example.txt', 'w')
file.write('Hello, world!')
file.close()
```

Dans cet exemple, nous créons un nouveau fichier appelé example.txt en utilisant le mode 'w', qui signifie écriture. Ensuite, nous utilisons la méthode `write()` pour ajouter la chaîne `Hello, world!` au fichier. Enfin, nous fermons le fichier en utilisant la méthode `close()`.

```python
file = open('example.txt', 'w')
lines = ['Line 1\n', 'Line 2\n', 'Line 3\n']
file.writelines(lines)
file.close()
```

Ici, nous créons un nouveau fichier appelé example.txt et l'assignons à la variable `file` avec le mode `w`. Ensuite, nous définissons trois lignes de texte comme une liste de chaînes et l'assignons à la variable `lines`. Nous utilisons la méthode `writelines()` pour écrire toutes les lignes dans le fichier texte. Finalement, nous fermons le fichier en utilisant la méthode `close()`.

### Comment obtenir la sortie Python dans un fichier texte

Si vous souhaitez sauvegarder la sortie de votre code Python dans un fichier texte, vous pouvez utiliser la fonction `open()` en Python.

```python
output = "Hello, world!"
with open("output.txt", "w") as file:
    file.write(output)
```

Dans cet exemple, nous avons une chaîne `output` qui contient le texte que nous voulons sauvegarder dans le fichier. Nous ouvrons un fichier appelé `output.txt` en mode écriture en utilisant la fonction `open()`. Ensuite, nous utilisons la méthode `write()` de l'objet fichier pour sauvegarder le contenu de `output` dans le fichier.

Dans les deux cas, vous pouvez maintenant ouvrir le fichier et voir le texte qui a été écrit. Bien que les exemples soient simples, vous pouvez les modifier pour les adapter à des scénarios plus complexes.

## Comment Convertir des Fichiers Numpy en Fichiers Texte

Lorsque vous travaillez avec des données numériques, `numpy` est l'une des bibliothèques les plus populaires pour manipuler les tableaux en Python. Parfois, vous pourriez avoir besoin de convertir un fichier `numpy` en fichier texte pour le partage et la collaboration. Voici deux façons de convertir un fichier `numpy` en un fichier texte en Python :

La fonction `savetxt()` de la bibliothèque `Numpy` peut être utilisée pour sauvegarder les données d'un tableau dans un fichier texte. Voici comment faire :

```python
### Method 1
import numpy as np

data = np.load('file.npy') # load the Numpy file
np.savetxt('file.txt', data) # save the data from the Numpy file to a text file
```

Vous pouvez également utiliser la méthode `tofile()` de l'objet tableau pour enregistrer les données dans un fichier texte.

```python
### Method 2
import numpy as np

data = np.load('file.npy') # load the Numpy file
data.tofile('file.txt', sep=',', format='%10.5f') # save the data to a text file
```

Dans l'exemple ci-dessus, le paramètre `sep` spécifie le séparateur entre les valeurs de données (une virgule dans ce cas) et le paramètre `format` spécifie le format des valeurs de sortie.
