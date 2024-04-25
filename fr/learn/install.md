> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/install

Si vous êtes nouveau dans la programmation ou que vous cherchez à plonger dans le monde de Python, vous aurez besoin d'installer Python sur votre ordinateur pour commencer.

## Comment installer Python ?

Pour installer Python sur votre ordinateur, suivez ces étapes :

1. Visitez le site officiel de Python : https://www.python.org/
2. Naviguez jusqu'à la section `Downloads`.
3. Choisissez la version de Python que vous souhaitez installer.
4. Sélectionnez l'installateur approprié pour votre système d'exploitation. Python est disponible pour [Windows](/fr/learn/install/windows.md), [macOS](/fr/learn/install/mac.md), et [Linux](/fr/learn/install/linux.md).
* Pour Windows : Téléchargez l'installateur exécutable (fichier `.exe`).
* Pour macOS : Téléchargez l'installateur macOS (fichier `.pkg`).
* Pour Linux : La plupart des distributions Linux viennent avec Python pré-installé. Cependant, si vous avez besoin d'une version spécifique ou voulez installer Python à partir de zéro, vous pouvez télécharger le code source et suivre les instructions fournies.
5. Une fois l'installateur téléchargé, exécutez le fichier exécutable.
6. Sur Windows, vous pourriez avoir besoin de cocher l'option "Ajouter Python à PATH" durant l'installation.
7. Suivez les instructions dans l'installateur pour compléter le processus d'installation. Vous pouvez généralement accepter les paramètres par défaut.
8. Après que l'installation soit complète, ouvrez l'invite de commande (sur Windows) ou le terminal (sur macOS et Linux) et tapez `python --version` pour vérifier que Python a été correctement installé. Vous devriez voir le numéro de version affiché.

C'est tout ! Vous avez avec succès installé Python sur votre ordinateur. Vous pouvez maintenant commencer à écrire et exécuter des programmes Python.

## Comment Exécuter un Script Python depuis une Ligne de Commande

Pour exécuter un script Python depuis la ligne de commande, suivez ces étapes :

1. Ouvrez l'invite de commande (Windows) ou le terminal (macOS/Linux).
2. Naviguez jusqu'au répertoire où votre script Python est situé. Vous pouvez utiliser la commande `cd` suivie du chemin du répertoire pour changer vers le répertoire désiré. Par exemple, si votre script est situé dans le dossier `Documents`, vous pouvez utiliser la commande suivante :

```shell 
cd Documents
```

Une fois que vous êtes dans le répertoire correct, vous pouvez exécuter le script Python en tapant `python` suivi du nom du fichier de script. Par exemple, si votre fichier de script s'appelle `script.py`, utilisez la commande suivante :

```shell
python script.py
```

Si vous avez plusieurs versions de Python installées sur votre système, vous pourriez avoir besoin de spécifier explicitement la version. Dans ce cas, utilisez la commande suivante :

```shell
python3 script.py
```

> Si vous utilisez Python 2.x, la commande serait simplement `python` sans le "3".

4. Appuyez sur la touche Entrée, et le script Python s'exécutera. Vous verrez le résultat ou les messages d'erreur s'afficher dans l'invite de commande ou le terminal.

C'est tout ! Vous avez réussi à exécuter un script Python depuis la ligne de commande. N'oubliez pas de naviguer jusqu'au bon répertoire où votre script est situé avant d'exécuter la commande `python`.
