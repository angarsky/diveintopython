Python datetime module is a powerful tool for working with dates and times. It provides a range of functions and classes to manipulate, format, and parse dates and times in various formats. With Python datetime, you can easily perform arithmetic operations on dates and times, convert between different time zones, and much more. Whether you're working with timestamps, calendars, or scheduling tasks, datetime can help make your Python code more robust and flexible.

## Datetime Formats in Python

Python's built-in `datetime` module serves for working with dates and times. Here are some common datetime formats in Python:

1. **YYYY-MM-DD** : Year, month, and day separated by hyphens.

2. **YYYY/MM/DD** : Year, month, and day separated by slashes.

3. **MM/DD/YYYY** : Month, day, and year separated by slashes.

4. **DD-MM-YYYY** : Day, month, and year separated by hyphens.

5. **DD/MM/YYYY** : Day, month, and year separated by slashes.

6. **YYYY-MM-DD HH:MM:SS** : Year, month, and day separated by hyphens, followed by hours, minutes, and seconds separated by colons.

7. **YYYY-MM-DD HH:MM:SS.mmmmmm** : Year, month, and day separated by hyphens, followed by hours, minutes, and seconds separated by colons, and microseconds separated by a dot.

## Datetime Formatting in Python

In Python, you can format dates and times as a string using the `strftime()` method of a `datetime` object. This method allows you to specify a format string that defines how the date or time should be formatted.

Here are some common format codes:

- **%Y**: year (4 digits)

- **%m**: month (zero-padded)

- **%d**: day of the month (zero-padded)

- **%H**: hour (24-hour clock)

- **%M**: minute (zero-padded)

- **%S**: second (zero-padded)

## How to Get Current Date from Datetime Object in Python

To retrieve the current date from a `datetime` object in Python, you can use the `date()` method. Here's an example:

```python
from datetime import datetime

current_datetime = datetime.now()
current_date = current_datetime.date()

print(current_date)
```

This code will output the current date in the format YYYY-MM-DD. For example, if you run the code today (May 17, 2023), the output will be 2023-05-17.

## How to Get Current Year from Datetime Object

To extract the year from a datetime object in Python, you can use the year attribute. Here's an example:

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Extract the year from the datetime object
year = dt.year

print(year) # Output: 2023
```

## AM/PM Datetime Format in Python

In Python's `datetime` module, you can format a datetime object to display the time in AM/PM format using the `%I` and `%p` directives in the strftime method. Here's an example:

```python
from datetime import datetime

# Get the current datetime
now = datetime.now()

# Format the time in AM/PM format
formatted_time = now.strftime("%I:%M %p")

# Print the formatted time
print(formatted_time)
```

This code will output the current time in the format "hh:mm AM/PM". For example, if the current time is 2:30 PM, the output will be "02:30 PM".

## Datetime to String Conversion in Python

To convert a Python `datetime` object to a string, you can use the `strftime()` method. The `strftime()` method takes a format string as an argument and returns a string representation of the datetime object according to the specified format.

Here's an example of how to format the current date and time:

```python
import datetime

now = datetime.datetime.now()  # Get the current datetime object
formatted_date = now.strftime("%Y-%m-%d %H:%M:%S")  # Format the datetime object
print(formatted_date)  # Print the formatted datetime string
```

## Python String to Datetime Conversion

You can use the `datetime` module in Python to convert a string to a datetime object in Python. Here's an example:

```python
from datetime import datetime

# define the format of the input string
input_format = '%Y-%m-%d %H:%M:%S'

# input string
input_string = '2022-05-14 10:30:00'

# convert the input string to a datetime object
dt_object = datetime.strptime(input_string, input_format)

# print the datetime object
print(dt_object)
```

In this example, we use the Python's `datetime.strptime()` method for converting the input string to a datetime object. The `strptime()` method takes two arguments: the input string and the format of the input string. The format string uses various format codes to specify the format of the input string. In this case, the format code `%Y` represents the year, `%m` represents the month, `%d` represents the day, `%H` represents the hour, `%M` represents the minute, and `%S` represents the second.

The `dt_object` variable now contains a datetime object that represents the date and time in the input string. You can then perform various operations on the datetime object, such as formatting it in a different way or performing arithmetic operations on it.

## Using `datetime.now()` & `datetime.today()` Methods

In Python, you can use the built-in `datetime` module to work with date and time values. To get the current date and time, you can use the `datetime.now()` method.

In the following example first we get date and time and then print it:

```python
from datetime import datetime

