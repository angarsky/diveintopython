> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/exceptions

Uno de los aspectos fundamentales de Python que contribuye a su robustez es su sistema de manejo de excepciones. Las excepciones en Python son errores detectados durante la ejecución que pueden interrumpir el flujo normal de un programa. Entender las excepciones es crucial para escribir código de Python confiable y eficiente.

Una excepción en Python puede surgir de varias situaciones, como dividir por cero, acceder a un archivo inexistente o intentar importar un módulo que no existe. En lugar de permitir que estos errores hagan que el programa se bloquee, Python permite al programador capturar y manejar estas excepciones de manera elegante. Esto se hace a través del bloque try-except, donde el programador intenta ejecutar el código que podría generar una excepción en la cláusula try y manejar la excepción en la cláusula except.

El sistema de excepciones de Python es jerárquico, ya que todas las excepciones heredan de la clase BaseException. Este sistema incluye excepciones integradas como `IOError`, `ValueError`, `ZeroDivisionError` y muchas otras. Los programadores también pueden definir sus propias excepciones personalizadas para manejar condiciones de error específicas únicas de sus aplicaciones.

## Por qué se Usan las Excepciones  

En la programación de Python, las excepciones son una parte esencial de escribir código limpio, robusto y eficiente. Las excepciones se utilizan para manejar errores de manera elegante y gestionar el flujo del programa cuando ocurren problemas inesperados. Al aprovechar la estructura `try except`, los programadores pueden anticipar problemas potenciales y asegurarse de que su código pueda lidiar con circunstancias inusuales sin bloquearse. El mecanismo de excepción de Python mejora la confiabilidad del código y la experiencia del usuario al tratar los errores y proporcionar comentarios informativos.

### Entendiendo Try Except en Python

La estructura básica para manejar excepciones en Python involucra los bloques `try` y `except`. Así es como funciona:

1. **Bloque Try:** Este bloque contiene el código que podría generar una excepción o un error. Python intentará ejecutar este código y, si ocurre un error, detendrá la ejecución de este bloque y pasará al bloque `except`.
   
2. **Bloque Except:** El código dentro de este bloque se ejecutará si ocurre un error en el bloque try. Esto permite el manejo de errores, registro o acciones de recuperación.

### Ejemplo: Try Except Básico

```python3
try:
    result = 10 / 0
except ZeroDivisionError:
    print("Cannot divide by zero!")
```

### Manejo de Múltiples Excepciones

Python permite el manejo de múltiples excepciones para tratar distintos tipos de errores de manera distinta. Esta capacidad es crucial para crear una lógica de manejo de errores más granular y proporcionar respuestas específicas para diferentes condiciones de error.

### Ejemplo: Múltiple Try Except

```python
try:
    with open('non_existent_file.txt', 'r') as file:
        print(file.read())
except FileNotFoundError:
    print("The file does not exist.")
except Exception as e:
    print(f"An error occurred: {str(e)}")
```

### Utilizando las Mejores Prácticas con Excepciones

Utilizar correctamente las excepciones es clave para maximizar sus beneficios en tu código Python. Aquí hay algunas mejores prácticas a seguir:

- **Usa clases de excepciones específicas** cuando sea posible en lugar de capturar todas las excepciones. Esta práctica mejora la claridad y fiabilidad del manejo de errores.
- **Evita el excepto desnudo:** Siempre especifica el tipo de excepción a capturar para evitar capturar excepciones inesperadas.
- **Usa finally para limpieza:** El bloque `finally` puede usarse para asegurar que ciertas acciones se tomen, como cerrar un archivo, independientemente de si ocurrió una excepción.

> Nota: Al usar excepciones, es importante equilibrar entre manejar errores genuinos y controlar el flujo del programa. El uso excesivo de excepciones para control de flujo puede llevar a código que es difícil de entender y mantener.

### Cuándo Usar Excepciones

En la programación Python, las excepciones deben usarse en situaciones donde se espera un error y puede manejarse de manera que el programa pueda continuar o terminar de manera elegante. Esto incluye, pero no se limita a:

1. Operaciones de entrada/salida
2. Trabajar con archivos o conexiones de red
3. Parseo de datos
4. Trabajar con APIs externas o bibliotecas que pueden fallar bajo ciertas condiciones

