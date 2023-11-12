> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/functions/lambda

**Lambda functions** in Python are **anonymous** functions that can be defined and declared **inline** with the rest of the code. 

## What is a Lambda Function in Python

In Python, a lambda function is a concise way to create small, anonymous functions. Unlike regular functions defined with the `def` keyword, lambda functions are created using the `lambda` keyword and are typically used for short, immediate operations.

The syntax for a lambda function is simple:

```python
lambda arguments: expression
```

Here, `lambda` is the keyword, `arguments` are the function's input parameters, and `expression` is the operation the function performs.

Here are also some examples of declaration and usage:

1. **Basic Addition**
```python
add = lambda x, y: x + y
print(add(3, 4))  # Output: 7
```

2. **Using Within Higher-Order Functions**
```python
numbers = [1, 2, 3, 4, 5]
doubled = list(map(lambda x: x * 2, numbers))
print(doubled)  # Output: [2, 4, 6, 8, 10]
```

3. **Sorting a List of Tuples**
```python
students = [('Alice', 25), ('Bob', 20), ('Charlie', 30)]
students.sort(key=lambda x: x[1])
print(students)  # Output: [('Bob', 20), ('Alice', 25), ('Charlie', 30)]
```

Lambda functions are particularly handy when a small function is needed for a brief period. Their simplicity is beneficial in cases where defining a regular function might be overkill.

Key Points to Remember:

- Lambda functions are anonymous and don't require a name.
- They can handle simple operations within a single line.
- Often used with higher-order functions like map, filter, and sort.
  
## Benefits and Reasons to Use Lambda Functions in Python Programming  

1. **Concise code**: Lambda functions can be defined in a single line of code, making them easy to use and read.

2. Easy to **use functions from another Python file**: You can use `lambda` functions to define a function that can be used from another Python file.

3. **Functional programming**: Lambda functions enable Python programmers to use functional programming techniques, making it easier to write pure and modular code.

### Example of a lambda function

```python 
x = lambda a : a + 10
print(x(5)) # output: 15
```

In this example, a `lambda` function is defined with the parameter `a`. The function adds `10` to the parameter and returns the result. The `lambda` function is then called with the parameter `5`, which results in the output of `15`.

## Examples and Use Cases for Lambda Functions in Python  

1. **Sorting a list of tuples**: Lambda functions can be used as a **key argument** in the `sorted()` function to sort a list of tuples based on a specific element in the tuple.

```python 
 # Sorting a list of tuples based on the age of a person
 people = [('Jane', 23), ('John', 19), ('Adam', 25), ('Kate', 18)]
 sorted_people = sorted(people, key=lambda x: x[1])
 print(sorted_people)
 # Output: [('Kate', 18), ('John', 19), ('Jane', 23), ('Adam', 25)]
```

2. **Filtering a list**: Lambda functions can be used with `filter()` to create a new list that satisfies a specific condition.

```python 
 # Filter a list of numbers greater than 5
 numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
 filtered_numbers = list(filter(lambda x: x > 5, numbers))
 print(filtered_numbers)
 # Output: [6, 7, 8, 9, 10]
```

## Differences Between Lambda and Regular Functions in Python

1. **Syntax**: Lambda functions are written in a single line of code and don't require the `def` keyword. Regular functions are defined using the `def` keyword and can be written in multiple lines.

2. **Arguments**: Lambda functions can have any number of arguments but can only have one expression. Regular functions can take any number of arguments and can have multiple expressions.

3. **Name**: Lambda functions are anonymous, meaning they don't have a name. Regular functions have a name that is used to call the function.

4. **Scope**: Lambda functions are limited in terms of scope and can only access global variables. Regular functions have a wider scope and can access both local and global variables.
  
## Best Practices for Using Lambda Functions in Python  

1. Keep your Lambda functions **short and simple**: Lambda functions are best used for small operations that can be written concisely in a single line of code. If your function is too long or complex, it might be better to write a regular Python function.

2. Use Lambda functions with `map()`, `filter()`, and `reduce()`: These higher-order functions require a function argument, and Lambda functions are a great way to create simple functions on the fly.

3. **Don't overuse Lambda functions**: While Lambda functions can be useful for certain tasks, they can also make your code less readable if overused. If your Lambda expression is getting too long, it might be better to write a regular Python function instead.

## Advanced Lambda Concepts: `map()`, `reduce()`, and `filter()`  

The `map()` function is used to apply a given lambda function **to each element in a collection**. The result is a new collection with the lambda function applied to every element. Here is an example of using the map function to add a constant value to each element in a list using a lambda function:

```python 
numbers = [1, 2, 3, 4, 5]
add_two = lambda x: x + 2
result = map(add_two, numbers)
print(list(result)) # [3, 4, 5, 6, 7]
```

The `reduce()` function is used to apply a given lambda function **to a collection and reduce it** to a single value. The lambda function should take two arguments and return a single value. Here is an example of using the reduce function to calculate the product of all numbers in a list using a lambda function:

```python 
from functools import reduce
numbers = [1, 2, 3, 4, 5]
multiply = lambda x, y: x * y
result = reduce(multiply, numbers)
print(result) # 120
```

The `filter()` function is used to **apply** a given lambda function **to each element in a collection** and **filter out elements** that do not meet a certain condition. The result is a new collection with only the elements that meet the condition. Here is an example of using the filter function to only keep even numbers in a list using a lambda function:

```python 
numbers = [1, 2, 3, 4, 5]
is_even = lambda x: x % 2 == 0
result = filter(is_even, numbers)
print(list(result)) # [2, 4]
``` 

## Exploring the Limitations and Caveats of Using Lambda Functions in Python Code  

One limitation of lambda functions is that they are **restricted to a single expression**. This means that more complex operations, such as a loop or multiple statements, cannot be performed within a lambda function. For example, if we wanted to create a power function in Python using a loop, we cannot use lambda functions.

Another limitation of lambda functions is that they **cannot be used to define recursive functions**. Recursion requires a function to call itself, and a lambda function **cannot refer to itself**. 

Furthermore, using lambda functions can make the code harder to read and understand, especially for complex operations. In such cases, it may be better to use a regular Python function instead.

In addition, the use of lambda functions in performance-critical code **may incur a small overhead** due to the function creation process. In such cases, it may be better to **use a pre-defined Python function**, such as the `exp()` function from the `math` library.

```python 
# Example of using the exp() function
import math
x = 2.0
y = math.exp(x)
```
