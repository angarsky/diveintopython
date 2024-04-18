> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/data-science/pandas

Pandas est une bibliothèque puissante et open-source en Python, spécialement conçue pour la manipulation et l'analyse des données. Elle fournit aux développeurs et aux data scientists des structures de données de haut niveau, flexibles et polyvalentes appelées DataFrame et Series, leur permettant de travailler efficacement avec des données structurées. Développé par Wes McKinney, pandas se positionne comme un outil fondamental dans le domaine de la science des données et de l'analyse, simplifiant grandement le processus de nettoyage, d'exploration et de visualisation des données. Que vous travailliez avec de grands ensembles de données provenant de diverses sources ou que vous effectuiez des transformations et analyses de données complexes, pandas offre une gamme complète de fonctionnalités qui répondent à un large éventail d'opérations sur les données, en faisant un outil indispensable dans l'écosystème de programmation Python pour l'analyse de données et les tâches connexes.

## Qu'est-ce que `pandas` en Python

Pandas inclut plusieurs caractéristiques clés qui le rendent incroyablement puissant pour l'analyse de données :

1. Objet Dataframe pour la manipulation de données avec indexation intégrée.
2. Outils pour la lecture et l'écriture de données entre des structures de données en mémoire et différents formats de fichiers.
3. Alignement des données et gestion intégrée des données manquantes.
4. Remodelage et pivotement des ensembles de données.
5. Découpage, indexation et sous-ensemble de grands ensembles de données basés sur les étiquettes.
6. Insertion et suppression de colonnes dans la structure de données.
7. Moteur de regroupement permettant les opérations de division-application-combinaison sur les ensembles de données.
8. Fusion et jointure de haute performance des ensembles de données.

### Méthodes `read_csv()` et `to_csv()`

L'une des raisons pour lesquelles la bibliothèque [pandas](https://pypi.org/project/pandas/) est très appréciée dans la communauté des sciences de données est sa capacité à lire et écrire facilement des données. Cela inclut le travail avec des fichiers CSV, un format de données courant dans l'analyse de données. Voici des exemples simples illustrant comment lire des données à partir d'un fichier CSV dans un DataFrame `pandas`, et comment écrire ces données de retour dans un fichier CSV.

> Note : Il est important d'`importer` la bibliothèque `pandas` avant d'exécuter ces extraits de code. Cela se fait généralement avec la ligne `import pandas as pd`.

### Exemple: Lire des données à partir d'un fichier CSV

```python
import pandas as pd

# Load data from a CSV file into a DataFrame
data = pd.read_csv('example.csv')
print(data.head())
```

### Exemple : Écrire des données dans un fichier CSV

```python
# Assuming 'data' is a DataFrame that you have previously created and manipulated
data.to_csv('modified_example.csv', index=False)
```

### Travailler avec les DataFrames

Au cœur de la bibliothèque `pandas` se trouve l'objet DataFrame, qui peut être considéré comme un tableau de données relationnelles, avec des lignes et des colonnes. Voici comment vous pouvez créer un DataFrame à partir de zéro et inspecter son contenu.

### Exemple : Créer DataFrame()`

```python3
import pandas as pd
# Creating a DataFrame from a dictionary
df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': ['a', 'b', 'c']
})
print(df)
```

Sortie :

```python

   A  B
0  1  a
1  2  b
2  3  c
```

## Comment installer `pandas` en Python

Pour commencer, vous devez installer Pandas. Cela peut se faire en utilisant soit pip soit conda, en fonction de votre environnement Python.

### En utilisant pip

Si vous utilisez pip, ouvrez votre terminal ou invite de commande et exécutez la commande suivante :

```python
pip install pandas
```

### Utilisant conda

Pour ceux qui préfèrent Conda, la commande diffère légèrement :

```python
conda install pandas
```

> Note : Assurez-vous que votre connexion Internet est active car ces commandes téléchargent `pandas` à partir des dépôts respectifs.

### Importer Pandas

Une fois installé, vous pouvez `import` `pandas` dans votre script Python ou session interactive pour confirmer qu'il est prêt à l'emploi. Voici les étapes de base :

1. Ouvrez votre IDE Python ou le terminal.
2. Tapez l'instruction `import` pour intégrer `pandas` dans votre espace de noms.
3. Facultativement, il est courant d'attribuer à `pandas` l'alias `pd` par commodité.