Al usar eficazmente las excepciones, los desarrolladores de Python pueden crear aplicaciones resilientes que pueden resistir errores y proporcionar una experiencia de usuario fluida.

## Tipos de Excepción

Al trabajar con Python, manejar errores de manera efectiva es crucial para construir aplicaciones robustas. Python proporciona una jerarquía de tipos de excepciones, permitiendo a los desarrolladores capturar y responder a diferentes errores en su código. Entender estos tipos y cómo `print` información de la excepción puede ayudar inmensamente en la depuración y el manejo de errores.

### Tipos Comunes de Excepción

Las excepciones de Python cubren una amplia gama de tipos de errores, desde errores de sintaxis hasta errores en tiempo de ejecución. Aquí hay una mirada a algunos tipos de excepciones comúnmente encontrados:

- `SyntaxError`: Ocurre cuando Python no puede entender tu código.
- `NameError`: Sucede cuando no se encuentra un nombre local o global.
- `TypeError`: Causado por una operación o función aplicada a un objeto de tipo inapropiado.
- `ValueError`: Se produce cuando una función recibe un argumento con el tipo correcto pero valor inapropiado.
- `IndexError`: Se activa al intentar acceder a un índice que está fuera de rango.

### Cómo Imprimir el Tipo de Excepción

Cuando ocurre una excepción, puede ser útil saber exactamente con qué tipo de excepción estás tratando. Puedes capturar e `print` el tipo de excepción usando las declaraciones de `try` y `except` con `except Exception as e`.

### Ejemplo: Imprimir una Excepción

```python
try:
    # This will raise a ValueError
    print(int("xyz"))
except Exception as e:
    print(f"Caught an exception: {type(e).__name__}")
```

Este ejemplo producirá:

```python
Caught an exception: ValueError
```

### Ejemplo: Imprimir Excepciones Específicas

También puedes capturar y manejar múltiples excepciones específicas por separado:

```python
try:
    # Code that can raise multiple exceptions
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"Caught a division error: {type(e).__name__}")
except ValueError as e:
    print(f"Caught a value error: {type(e).__name__}")
```

Este código te dirá específicamente si se capturó un `ZeroDivisionError` o un `ValueError`.

### Utilizando la Tabla de Jerarquía de Excepciones

La jerarquía de excepciones de Python permite capturar excepciones basándose en su especificidad. Aquí hay una vista simplificada de la jerarquía de excepciones:

| Excepción Base | Hereda De | Descripción |
| --------------- | ------------- | ----------- |
| `BaseException` | N/D | Clase base para todas las excepciones incorporadas |
| `Exception` | `BaseException` | Todas las excepciones incorporadas, que no terminan el sistema |
| `ArithmeticError` | `Exception` | Clase base para errores aritméticos |
| `BufferError` | `Exception` | Se produce cuando una operación relacionada con buffer no puede realizarse |
| `LookupError` | `Exception` | Clase base para errores de búsqueda |

> Nota: Esta tabla no cubre cada posible excepción sino que proporciona una visión de la estructura de herencia, lo cual puede ser útil para capturar excepciones de manera efectiva.
  
## Manejo de Excepciones  

El manejo de excepciones en Python es un aspecto crítico para escribir código confiable y mantenible. Una excepción en Python es un evento que interrumpe el flujo normal del programa. Python proporciona excepciones incorporadas y permite a los usuarios definir las suyas propias. Saber cómo capturar y manejar estas excepciones correctamente es esencial para depurar y a prueba de errores tus aplicaciones.

### Excepciones Incorporadas en Python

Las excepciones incorporadas en Python cubren una amplia gama de condiciones de error. Desde `ValueError`, que indica un valor inapropiado, hasta `FileNotFoundError`, que señala que un archivo no pudo ser encontrado, estas excepciones ayudan a los desarrolladores a diagnosticar rápidamente los problemas.

### Capturando Excepciones con `try` y `except`

La estructura básica para manejar excepciones en Python implica los bloques `try` y `except`. Colocas el código que podría generar una excepción dentro del bloque `try` y el código a ejecutar si ocurre una excepción en el bloque `except`.

### Ejemplo: Bloque básico `try` y `except`

```python
try:
    # Code that might raise an exception
    result = 10 / 0
except ZeroDivisionError:
    print("Caught a division by zero!")
```

