> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/data-science/numpy

NumPy, abréviation de Numerical Python, est un package fondamental pour le calcul scientifique haute performance et l'analyse de données en Python. Il fournit un objet de tableau multidimensionnel efficace appelé ndarray, qui permet des calculs arithmétiques orientés tableau rapides. Au-delà de son objet de tableau de base, NumPy propose également une large gamme de fonctions mathématiques pour effectuer des opérations sur ces tableaux, allant des opérations de base en algèbre linéaire et statistiques aux transformations de Fourier complexes. En fournissant des outils pour opérer efficacement sur de grands ensembles de données, NumPy sert de colonne vertébrale à une pléthore d'applications scientifiques et d'ingénierie, en faisant un outil indispensable pour les chercheurs, les scientifiques de données et quiconque impliqué dans des calculs intensifs de données. Avec sa combinaison de puissance, de flexibilité et de vitesse, NumPy est devenu une pierre angulaire dans l'écosystème de calcul scientifique Python, s'interfaçant bien avec d'autres bibliothèques et plateformes pour fournir un environnement robuste pour les calculs numériques.

## Qu'est-ce que `numpy` en Python

Numpy, signifiant Numerical Python, est une partie intégrante de l'environnement de calcul scientifique en Python. C'est une bibliothèque qui fournit un support pour les tableaux, accompagné d'une riche collection de fonctions mathématiques pour effectuer diverses opérations sur ces tableaux. La bibliothèque [numpy](https://pypi.org/project/numpy/) en Python est largement utilisée dans l'analyse de données, l'apprentissage automatique et l'ingénierie pour son efficacité et sa fonctionnalité. Elle est conçue pour gérer de grands tableaux et matrices multidimensionnels, la rendant un outil indispensable pour les développeurs et les chercheurs travaillant dans des domaines riches en données.

### Importance de Numpy

La bibliothèque `numpy` en Python offre plusieurs caractéristiques qui la rendent essentielle pour les calculs numériques :

1. **Objet de tableau multidimensionnel haute performance** : Les tableaux Numpy sont plus compacts, plus rapides et plus pratiques pour les opérations mathématiques que les listes Python traditionnelles.
2. **Large collection de fonctions mathématiques** : Ces fonctions permettent des opérations efficaces sur les tableaux sans nécessiter de boucles explicites.
3. **Capacités de diffusion de tableaux** : Numpy peut traiter des tableaux de formes différentes pendant les opérations arithmétiques, rendant le code plus propre et plus rapide.
4. **Outils pour intégrer du code C/C++ et Fortran** : Il est facile d'incorporer du code compilé directement dans des applications Python pour encore plus de vitesse.

> Note : Les structures de données puissantes et les outils de calcul de Numpy sont la fondation sur laquelle des bibliothèques comme Pandas, Matplotlib, SciPy, et scikit-learn sont construites.

## Comment Commencer à Utiliser `numpy`

### Installer NumPy

Pour commencer à utiliser NumPy dans vos projets Python, la première étape est **installer numpy**. NumPy peut être installé en utilisant divers gestionnaires de paquets, mais la méthode la plus commune et la plus simple est via `pip`, l'installateur de paquets de Python. Voici un guide étape par étape sur **comment installer `numpy` en python** :

1. Ouvrez votre ligne de commande ou terminal.
2. Tapez la commande suivante et appuyez sur Entrée :

```pythonbash
pip install numpy
```

Cette commande récupère le paquet NumPy depuis PyPI (Python Package Index) et l'installe dans votre environnement Python.

> Note : Assurez-vous que votre pip est à jour pour éviter tout problème d'installation. Vous pouvez mettre à jour pip en utilisant la commande `pip install --upgrade pip`.

### Comment importer NumPy en Python

Une fois le téléchargement et l'installation de `numpy` terminés, vous devrez l'`importer` dans votre script Python pour commencer à utiliser ses fonctionnalités. Voici comment vous pouvez le faire :

```python
import numpy as np
```

Utiliser `np` comme alias pour NumPy est une convention largement acceptée et cela aide à garder votre code propre et lisible.

### Travailler avec NumPy

Après avoir installé et importé NumPy, vous pouvez commencer à l'utiliser pour effectuer divers calculs numériques. Voici quelques exemples pour vous lancer :

### `np.array()`

L'une des opérations fondamentales dans NumPy est la création de tableaux. Utilisez la fonction `np.array()` pour créer un tableau NumPy :

