> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/install/mac

Instalar Python en una computadora Mac es un proceso sencillo y simple que se puede lograr en solo unos minutos.

## Cómo Instalar Python en Mac OS

Para instalar Python en Mac OS, puedes seguir estos sencillos pasos:

1. Ve al sitio web oficial de Python y descarga la última versión de Python para Mac.
2. Una vez que la descarga esté completa, abre el instalador y sigue las instrucciones en pantalla.
3. Una vez que el proceso de instalación esté completo, puedes verificar la versión de Python en tu mac abriendo la aplicación de terminal y escribiendo `python3 --version`.
4. Si Python se instaló con éxito, el número de versión se mostrará en la Terminal.

Siguiendo estos pasos, puedes instalar fácilmente Python en MacBook y comenzar a trabajar con este popular lenguaje de programación. Recuerda descargar Python para Mac desde el sitio web oficial para asegurarte de tener la versión más reciente y segura del software.

### Cómo Instalar Python con Brew

Para instalar Python en macOS usando brew, sigue estos sencillos pasos:

1. Abre la terminal en tu macOS.
2. Instala brew si aún no lo has hecho ejecutando el comando:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Después de la instalación, ejecuta el comando:

```shell
brew install python
```

4. La última versión de Python se instalará en tu macOS.

Instalar Python con brew en macOS es una forma simple y efectiva de obtener la última versión de Python en tu sistema. Este proceso te ahorrará tiempo y evitará el error: `python command not found` en macOS.

  
## Agregar Python al Path de MacOS   

Para agregar Python al path de macOS, sigue estos sencillos pasos:

1. Abre la aplicación Terminal.
2. Escribe `nano ~/.bash_profile` y presiona Enter.
3. Agrega la siguiente línea al archivo:

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/X.Y/bin"
```

Reemplaza `X.Y` por la versión de Python que quieras agregar al path. Por ejemplo, si quieres agregar Python 3.9, la línea debería ser:

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin"
```

4. Guarde el archivo presionando Ctrl+O, luego presione Enter.
5. Cierre el archivo presionando Ctrl+X.
6. Reinicie la aplicación Terminal para que los cambios tengan efecto.

Al agregar Python a la ruta de su macOS, puede acceder fácilmente a él desde cualquier directorio en el Terminal. Esto puede ser útil para ejecutar scripts de Python y administrar paquetes de Python.

## Cómo Ejecutar un Script de Python en Mac

Si te preguntas cómo ejecutar un script de Python en tu Mac, hay algunos pasos sencillos que puedes seguir. Primero, necesitarás asegurarte de que Python esté instalado en tu computadora. Puedes verificar esto abriendo tu aplicación Terminal y escribiendo `python` en la línea de comandos.

Si Python no está instalado, puedes descargarlo desde el sitio web oficial. Una vez que hayas instalado Python, puedes usar la aplicación Terminal para navegar a la carpeta donde se encuentra tu script de Python.

Para ejecutar el script, simplemente escribe `python tu_script.py` en el terminal y presiona enter. Tu script debería ejecutarse inmediatamente.

En resumen, para ejecutar un script de Python en tu Mac, necesitas:
- Verificar si Python está instalado
- Instalar Python si es necesario
- Navegar al script en Terminal
- Ejecutar el script usando el comando `python tu_script.py`.

Siguiendo estos pasos, podrás ejecutar scripts de Python en tu Mac con facilidad.

## Desinstalar Python de Mac

Para desinstalar Python de Mac, sigue estos pasos:
1. Abre el Finder
2. Haz clic en la carpeta Aplicaciones
3. Localiza la aplicación de Python y arrástrala a la papelera
4. Vacía la papelera

Siguiendo estos pasos, puedes desinstalar Python de tu Mac con éxito. Es importante notar que algunas aplicaciones pueden depender de Python, por lo que solo deberías desinstalarlo si estás seguro de que ya no es necesario. Asegúrate de hacer una copia de seguridad de tus datos antes de realizar cualquier paso de desinstalación.

## Cómo Actualizar Python en Mac

Para actualizar Python en un Mac, puedes usar el terminal para instalar la última versión usando homebrew o pyenv. Primero, verifica tu versión actual de Python escribiendo `python --version` en el terminal. Luego, usa el comando apropiado para instalar la última versión. Para usuarios de Homebrew, ejecuta `brew upgrade python` y para usuarios de pyenv, ejecuta `pyenv install [latest-version]`. Al actualizar Python, puedes disfrutar de las últimas características y correcciones de errores.

## Error: `python command not found`

Si encuentras el error **python command not found** en tu macOS, significa que tu sistema no puede localizar la utilidad de línea de comandos de Python.

Este problema puede surgir por múltiples razones, como una versión de macOS desactualizada, una ruta de instalación incorrecta o archivos del sistema eliminados por error.

Para solucionar este problema, puedes intentar actualizar tu macOS a la última versión o reinstalar Python. Alternativamente, puedes establecer la ruta correcta para Python usando el terminal o modificando las variables ambientales de tu sistema.

En resumen, encontrarse con el error `python command not found mac` es un problema común entre los usuarios de macOS. Pero con los pasos de solución de problemas adecuados, puedes solucionarlo rápidamente y continuar trabajando en tus proyectos de Python.
