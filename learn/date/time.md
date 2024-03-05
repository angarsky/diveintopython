> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/date/time

The Python time module is a powerful tool for working with time-related operations in Python. It provides functions for measuring time intervals, formatting and parsing time and date strings, and handling time zones. With the time module, you can easily work with time and date values, and perform a wide range of time-related operations in your Python code. Whether you need to measure the execution time of your code or work with date and time values, the Python's time module has got you covered.

## Time Formats in Python

In Python, you can use the `strftime()` method from the `time` module to format time values according to various format codes. Here are some commonly used format codes for time formatting in Python:

- **%H**: 2-digit hour in 24-hour format (00-23)
- **%I**: 2-digit hour in 12-hour format (01-12)
- **%M**: 2-digit minute (00-59)
- **%S**: 2-digit second (00-59)
- **%p**: AM/PM designation (AM or PM)

You can combine these format codes with other characters to create the desired time format. Here is an example of how to get the formatted time in Python:

```python3
import time

# Get the current time
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%H:%M:%S", current_time)
formatted_time_am_pm = time.strftime("%I:%M:%S %p", current_time)

# Print the formatted time
print("Formatted Time (24-hour format):", formatted_time)
print("Formatted Time (12-hour format):", formatted_time_am_pm)

# Output:
# Formatted Time (24-hour format): 12:34:56
# Formatted Time (12-hour format): 12:34:56 PM
```

## Python's `time.sleep()` Function

The `time.sleep()` is a Python function that suspends the execution of the current thread for a specified number of seconds, so you can easily set your own waiting time.

The syntax of `time.sleep()` for wait time or delay is the following:

```python
import time

time.sleep(seconds)
```

Where `seconds` is the number of seconds for which the thread should be suspended.

The `sleep()` function accepts the sleep duration in seconds, not milliseconds. However, you can achieve a similar effect by dividing the desired time sleep duration in milliseconds by 1000 to convert it to seconds.

Using `time.sleep()` function will help you to pause execution of the programm for the defined period of time. 

## `time.time()` Function in Python

In Python, `time.time()` is a function that returns the current time in seconds since the Epoch (January 1, 1970, 00:00:00 UTC) as a floating-point number.

Here's an example of how to use `time.time()` function for time measuring in Python:

```python
import time

start_time = time.time()

# do some time-consuming task here

end_time = time.time()

elapsed_time = end_time - start_time

print(f"The task took {elapsed_time:.2f} seconds to complete.")
```

In this example, `start_time` and `end_time` are obtained by calling `time.time()` at the beginning and end of the time-consuming task, respectively. The difference between the two times gives the elapsed time, which is then printed out. The calculated running time is formatted as a string with two decimal places using f-strings.

Here's also example of time computation for graph creation in Python using the `networkx` library:

```python
import networkx as nx
import time

start_time = time.time()

# Create a graph with 100 nodes
G = nx.complete_graph(100)

end_time = time.time()

# Compute the time taken to create the graph
time_taken = end_time - start_time

print(f"Time taken to create the graph: {time_taken:.4f} seconds")
```

So `time.time()` function can be used for counting time in Python.

## Time in Ms Measuring

If you want to measure time in milliseconds in Python, you can use the `time` module's `time()` function along with the `perf_counter()` function. Here's an example:

```python3
import time

# Get the current time in milliseconds
current_time_ms = int(time.time() * 1000)
print("Current Time in Milliseconds:", current_time_ms)

# Measure the execution time of a code block in milliseconds
start_time = time.perf_counter()

# Code or operation to measure

end_time = time.perf_counter()
execution_time_ms = int((end_time - start_time) * 1000)
print("Execution Time in Milliseconds:", execution_time_ms)
```

Output:

```python
Current Time in Milliseconds: 1621842353154
Execution Time in Milliseconds: 42
```

In this example, `time.time()` is used to retrieve the current time as a floating-point number representing the number of seconds since the epoch. By multiplying it with 1000, we obtain the current time in milliseconds.

For measuring the execution time of a code block, we use `time.perf_counter()` to get the current high-resolution time in seconds. We capture the start time before the code block and the end time after the code block. By subtracting the start time from the end time, we obtain the elapsed time in seconds. Multiplying it by 1000 gives us the execution time in milliseconds.

## Python `timeit()` with Examples

Python's `timeit` module is a powerful tool for measuring the execution time of small code snippets. It provides a simple way to time the execution of code and compare the performance of different approaches. The `timeit` module can be particularly useful when you want to benchmark different implementations and determine which one is more efficient.

### Python `timeit()` Parameters

The `timeit` function in Python takes several parameters that allow you to customize its behavior:

- **stmt**: This is the statement you want to measure. It can be a string containing a single statement or multiple statements separated by semicolons.
- **setup**: This parameter is optional and is used to set up the environment for the code to be measured. It can also be a string containing one or more statements.
- **timer**: This parameter specifies the timer function to be used. If not specified, the default timer for the current platform will be used.
- **number**: This parameter determines the number of executions of the code. The more executions, the more accurate the timing measurement.