Voici comment vous procédez :

```python
import pandas as pd
```

Cette simple ligne de code rend toute la fonctionnalité de `pandas` disponible dans votre script comme `pd`.

### Résumé

Installer `pandas` en Python enrichit votre boîte à outils avec une bibliothèque robuste pour la manipulation et l'analyse des données. Que vous utilisiez pip ou conda, l'installation est conviviale et rapide. N'oubliez pas de `importer` `pandas` avec `import pandas as pd` au début de votre script pour accéder à ses fonctionnalités. Commencer par des tâches simples comme lire et sauvegarder des fichiers CSV peut servir de base solide pour des tâches d'analyse de données plus complexes avec pandas.

Bonne exploration des données !

## Exemples d'utilisation basique de Pandas

Avec `pandas` correctement installé et importé, vous êtes maintenant prêt à plonger dans certaines tâches basiques de manipulation de données.

### Méthode `read_csv()` pour charger des données

Charger des données à partir d'un fichier CSV est l'une des premières étapes les plus communes dans l'analyse de données. Voici comment vous pouvez utiliser `pandas` pour accomplir cela :

```python
import pandas as pd

# Load data from a CSV file
df = pd.read_csv('path_to_your_file.csv')

# Display the first few rows of the DataFrame
print(df.head())
```

### Méthode `to_csv()` pour sauvegarder des données

Après avoir manipulé ou analysé vos données, vous pourriez vouloir sauvegarder les résultats. Pandas rend cela également simple :

```python
import pandas as pd

# Assuming 'df' is your DataFrame variable
df.to_csv('path_to_save_file.csv', index=False)
```

> Note : Définir `index=False` empêche `pandas` d'écrire les indices de ligne dans le fichier CSV.

### Méthode `head()`

Pour inspecter rapidement les premières lignes d'un DataFrame, vous pouvez utiliser la méthode `head()`. Cela est extrêmement utile pour se faire une idée des données sans afficher l'ensemble du jeu de données.

```python
# Displaying the first 3 rows of the DataFrame
print(df.head(3))
```

La sortie est la même que celle de la création du dataframe puisque le dataframe ne contient que 3 lignes.

> Note : Explorer la documentation de `pandas` en Python peut fournir des aperçus sur des fonctionnalités et méthodes plus avancées disponibles dans la bibliothèque `pandas`.

## Concept de Dataframe dans `pandas`

Dans le monde de l'analyse et de la manipulation de données en utilisant Python, les dataframes `pandas` se positionnent comme une pierre angulaire, permettant aux utilisateurs de gérer et d'analyser les données de manière efficace. Un DataFrame, dans son essence, est une structure de données tabulaire, bidimensionnelle, de taille modifiable, et potentiellement hétérogène avec des axes étiquetés (lignes et colonnes). Ce concept puissant permet une manipulation des données plus intuitive et concise, comblant le fossé entre la facilité d'utilisation trouvée dans les environnements de haut niveau et les capacités du langage de programmation Python.

### Convertir un Dictionnaire en DataFrame `pandas`

Une tâche commune en analyse de données est de convertir des structures de données existantes en DataFrames `pandas` pour exploiter les puissantes fonctionnalités de manipulation et d'analyse de données de pandas. Un cas particulièrement utile est la conversion d'un dictionnaire en DataFrame `pandas`. Cela peut être facilement réalisé en utilisant le constructeur `DataFrame` fourni par pandas :

```python3
import pandas as pd

# Sample dictionary
data_dict = {'Name': ['Alice', 'Bob', 'Charlie'],
             'Age': [25, 30, 35],
             'City': ['New York', 'Paris', 'London']}

# Convert dictionary to pandas DataFrame
df = pd.DataFrame(data_dict)

print(df)
```

Ce morceau de code montre une manière simple de transformer un dictionnaire où les clés deviennent des en-têtes de colonne et les valeurs des données de ligne en un DataFrame `pandas`.

### Convertir une Liste en DataFrame `pandas`

De même, convertir une liste en un DataFrame `pandas` est une autre tâche que les analystes de données rencontrent souvent. Que vous ayez une liste de tuples, de listes, ou une liste plate unique, `pandas` peut gérer ces variations avec aisance :

