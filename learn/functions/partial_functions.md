> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions/partial-functions

Python offers a range of functions to developers. Partial functions in Python are an exciting addition that can be extremely useful, particularly when dealing with complex code. A partial function is a function that has some of its arguments already defined, making it easier to call. In this article, we explore the concept of partial functions in Python and how they can be used effectively in different programming scenarios.  
  
## Understanding Python partial functions: a beginner's guide to function modification  

A **partial function** in Python is a function that is defined with some of its arguments already set. This allows us to create new functions from existing ones that have some of the arguments pre-configured. The resulting function is called a partial function. 

For example, consider the following normal function that adds two numbers. We can create a new partial function from this function by setting one of the arguments:

```python3
from functools import partial

def add(a, b):
    return a + b

add_3 = partial(add, 3)

print(add_3(4)) # Output: 7
```

Here, we have created a new partial function called `add_3` which adds 3 to any number we pass to it. We did this by using the `partial` function from the `functools` module.

We can also use partial functions to modify an existing function by passing a new value for one of its arguments:

```python3
from functools import partial

power_of_2 = partial(pow, 2)

print(power_of_2(3)) # Output: 8
```

In this example, we have created a new partial function called `power_of_2` which takes a number and computes 2 to the power of this number.

We can also use partial functions to modify an existing function by passing new values for more than one of its arguments, specifying which arguments are being passed:

```python3
from functools import partial

modulo_2 = partial(pow, exp=1, mod=2)

print(modulo_2(3)) # Output: 1
print(modulo_2(8)) # Output: 0
```

In this example, we have created a new partial function called `modulo_2` which takes a number and computes its modulo with 2 using the built-in function `pow`.
  
## How to use partial functions in Python to simplify recurring code snippets  

Partial functions are functions that are defined with some of its arguments already set, which reduces the need to repeat code snippets in Python. They are created using the `functools` module's `partial()` method and can be used to simplify complex code.

The keywords used in this answer are function and partial function.

### Two examples of using partial functions in Python

Suppose we have a function that calculates the area of a rectangle. We need to calculate the area of several rectangles with a fixed `width` of `10`. Instead of creating a new function, we can create a partial function with the fixed width argument:

```python3
from functools import partial

def calculate_area(length, width):
    return length * width

calculate_area_with_fixed_width = partial(calculate_area, width=10)

area1 = calculate_area_with_fixed_width(5)
area2 = calculate_area_with_fixed_width(7)

print(area1) # 50
print(area2) # 70
```

Suppose we have a function that generates a URL from a path and some query parameters. We need to generate URLs with a fixed path and some variable query parameters. Instead of repeating the path argument every time, we can create a partial function with the fixed path argument:

```python3
from functools import partial

def generate_url(path, params):
    url = "https://example.com" + path + "?"
    for key, value in params.items():
        url += key + "=" + value + "&"
    return url[:-1]

generate_url_with_fixed_path = partial(generate_url, "/search")

url1 = generate_url_with_fixed_path({"q": "Python"})
url2 = generate_url_with_fixed_path({"q": "Java", "sort": "date"})

print(url1) # https://example.com/search?q=Python
print(url2) # https://example.com/search?q=Java&sort=date
```  
  
## Exploring the advantages of partial functions in Python: a practical example  

Partial functions in Python are functions that are partially defined and contain fixed values for certain parameters. These functions offer several advantages, such as enhanced reusability and reduced code redundancy. A practical example of using partial functions in Python is the implementation of the exponential function, where a partial function can be created to predefine the base of the exponent.

### Function Example: Exponential Function

The exponential function is used in many mathematical operations and can be easily implemented in Python using the `exp` function from the `math` module. However, if we want to calculate the exponential value of a number with different bases, we need to write separate lines of code for each operation. This can result in code redundancy and decreased readability.

```python
import math

x = 5

exponential_2 = math.exp(2 * x)
exponential_3 = math.exp(3 * x)
exponential_4 = math.exp(4 * x)
```

To avoid this and make the code more concise, we can use partial functions in Python. We can define a partial function for the `exp` function with a fixed parameter for the base using the `partial` function from the `functools` module. Then, we can call the partial function with the variable parameter `x`.