```python3
import numpy as np
my_array = np.array([1, 2, 3, 4, 5])
print(my_array)
```

Ce code donnera comme résultat un tableau unidimensionnel contenant les nombres de 1 à 5.

### `np.arange()`

Une autre fonction utile pour générer des tableaux est `np.arange()`, qui crée des tableaux avec des valeurs augmentant régulièrement.

```python3
import numpy as np
range_array = np.arange(0, 10, 2)
print(range_array)
```

Ce fragment de code crée un tableau commençant de 0 jusqu'à (mais sans inclure) `10,` avec un pas de 2, ce qui donne `[0, 2, 4, 6, 8]`.

### Fonctions Essentielles dans NumPy

Il existe de nombreuses fonctions disponibles dans NumPy ; ci-dessous se trouve un bref aperçu de certaines fonctions fréquemment utilisées et leur objectif.

| Fonction | Description |
| ---------|-------------|
| `np.array()` | Crée un tableau. |
| `np.arange()` | Retourne un tableau avec des intervalles régulièrement espacés. |
| `np.zeros()` | Retourne un nouveau tableau de forme et de type donnés, rempli de zéros. |
| `np.ones()` | Retourne un nouveau tableau de forme et de type donnés, rempli de uns. |
| `np.linspace()` | Retourne un tableau de nombres régulièrement espacés sur un intervalle spécifié. |

Ces fonctions de base et des exemples fournissent une base solide pour commencer votre voyage avec NumPy. À mesure que vous devenez plus à l'aise avec ces opérations, vous trouverez NumPy être un outil incroyablement puissant pour le calcul numérique en Python.

## Tableaux dans NumPy

Les tableaux jouent un rôle crucial en Python, surtout pour le calcul numérique, qui est rendu plus facile et plus efficace par la bibliothèque Numpy. Un tableau `numpy` est une grille de valeurs, toutes du même type, et est indexé par un tuple d'entiers non négatifs. Le nombre de dimensions est le rang du tableau ; la forme d'un tableau est un tuple d'entiers donnant la taille du tableau le long de chaque dimension.

### Comprendre les Tableaux NumPy

Les tableaux Numpy viennent avec beaucoup de propriétés intégrées qui facilitent la réalisation de calculs complexes. Quelques propriétés importantes sont résumées dans le tableau ci-dessous :

| Propriété | Description |
|----------|-------------|
| dtype | Le type de données des éléments du tableau |
| shape | Les dimensions du tableau (lignes, colonnes) |
| size | Le nombre total d'éléments dans le tableau |
| ndim | Le nombre de dimensions (ou axes) du tableau |

Ces propriétés aident à comprendre la structure et le type de données que votre tableau Numpy manipule, conduisant à une manipulation et analyse des données plus efficace et efficace.

### Créer un Tableau NumPy

Pour commencer à travailler avec les tableaux `numpy`, vous devez d'abord `importer` la bibliothèque Numpy. Ensuite, vous pourriez convertir une liste python en tableau `numpy` ou l'instancier directement :

```python3
import numpy as np

# Python list
my_list = [1, 2, 3]

# Converting Python list to numpy array
np_array = np.array(my_list)
print(np_array)
```

### Imprimer un tableau `numpy`

Pour `imprimer` un tableau `numpy`, vous pouvez simplement utiliser la fonction `print` de Python :

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Printing numpy array
print(np_array)
```

### Ajouter des Éléments avec NumPy `append()`

Ajouter des éléments à un tableau est une opération courante. Avec `numpy`, vous pouvez facilement ajouter des éléments en utilisant la méthode `np.append()` :

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3])

# Appending an element to numpy array
new_np_array = np.append(np_array, [4])

print(new_np_array)
```

> Remarque : La méthode `np.append()` retourne un nouveau tableau. Elle ne modifie pas le tableau original.

### Calcul de la Somme avec `np.sum()`

Numpy offre un moyen pratique de calculer la `somme` des éléments dans un tableau en utilisant la méthode `np.sum()`. C'est très utile pour les calculs numériques :

```python3
import numpy as np

# Defining a numpy array
np_array = np.array([1, 2, 3, 4])

# Calculating the sum of array elements
sum = np.sum(np_array)

print(sum)
```

> Note : `np.sum()` peut être très puissant, surtout lorsqu'il est utilisé avec des tableaux multidimensionnels, car vous pouvez calculer des sommes le long d'axes spécifiques.

### Opérations sur les tableaux NumPy fréquemment utilisées

