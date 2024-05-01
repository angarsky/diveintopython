> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/string/read-from-file

Pour lire un fichier dans une chaîne de caractères en Python, vous pouvez utiliser la fonction intégrée `open()` pour ouvrir le fichier et lire son contenu en utilisant la méthode `read()`.

## Exemple de code pour lire un fichier texte

```python
with open('filename.txt', 'r') as file:
    data = file.read()
```

Dans cet exemple, remplacez `'filename.txt'` par le nom du fichier que vous souhaitez lire. L'argument `'r'` indique que le fichier doit être ouvert en mode lecture.

L'instruction `with` est utilisée pour garantir que le fichier soit automatiquement fermé lorsque le bloc à l'intérieur de l'instruction `with` est quitté. Cela aide à prévenir les fuites de ressources.

Le contenu du fichier est ensuite lu dans la variable `data` en utilisant la méthode `read()`.

Vous pouvez ensuite utiliser la variable `data` comme une chaîne dans votre code.
