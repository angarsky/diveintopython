> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/modules/packages

Avec un riche ensemble de bibliothèques et de cadres, Python permet aux développeurs d'écrire du code efficace et maintenable facilement. Dans ce package phare, nous explorerons certaines des fonctionnalités les plus importantes de Python et comment il peut être utilisé pour résoudre des problèmes concrets.

## Package Python vs Module

En Python, un [module](https://docs.python.org/3/glossary.html#term-module) est un fichier qui contient des définitions et des déclarations Python. Un package est une collection de modules. Un package peut avoir des sous-packages, qui à leur tour peuvent contenir des modules et des sous-packages.

Les modules peuvent être importés en utilisant l'instruction `import` :

```python
import module_name
```

Les paquets peuvent être importés de manière similaire en utilisant l'instruction `import`. Par exemple, pour importer un module `module_name` d'un paquet `package_name` :

```python
import package_name.module_name
```

Les modules et les paquets offrent un moyen efficace d'organiser le code et de réduire la duplication de code. Les modules permettent de modulariser le code et de le réutiliser dans plusieurs fichiers. Les paquets permettent de modulariser les modules et de les réutiliser dans plusieurs projets.

Python fournit un ensemble riche de modules intégrés et il y a des milliers de modules tiers disponibles sur internet. Utiliser ces modules peut aider à réduire le temps de développement et à améliorer la qualité du code.

En résumé, les modules et les paquets sont les blocs de construction fondamentaux de l'organisation et de la réutilisation du code Python, qui jouent un rôle significatif dans le développement rapide et efficace d'applications complexes.

```python3
import math

# use functions from math module
print(math.sqrt(25))
```

```python
import pandas as pd

# read csv file using pandas
df = pd.read_csv('data.csv')

# print first few rows of the dataframe
print(df.head())
```

## Comment installer un paquet

Pour installer une version spécifique d'un paquet Python [paquet](https://docs.python.org/3/glossary.html#term-package), vous pouvez utiliser le gestionnaire de paquets pip. Tout d'abord, ouvrez votre invite de commande ou terminal et exécutez la commande suivante :

```shell
pip install package_name==desired_version
```

Remplacez `package_name` par le nom du package que vous souhaitez installer et `desired_version` par le numéro de version spécifique que vous souhaitez installer.

Alternativement, si le package est disponible sur GitHub, vous pouvez l'installer directement en utilisant pip en spécifiant l'URL du dépository GitHub. Exécutez la commande suivante dans votre invite de commande ou terminal :

```shell
pip install git+https://github.com/username/repository.git
```

Remplacez `username/repository` par le nom d'utilisateur GitHub et le nom du dépôt du package que vous souhaitez installer.

### Installer une version spécifique du package `requests`

```shell
pip install requests==2.23.0
```

## Mettre à jour un paquet avec `pip`

Pip est un gestionnaire de paquets pour le langage Python qui aide à gérer l'installation et la mise à jour des paquets. Mettre à jour un paquet est essentiel pour obtenir la dernière version, qui inclut de nouvelles fonctionnalités, des corrections de bugs et des correctifs de sécurité. Voici deux façons de mettre à jour un paquet en Python en utilisant pip.

### Mettre à jour en utilisant `pip install`

Pour mettre à niveau un seul paquet en utilisant pip, ouvrez l'invite de commande ou le terminal et exécutez la commande suivante :

```python
pip install --upgrade package_name
```

### Mise à jour avec `pip freeze`

Pour mettre à niveau tous les paquets installés sur votre système, utilisez la commande suivante :

```python
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}
```

En exécutant cette commande dans votre invite de commande, elle va d'abord collecter tous les paquets installés sur votre système puis les mettre à jour vers la dernière version.