### Convertir une liste de listes

Voici comment convertir une liste de listes en un DataFrame. Chaque liste interne devient une ligne dans le DataFrame.

```python3
import pandas as pd

# Sample list of lists
data_list = [['Alice', 25, 'New York'],
             ['Bob', 30, 'Paris'],
             ['Charlie', 35, 'London']]

# Convert list to pandas DataFrame
df_list = pd.DataFrame(data_list, columns=['Name', 'Age', 'City'])

print(df_list)
```

> Note: Lors de la conversion de listes en un DataFrame `pandas`, spécifier les noms de colonnes est optionnel. Cependant, le faire améliore la lisibilité et la facilité de manipulation des données.

### Fonctionnalités supplémentaires du DataFrame `pandas`

Les DataFrames de Pandas sont équipés d'une vaste gamme de méthodes et de propriétés, rendant la manipulation et l'analyse des données non seulement possibles, mais aussi très efficaces. Voici quelques fonctionnalités notables :

- **Manipulation de données** : Trier, fusionner, concaténer, remodeler et pivoter les tables.
- **Analyse de données** : Effectuer une analyse statistique, gérer les données manquantes, et filtrer les données.
- **Visualisation de données** : Principalement à travers l'intégration avec des bibliothèques comme Matplotlib, rendant la visualisation préliminaire des données simple.

### `head()` et `tail()` pour une inspection rapide des données

Ce sont deux méthodes très utiles pour inspecter rapidement un DataFrame `pandas` :

- `head(n)` affiche les premières `n` lignes du DataFrame.
- `tail(n)` affiche les dernières `n` lignes.

```python
# Display the first 3 rows
print(df.head(3))

# Display the last 3 rows
print(df.tail(3))
```

## Module Snowflake

Le module Snowflake en Python, connu sous le nom de `snowflake-connector-python`, offre une manière puissante et efficace de `connecter` les applications Python avec le Snowflake Data Cloud. Il permet d'exécuter des requêtes et de gérer des données au sein de Snowflake en utilisant Python, ce qui en fait un outil précieux pour les analystes et les scientifiques de données qui travaillent fréquemment avec des bibliothèques d'analyse de données telles que `pandas`.

Intégrer `snowflake-connector-python` avec `pandas` est une pratique courante qui offre des capacités de manipulation et de transformation de données sans faille, facilitant les processus d'extraction, de transformation et de chargement (ETL) des flux de travail de données.

### Installer le connecteur Snowflake

Avant de plonger dans des exemples de code, assurez-vous d'avoir installé le connecteur Snowflake dans votre environnement Python. Cela peut être fait en utilisant pip:

```python
pip install snowflake-connector-python
```

### Établir une Connexion

Pour utiliser le module Snowflake, la première étape consiste à établir une connexion en utilisant vos détails de `account` Snowflake :

```python
from snowflake.connector import connect

# Define your connection parameters
conn = connect(user='YOUR_USERNAME',
               password='YOUR_PASSWORD',
               account='YOUR_ACCOUNT',
               warehouse='YOUR_WAREHOUSE',
               database='YOUR_DATABASE',
               schema='YOUR_SCHEMA')

print("Successfully connected to Snowflake!")
```

> Remarque : Remplacez `YOUR_USERNAME`, `YOUR_PASSWORD`, `YOUR_ACCOUNT`, etc., par vos véritables identifiants Snowflake.

### Interroger des Données avec la Méthode `execute()`

Exécuter une requête est simple avec la méthode `execute()`. Voici comment réaliser une opération SELECT :

```python
# Create a cursor object
cur = conn.cursor()

# Execute a query
cur.execute("SELECT * FROM YOUR_TABLE LIMIT 10")

# Fetch the results
results = cur.fetchall()

for row in results:
    print(row)
```

> Note : N'oubliez pas de remplacer `YOUR_TABLE` par le nom de votre table réelle dans Snowflake.

### Intégration avec Pandas

L'intégration avec `pandas` vous permet de convertir directement les `results` des requêtes en un DataFrame `pandas`, offrant un environnement familier et puissant pour l'analyse de données.

### Méthode `fetch_pandas_all()`

Après avoir exécuté une requête, utilisez la méthode `fetch_pandas_all()` pour obtenir les `results` sous forme de DataFrame `pandas` :