now = datetime.now()
print("Current date and time:", now)
```

This will output the current date and time in the format YYYY-MM-DD HH:MM:SS.ssssss.

There is one more way to get the current date and time, you can use the datetime.today() method. Here's an example:

```python
import datetime

now = datetime.datetime.today()
print(now) # This will output the current date and time in the format YYYY-MM-DD HH:MM:SS.mmmmmm.
```

If you want to display only the current time without the date, you can use the `strftime()` method to format the output before printing:

```python
current_time = datetime.datetime.now().strftime("%H:%M:%S")
print("Current time:", current_time)
```

This will output the current time in the format HH:MM:SS.

## Extraction the Date from a `datetime` Object

In Python, you can extract the date portion from a datetime object using the `.date()` method. Here's an example:

```python
import datetime

# create a datetime object
dt = datetime.datetime(2023, 5, 14, 10, 30, 0)

# extract the date portion
date = dt.date()

# print the date
print(date)  # output: 2023-05-14
```

## Datetime to Epoch Conversion

You can convert a Python `datetime` object to epoch time (i.e., the number of seconds since January 1, 1970, 00:00:00 UTC) using the `timestamp()` method. Let's look at the example how to convert a Python datetime object to a timestam:

```python
import datetime

# Create a datetime object for May 14, 2023 at 12:34:56 UTC
dt = datetime.datetime(2023, 5, 14, 12, 34, 56)

# Convert the datetime object to epoch time
epoch_time = int(dt.timestamp())

print(epoch_time)  # Output: 1687877696
```

## Epoch to Datetime Conversion

You can convert a Unix epoch time (i.e., the number of seconds since January 1, 1970, 00:00:00 UTC) to a Python `datetime` object using the `datetime.fromtimestamp()` method.

Here's an example of how to convert Unix time to datetime in Python:

```python
import datetime

# Unix epoch time for May 14, 2023 at 12:34:56 UTC
epoch_time = 1687877696

# Convert the epoch time to a datetime object
dt = datetime.datetime.fromtimestamp(epoch_time)

print(dt)  # Output: 2023-05-14 12:34:56
```

If you want to convert a timestamp to a `datetime` object in a specific timezone in Python, you can use libraries like `pytz` or `dateutil` to set the desired timezone.

## Parsing into a `datetime` Module

To parse a date or time string into a `datetime` object, you can use the `datetime.datetime.strptime()` method.

The `strptime()` method takes two arguments: the string you want to parse, and a format string that specifies the format of the input string. The format string uses special codes to represent different parts of the date and time, such as `%Y` for the year, `%m` for the month, `%d` for the day, `%H` for the hour, `%M` for the minute, and `%S` for the second.

Here's an example of how to parse a date string in the format "YYYY-MM-DD":

```python
import datetime

date_string = "2023-05-14"
date_object = datetime.datetime.strptime(date_string, "%Y-%m-%d")

print(date_object)
```

## Timezones & `datetime` Module in Python

You can use the `datetime` module to work with dates, times, and timezones in Python.

To work with timezones, you need to use the `pytz` library. This library provides a comprehensive database of timezones and tools for working with them.

Here's an example of how you can work with timezones using the `datetime` module and `pytz` library in Python:

```python
import datetime
import pytz

# create a datetime object in UTC timezone
utc_datetime = datetime.datetime.now(tz=pytz.utc)
print("UTC datetime:", utc_datetime)

# convert the datetime object to a different timezone
local_timezone = pytz.timezone('America/New_York')
local_datetime = utc_datetime.astimezone(local_timezone)
print("Local datetime:", local_datetime)
```

In this example, we first create a `datetime` object in the UTC timezone using the `datetime.datetime.now()` method and passing in the `pytz.utc` timezone object as the `tz` parameter. We then print out the UTC datetime.

Next, we create a `pytz.timezone` object representing the local timezone (America/New_York), and then use the `astimezone()` method to convert the UTC datetime object to the local timezone. Finally, we print out the local datetime.

## Datetime Module & Timedelta Class

The `datetime` module in Python provides various classes for working with dates, times, and time intervals. One of the classes available in the module is `timedelta`, which represents a duration or difference between two dates or times.

Here's an example of how to use `timedelta`:

```python
import datetime

# create a datetime object for the current time
now = datetime.datetime.now()

# create a timedelta object representing a duration of 1 day
one_day = datetime.timedelta(days=1)