```python
import math
from functools import partial

exp_base_2 = partial(math.exp, 2)
exp_base_3 = partial(math.exp, 3)
exp_base_4 = partial(math.exp, 4)

x = 5

exponential_2 = exp_base_2(x)
exponential_3 = exp_base_3(x)
exponential_4 = exp_base_4(x)
```

This way, we can easily calculate the exponential value of a variable `x` for different bases using the defined partial functions without having to rewrite the code for each operation.

### Partial Function Example: Multiply Function

Another example of using partial functions in Python is the implementation of the `multiply` function. Suppose we have a list of numbers that we want to multiply by a fixed value `x`. We can define a partial function using the `partial` function from the `functools` module to create a new function that multiplies a given number by `x`.

```python3
from functools import partial

multiply = partial(lambda x, y: x * y, 2)

result = map(multiply, [1, 2, 3, 4, 5])
print(list(result))    # Output: [2, 4, 6, 8, 10]
```

In this example, the `multiply` function is defined as a partial function that accepts two arguments, `x` and `y`. The first argument `x` is fixed to the value `2`, and the second argument `y` is passed as a variable parameter using `map` function to multiply each item in the list by `2` and return the result. This results in a more concise and readable code.  
  
## When to Use Partial Functions vs. Lambdas in Python: Key Differences and Similarities  

Partial functions are functions that have a fixed set of predefined arguments, and the rest of the arguments can be passed at a later time. On the other hand, lambda functions are anonymous functions that can be defined on the fly.

Use partial functions when you have a function with fixed arguments and you want to reuse it with different values for the remaining arguments. Use lambdas when you need to quickly define a simple function without giving it a name.

Key differences and similarities:

- Partial functions are defined using the `functools.partial()` function, while lambda functions are defined using the `lambda` keyword.
- Partial functions can have a fixed set of predefined arguments, while lambdas can have any number of arguments.
- Both partial functions and lambdas can be used as arguments to other functions.

### Example of Using a Partial Function

```python3
import functools

def multiply(x, y):
    return x * y

double = functools.partial(multiply, y=2)

print(double(3))   # Output: 6
```

### Example of Using a Lambda Function

```python
add = lambda x, y: x + y

print(add(2, 3))   # Output: 5
```  

## How to Create Partial Functions in Python: a Step-by-step Tutorial  

To create a partial function in Python, you need to follow the following steps:

1. Import the `functools` module.
2. Define the original function that you want to use as a partial function.
3. Use the `partial()` function to create a new function that has some parameters already set.

```python
import functools

def multiply(x, y):
    return x * y

multiply_by_two = functools.partial(multiply, 2)
print(multiply_by_two(5)) # Output: 10
```

In this example, a partial function called `multiply_by_two` is created from the `multiply()` function, with the first parameter set to 2. When `multiply_by_two()` is called with the parameter 5, it multiplies 2 by 5 and returns 10.

```python3
import functools

def power(base, exponent):
    return base ** exponent

square = functools.partial(power, exponent=2)
cube = functools.partial(power, exponent=3)

print(square(5)) # Output: 25
print(cube(5)) #Output: 125
```

In this example, partial functions called `square` and `cube` are created using the `power()` function, with the exponent parameter set to 2 and 3, respectively. When `square(5)` is called, it returns 25, and when `cube(5)` is called, it returns 125.  
  
## Enhancing Code Readability with Partial Functions in Python: Tips and Tricks  

One way to use partial functions is to reduce code duplication. For example, suppose we have two functions that compute the `average` of two numbers: 

```python
def average(a, b): 
    return (a + b) / 2 

def average_three(a, b, c): 
    return (a + b + c) / 3
```

We can use a partial function to **avoid duplicating** the code for adding up the numbers: 

```python3
from functools import partial 

def add(*args): 
    return sum(args) 

average_two = partial(add, 2) 
average = partial(add, 3) 

print(average_two(4)) # prints 3.0
print(average(1, 2, 3)) # prints 2.0
```

Another way to use `partial` functions is to create defaults for optional parameters. For example, suppose we have a function that formats a number with a specified number of decimal places: 

```python
from functools import partial 

def format_number(number, digits): 
    return f"{number:.{digits}f}"

format_two_digits = partial(format_number, digits=2) 

print(format_number(3.14159, 2)) # prints 3.14
print(format_two_digits(3.14159)) # prints 3.14
```

In both cases, the use of partial functions makes the code more readable by explicitly stating the intent of the code in a way that is easier to understand and maintain.  
