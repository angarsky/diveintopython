> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/variables/boolean

A Boolean variable is a variable that can hold one of two possible values: `True` or `False`. Boolean variables are often used in conditional statements and loops to control the flow of the program.

## Bool Variable Declaration in Python

To declare a Boolean variable in Python, you simply assign the value `True` or `False` to a variable name. Here's an example:

```python
x = True
y = False
```

You can also use Boolean operators such as `and`, `or`, and `not` to combine or negate Boolean values. For example:

```python
a = True
b = False
print(a and b)  # False
print(a or b)   # True
print(not a)    # False
```

In this example, `a and b` evaluates to `False` because both `a` and `b` are not `True`. `a or b` evaluates to `True` because at least one of `a` and `b` is `True`. And `not a` evaluates to `False` because `a` is `True` and the `not` operator negates it.

## Examples of Boolean Variable Usage

As we already mentioned, boolean variable is mainly used in the conditional and loop statements.

### Conditional statements

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

### Loop statements

```python
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
