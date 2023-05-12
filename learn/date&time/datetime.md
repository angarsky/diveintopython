Python datetime module is a powerful tool for working with dates and times. It provides a range of functions and classes to manipulate, format, and parse dates and times in various formats. With Python datetime, you can easily perform arithmetic operations on dates and times, convert between different time zones, and much more. Whether you're working with timestamps, calendars, or scheduling tasks, datetime can help make your Python code more robust and flexible.

## Datetime Formats in Python

Python's built-in `datetime` module serves for working with dates and times. Here are some common datetime formats in Python:

1. **`YYYY-MM-DD`** : Year, month, and day separated by hyphens.

2. **`YYYY/MM/DD`** : Year, month, and day separated by slashes.

3. **`MM/DD/YYYY`** : Month, day, and year separated by slashes.

4. **`DD-MM-YYYY`** : Day, month, and year separated by hyphens.

5. **`DD/MM/YYYY`** : Day, month, and year separated by slashes.

6. **`YYYY-MM-DD HH:MM:SS`** : Year, month, and day separated by hyphens, followed by hours, minutes, and seconds separated by colons.

7. **`YYYY-MM-DD HH:MM:SS.mmmmmm`** : Year, month, and day separated by hyphens, followed by hours, minutes, and seconds separated by colons, and microseconds separated by a dot.

## Datetime Formatting in Python

In Python, you can format dates and times using the `strftime()` method of a `datetime` object. This method allows you to specify a format string that defines how the date or time should be formatted.

Here are some common format codes:

- **`%Y`**: year (4 digits)

- **`%m`**: month (zero-padded)

- **`%d`**: day of the month (zero-padded)

- **`%H`**: hour (24-hour clock)

- **`%M`**: minute (zero-padded)

- **`%S`**: second (zero-padded)

Here's an example of how to format the current date and time:

```python
from datetime import datetime

now = datetime.now()
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_date)
```

This will output the current date and time in the format "YYYY-MM-DD HH:MM:SS".
