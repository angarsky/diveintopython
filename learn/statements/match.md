> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/statements/match

Switch statements are a popular feature in many programming languages, allowing developers to cleanly and efficiently handle multiple conditional cases. However, Python does not include a built-in switch statement. In this article, we will explore several ways to implement switch-like functionality in Python, using various techniques and libraries. Whether you're a seasoned developer or just starting out, this guide will provide valuable insights into this important programming concept.  
  
## Match Statement  

The `match` statement was introduced in Python 3.10 to provide a concise and readable way to express conditional logic. It allows you to compare a value against a set of patterns and execute corresponding code based on the match.

To use `match` in Python, you can create a `case` statement for each pattern to match against. Here is an example code snippet that demonstrates the python match case statement:

```python
def describe_number(num):
    match num:
        case 0:
            return "Zero"
        case 1:
            return "Single"
        case _:
            return "Multiple"
```

In this example, the `describe_number` function takes a `num` parameter and returns a string based on the value of `num`. If `num` is `0`, it returns ``Zero``. If `num` is `1`, it returns `Single`. Otherwise, it returns `Multiple` using a wildcard match pattern with `_`.

Here is another python case statement example:

```python
def calculate_discount(total_amount):
    match total_amount:
        case amount if amount < 1000:
            return amount * 0.05
        case amount if amount >= 1000 and amount < 5000:
            return amount * 0.10
        case amount if amount >= 5000:
            return amount * 0.15
```

In this example, the `calculate_discount` function takes a `total_amount` parameter and returns the corresponding discount based on the value of `total_amount`. The `match` statement has three `case` statements with specific conditions, each returning the applicable discount percentage.

In conclusion, the `match` statement is a powerful addition to the Python language that simplifies conditional statements. It can improve readability and help you write more concise code.  
  
## Switch Statement  

Unfortunately, Python does not have a native switch case statement. However, there are several methods to emulate its functionality through other constructs such as if-elif-else statements or dictionaries.

```python
def switch_case(argument):
    if argument == 0:
        return "Zero"
    elif argument == 1:
        return "One"
    elif argument == 2:
        return "Two"
    else:
        return "Invalid argument"

print(switch_case(2)) # Output: Two
```

```python
def switch_case(argument):
    return {
        0: "Zero",
        1: "One",
        2: "Two"
    }.get(argument, "Invalid argument")

print(switch_case(2)) # Output: Two
```

Although not as concise as a switch case statement, these alternatives can provide similar logic and readability in your Python code.  
