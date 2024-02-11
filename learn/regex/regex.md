> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/regex/regex.md

Regular expressions (regex) are a powerful tool for pattern matching and data extraction in text processing. Python's `re` module provides a comprehensive set of functions to work with regular expressions. This article dives into the syntax of regular expressions in Python, accompanied by practical examples to help you grasp the concepts better.

## Regular Expression Syntax

Regular expressions use a sequence of characters to define a search pattern. Here's a quick overview of some common regex syntax elements in Python:

- **`.`** (Dot): Matches any single character except newline `'
'`.
- **`^`** (Caret): Matches the start of the string.
- **`$`** (Dollar): Matches the end of the string.
- **`*`** (Asterisk): Matches 0 or more repetitions of the preceding element.
- **`+`** (Plus): Matches 1 or more repetitions of the preceding element.
- **`?`** (Question Mark): Matches 0 or 1 repetition of the preceding element.
- **`{m,n}`** (Braces): Matches from m to n repetitions of the preceding element.
- **`[]`** (Square Brackets): Matches any single character contained within the brackets.
- **`|`** (Pipe): Acts as a logical OR between expressions.
- **`()`** (Parentheses): Groups patterns together.

Below is a table summarizing these elements:

| Symbol | Description |
|--------|-------------|
| `.` | Matches any character except newline |
| `^` | Matches the start of the string |
| `$` | Matches the end of the string |
| `*` | Matches 0 or more repetitions |
| `+` | Matches 1 or more repetitions |
| `?` | Matches 0 or 1 repetition |
| `{m,n}` | Matches from m to n repetitions |
| `[]` | Matches any character within brackets |
| `\|` | Logical OR |
| `()` | Groups patterns |

## Practical Examples

Let's apply these elements in practical examples using Python's `re` module:

1. **Finding all instances of 'a' in a string:**

```python
import re
re.findall('a', 'Mary had a little lamb')
```

2. **Searching for any character between 'a' and 'z':**

```python
re.findall('[a-z]', 'Hello World!')
```

3. **Matching any digit in a string:**

```python
re.findall('\d', 'The room number is 42.')
```

4. **Finding three consecutive digits:**

```python
re.findall('\d{3}', 'Call 911 for emergency')
```

5. **Searching for words starting with 'S':**

```python
re.findall(r'S\w+', 'The Sun is shining in the Sky.')
```

6. **Matching a word at the beginning of a string:**

```python
re.match('^Hello', 'Hello, world!')
```

7. **Finding sequences of non-whitespace characters:**

```python
re.findall('\S+', 'Hello, world! How are you?')
```

8. **Replacing all digits with a hash (#):**

```python
re.sub('\d', '#', 'Password123')
```

9. **Splitting a string by any whitespace:**

```python
re.split('\s+', 'Split this string by spaces')
```

10. **Checking if a string ends with 'world':**

```python
bool(re.search('world$', 'Hello, world'))
```

These examples showcase the versatility and power of regular expressions in Python for various text processing tasks. By mastering the syntax and applying it through practical examples, you can leverage regular expressions to efficiently search, match, and manipulate strings in your Python projects.
