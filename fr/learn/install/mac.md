> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/install/mac

Installer Python sur un ordinateur Mac est un processus simple et direct qui peut être accompli en quelques minutes seulement.

## Comment Installer Python sur Mac OS

Pour installer Python sur un Mac OS, vous pouvez suivre ces étapes simples :

1. Rendez-vous sur le site officiel de Python et téléchargez la dernière version de Python pour Mac.
2. Une fois le téléchargement terminé, ouvrez l'installeur et suivez les instructions à l'écran.
3. Une fois le processus d'installation terminé, vous pouvez vérifier la version de Python sur votre mac en ouvrant l'application terminal et en tapant `python3 --version`.
4. Si Python est installé avec succès, le numéro de version sera affiché dans le Terminal.

En suivant ces étapes, vous pouvez facilement installer Python sur macbook et commencer à travailler avec ce langage de programmation populaire. N'oubliez pas de télécharger Python pour Mac depuis le site officiel pour vous assurer que vous disposez de la version la plus récente et la plus sécurisée du logiciel.

### Comment Installer Python avec Brew

Pour installer Python sur macOS en utilisant brew, suivez ces étapes simples :

1. Ouvrez le terminal sur votre macOS.
2. Installez brew si ce n'est pas déjà fait en exécutant la commande :

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Après l'installation, exécutez la commande :

```shell
brew install python
```

4. La dernière version de Python sera installée sur votre macOS.

Installer Python avec brew sur macOS est un moyen simple et efficace d'obtenir la dernière version de Python sur votre système. Ce processus vous fera gagner du temps et empêchera l'erreur : `python command not found` sur macOS.

## Ajouter Python au chemin de macOS

Pour ajouter Python au chemin de macOS, suivez ces étapes simples :

1. Ouvrez l'application Terminal.
2. Tapez `nano ~/.bash_profile` et appuyez sur Entrée.
3. Ajoutez la ligne suivante au fichier :

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/X.Y/bin"
```

Remplacez `X.Y` par la version de Python que vous souhaitez ajouter au chemin. Par exemple, si vous souhaitez ajouter Python 3.9, la ligne devrait être :

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin"
```

4. Sauvegardez le fichier en appuyant sur Ctrl+O, puis appuyez sur Entrée.
5. Fermez le fichier en appuyant sur Ctrl+X.
6. Redémarrez l'application Terminal pour que les modifications prennent effet.

En ajoutant Python à votre chemin macOS, vous pouvez facilement y accéder depuis n'importe quel répertoire dans le Terminal. Cela peut être utile pour exécuter des scripts Python et gérer des paquets Python.

## Comment Exécuter un Script Python sur Mac

Si vous vous demandez comment exécuter un script Python sur votre Mac, il y a quelques étapes faciles à suivre. Tout d'abord, vous devrez vous assurer que Python est installé sur votre ordinateur. Vous pouvez vérifier cela en ouvrant votre application Terminal et en tapant `python` dans la ligne de commande.

Si Python n'est pas installé, vous pouvez le télécharger depuis le site officiel. Une fois Python installé, vous pouvez utiliser l'application Terminal pour naviguer jusqu'au dossier où se trouve votre script Python.

Pour exécuter le script, tapez simplement `python votre_script.py` dans le terminal et appuyez sur entrer. Votre script devrait s'exécuter immédiatement.

En résumé, pour exécuter un script Python sur votre Mac, vous devez :
- Vérifier si Python est installé
- Installer Python si nécessaire
- Naviguer jusqu'au script dans le Terminal
- Exécuter le script en utilisant la commande `python votre_script.py`.

En suivant ces étapes, vous pourrez exécuter des scripts Python sur votre Mac facilement.

## Désinstaller Python de Mac

Pour désinstaller Python de Mac, suivez ces étapes :
1. Ouvrez le Finder
2. Cliquez sur le dossier Applications
3. Localisez l'application Python et glissez-la vers la corbeille
4. Videz la corbeille

En suivant ces étapes, vous pouvez désinstaller avec succès Python de votre Mac. Il est important de noter que certaines applications peuvent dépendre de Python, donc vous ne devriez le désinstaller que si vous êtes certain qu'il n'est plus nécessaire. Assurez-vous de sauvegarder vos données avant d'effectuer toute étape de désinstallation.

## Comment Mettre à Jour Python sur Mac

Pour mettre à niveau Python sur un Mac, vous pouvez utiliser le terminal pour installer la dernière version en utilisant homebrew ou pyenv. Tout d'abord, vérifiez votre version actuelle de Python en tapant `python --version` dans le terminal. Ensuite, utilisez la commande appropriée pour installer la dernière version. Pour les utilisateurs de Homebrew, exécutez `brew upgrade python` et pour les utilisateurs de pyenv, exécutez `pyenv install [dernière-version]`. En mettant à jour Python, vous pouvez profiter des dernières fonctionnalités et corrections de bugs.

## Erreur : `python command not found`

Si vous rencontrez l'erreur **python command not found** sur votre macOS, cela signifie que votre système est incapable de localiser l'utilitaire de ligne de commande Python.

Cette problème peut survenir pour plusieurs raisons, telles qu'une version macOS obsolète, un chemin d'installation incorrect ou des fichiers système supprimés par erreur.

Pour résoudre ce problème, vous pouvez essayer de mettre à jour votre macOS vers la dernière version ou de réinstaller Python. Alternativement, vous pouvez définir le bon chemin pour Python en utilisant le terminal ou en modifiant les variables environnementales de votre système.

En résumé, rencontrer l'erreur `python command not found mac` est un problème courant parmi les utilisateurs de macOS. Mais avec les bonnes étapes de dépannage, vous pouvez rapidement le résoudre et continuer à travailler sur vos projets Python.
