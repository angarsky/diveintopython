> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/variables/boolean

Une variable booléenne est une variable qui peut contenir l'une des deux valeurs possibles : `True` ou `False`. Les variables booléennes sont souvent utilisées dans les instructions conditionnelles et les boucles pour contrôler le flux du programme.

## Déclaration d'une Variable Bool en Python

Pour déclarer une variable booléenne en Python, vous assignez simplement la valeur `True` ou `False` à un nom de variable. Voici un exemple :

```python
x = True
y = False
```

Vous pouvez également utiliser des opérateurs booléens comme `and`, `or`, et `not` pour combiner ou nier des valeurs booléennes. Par exemple :

```python3
a = True
b = False
print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```

Dans cet exemple, `a and b` évalue à `False` parce que `a` et `b` ne sont pas `True`. `a or b` évalue à `True` parce qu'au moins un entre `a` et `b` est `True`. Et `not a` évalue à `False` parce que `a` est `True` et l'opérateur `not` le nie.

## Exemples d'utilisation de Variable Booléenne

Comme nous l'avons déjà mentionné, la variable booléenne est principalement utilisée dans les instructions conditionnelles et les boucles.

### Instructions conditionnelles

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

### Les instructions de boucle

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