### Timing Multiple Lines in Python Code

You can use the `timeit` module to time multiple lines of Python code. Here are two examples using different approaches.

#### Example 1: **Using Semicolons**

```python
import timeit

code_to_measure = """
def square_numbers():
    result = []
    for i in range(1000):
        result.append(i ** 2)
    return result

square_numbers()
"""

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### Example 2: **Using Triple Quotes**

```python
import timeit

code_to_measure = '''
def square_numbers():
    result = []
    for i in range(1000):
        result.append(i ** 2)
    return result

square_numbers()
'''

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

In both examples, we define a function (`square_numbers`) and then call it using the `timeit` module. The code to be measured is enclosed in triple quotes, allowing us to span multiple lines.

### `timeit()` Methods

The timeit module provides different methods for measuring execution time. Here are some of them.

#### `timeit.timeit()`

The `timeit.timeit()` method is used to measure the execution time of a code snippet. It takes the code as a string, the number of executions, and an optional setup statement.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_time = timeit.timeit(stmt=code_to_measure, number=10000)
print(f"Execution time: {execution_time} seconds")
```

#### `timeit.repeat()`

The `timeit.repeat()` method allows you to repeat the measurement multiple times and returns a list of execution times.

```python
import timeit

code_to_measure = "result = [i**2 for i in range(1000)]"

execution_times = timeit.repeat(stmt=code_to_measure, number=10000, repeat=5)
print(f"Execution times: {execution_times}")
```

In this example, the code is executed 10,000 times, and the measurement is repeated 5 times.

#### `timeit.default_timer()`

The `timeit.default_timer()` method returns the current time according to the highest-resolution clock available on the platform.

```python
import timeit

start_time = timeit.default_timer()

# Code to be measured
result = [i**2 for i in range(1000)]

end_time = timeit.default_timer()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

Using `timeit` methods, you can choose the one that best fits your measurement needs and easily compare the performance of different code implementations.

## Getting Time in Milliseconds

To get the current time in milliseconds using Python, you can use the `time` module and its `time()` function, which returns the number of seconds since the Epoch (January 1, 1970, 00:00:00 UTC). You can then multiply this value by 1000 to get the time in milliseconds:

```python
import time

milliseconds = int(round(time.time() * 1000))
print(milliseconds)
```

This will print the current time in milliseconds. Note that the result is rounded to an integer using the `round()` function before converting it to an integer using `int()`. This is because `time.time()` returns a floating-point value with a high precision.

## A Python's Timer

To create a timer in Python, you can use the built-in `time` module. Here's an example code snippet that demonstrates how to create a timer:

```python3
import time

def countdown(t):
    while t:
        mins, secs = divmod(t, 60)
        timer = '{:02d}:{:02d}'.format(mins, secs)
        print(timer, end="\r")
        time.sleep(1)
        t -= 1
    print('Timer completed!')

# Set the time for the timer (in seconds)
t = 60

# Call the countdown function with the time value as the argument
countdown(t)
```

This code will create a countdown timer for 60 seconds and print the remaining time on the screen every second until the timer is completed. You can adjust the value of t to set the desired length of the timer.

Using this functionality you can create a timer function to measure the elapsed time.

## Time Functions in Python

