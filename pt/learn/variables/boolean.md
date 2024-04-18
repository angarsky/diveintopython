> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/boolean

Uma variável Booleana é uma variável que pode conter um de dois valores possíveis: `True` ou `False`. Variáveis Booleanas são frequentemente usadas em declarações condicionais e laços para controlar o fluxo do programa.

## Declaração de Variável Bool em Python

Para declarar uma variável Booleana em Python, você simplesmente atribui o valor `True` ou `False` a um nome de variável. Aqui está um exemplo:

```python
x = True
y = False
```

Você também pode usar operadores booleanos como `and`, `or` e `not` para combinar ou negar valores booleanos. Por exemplo:

```python3
a = True
b = False
print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```

Neste exemplo, `a and b` resulta em `False` porque tanto `a` quanto `b` não são `True`. `a or b` resulta em `True` porque pelo menos um entre `a` e `b` é `True`. E `not a` resulta em `False` porque `a` é `True` e o operador `not` o nega.

## Exemplos de Utilização de Variáveis Booleanas

Como já mencionamos, a variável booleana é principalmente usada nas instruções condicionais e nos laços de repetição.

### Instruções condicionais

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

### Declarações de loop

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