```python
import pandas as pd

# Assuming `cur` is your cursor from a successful query
df = cur.fetch_pandas_all()

print(df.head())
```

### Meilleures pratiques

1. Toujours fermer votre connexion et votre curseur lorsque vous avez terminé pour libérer des ressources :

```python
cur.close()
conn.close()
```

2. Gérez vos identifiants de manière sécurisée en utilisant des variables d'environnement ou des outils de gestion des secrets au lieu de les coder en dur dans vos scripts.

3. Utilisez des requêtes paramétrées ou les méthodes fournies par le connecteur pour prévenir l'injection SQL et assurer la sécurité de vos requêtes.

En tirant parti du `snowflake-connector-python` aux côtés de `pandas`, les développeurs Python et les passionnés de données peuvent interagir efficacement avec Snowflake, exécuter des requêtes et analyser des données au sein d'un puissant écosystème de science des données.

## Grouper par Outil dans `pandas`

La bibliothèque `pandas` est un outil fondamental pour la manipulation et l'analyse de données en Python. Elle offre de nombreuses fonctions pour des opérations de données efficaces. Une des fonctionnalités clés est la méthode `groupby`, qui permet de grouper les données de manière flexible. Dans cet article, nous allons explorer comment utiliser la fonction `groupby` de pandas pour gérer et analyser efficacement les données groupées.

### Comprendre `groupby()` dans Pandas

La méthode `groupby()` dans la bibliothèque pandas est essentielle pour segmenter les données en groupes basés sur certains critères. Un DataFrame pandas peut être groupé par une ou plusieurs colonnes ou même une combinaison de séries pandas et de colonnes. Cette fonction est vitale pour effectuer des analyses statistiques, des résumés de données et diverses transformations.

### Comment Utiliser `groupby()`

Utiliser la fonction `groupby()` dans pandas implique quelques étapes simples :

1. Identifiez la ou les clés par lesquelles vous souhaitez grouper.
2. Appliquez la fonction `groupby()` à votre DataFrame pandas.
3. Spécifiez les fonctions d'agrégation pour résumer les données groupées.

> Note : Les fonctions d'agrégation incluent des opérations comme mean(), sum(), max(), min(), et bien d'autres.

### Exemple : Groupement Basique

Commençons par un exemple simple pour grouper un DataFrame pandas par une seule colonne.

```python3
import pandas as pd

# Sample DataFrame
data = {'Category': ['A', 'B', 'A', 'C', 'B', 'C', 'A', 'B'],
        'Values': [10, 20, 15, 10, 25, 30, 5, 40]}
df = pd.DataFrame(data)

# Grouping by 'Category' column and calculating mean
grouped_df = df.groupby('Category').mean()

print(grouped_df)
```

Ce code regroupe le DataFrame par la colonne 'Category' et calcule la moyenne des 'Values' pour chaque catégorie.

### Exemple : Regroupement par Plusieurs Clés

Vous pouvez également regrouper par plusieurs colonnes pour une analyse plus détaillée.

```python
# Additional column for demonstration
data['Subcategory'] = ['X', 'Y', 'X', 'Y', 'X', 'Y', 'Y', 'X']
df = pd.DataFrame(data)

# Grouping by both 'Category' and 'Subcategory' columns
grouped_df = df.groupby(['Category', 'Subcategory']).sum()

print(grouped_df)
```

Ici, le DataFrame est groupé à la fois par 'Category' et 'Subcategory', et la somme des 'Values' est calculée pour chaque groupe.

### Meilleures pratiques pour utiliser `groupby()`

1. **Nettoyer les données avant le groupement** : Assurez-vous que vos données ne comportent pas de valeurs manquantes ou d'incohérences qui pourraient affecter votre regroupement.
2. **Utiliser des agrégations appropriées** : Sélectionnez des fonctions d'agrégation qui ont du sens pour vos données et vos objectifs d'analyse.
3. **Exploiter les données groupées** : Utilisez l'objet groupé pour une analyse ou une visualisation plus approfondies afin d'en tirer des informations.

> Note : N'oubliez pas que le résultat d'une opération `groupby` n'est pas un DataFrame, mais un objet GroupBy. Vous pouvez le convertir en DataFrame en appliquant une méthode d'agrégation.