Pour référence rapide, voici certaines des opérations de tableau `numpy` les plus fréquemment utilisées, accompagnées de leurs descriptions :

| Opération | Description |
|----------------|-------------------------------------------------|
| `np.array()` | Convertit une liste Python en un tableau `numpy`. |
| `np.append()` | Ajoute des éléments à la fin d'un tableau. |
| `np.sum()` | Calcule la `somme` des éléments du tableau. |
| `print()` | Affiche le tableau `numpy`. |

### Résumé des points clés

Utiliser des opérations de tableau `numpy` telles que la conversion de listes Python en tableaux `numpy`, l'ajout d'éléments et le calcul des sommes, peut grandement améliorer l'efficacité et la performance de la manipulation de données et des calculs numériques en Python. N'oubliez pas d'`importer` Numpy et d'utiliser ces fonctions intégrées pour un codage plus efficace.

## Matrice Numpy

Numpy est un paquet fondamental pour le calcul scientifique en Python. Il fournit un objet puissant pour les opérations matricielles, qui est un aspect essentiel des sciences des données et du calcul mathématique. La multiplication matricielle est l'une des opérations cruciales que Numpy rend très efficace et facile à réaliser.

### Qu'est-ce que la matrice Numpy

Une matrice Numpy est un tableau 2D spécialisé qui conserve sa nature bidimensionnelle à travers les opérations. Elle offre diverses méthodes pour les manipulations matricielles, incluant mais ne se limitant pas à la multiplication matricielle, l'inverse et la transposition. Utiliser une matrice Numpy pour les opérations simplifie la syntaxe et améliore la performance des calculs complexes.

### Multiplication de matrices Python Numpy

La multiplication de matrices, également connue sous le nom de produit scalaire, est une opération fondamentale en algèbre linéaire. Python avec la bibliothèque Numpy simplifie significativement ce processus. La fonction clé pour cette opération est `numpy.dot()` pour les tableaux bidimensionnels, mais pour une matrice Numpy, vous pouvez directement utiliser l'opérateur `*` ou la méthode `.dot()`.

### Comment effectuer la multiplication matricielle

1. **Utilisation de `numpy.dot()`**

Cette fonction est polyvalente et peut gérer à la fois les matrices et les tableaux 2D, en fournissant le produit scalaire.

```python3
import numpy as np

# Define two matrices
A = np.array([[1, 2], [3, 4]])
B = np.array([[5, 6], [7, 8]])

# Perform matrix multiplication
C = np.dot(A, B)

print(C)
```

2. **Utilisation de l'opérateur `*`**

Lorsque vous travaillez explicitement avec des matrices Numpy, vous pouvez utiliser directement l'opérateur `*` pour la multiplication matricielle.

```python3
import numpy as np

# Define two matrices
A = np.matrix([[1, 2], [3, 4]])
B = np.matrix([[5, 6], [7, 8]])

# Perform matrix multiplication
C = A * B

print(C)
```

> Remarque : Bien que vous puissiez utiliser l'opérateur `*` pour les matrices Numpy, il est recommandé d'utiliser des tableaux Numpy avec l'opérateur `np.dot()` ou `@` pour la cohérence et pour éviter une éventuelle dépréciation de la classe de matrice dans les futures versions de Numpy.

### Comparaison des méthodes pour la multiplication de matrices

Quand il s'agit de multiplication de matrices en Python en utilisant Numpy, il existe plusieurs méthodes pour atteindre le même résultat. Le choix entre ces méthodes se résume souvent à des préférences et des cas d'utilisation spécifiques. Voici une comparaison simplifiée :

| Méthode               | Utilisation                                                |
|-----------------------|------------------------------------------------------------|
| `numpy.dot()`         | Recommandé pour la cohérence, fonctionne pour les tableaux et les matrices |
| Opérateur `*`         | Syntaxe simple mais uniquement pour les objets matrice Numpy |
| Méthode `.dot()`      | Une autre option pour réaliser des produits scalaires        |

Comprendre et réaliser la multiplication de matrices en utilisant Python et Numpy est simple, grâce aux fonctions et méthodes bien conçues fournies par la bibliothèque. Que vous préfériez la simplicité de l'opérateur `*` avec les matrices Numpy ou la polyvalence et la fonction recommandée `np.dot()`, Numpy rend ces opérations efficaces et facilement intégrables dans des flux de travail de traitement de données ou de calcul scientifique plus larges.
