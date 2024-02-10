[!NOTE]
>  Вы можете прочитать эту статью на сайте: https://diveintopython.org/ 
 ru/learn/variables/boolean

Переменная типа Boolean — это переменная, которая может принимать одно из двух возможных значений: `True` или `False`. Переменные типа Boolean часто используются в условных операторах и циклах для управления потоком программы.

## Объявление переменной типа Bool в Python

Чтобы объявить переменную типа Boolean в Python, достаточно присвоить переменной значение `True` или `False`. Вот пример:

```python
x = True
y = False
```

Dы также можете использовать логические операторы, такие как `and`, `or` и `not`, для комбинирования или инвертирования булевых значений. Например:


```python
a = True
b = False
print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```

В этом примере `a and b` оценивается как `False`, потому что и `a`, и `b` не являются `True`. `a or b` оценивается как `True`, потому что хотя бы одно из `a` или `b` является `True`. И `not a` оценивается как `False`, потому что `a` является `True`, а оператор `not` его инвертирует.

## Примеры использования переменной типа Boolean

Как мы уже упоминали, переменная типа Boolean в основном используется в условных операторах и циклах.

### Условные операторы

```python
# Declaring a boolean variable
is_raining = True

# Checking the value of the boolean variable using a conditional statement
if is_raining:
    print("Bring an umbrella")
else:
    print("No need for an umbrella")

# Output: Bring an umbrella
```

### Операторы цикла

``python
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

