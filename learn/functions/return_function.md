> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions/return-function


Returning a function from a function means that a function is created and returned as output of another function. This is possible in Python because functions are first-class objects, which means they can be passed around just like any other object such as integers, strings, or lists.

## Return Function in Python

In the following examples, Python functions are utilized to return other functions, allowing for dynamic behavior based on input parameters.

### Example 1: Basic Usage of Function Return

Consider `function1`, which returns another function, `function2`. This inner function `function2` multiplies its argument by a specified value, `a`. When `function1(5)` is called, it returns `function2` with `a` set to `5`. The resulting function is assigned to the variable `multiply_by_5`. Subsequently, calling `multiply_by_5(3)` outputs `15`.

```python
def function1(a):
    def function2(b):
        return a * b
    return function2

multiply_by_5 = function1(5)
result = multiply_by_5(3)
print(result)  # Output: 15
```

### Example 2: Conditional Return of Functions

In this scenario, `function3` determines which function to return based on the value of the `operation` parameter. It contains two inner functions: `add_numbers` and `multiply_numbers`, respectively performing addition and multiplication operations.

By passing either `add` or `multiply` to `function3`, it returns the corresponding inner function. For instance, if `operation_type` is set to `add`, the `add_numbers` function is assigned to the `math_function` variable. Invoking `math_function(3, 5)` will add the two numbers, resulting in an output of `8`.

```python
def function3(operation):
    def add_numbers(a, b):
        return a + b
    
    def multiply_numbers(a, b):
        return a * b
    
    if operation == "add":
        return add_numbers
    elif operation == "multiply":
        return multiply_numbers

operation_type = "add"
math_function = function3(operation_type)
result = math_function(3, 5)
print(result)  # Output: 8
```

In summary, these examples illustrate how Python functions can be utilized to return other functions dynamically, providing versatility in handling operations based on input conditions.

## Exploring the Concept of Nested Functions and Returning Functions  

In Python, functions can be nested, which means you can define one function inside another function. You can also return a function from another function in Python. This concept of nested functions and returning functions allows for more flexibility and is a powerful tool in programming.

### Example 1: Returning a Function from a Function

```python 
def create_adder(num):
    def adder(x):
        return num + x
    return adder

add5 = create_adder(5)
print(add5(3))    # Output: 8
```

In this example, we define a function `create_adder` that takes a parameter `num`. Inside `create_adder`, we define another function `adder` that takes a parameter `x` and returns the sum of `num` and `x`. Finally, `create_adder` returns `adder`.

We then create a new function `add5` by calling `create_adder(5)`. This means that `add5` is now a reference to `adder` with `num` set to 5. When we call `add5(3)`, we pass the parameter `x` as `3`, which results in the output `8`.

### Example 2: Nested Functions

```python 
def outer_function(num):
    def inner_function(x):
        return num + x
    return inner_function

add3 = outer_function(3)
add5 = outer_function(5)

print(add3(10))    # Output: 13
print(add5(10))    # Output: 15
```
In this example, we define a function `outer_function` that takes a parameter `num`. Inside `outer_function`, we define another function `inner_function` that takes a parameter `x` and returns the sum of `num` and `x`. Finally, `outer_function` returns `inner_function`.

We then create two new functions `add3` and `add5` by calling `outer_function(3)` and `outer_function(5)` respectively. This means that `add3` is now a reference to `inner_function` with `num` set to 3, and `add5` is a reference to `inner_function` with `num` set to 5. When we call `add3(10)` and `add5(10)`, we pass the parameter `x` as `10`, which results in the output `13` and `15` respectively.

## Understanding the Advantages of Returning a Function from Another Function  

One of the significant benefits of returning a function from another function in Python is that it provides flexibility. By returning a function, the programmer can create a more specific and customized function based on the inputs passed to the original function. It also allows for efficient code reuse.

Another advantage of returning a function from another function is that it can simplify code complexity, leading to a more readable code structure. The code becomes more organized and understandable, thus enhancing its maintenance and debugging processes.

Here are two examples of returning a function from a function in Python:

### Example 1: Returning a Function That Multiplies Any Number By a Given Factor:

```python
def multiply(factor):
    def inner(num):
        return num * factor
    return inner

double = multiply(2)
triple = multiply(3)

print(double(5)) #output: 10
print(triple(5)) #output: 15
```

By calling `multiply(2)` and `multiply(3)`, we create two new functions `double` and `triple`, respectively, that can be used to multiply any number by `2` or `3`.

### Example 2: Returning a Function That Performs Mathematical Operations:

```python
def operate(operation):
    def inner(num1, num2):
        if operation == 'add':
            return num1 + num2
        elif operation == 'subtract':
            return num1 - num2
        elif operation == 'multiply':
            return num1 * num2
        elif operation == 'divide':
            return num1 / num2
    return inner

add_func = operate('add')
subtract_func = operate('subtract')

print(add_func(10, 5)) #output: 15
print(subtract_func(10, 5)) #output: 5
```

By calling `operate('add')` and `operate('subtract')`, we create two new functions `add_func` and `subtract_func`, respectively, that can be used to perform addition and subtraction operations on any two numbers.

## Understanding the Different Ways of Defining and Returning Functions in Python 

Returning a function from a function can be useful in situations where we need to create functions dynamically based on certain conditions.

```python
def create_adder(num):
    def adder(x):
        return x + num
    return adder

add5 = create_adder(5)
print(add5(10)) # Output: 15
```

In this example, we define a function called `create_adder` that takes a `num` parameter. Within the `create_adder` function, we define another function called `adder` that takes an `x` parameter and returns the sum of `num` and `x`. Finally, we return the `adder` function as an output. 

We then assign the output of `create_adder(5)` to a variable called `add5`. This means that `add5` is now a function that takes a parameter `x` and returns the sum of `5` and `x`. When we call `add5(10)`, it returns `15`.

## Exploring the Use Arguments in Returned Functions 

```python
def power(base):
    def exponent(exp):
        return base ** exp
    return exponent

square = power(2)
cube = power(3)

print(square(5)) # Output: 25
print(cube(3)) # Output: 27
```

In this example, a nested function `exponent` is defined inside the `power` function. The `exponent` function calculates a number raised to a power. The `power` function returns the `exponent` function. Two variables `square` and `cube` are assigned by calling the `power` function with different base values. The final two print statements call `square` and `cube` with different exponent values.

```python
def operation(operator):
    def calculate(num1, num2):
        if operator == '+':
            return num1 + num2
        elif operator == '-':
            return num1 - num2
        elif operator == '*':
            return num1 * num2
        elif operator == '/':
            return num1 / num2
        else:
            return "Invalid operator"
    return calculate

addition = operation('+')
subtraction = operation('-')
multiplication = operation('*')
division = operation('/')

print(addition(5, 3)) # Output: 8
print(subtraction(5, 3)) # Output: 2
print(multiplication(5, 3)) # Output: 15
print(division(5, 3)) # Output: 1.6666666666666667
print(operation('%')(5, 3)) # Output: Invalid operator
```

In this example, the `operation` function takes an `operator` parameter and returns the `calculate` function. The `calculate` function performs the arithmetic operation specified by the `operator` parameter on two number arguments. Four variables `addition`, `subtraction`, `multiplication`, and `division` are assigned by calling the `operation` function with different operator values. The final print statement shows what occurs when an invalid operator is used as an argument.  
