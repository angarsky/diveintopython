> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/variables/boolean

Una variable booleana es una variable que puede contener uno de dos posibles valores: `True` o `False`. Las variables booleanas se utilizan a menudo en declaraciones condicionales y bucles para controlar el flujo del programa.

## Declaración de Variable Bool en Python

Para declarar una variable Booleana en Python, simplemente asignas el valor `True` o `False` a un nombre de variable. Aquí hay un ejemplo:

```python
x = True
y = False
```

También puedes utilizar operadores booleanos como `and`, `or` y `not` para combinar o negar valores booleanos. Por ejemplo:

```python3
a = True
b = False
print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```

En este ejemplo, `a and b` se evalúa como `False` porque tanto `a` como `b` no son `True`. `a or b` se evalúa como `True` porque al menos uno entre `a` y `b` es `True`. Y `not a` se evalúa como `False` porque `a` es `True` y el operador `not` lo niega.

## Ejemplos de uso de variable booleana

Como ya mencionamos, la variable booleana se utiliza principalmente en los enunciados condicionales y de bucle.

### Enunciados condicionales

```python3
# Declaring a boolean variable
is_raining = True

# Checking the value of the boolean variable using a conditional statement
if is_raining:
    print("Bring an umbrella")
else:
    print("No need for an umbrella")

# Output: Bring an umbrella
```

### Declaraciones de bucle

```python3
# Declaring a boolean variable
has_items = True

# Looping while the boolean variable is True
while has_items:
    # Do something here...
    print("Processing an item...")
    
    # Ask the user if there are more items
    response = input("Are there more items to process? (y/n) ")
    
    # Update the boolean variable based on the user's response
    if response.lower() == "y":
        has_items = True
    else:
        has_items = False

# Output: 
# Processing an item...
# Are there more items to process? (y/n) y
# Processing an item...
# Are there more items to process? (y/n) n
```
