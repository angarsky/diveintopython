> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/install/mac

Установка Python на компьютер Mac - это простой и быстрый процесс, который может быть выполнен всего за несколько минут.

## Как Установить Python на Mac OS

Чтобы установить Python на Mac OS, вы можете следовать этим простым шагам:

1. Перейдите на официальный сайт Python и загрузите последнюю версию Python для Mac.
2. Как только загрузка завершена, откройте установщик и следуйте инструкциям на экране.
3. После завершения процесса установки, вы можете проверить версию Python на вашем Mac, открыв приложение терминал и введя `python3 --version`.
4. Если Python успешно установлен, номер версии будет отображен в Терминале.

Следуя этим шагам, вы можете легко установить Python на MacBook и начать работать с этим популярным языком программирования. Не забудьте скачать Python для Mac с официального сайта, чтобы убедиться, что у вас есть последняя и наиболее безопасная версия программного обеспечения.

### Как Установить Python с Помощью Brew

Чтобы установить Python на macOS с использованием brew, следуйте этим простым шагам:

1. Откройте терминал на вашем macOS.
2. Установите brew, если вы еще этого не сделали, запустив команду:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. После установки запустите команду:

```shell
brew install python
```

4. На ваш macOS будет установлена последняя версия Python.

Установка Python с помощью brew на macOS - это простой и эффективный способ получить последнюю версию Python на вашей системе. Этот процесс сэкономит вам время и предотвратит ошибку: `python command not found` в macOS.

## Добавление Python в 'path` Macos

Чтобы добавить Python в путь macOS, выполните следующие простые шаги:

1. Откройте приложение Terminal.
2. Введите `nano ~/.bash_profile` и нажмите Enter.
3. Добавьте следующую строку в файл:

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/X.Y/bin"
```

Замените `X.Y` на версию Python, которую вы хотите добавить в путь. Например, если вы хотите добавить Python 3.9, строка должна быть:

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin"
```

4. Сохраните файл, нажав Ctrl+O, затем нажмите Enter.
5. Закройте файл, нажав Ctrl+X.
6. Перезапустите приложение Terminal, чтобы изменения вступили в силу.

Добавив Python в ваш macOS path, вы можете легко получить к нему доступ из любой директории в Terminal. Это может быть полезно для запуска скриптов Python и управления пакетами Python.

## Как Запустить Скрипт Python на Mac

Если вы задаетесь вопросом, как запустить скрипт Python на вашем Mac, есть несколько простых шагов, которые вы можете выполнить. Во-первых, вам нужно убедиться, что Python установлен на вашем компьютере. Вы можете проверить это, открыв приложение Terminal и набрав `python` в командной строке.

Если Python не установлен, вы можете скачать его с официального сайта. После того, как вы установили Python, вы можете использовать приложение Terminal, чтобы перейти в папку, где находится ваш скрипт Python.

Чтобы запустить скрипт, просто наберите `python your_script.py` в терминале и нажмите enter. Ваш скрипт должен выполниться немедленно.

В общем, для запуска скрипта Python на вашем Mac, вам нужно:
- Проверить, установлен ли Python
- Установить Python, если это необходимо
- Перейти в терминале в папку со скриптом
- Запустить скрипт, используя команду `python your_script.py`.

Следуя этим шагам, вы сможете с легкостью запускать скрипты Python на вашем Mac.

## Удаление Python с Mac

Чтобы удалить Python с Mac, выполните следующие шаги:
1. Откройте Finder
2. Кликните на папку Applications
3. Найдите приложение Python и перетащите его в корзину
4. Очистите корзину

Следуя этим шагам, вы можете успешно удалить Python с вашего Mac. Важно отметить, что некоторые приложения могут зависеть от Python, поэтому вы должны удалить его только если уверены, что он вам больше не нужен. Убедитесь, что вы сделали резервную копию ваших данных перед выполнением любых действий по удалению.

## Как Обновить Python на Mac

Чтобы обновить Python на Mac, вы можете использовать терминал для установки последней версии с помощью homebrew или pyenv. Сначала проверьте вашу текущую версию Python, набрав `python --version` в терминале. Затем используйте соответствующую команду для установки последней версии. Для пользователей Homebrew выполните `brew upgrade python`, а для пользователей pyenv - `pyenv install [latest-version]`. Обновляя Python, вы можете наслаждаться последними функциями и исправлениями ошибок.

## Ошибка: `python command not found`

Если вы сталкиваетесь с ошибкой **python command not found** на вашем macOS, это означает, что ваша система не может найти утилиту командной строки Python.

Эта проблема может возникнуть по нескольким причинам, таким как устаревшая версия macOS, неверный путь установки или случайно удаленные системные файлы.

Чтобы исправить эту проблему, вы можете попробовать обновить ваш macOS до последней версии или переустановить Python. Кроме того, вы можете установить правильный путь для Python, используя терминал или изменяя системные переменные окружения.

В общем, столкнувшись с ошибкой `python command not found mac`, это распространенная проблема среди пользователей macOS. Но с помощью правильных шагов по устранению неполадок вы можете быстро исправить ее и продолжить работу над своими проектами на Python.
