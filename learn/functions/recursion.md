**Recursive programming** is a technique in programming where a function **calls itself repeatedly** until it reaches a base or terminal case. It is a powerful tool when dealing with certain types of problems that can be naturally defined in a recursive manner. In Python, we can implement this technique through recursive functions.

## Python recursive functions

Recursive functions are functions that **call themselves** during execution to solve a problem by breaking it down into smaller sub-problems. Recursion in Python involves two main steps: defining the base case(s) and the recursive case(s).

### Example 1: Factorial calculation using recursion

```python
def factorial(n):
    if n == 0:
        return 1
    else:
        return n * factorial(n-1)

# driver code
num = 5
print("Factorial of", num, "is", factorial(num))
```

In this example, the `factorial()` function takes an integer `n` as input and **recursively** calculates the **factorial** of `n` by multiplying it with the factorial of `n-1`. The base case is when `n` is equal to `0`, in which case the function returns `1`.

### Example 2: Fibonacci series calculation using recursion

```python
def fibonacci(n):
    if n <= 1:
        return n
    else:
        return (fibonacci(n-1) + fibonacci(n-2))

# driver code
num_terms = 10

if num_terms <= 0:
    print("Invalid input")
else:
    print("Fibonacci series:")
    for i in range(num_terms):
        print(fibonacci(i), end=" ")
```

In this example, the `fibonacci()` function takes an integer `n` as input and recursively calculates the `n` term of the **Fibonacci series** by adding the previous two terms. The base case is when `n` is `0` or `1`, in which case the function returns `n`. The driver code prints the first `num_terms` of the Fibonacci series, where `num_terms` is a user-inputted value.

## Tips and Best Practices for Python Recursive Programming  

1. **Clearly define the base case**: The base case is the condition under which the function should stop calling itself recursively and return a value. Make sure that the base case is clearly defined and that the function eventually reaches it to avoid infinite recursion.

2. **Watch out for recursion depth**: Recursion depth refers to the number of times a function calls itself recursively. Python has a default recursion depth **limit of 1000**, so make sure to keep your recursive functions within the limit or adjust the recursion depth limit using the sys module.

3. **Consider using memoization**: Memoization is a technique used to cache the results of expensive function calls and reuse them when the same inputs occur again. This can significantly improve the performance of recursive functions in python by avoiding duplicate computations.

4. **Test and debug carefully**: Recursive functions can be difficult to debug due to their complex nature. Make sure to test your function with various input values and take time to understand how it works before deploying it to production.

## Example: Binary search

```python
def binary_search(arr, target, low, high):
    # base case
    if low > high:
        return -1
    # recursive case
    mid = (low + high) // 2
    if arr[mid] == target:
        return mid
    elif arr[mid] > target:
        return binary_search(arr, target, low, mid-1)
    else:
        return binary_search(arr, target, mid+1, high)
```

This recursive function performs **binary search** on a sorted array by **calling itself** with smaller subarrays until it finds the target or reaches the base case where the low index is greater than the high index.

## Common mistakes and pitfalls in Python Recursion

Python recursive functions can be a powerful tool in solving complex problems, but they can also be prone to common mistakes and pitfalls. Here are some common mistakes to avoid when using python recursion:

1. **Infinite loops**: It is easy to create infinite loops in recursive functions if you don't have a base case that ultimately breaks the recursion. Be sure to define a base case that will stop the recursion.

2. **Stack overflow**: Recursion can create a lot of memory overhead, which can lead to stack overflow errors. Be careful when using recursion with large datasets.

## Enhancing Python recursive functions for greater efficiency and performance

Recursive enhancing refers to the process of optimizing a Python recursive function for better efficiency and performance. This involves identifying areas that can be fine-tuned, such as reducing space complexity or using memoization to reduce the number of recursive calls.

Below are two examples of how to enhance Python recursive functions for greater efficiency:

### Memoization

Memoization is the process of storing previously computed results to avoid repeated calculation. This can significantly reduce the runtime of a recursive function. 

```python
def fibonacci(n, memo={}):
    if n <= 1:
        return n
    elif n in memo:
        return memo[n]
    else:
        memo[n] = fibonacci(n-1, memo) + fibonacci(n-2, memo)
        return memo[n]
```

In the above code, the `memo` dictionary is used to store previously computed Fibonacci numbers. When the function is called with a previously calculated `n`, the `memo` value is returned instead of the function making another recursive call.

### Tail Recursion Optimization

Tail recursion optimization is a way to optimize recursive functions so that they use less space on the call stack. 

```python
def sum_n(n, acc=0):
    if n == 0:
        return acc
    else:
        return sum_n(n-1, acc+n)

# Example usage
print(sum_n(5)) # Outputs: 15
```

In the above code, `sum_n()` is a **recursive function** that calculates the sum of all numbers from `1` to `n`. The acc argument is an **accumulator** that stores the intermediate results of the computation.

In each recursive call, the function adds the current value of `n` to the accumulator and passes the result to the next recursive call, without keeping the previous call's stack frame in memory. This way, the function uses a constant amount of memory on the call stack, and avoids the risk of stack overflow for large values of `n`.

>Note that tail recursion optimization can only be applied to recursive functions that have a tail call, i.e., a recursive call that occurs at the end of the function's execution.
