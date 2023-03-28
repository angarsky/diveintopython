There are two types of loops in Python: `for` loops and `while` loops.

The `for` loop is used for iterating over a sequence (that is either a list, a tuple, a set, a dictionary, a string or any other iterable object) and executing a block of code for each element in the sequence. The `while` loop is used for executing a block of code repeatedly as long as a certain condition is `true`. In the `while` loop, the condition is checked at the beginning of each iteration, and the loop is exited when the condition becomes false. It is important to make sure that the condition eventually becomes false, otherwise, the loop will continue running indefinitely, which is called an infinite loop.

## `For` Loops in Python

An example how to use the `for` for a looping through a list in Python:

```python
cars = ["bmw", "audi", "renault"]
for car in cars:
    print(car)
```

In this example, we have a list of cars, and we want to print each car on a new line. We use the `for` loop to iterate over each element in the list, and for each element, we print it to the console using the `print` function.

### Inline `For` Loop

In this example, we have a list of numbers, and we want to create a new list that contains the square of each number. Instead of using a traditional `for` loop, we use a list comprehension, which is a more concise way of achieving the same result.

```python
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)
```

In this case, the expression is `x**2`, which is the square of the current number in the iteration, and the iterable is the numbers list. The result of the list comprehension is a new list that contains the square of each number: `[1, 4, 9, 16, 25]`.

### `For` Loop with Index

In this example, the `loop` iterates over the `cars` list and prints the index and value of each element:

```python
cars = ["bmw", "audi", "renault"]
for i in range(len(cars)):
    print(i, car[i])
```

## `While` Loops in Python

Here is an example of the `while` loop that counts from `1` to `10`:

```python
count = 1
while count <= 10:
    print(count)
    count += 1
```

In this example, the loop starts with count equal to `1`. The condition count `<= 10` is `true`, so the code within the loop is executed. This code prints the value of count (which is currently `1`) and then increments count by `1` using the `+=` operator. The loop then checks the condition again, which is still `true` because count is now `2`. This process repeats until count reaches `11`, at which point the condition becomes `false` and the loop terminates.

> Note: Python does not have a built-in `do-while` loop like some other programming languages. However, you can achieve similar functionality using a combination of a `while` loop and an initial check.

## `Break` and `Continue` Statements

In Python, `break` and `continue` are reserved keywords used to modify the behavior of loops. They allow you to control when a loop should terminate or skip over certain iterations based on a condition.

See next example to learn how to break (and exit) a `for` loop in Python:

```python
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        break
    print(num)
```

In this example, the loop iterates over the `numbers` list and prints each number. However, when the value of `num` is equal to `3`, the `break` statement is executed, causing the loop to terminate prematurely. The output would be: `1 2`.

The `continue`, on the other hand, is used to skip over certain iterations of a loop based on a condition. When encountered, it causes the current iteration of the loop to end and proceeds with the next iteration. Here's an example of how to skip an iteration in the `for` loop in Python:

```python
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        continue
    print(num)
```

In this example, the loop iterates over the `numbers` list and prints each number. However, when the value of `num` is equal to `3`, the `continue` statement is executed, causing the current iteration of the loop to end and proceeding with the next iteration. The output would be: `1 2 4 5`.
