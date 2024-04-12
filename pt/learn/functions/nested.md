> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions/nested

Nested functions are a **powerful tool** available in Python programming that allows one to define functions inside other functions. Such a concept of nesting one function inside another can create more organized and manageable code. With the help of nested functions, the code becomes easier to read and is also more efficient. In this article, we will take a closer look at what are nested functions and why they are used in Python.  
  
## Understanding Python's Nested Functions  

Nested functions in Python refer to creating functions inside another function. In other words, a function can be defined inside another function, and it can access the variables declared in its outer function.

Nested functions are useful in situations where we need to define a helper function that is only needed within the scope of the outer function. Nested functions improve readability and help modularize code.

### Two Examples of Nested Functions in Python

```python3
def outer_function(x):
    def inner_function(y):
        return x + y
    return inner_function

add_five = outer_function(5)
print(add_five(3)) # Output: 8
```

In this example, we define two functions: the `outer_function` and the `inner_function`. The `outer_function` takes one argument `x` and returns the `inner_function`. The `inner_function`, in turn, takes one argument `y` and returns the sum of `x` and `y`. 

We assign the output of `outer_function(5)` to the variable `add_five`, which becomes a function that adds `5` to its argument. When we call `add_five(3)`, we get `8` as the result.

```python3
def outer_function():
    x = 1
    def inner_function():
        y = 2
        return x + y
    return inner_function()

print(outer_function()) # Output: 3
```

In this example, we define an `outer_function` that initializes a variable `x` to 1 and returns the output of the `inner_function`. The `inner_function` initializes a variable `y` to `2` and returns the sum of `x` and `y`.

When we call `outer_function()`, we get `3` as the result, which is the sum of `x` and `y`. The `inner_function` is called within the scope of the `outer_function`, and it has access to the variable `x` declared in the `outer_function`.  
  
## Advantages of Using Nested Functions in Python  

Nested functions within Python code offer a range of benefits, empowering developers to create a more robust and adaptable programming structure, enhance code readability, and craft modular code that is simpler to maintain.

### Encapsulation and Modularity

A primary advantage of nested functions lies in their capacity to define helper functions within a specific function's scope. By doing so, it prevents cluttering the global namespace and promotes code organization. Consider the following example:

```python
def double_odd_numbers(numbers):
    def is_odd(num):
        return num % 2 != 0
    
    def double(num):
        return num * 2
    
    return [double(num) for num in numbers if is_odd(num)]
```

In this instance, `double_odd_numbers` encompasses `is_odd` and `double` functions, streamlining comprehension as these functions are solely utilized within the main function's context.

### Closure Creation

Another notable advantage of nested functions is their ability to generate closures. This enables nested functions to access and manipulate variables from their enclosing function. For instance:

```python3
def power_function(base):
    def exponent_power(exponent):
        result = 1
        for _ in range(exponent):
            result *= base
        return result
    
    return exponent_power

square = power_function(2)
cube = power_function(3)

print(square(3))  # Output: 8
print(cube(2))    # Output: 9
```

In this scenario, `power_function` produces a new function, `exponent_power`, capable of computing the power of a base raised to a given exponent. Utilizing this nested structure, functions like `square` and `cube` acquire access to the base variable from the enclosing function, simplifying the creation of new functions with different base values.

By leveraging nested functions, Python developers can enhance code modularity, readability, and exploit powerful closure functionalities to create more versatile and efficient code structures.  
  
## Creating Nested Functions in Python

Nested functions in Python refer to the process of creating a function inside another function. This process allows for better organization and readability of code. To create a nested function in Python, follow these steps:

1. **Create** the outer function.
2. **Define** the inner function within the outer function.
3. **Call** the inner function within the outer function or return it.

In conclusion, creating nested functions in Python is a useful technique for organizing and streamlining code. It allows for better readability and can streamline complex processes.  
  
## Examples of Python Nested Functions in Real-World Applications  

Nested functions are functions **inside other functions**. These functions are particularly useful in programming. They can be used in real-world applications in Python. For instance, a nested function could define a function that calls another function. Or, a nested function could define a function that uses a previously defined function. In addition, a nested function could provide a local scope.

```python3
def parent_function(x):
    def child_function(y):
        return y * 2
    return x + child_function(x)

print(parent_function(5))
```