En el código anterior, intentar dividir por cero genera un `ZeroDivisionError`, que luego es capturado por el bloque `except`, evitando que el programa se caiga.

### Atrapar Cualquier Excepción

Para atrapar cualquier excepción, puedes usar una cláusula `except:` desnuda, que atrapará todas las excepciones. Sin embargo, atrapar todas las excepciones generalmente se desaconseja ya que puede hacer que la depuración sea más desafiante.

### Ejemplo: Atrapando Cualquier Excepción

```python3
try:
    # Code that might raise any exception
    result = 10 / unknown_var
except:
    print("An unexpected error occurred!")
```

### Manejo Específico de Excepciones

Para un control más fino sobre qué excepciones capturar, Python permite especificar múltiples bloques `except`, cada uno manejando un tipo diferente de excepción.

### Except con `SystemExit`

Se necesita una precaución especial al tratar con `SystemExit` ya que capturar esta excepción puede interferir con el proceso normal de apagado de un script. `SystemExit` es provocado por la función `sys.exit()` y generalmente debería permitirse su propagación.

> Nota: Usa `except SystemExit` para capturar explícitamente una excepción `SystemExit` si tienes una operación de limpieza específica necesaria antes de que el script finalice.

### Registro de Excepción

Registrar excepciones puede proporcionar una riqueza de información para depuración. El módulo [logging](https://docs.python.org/3/library/logging.html) de Python puede ser utilizado para registrar excepciones, proporcionando no solo el mensaje de error, sino también el traceback.

### Ejemplo: Registrando un Ejemplo de Excepción

```python3
import logging

try:
    # Code that might raise an exception
    result = 1 / 0
except ZeroDivisionError:
    logging.exception("Exception occurred")
```

Esto registrará el mensaje de la excepción junto con el rastreo, ayudando en la depuración.

### Mejores Prácticas en el Manejo de Excepciones

1. **Atrapar excepciones específicas** siempre que sea posible.
2. **Usar `finally`** para acciones de limpieza que deben ejecutarse bajo todas las circunstancias.
3. **Evitar atrapar `SystemExit`**, a menos que tenga una buena razón para hacerlo.
4. **Registrar excepciones** para ayudar en la depuración.
5. **Usar excepciones personalizadas** para un reporte de errores más claro.

Seguir estas recomendaciones mejorará la robustez y claridad de tu código Python cuando se trate de excepciones.

## Generando Excepciones

Cuando desarrolles aplicaciones en Python, manejar los errores de manera elegante es crucial para asegurar la fiabilidad y robustez de tu software. Generando excepciones, puedes controlar el flujo de tu programa cuando surgen situaciones inesperadas. Este artículo cubre los básicos de levantar excepciones en Python, proporcionando entendimiento sobre cómo levantar o lanzar excepciones efectivamente en tu código.

### Entendiendo el Manejo de Excepciones

El manejo de excepciones es un concepto fundamental en Python que permite a un desarrollador anticipar y gestionar errores durante la ejecución de un programa. Cuando se habla de levantar excepciones en Python, a menudo se refiere a la creación intencional de excepciones cuando se cumplen ciertas condiciones.

### Cómo `raise` una Excepción

Levantar una excepción en Python es sencillo. Puedes usar la palabra clave `raise` seguida de una instancia de la excepción que quieres lanzar. Esto comúnmente se refiere como levantar excepción.

### Ejemplo: Levantando `ValueError`

```python3
def check_age(age):
    if age < 18:
        raise ValueError("Access denied due to age restrictions.")
    return "Access granted."

try:
    user_status = check_age(17)
    print(user_status)
except ValueError as err:
    print(err)
```

> Nota: En este ejemplo, intentar llamar a `check_age` con un argumento menor de 18 conduce a un `ValueError`, que luego se captura en el bloque `except`.

### Lanzando Excepción Personalizada

También puedes definir tus propias clases de excepción heredando de la clase `Exception` integrada de Python. Esto es útil cuando la excepción lanzada necesita ser más específica al contexto de tu aplicación.

```python3
class AgeRestrictionError(Exception):
    """Exception raised for errors in age restrictions."""

    def __init__(self, message="Age is below the required limit."):
        self.message = message
        super().__init__(self.message)

def verify_age(age):
    if age < 18:
        raise AgeRestrictionError
    return "Verification successful."

try:
    result = verify_age(16)
    print(result)
except AgeRestrictionError as err:
    print(err)
```

> Nota: Las excepciones personalizadas proporcionan una forma de crear errores más descriptivos, lo que hace que tu código sea más fácil de entender y depurar.

### Cuándo Usar el Manejo de Excepciones

Aquí están las circunstancias cuando podrías querer `raise` una excepción:

1. **Validación de Entrada:** Asegurar que los datos ingresados a una función son válidos.
2. **Disponibilidad de Recursos:** Verificar si los recursos necesarios están disponibles (por ejemplo, archivos o red).
3. **Resultados de Operaciones:** Validar el resultado de una operación para asegurar que cumple ciertos criterios.

Usar excepciones de manera apropiada asegura que tu código no solo sea robusto sino también más fácil de mantener y entender.

| Situación          | Razón para Lanzar una Excepción                                                             |
| ------------------ | ------------------------------------------------------------------------------------------- |
| Parámetros Inválidos | Para prevenir que las funciones continúen con valores que podrían llevar a resultados inesperados |
| Operación Fallida  | Para detener el flujo de ejecución cuando una operación no puede completarse como se pretendía |
| Manejo de Recursos  | Para asegurar que recursos como archivos o conexiones de red estén adecuadamente disponibles y sean utilizables |

Entender e implementar estrategias para lanzar excepciones son habilidades cruciales en la programación en Python. No solo ayudan a hacer tu código más confiable, sino también a señalar a otros desarrolladores dónde yacen las posibles trampas. Recuerda, un manejo efectivo de excepciones puede mejorar significativamente la capacidad de depuración y resiliencia de tu aplicación.

## Utilizando la Estructura `try/except/else`

Al trabajar con Python, el manejo de excepciones se convierte en una parte integral de escribir un código robusto y libre de errores. La estructura `try/except/else` es una característica poderosa que permite a los desarrolladores anticipar errores potenciales, manejarlos de manera elegante y también ejecutar código que debería correr solo si no se levantaron excepciones. Esta guía demostrará cómo usar efectivamente esta estructura con ejemplos, enfocándose en cómo `print` y lanzar excepciones en Python.

### Entendiendo `try/Except/else`

El bloque `try` te permite probar un bloque de código en busca de errores. El bloque `except` te permite manejar el error. El bloque `else` ejecuta un pedazo de código cuando no hay excepciones. Aprender a usar estas estructuras proficientemente puede mejorar grandemente la confiabilidad y legibilidad de tu código.

### Ejemplo: Sintaxis Básica de `try/except/else`

```python
try:
  pass
   # Attempt to execute this code
except ExceptionType:
  pass
   # Handle the exception
else:
  pass
   # Execute code if no exceptions
```

## Ejemplos de `try/except/else`

Sumergámonos en algunos ejemplos prácticos para entender cómo implementar estas construcciones en tareas de codificación diarias.

### Ejemplo: Manejo de un `ZeroDivisionError`

Aquí, manejaremos un error de división por cero, que es una trampa común para principiantes.

```python
try:
    result = 10 / 0
except ZeroDivisionError:
    print("ZeroDivisionError: Cannot divide by zero.")
else:
    print(f"Division result is {result}")
```

En este ejemplo, el bloque `except` captura el `ZeroDivisionError`, evitando así que el programa se bloquee, y usa `print exception python` para informar al usuario sobre el error.

### Ejemplo: Lectura de Archivos con Manejo de Excepciones

Leer archivos sin saber si existen puede llevar a un `IOError`. Aquí te mostramos cómo manejar dichos escenarios.

```python3
try:
    with open('nonexistent_file.txt', 'r') as file:
        print(file.read())
except IOError:
    print("IOError: File not found.")
else:
    print("File read successfully.")
```

Este fragmento de código informa amablemente al usuario cuando un archivo no existe en lugar de terminar el programa abruptamente.

## Imprimiendo y Lanzando Excepciones

### Cómo `imprimir` una Excepción

Imprimir el problema exacto puede ayudar en la depuración. Puedes capturar e `imprimir` la excepción de la siguiente manera:

```python
try:
    # some code that can raise an exception
except Exception as e:
    print(f"An error occurred: {e}")
```

### Mejores Prácticas para Usar `try/except/else`

Aquí hay un resumen rápido de las mejores prácticas al usar la construcción try/except/else en Python:

1. **Capturar Excepciones Específicas**: Siempre intenta capturar excepciones específicas en lugar de usar una declaración `except` amplia. Este enfoque previene la captura de excepciones no intencionadas.
   
2. **Usar Else para Código que Depende del Bloque Try**: El bloque else debe contener código que solo debe ejecutarse si el bloque try no lanzó una excepción.

3. **Mantener el Bloque Try Mínimo**: Solo incluir código que pueda generar una excepción en el bloque try para evitar capturar excepciones que no deberían ser manejadas por el bloque except.

Al adherirse a estas prácticas, los desarrolladores pueden asegurarse de que su código Python sea tanto eficiente como fácil de solucionar problemas.

## Empleando la Construcción `try/finally`

Al escribir código, es esencial garantizar que ciertas operaciones se ejecuten pase lo que pase. Esto es especialmente cierto cuando se trata de recursos externos o acciones que deben finalizarse, como cerrar un archivo o una conexión de red. Python proporciona una construcción poderosa para abordar esto: el mecanismo `try/finally`, una parte integral del manejo de excepciones que asegura la ejecución de limpieza o código de terminación.

### Qué Es la Construcción `try/finally`

En Python, la construcción `try/finally` se usa para definir un bloque de código donde la parte `try` te permite probar un bloque de código por errores, y la parte `finally` te permite ejecutar código, independientemente del resultado del bloque try. Esta estructura asegura que el bloque finally se ejecute incluso si ocurre un error en el bloque try.

Esta construcción es especialmente importante para la gestión de recursos, como el manejo de archivos o conexiones de red, donde tienes que asegurarte de que los recursos se liberen correctamente después de su uso, independientemente de si ocurrió un error o no.

### Cómo Emplear `try/finally`

Aquí hay una guía paso a paso:

1. Comienza con la palabra clave `try` seguido de dos puntos para iniciar el bloque try.
2. Escribe el código que quieres ejecutar y que podría lanzar un error dentro del bloque try.
3. Después del bloque try, usa la palabra clave `finally` seguido de dos puntos para iniciar el bloque finally.
4. Escribe el código que debe ejecutarse independientemente de si ocurrió un error en el bloque try.

> Nota: La construcción `try/finally` se puede usar con o sin el bloque `except`. Sin embargo, esta sección se centra en el uso sin manejo explícito de excepciones (`except`).

### Ejemplos de Código para `try/finally`

Para ilustrar la construcción `try/finally`, veamos dos ejemplos.

Imagina que estás trabajando con un archivo y quieres asegurarte de que se cierre correctamente después de tus operaciones:

```python
try:
    f = open("test.txt", "r")
    print(f.read())
finally:
    f.close()
    print("File has been closed.")
```

En este ejemplo, sin importar lo que suceda después de abrir el archivo, el bloque `finally` asegura que el archivo se cierre.

Aquí hay un ejemplo que involucra un escenario de gestión de recursos más genérico:

```python
resource_allocated = False
try:
    print("Allocating Resource")
    resource_allocated = True
    # Simulate an error
    raise Exception("An error occurred!")
finally:
    if resource_allocated:
        print("Cleaning up Resource")
```

Incluso si ocurre un error y se genera después de la asignación del recurso, el bloque `finally` se ejecuta, asegurando la limpieza del recurso.

### Mejores prácticas para usar `try/finally` en Python

- **Gestión de Recursos**: Siempre use `try/finally` cuando maneje la gestión de recursos como el manejo de archivos, la comunicación de red o cuando trabaje con bases de datos para asegurar que los recursos sean liberados apropiadamente.
- **Evitar Lógica Complicada en Finally**: Mantenga la lógica del bloque finally simple y directa. Su propósito principal es la limpieza y liberación de recursos.
- **Depuración y Registro de Errores**: Mientras que la construcción `try/finally` no maneja excepciones, asegúrese de que cualquier error potencial sea registrado o gestionado fuera de esta construcción para una mejor depuración y seguimiento de errores.

## Fusionando `finally` y `except` mediante Anidación

Cuando trabaja con el manejo de excepciones en Python, es esencial entender cómo manejar efectivamente tanto los errores como el proceso de limpieza. Fusionar los bloques `finally` y `except` mediante anidación proporciona una manera sofisticada de manejar las excepciones (`except Exception as e`) y asegurar que las operaciones de limpieza necesarias se realicen independientemente de si ocurrió un error. Este enfoque es particularmente útil en escenarios donde necesita un alto nivel de control sobre el manejo de errores y la gestión de recursos.

### Entendiendo Python Anidado Try Except

Anidar declaraciones `try` en Python permite un enfoque matizado para el manejo de excepciones. Al colocar un bloque `try-except` dentro de otro bloque `try`, puede capturar excepciones de manera más granular. Esta técnica, conocida como **python nested try except**, es beneficiosa cuando se trata de código que puede lanzar múltiples tipos de excepciones.

### Básico Anidado `try` `except`

```python
try:
    # Outer try block
    try:
        # Possible error-prone code
        result = 10 / 0
    except ZeroDivisionError as e:
        print(f"Caught an exception: {e}")
    finally:
        print("This is the inner finally block executing.")
except Exception as e:
    # Outer except block
    print(f"Outer exception caught: {e}")
finally:
    print("This is the outer finally block executing.")
```

En este ejemplo, manejamos un `ZeroDivisionError` dentro del bloque interno `try-except`, demostrando el método de **manejo de excepciones atrapa todo**. Ambos bloques `finally` aseguran que se ejecute el código de limpieza, mostrando cómo fusionar efectivamente los bloques `finally` y `except`.

### Escenario Avanzado

```python
try:
    # Outer block attempting file operations
    with open("nonexistent_file.txt", "r") as f:
        content = f.read()
    try:
        # Code that could potentially cause another exception
        process_content(content)
    except Exception as e:
        print(f"Error processing content: {e}")
    finally:
        print("Inner clean-up code executed.")
except FileNotFoundError as e:
    print(f"File error: {e}")
finally:
    print("Outer clean-up code executed, ensuring resources are freed.")
```

Este ejemplo avanzado ilustra cómo manejar un `FileNotFoundError` específico y una excepción general usando el enfoque **except exception as e**. Los bloques `try-except` anidados permiten un control preciso sobre el manejo de excepciones y la gestión de recursos.

> Nota: Siempre asegúrate de que el bloque `finally` contenga código que debe ejecutarse, como cerrar archivos o liberar recursos del sistema, para evitar la fuga de recursos.

### Beneficios de Anidar Finally y Except

1. **Manejo de Errores Mejorado**: Permite manejar diferentes excepciones en múltiples niveles, proporcionando flexibilidad.
2. **Gestión de Recursos**: Asegura que el código de limpieza se ejecute, crucial para gestionar recursos como manejadores de archivos o conexiones de red.
3. **Legibilidad del Código**: Facilita entender qué parte del código es responsable de manejar excepciones específicas.

Usar bloques `try-except` anidados, junto con `finally`, es un patrón poderoso en el **manejo de excepciones**. Proporciona el conjunto de herramientas necesario para escribir código robusto y tolerante a errores, asegurando tanto un manejo preciso de errores como una gestión efectiva de recursos. Este enfoque es especialmente beneficioso en aplicaciones complejas donde no liberar recursos o manejar errores de manera apropiada puede tener implicaciones significativas.

## Objetos de Excepciones

Al trabajar con Python, encontrarse con errores y excepciones es inevitable. Las excepciones son objetos en Python que interrumpen el flujo normal de ejecución de un programa cuando ocurre un error. Python proporciona una jerarquía de clases de excepciones integradas que pueden ser extendidas para crear excepciones personalizadas. Este mecanismo es crucial para el manejo de errores y contribuye a la robustez de las aplicaciones en Python.

### Qué Son las Excepciones

Las excepciones son objetos que encapsulan información sobre errores que ocurren durante la ejecución del programa. Cuando ocurre un error, Python genera un objeto de excepción. Si no se maneja, este objeto se propaga hacia arriba y puede causar la terminación del programa. Manejar las excepciones adecuadamente permite que tu programa responda a los errores de manera elegante.

### Clase de Excepción de Python

La clase base para todas las excepciones en Python es `Exception`. Esta clase se puede subclasificar para crear excepciones personalizadas, permitiendo a los desarrolladores agregar funcionalidades o información adicionales a sus rutinas de manejo de excepciones.

### Creando una Excepción Personalizada

Para crear una excepción personalizada, simplemente subclasificas la clase `Exception` y defines cualquier método o propiedad adicional que necesites.

```python
class MyCustomError(Exception):
    """A custom exception class."""
    pass
```

### Agregando un Mensaje de Excepción

Al generar una excepción personalizada, a menudo es útil proporcionar un mensaje de error detallado pasando una cadena al constructor de la excepción. Este mensaje se almacena en el atributo `args` del objeto de excepción.

```python
raise MyCustomError("This is an error message")
```

### Trabajando Con Objetos de Excepción

Cuando se lanza una excepción, se puede atrapar usando un bloque de `try` y `except`. Luego se puede acceder al objeto de excepción en el bloque `except` para recuperar información sobre el error.

1. Capturando Excepciones
2. Accediendo al Mensaje de la Excepción
3. Manejo Personalizado Basado en el Tipo de Excepción

### Accediendo al Mensaje de la Excepción

En este ejemplo, accedemos al mensaje de una excepción dentro de un bloque `except`:

```python3
try:
    raise ValueError("A sample value error")
except ValueError as e:
    print("Exception:", str(e))
```

> Nota: Siempre considere usar las clases de excepción integradas antes de crear unas personalizadas, ya que es posible que sus necesidades ya estén cubiertas por la biblioteca estándar de Python.

## Diseñando Excepciones

Al trabajar con Python, manejar errores de manera elegante es una parte crítica del diseño de aplicaciones robustas. La construcción `try except` te permite capturar y manejar errores, evitando que tu programa se caiga inesperadamente. El manejo de excepciones no solo se trata de capturar errores, sino también de proporcionar mensajes de error significativos y, cuando sea necesario, habilitar el desarrollo o la depuración imprimiendo el rastro de la pila. Profundicemos en cómo puedes diseñar excepciones de manera efectiva en Python.

### Utilizando el Mensaje de Error `try/except`

Cuando ocurre un error, es crucial proporcionar un mensaje de error claro e informativo al usuario o al desarrollador. Esto se puede lograr aprovechando los bloques `try` y `except` de Python. Aquí hay un ejemplo:

```python
try:
    # Code block where you suspect an error might occur
    result = 10 / 0
except ZeroDivisionError as e:
    print(f"An error occurred: {e}")
```

En este ejemplo, si ocurre una división por cero, el bloque `except` captura el `ZeroDivisionError` y muestra un mensaje de error personalizado.

### Ejemplo: Imprimir Rastreo de Excepciones

Para propósitos de depuración, podría ser imperativo ver la secuencia de llamadas a funciones que condujeron al error. Aquí es donde imprimir el rastreo de la pila se vuelve útil. Python proporciona el módulo [traceback](https://docs.python.org/3/library/traceback.html), que se puede usar para `print` el rastreo de la pila. Aquí te mostramos cómo puedes hacerlo:

```python
import traceback

try:
    # Code block where an error is expected
    result = 10 / 0
except ZeroDivisionError:
    traceback.print_exc()
```

Este fragmento de código no solo capturará el `ZeroDivisionError` sino que también `imprimirá` la traza de la pila, facilitando la depuración del error.

### Mejores Prácticas para Diseñar Excepciones

Al manejar excepciones, hay varias mejores prácticas que debes seguir:

1. **Capturar Excepciones Específicas**: Siempre trata de capturar excepciones específicas en lugar de capturar todas las excepciones de manera genérica. Esto evita que errores no intencionados sean ignorados silenciosamente.
   
2. **Proporcionar Mensajes Informativos**: Al capturar excepciones, asegúrate de proporcionar mensajes de error informativos y amigables para el usuario.
   
3. **Usar Finally para Limpieza**: Utiliza el bloque `finally` para asegurar que las acciones de limpieza se realicen, como cerrar archivos o liberar recursos, independientemente de si se capturó una excepción o no.

> Nota: Es importante encontrar un equilibrio entre capturar excepciones específicas y no hacer que el manejo de errores sea demasiado granular, lo que puede hacer que el código sea engorroso y difícil de mantener.
