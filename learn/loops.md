There are two types of loops in Python: `for` loops and `while` loops.

The `for` loop is used for iterating over a sequence (that is either a list, a tuple, a set, a dictionary, a string or any other iterable object) and executing a block of code for each element in the sequence. The `while` loop is used for executing a block of code repeatedly as long as a certain condition is true. In the `while` loop, the condition is checked at the beginning of each iteration, and the loop is exited when the condition becomes false. It is important to make sure that the condition eventually becomes false, otherwise, the loop will continue running indefinitely, which is called an infinite loop.

## `For` Loops in Python

An example how to use the `for` for a looping through a list in Python:

```python
fruits = ["apple", "banana", "cherry"]
for fruit in fruits:
    print(fruit)
```

In this example, we have a list of fruits, and we want to print each fruit on a new line. We use the `for` loop to iterate over each element in the list, and for each element, we print it to the console using the `print` function.

### Inline `For` Loop

In this example, we have a list of numbers, and we want to create a new list that contains the square of each number. Instead of using a traditional `for` loop, we use a list comprehension, which is a more concise way of achieving the same result.

```python
numbers = [1, 2, 3, 4, 5]
squares = [x**2 for x in numbers]
print(squares)
```

In this case, the expression is x**2, which is the square of the current number in the iteration, and the iterable is the numbers list. The result of the list comprehension is a new list that contains the square of each number: `[1, 4, 9, 16, 25]`.

### `For` Loop with Index

@todo: write it.

## `While` Loops in Python

@todo: write it.

## `Break` and `Continue` Statements

We need text here as well.

It's a list example:

* 1st item
* 2nd item

Code example:

```
a = 'Hello, world!'
```

New paragraph.

> Blockquote example with very very very very very very very very very very very very looooooooooooooooooooooooong line!  

It's the link to [Install section](/learn/install.md).