In this example, `child_function` is a nested function. It is defined inside `parent_function`. `parent_function` takes in a parameter `x`. Then it uses `child_function` to double `x`. Finally, it returns the sum of `x` and `child_function(x)`. When we run `parent_function(5)`, we get 15 as the result.

```python3
def adder(a):
    def inner(x):
        return x + a
    return inner

x = adder(3)
y = adder(5)
print(x(5))
print(y(5))
```

In this example, `inner` is a nested function. It is defined inside `adder`. `adder` takes in a parameter a. `adder` returns `inner`. `inner` takes in a parameter `x`. It returns the sum of `x` and `a`. When we call `adder(3)`, we get `inner`. We store the `inner` as `x`. The same is true for `adder(5)` which we store as `y`. When we call `x(5)`, we get 8 as the result. When we call `y(5)`, we get 10 as the result.

```python
def exponential(x):
    def square(y):
        return y * y
    return square(x) * square(x)

print(exponential(2))
```

In this example, `square` is a nested function. It is defined inside `exponential`. `exponential` takes in a parameter `x`. `exponential` returns the square of `x` raised to the fourth power. `square` takes in a parameter `y`. It returns the square of `y`. When we run `exponential(2)`, we get 16 as the result.  
  
## Best Practices for Using Nested Functions in Python  

Nested functions refer to defining a function within another function in Python. This can be useful for code organization and encapsulation. Best practices for using nested functions include avoiding excessive nesting, ensuring each function has a clear and specific purpose, and using appropriate variable scopes.

To use nested functions in Python, define the outer function and then define the inner function within it. The inner function has access to the variables within the outer function, but not vice versa. Here are two examples:

```python3
# Example 1: Power function using nested functions
def power_function(num):
    def inner_power(power):
        return num ** power
    return inner_power

# Example usage
square_function = power_function(2)
cube_function = power_function(3)
print(square_function(5))  # Output: 32
print(cube_function(5))  # Output: 243
```

```python3
# Example 2: Functions in a loop
def generate_functions():
    functions = []
    for i in range(5):
        def inner_function(num):
            return num + i
        functions.append(inner_function)
    return functions

# Example usage
functions_list = generate_functions()
for j, f in enumerate(functions_list):
    print(f(j))  # Output: 4 5 6 7 8
```

In the first example, a power function is created using nested functions. The outer function takes a number and returns the inner function, which calculates the power of that number. The inner function is defined within the scope of the outer function, allowing it to access the `num` parameter and calculate the power.

In the second example, a list of functions is generated using a loop and nested functions. The inner function is defined within the loop, giving it access to the loop variable `i`. The resulting list of functions can then be used to perform calculations using different values of `i`.  
  
## Differences Between Nested Functions and Anonymous Functions in Python  

Nested functions are functions that are defined inside another function. These functions are only accessible from within the outer containing function. On the other hand, anonymous functions are functions without names that are defined using the lambda keyword. These functions can be defined anywhere in the program and can be passed as arguments to other functions.

### Nested Function

```python3
def outer_func(x):
   def inner_func(y):
       return x*y
   return inner_func

result = outer_func(5)
print(result(7))  # Output: 35
```

In this example, the function `inner_func` is defined inside `outer_func`, making it a nested function. We then return `inner_func` as the result of calling `outer_func`. The variable `result` is assigned to the inner function with `x` set to `5`. We then call `result` with `y` equal to `7` to get the output of `35`.

### Anonymous Function

```python
list_nums = [1, 2, 3, 4, 5]
new_list = list(map(lambda x: x*2, list_nums))
print(new_list)  # Output: [2, 4, 6, 8, 10]
```

In this example, we use an anonymous function defined by the `lambda` keyword and passed it as an argument to the `map` function. This function multiplies each element of `list_nums` by `2` and returns a new list with the mapped results stored in `new_list`.  
  
## Common Errors to Avoid When Using Nested Functions in Python Programming  

To avoid common errors when using nested functions in Python programming, it is important to ensure that function names and variables are **not repeated** within a nested function and its parent function, as this may cause confusion and errors.

Other common errors to avoid include improperly calling a function within another function, and using loops incorrectly within nested functions. Additionally, care must be taken when using functional programming techniques and power functions in nested functions.

For example, the following code illustrates a common error when a variable is defined in both a parent and nested function:

```python
def parent_func():
    num = 2
    def nested_func():
        num = num * 2 # This will raise an UnboundLocalError when the function will be called
        return num
    return nested_func()
```
