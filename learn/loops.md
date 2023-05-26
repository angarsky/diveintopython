There are two types of loops in Python: `for` loops and `while` loops.

The `for` loop is used for iterating over a sequence (that is either a list, a tuple, a set, a dictionary, a string or any other iterable object) and executing a block of code for each element in the sequence. The `while` loop is used for executing a block of code repeatedly as long as a certain condition is `true`. In the `while` loop, the condition is checked at the beginning of each iteration, and the loop is exited when the condition becomes false. It is important to make sure that the condition eventually becomes false, otherwise, the loop will continue running indefinitely, which is called an infinite loop.

## `For` Loops Syntax in Python

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

### How to Break a `for` Loop Example

```python
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        break
    print(num)
```

In this example, the loop iterates over the `numbers` list and prints each number. However, when the value of `num` is equal to `3`, the `break` statement end `for` loop. The output would be: `1 2`.

### Use `continue` with `for` Loop 

The `continue`, on the other hand, is used to **skip loop iteration** based on a condition. When encountered, it causes the current iteration of the loop to end and proceeds with the next iteration. Here's an example of how to skip an iteration in the `for` loop in Python:

```python
numbers = [1, 2, 3, 4, 5]
for num in numbers:
    if num == 3:
        continue
    print(num)
```

In this example, the loop iterates over the `numbers` list and prints each number. However, when the value of `num` is equal to `3`, the `continue` statement is executed, causing the current iteration of the loop to end and proceeding with the next iteration. The output would be: `1 2 4 5`.

## Use `continue` in `while` Loop   

Using `continue` in `while` loop in Python is a way to skip certain iterations of the loop and proceed to the next iteration. This can be useful when you need to skip over certain values or conditions in your loop.

```python
i = 0
while i < 10:
    i += 1
    if i % 2 == 0:
        continue
    print(i)
```

In this example, the loop iterates over the numbers 1 through 10. However, when the value of `i` is even, the `continue` statement is triggered, causing the loop to skip to the next iteration without executing any more code in the current iteration.

```python
my_list = [1, 2, 3, 4, 5]
while my_list:
    val = my_list.pop()
    if val == 3:
        continue
    print(val)
```

In this example, the loop iterates over the values in `my_list`. When the value of `val` is equal to 3, the `continue` statement causes the loop to skip to the next iteration without printing the value.  

## How to `break` `while` Loop  

To break a `while` loop in Python, you can use the `break` statement. This statement is responsible for stopping the loop from iterating further, as soon as a certain condition gets fulfilled. The syntax for using `break` in a `while` loop is as follows:

```python
while <condition>:
    ### statements to be executed inside the loop

    if <break-condition>:
        break
```

Here, `<condition>` is the loop's condition that initially decides whether the loop should be executed or not, and `<break-condition>` is an additional conditional statement that defines the condition(s) for stopping the loop. Once this condition is met, the loop is automatically terminated, and control is transferred to the next statement after the loop.

```python
n = 1
while n <= 10:
    print(n)
    if n == 5:
        break
    n += 1
print("Loop Ended")

# Output:
# 
# 1
# 2
# 3
# 4
# 5
# Loop Ended
```

In this example, the while loop will `print` numbers from 1 to 5, and then `stop` as soon as `n == 5`. The `break` statement is used to achieve this, and the output shows that the loop ended after completing the execution of the desired condition.

```python
while True:
    value = input("Enter a number: ")
    if value == "stop":
        break
    print(int(value) ** 2)
print("Loop Ended")

# Output:
# Enter a number: 2
# 4
# Enter a number: 5
# 25
# Enter a number: 3
# 9
# Enter a number: stop
# Loop Ended
```

In this example, the while loop will keep asking the user to enter a `number`, and compute its square if the `input` is a `number`. If the `input` is 'stop', the loop will break, and control will be transferred to the statement after the loop.

This approach helps to avoid infinite loops in Python, and to control the flow of execution based on certain criteria.  
  
## Count in `for` Loop  

To count in a `for` loop in Python, you can use a loop counter variable. This variable keeps track of the number of times the `for` loop has executed. Here are two examples:

```python
count = 0
for i in range(10):
    count += 1
print("The loop executed", count, "times.")
```

In this example, we create a variable `count` and set its initial value to 0. We then use a `for` loop to iterate 10 times, incrementing the `count` variable by 1 each time. Finally, we `print` out the total number of times the loop executed.

```python
fruits = ['apple', 'banana', 'cherry']
for i, fruit in enumerate(fruits, 1):
    print(i, fruit)
```

In this example, we use the built-in `enumerate()` function to loop over a list of `fruits` and their indices. We start the index at 1 by passing the second argument to `enumerate()`. Inside the loop, we `print` out the index and the `fruit` name.

By using a loop counter variable, you can easily keep track of the number of times a `for` loop has executed in Python. This can be useful for debugging, testing, and analyzing performance.  


