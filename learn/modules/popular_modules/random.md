## The Random Module  

The [random](https://docs.python.org/3/library/random.html) module in Python is used to generate pseudo-random numbers. 

```python
import random

# Generate a random number between 1 and 10 (inclusive)
random_number = random.randint(1, 10)
print(random_number)

# Output:
# 5 (this number will be different each time the code is run)
```

In the above example, the `random.randint(a, b)` function is used to generate a random integer between the values of `a` and `b`, inclusive of both endpoints. In this case, the random number generated will be between `1` and `10`.

```python
import random

# Generate a random choice from a list of options
options = ["rock", "paper", "scissors"]
random_option = random.choice(options)
print(random_option)

# Output:
# "paper" (this option will be different each time the code is run)
```

In this example, the `random.choice(seq)` function is used to generate a random choice from a list of options. In this case, the random choice generated will be one of the three options in the `options` list - `rock`, `paper`, or `scissors".  