# calculate a new datetime object that is 1 day in the future
tomorrow = now + one_day

# print the result
print(tomorrow)
```

Here's also an example of how to find time delta in Python:

```python
import datetime

# create two datetime objects
start_time = datetime.datetime(2023, 5, 15, 10, 30, 0)
end_time = datetime.datetime(2023, 5, 15, 14, 45, 0)

# calculate the time difference
delta = end_time - start_time

# print the result
print(delta)  # prints: 4:15:00
```

This way you can measure execution time of any code snippet.

The `timedelta` class provides several other arguments that can be used to specify different units of time, including `weeks`, `hours`, `minutes`, `seconds`, `microseconds`, and `milliseconds`.

## Datetime Objects Comparing

In Python, you can compare `datetime` objects using the comparison operators (`<`, `>`, `<=`, `>=`, `==`, `!=`).

Here's an example:

```python
from datetime import datetime

# create datetime objects
date1 = datetime(2021, 9, 1)
date2 = datetime(2021, 9, 2)

# compare datetime objects
if date1 < date2:
    print("date1 is before date2")
else:
    print("date1 is after date2")
```

You can also compare `datetime` objects with `date` objects. In that case, the `date` object is treated as if it has a time of midnight. For example:

```python
from datetime import datetime, date

# create datetime and date objects
date1 = datetime(2021, 9, 1, 10, 30)
date2 = date(2021, 9, 2)

# compare datetime and date objects
if date1 < date2:
    print("date1 is before date2")
else:
    print("date1 is after date2")
```

## How to Add Days to a Datetime Object

To add time to a Python `datetime` object, you can use the `timedelta` class from the `datetime` module.

Here's an example code snippet that shows how to add 3 days to the current date:

```python
from datetime import datetime, timedelta

current_date = datetime.now()
print("Current date:", current_date)

new_date = current_date + timedelta(days=3)
print("New date:", new_date)
```

You can adjust the number of days to add by changing the value of the days argument when creating the `timedelta` object.

## Datetime Module & `isoformat()` Method in Python

The `isoformat()` method is used to get the string representation of a date or time object in ISO 8601 format. Here's an example:

```python
import datetime

# create a datetime object for May 14, 2023 at 2:30 PM
dt = datetime.datetime(2023, 5, 14, 14, 30)

# get the ISO 8601 string representation of the datetime object
iso_str = dt.isoformat()

print(iso_str)  # output: 2023-05-14T14:30:00
```

In the ISO 8601 format, the date and time are separated by the letter "T", and the time is given in 24-hour format. The string representation of the datetime object obtained using `isoformat()` method does not include timezone information. If you need to include timezone information, you can use the `strftime()` method with an appropriate format string.

## `datetime.utcnow()` Method

In Python, the `datetime` module provides a method called `datetime.utcnow()` that returns the current date and time as a datetime object in UTC (Coordinated Universal Time). 

Here's an example:

```python
import datetime

now_utc = datetime.datetime.utcnow()
print(now_utc)
```

This will output the current UTC date and time in the format `YYYY-MM-DD HH:MM:SS.mmmmmm`.

It's worth noting that `datetime.utcnow()` returns the current UTC time, which does not take into account any time zone offset. If you want to convert this time to a local time zone, you'll need to use the `datetime.astimezone()` method.

## How to Print Datetime Object in Python

To print a `datetime` object in a specific format in Python, you can use the `strftime()` method from the `datetime` module. This method allows you to format a datetime object into a string representation.

Here's an example of printing a datetime object in a specific format:

```python
from datetime import datetime

# Create a datetime object
dt = datetime(2023, 5, 17, 12, 34, 56)

# Format and print the datetime object
formatted_datetime = dt.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_datetime)
```

In this example, we create a `datetime` object `dt` representing a specific date and time. Then, we use the `strftime()` method to format it as a string. The format string `"%Y-%m-%d %H:%M:%S"` specifies the desired format for the datetime string. `%Y` represents the year with four digits, `%m` represents the month with zero-padding, `%d` represents the day with zero-padding, `%H` represents the hour in 24-hour format, `%M` represents the minute, and `%S` represents the second.

The output will be the formatted datetime string:

```python
2023-05-17 12:34:56
```

You can customize the format string based on your specific requirements. For more details about the format codes for `strftime()`, you can refer to the Python documentation: [strftime() and strptime() Format Codes](https://docs.python.org/3/library/datetime.html#strftime-strptime-behavior).