In Python, the `time` module provides a range of functions for working with time. Here are some commonly used functions (apart from `time()` and `sleep()` which we've already mentioned):

- **ctime()** - This function takes a time in seconds and returns a string representation of that time in the format "Day Month Date Time Year".
Example usage:

```python3
import time

current_time = time.time()
time_string = time.ctime(current_time)
print("Current time: ", time_string)
```

- **gmtime()** - This function takes a time in seconds and returns a struct_time object representing the UTC time.
Example usage:

```python3
import time

current_time = time.time()
utc_time = time.gmtime(current_time)
print("UTC time: ", utc_time)
```

There are many more functions available in the Python's time module for working with time, including `localtime()`, `strftime()`, and `strptime()`.

## The `perf_counter()` Function from the Time Module

In Python, the `perf_counter()` function from the `time` module is used to measure the elapsed time with the highest available resolution on the system. It provides a more precise timer compared to the regular `time()` function. Here's an example of how to use `perf_counter()`:

```python
import time

start_time = time.perf_counter()

# Code to be measured
for i in range(1000):
    # Perform some computation
    result = i ** 2

end_time = time.perf_counter()

execution_time = end_time - start_time
print(f"Execution time: {execution_time} seconds")
```

By using `perf_counter()`, you can measure the execution time of a specific block of code with high precision. This function is commonly used for performance profiling and benchmarking purposes.

## The `monotonic()` Function of Time Module

In Python, the `monotonic()` function from the `time` module is used to obtain a monotonic clock, which is a clock that continually increases and is unaffected by system time adjustments. It is suitable for measuring intervals and determining the elapsed time between events. Here's an example of how to use `monotonic()`:

```python
import time

start_time = time.monotonic()

# Code to be measured
for i in range(1000):
    # Perform some computation
    result = i ** 2

end_time = time.monotonic()

elapsed_time = end_time - start_time
print(f"Elapsed time: {elapsed_time} seconds")
```

Using `monotonic()` ensures that the elapsed time is calculated based on a monotonic clock, unaffected by system time changes, such as clock adjustments or time zone changes. It provides a reliable measure of elapsed time for performance measurements and benchmarking purposes.

## How to Stop a Program Execution After a Certain Period of Time

If you want to stop the execution of a Python program after a certain amount of time, you can use the `signal` module along with a timer. The `signal` module allows you to handle various signals, including a timer signal, to control the program's behavior. Here's an example that demonstrates how to stop the program after a specified duration:

```python3
import signal
import time

# Define the handler function for the alarm signal
def timeout_handler(signum, frame):
    raise TimeoutError("Program execution timed out")

# Set the duration (in seconds) after which the program should be stopped
duration = 10

# Register the handler function to be called when the alarm signal is received
signal.signal(signal.SIGALRM, timeout_handler)

# Set the alarm to trigger after the specified duration
signal.alarm(duration)

try:
    # Code to be executed
    while True:
        # Perform some computation
        time.sleep(1)  # Simulate some work

except TimeoutError:
    print("Program execution stopped after the specified duration")
```

In this example, the program sets an alarm using `signal.alarm(duration)`, where duration is the desired duration in seconds. When the alarm is triggered after the specified duration, it raises a `TimeoutError` exception, which is caught by the try-except block. In the except block, you can handle the program termination or print a message to indicate that the program was stopped.

> Note: the signal module is not available on all platforms, and its behavior may vary. Additionally, this method may not be suitable for interrupting long-running or computationally intensive tasks. For more complex scenarios, you might need to consider multiprocessing or threading techniques to achieve the desired behavior.

## How to Measure an Execution Time of a Function in Python

To time the execution of a specific function in Python, you can use the `time` module and a decorator. Here's an example of how you can time a function using a decorator:

```python3
import time

def timer_decorator(func):
    def wrapper(*args, **kwargs):
        start_time = time.time()
        result = func(*args, **kwargs)
        end_time = time.time()
        elapsed_time = end_time - start_time
        print("Elapsed Time: {:.6f} seconds".format(elapsed_time))
        return result
    return wrapper

# Example function to be timed
@timer_decorator
def my_function():
    time.sleep(2)  # Simulating some time-consuming operation
    return "Finished"

# Call the function
my_function() # Output: Elapsed Time: 2.001987 seconds
```

In this example, the `timer_decorator` function is a decorator that wraps the target function (`my_function`) with timing functionality. The decorator records the start time before invoking the function and the end time after the function completes. It calculates the elapsed time and prints it.

By applying the `@timer_decorator` decorator to the `my_function`, the function is automatically timed when called.

You can use this decorator on any function you want to time by applying the `@timer_decorator` decorator above the function definition.

> Note: The example uses the `time.sleep(2)` function call to simulate a time-consuming operation. Replace it with the actual code or operation you want to time.

## How to Get Current Time

If you want to know what time it is now, you can use the `time` module's `time()` function. Here is an example of getting current time in Python:

```python
import time

current_time = time.time()
print("Current Time (in seconds since the epoch):", current_time)
```

In this example, time.time() returns the current time as a floating-point number representing the number of seconds since the epoch. So this way we can get current Unix time in Python.

## The `time.strftime()` Function

The `strftime()` function in Python's `time` module is used to format a `time.struct_time` object or a time tuple into a string representation based on the specified format codes. Here's an example:

```python
import time

# Get the current time as a time tuple
current_time = time.localtime()

# Format the time using strftime()
formatted_time = time.strftime("%Y-%m-%d %H:%M:%S", current_time)

# Print the formatted time
print("Formatted Time:", formatted_time) # Output: Formatted Time: 2023-05-22 12:34:56
```

## Printing Time in Python

To print the current time in Python, you can use the `time` module or the `datetime` module. Here is an example of using `time` module:

```python
import time

current_time = time.localtime()
formatted_time = time.strftime("%H:%M:%S", current_time)

print("Current Time (using time module):", formatted_time)
```

## How to Get Current Time

To retrieve the current time in Python, you can use either the `time` module or the `datetime` module. Here's how you can get the current time using `time` module:

```python
import time

current_time = time.localtime()
print("Current Time (using time module):", time.strftime("%H:%M:%S", current_time))
```

Here is also an example of how to get current time in milliseconds:

```python
import time

current_time_ms = int(time.time() * 1000)
print("Current Time (in milliseconds using time module):", current_time_ms)
```

## Generating a Timestamp in Python

You can use the `time` module to generate a timestamp. Here is an example:

```python
import time

timestamp = int(time.time())
print("Timestamp (using time module):", timestamp)
```
