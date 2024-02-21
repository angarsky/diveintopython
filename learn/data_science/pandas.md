> [!NOTE]
> Read this tutorial on the website: https://diveintopython.org/learn/data-science/pandas

Pandas is a powerful, open-source library in Python specifically designed for data manipulation and analysis. It provides developers and data scientists with high-level, flexible, and versatile data structures called DataFrame and Series, enabling them to work efficiently with structured data. Developed by Wes McKinney, pandas stands as a fundamental tool in the field of data science and analytics, greatly simplifying the process of data cleaning, exploration, and visualization. Whether you are dealing with large datasets from various sources or performing complex data transformations and analysis, pandas offers a comprehensive range of functionalities that cater to a wide array of data operations, making it an indispensable tool in the Python programming ecosystem for data analysis and related tasks.  
  
## What is `pandas` in Python  

Pandas includes several key features that make it incredibly powerful for data analysis:

1. Dataframe object for data manipulation with integrated indexing.
2. Tools for reading and writing data between in-memory data structures and different file formats.
3. Data alignment and integrated handling of missing data.
4. Reshaping and pivoting of datasets.
5. Label-based slicing, indexing, and subsetting of large datasets.
6. Data structure column insertion and deletion.
7. Group by engine allowing split-apply-combine operations on datasets.
8. High performance merging and joining of datasets.

### `read_csv()` and `to_csv()` Methods 

One of the reasons why the [pandas](https://pypi.org/project/pandas/) library is highly regarded in the data science community is its ability to easily read and write data. This includes working with CSV files, a common data format in data analysis. Here are simple examples illustrating how to read data from a CSV file into a `pandas` DataFrame, and how to write this data back out to a CSV file.

> Note: It's important to `import` the `pandas` library before executing these code snippets. This is typically done with the line `import pandas as pd`.

### Example: Reading data from a CSV file

```python
import pandas as pd

# Load data from a CSV file into a DataFrame
data = pd.read_csv('example.csv')
print(data.head())
```

### Example: Writing data to a CSV file

```python
# Assuming 'data' is a DataFrame that you have previously created and manipulated
data.to_csv('modified_example.csv', index=False)
```

### Working with DataFrames

At the core of the `pandas` library is the DataFrame object, which can be thought of as a relational data table, with rows and columns. Here's how you can create a DataFrame from scratch and inspect its contents.

### Example: Сreate DataFrame()`

```python
# Creating a DataFrame from a dictionary
df = pd.DataFrame({
    'A': [1, 2, 3],
    'B': ['a', 'b', 'c']
})
print(df)
```

Output:

```python

   A  B
0  1  a
1  2  b
2  3  c
```
  
## How to Install `pandas` in Python  

To get started, you need to install Pandas. This can be done using either pip or conda, depending on your Python environment.

### Using pip

If you're using pip, open your terminal or command prompt and execute the following command:

```python
pip install pandas
```

### Using conda

For those who prefer Conda, the command differs slightly:

```python
conda install pandas
```

> Note: Ensure your internet connection is active as these commands download `pandas` from the respective repositories.

### Import Pandas

Once installed, you can `import` `pandas` into your Python script or interactive session to confirm it's ready to use. Here are the basic steps:

1. Open your Python IDE or the terminal.
2. Type the `import` statement to bring `pandas` into your namespace.
3. Optionally, it's common to alias `pandas` as `pd` for convenience.

Here's how you do it:

```python
import pandas as pd
```

This simple line of code makes all the functionality of `pandas` available in your script as `pd`.

### Summary

Installing `pandas` in Python enriches your toolbox with a robust library for data manipulation and analysis. Whether using pip or conda, the installation is user-friendly and quick. Remember to `import` `pandas` with `import `pandas` as pd` at the beginning of your script to access its functionalities. Starting with simple tasks like reading from and saving to CSV files can serve as a solid foundation for more complex data analysis tasks using pandas.

Happy data crunching!

## Examples of Basic Pandas Usage

With `pandas` successfully installed and imported, you're now ready to dive into some basic data manipulation tasks.

### Method `read_csv()` to Load Data

Loading data from a CSV file is one of the most common initial steps in data analysis. Here's how you can use `pandas` to accomplish this:

```python
import pandas as pd

# Load data from a CSV file
df = pd.read_csv('path_to_your_file.csv')

# Display the first few rows of the DataFrame
print(df.head())
```

### Method `to_csv()` to Save Data

After manipulating or analyzing your data, you might want to save the results. Pandas makes this straightforward as well:

```python
import pandas as pd

# Assuming 'df' is your DataFrame variable
df.to_csv('path_to_save_file.csv', index=False)
```

> Note: Setting `index=False` prevents `pandas` from writing row indices into the CSV file.

### `head()` Method

To quickly inspect the first few rows of a DataFrame, you can use the `head()` method. This is extremely useful for getting a feel for the data without displaying the entire dataset.

```python
# Displaying the first 3 rows of the DataFrame
print(df.head(3))
```

Output is the same as the dataframe creation output since the dataframe contains only 3 rows.

> Note: Exploring the Python `pandas` documentation can provide insights into more advanced functionalities and methods available in the `pandas` library.

  
## Concept of Dataframe in `pandas`  

In the world of data analysis and manipulation using Python, `pandas` dataframes stand as a cornerstone, enabling users to efficiently handle and analyze data. A DataFrame, in its essence, is a two-dimensional, size-mutable, and potentially heterogeneous tabular data structure with labeled axes (rows and columns). This powerful concept allows for a more intuitive and concise handling of data, bridging the gap between the ease of use found in high-level environments and the Python programming language's capabilities.

### Converting a Dictionary to `pandas` Dataframe

One common task in data analysis is converting existing data structures into `pandas` DataFrames to leverage pandas' powerful data manipulation and analysis features. A particularly useful case is converting a dictionary to a `pandas` DataFrame. This can be easily achieved using the `DataFrame` constructor provided by pandas:

```python
import pandas as pd

# Sample dictionary
data_dict = {'Name': ['Alice', 'Bob', 'Charlie'],
             'Age': [25, 30, 35],
             'City': ['New York', 'Paris', 'London']}

# Convert dictionary to pandas DataFrame
df = pd.DataFrame(data_dict)

print(df)
```

This code snippet demonstrates a simple way of transforming a dictionary where keys become column headers and values become row data into a `pandas` DataFrame.

### Converting a List to `pandas` Dataframe

Similarly, converting a list to a `pandas` DataFrame is another task data analysts often encounter. Whether you have a list of tuples, lists, or a single flat list, `pandas` can handle these variations with ease:

### Converting a list of lists

Here's how to convert a list of lists into a DataFrame. Each inner list becomes a row in the DataFrame.

```python
import pandas as pd

# Sample list of lists
data_list = [['Alice', 25, 'New York'],
             ['Bob', 30, 'Paris'],
             ['Charlie', 35, 'London']]

# Convert list to pandas DataFrame
df_list = pd.DataFrame(data_list, columns=['Name', 'Age', 'City'])

print(df_list)
```

> Note: When converting lists to a `pandas` DataFrame, specifying column names is optional. However, doing so improves readability and ease of data handling.

### Additional Features of `pandas` DataFrame

Pandas DataFrames come equipped with a vast array of methods and properties, making data manipulation and analysis not only possible but also highly efficient. Here are a few notable features:

- **Data manipulation**: Sort, merge, concatenate, reshape, and pivot tables.
- **Data analysis**: Perform statistical analysis, handle missing data, and filter data.
- **Data visualization**: Though primarily through integration with libraries like Matplotlib, making preliminary data visualization straightforward.

### `head()` and `tail()` for Quick Data Inspection

These are two very useful methods for quickly inspecting a `pandas` DataFrame:

- `head(n)` displays the first `n` rows of the DataFrame.
- `tail(n)` displays the last `n` rows.

```python
# Display the first 3 rows
print(df.head(3))

# Display the last 3 rows
print(df.tail(3))
```
  
## Snowflake Module  

The Snowflake module in Python, known as `snowflake-connector-python`, provides a powerful and efficient way to `connect` Python applications with the Snowflake Data Cloud. It allows for executing queries and handling data within Snowflake using Python, making it a valuable tool for data analysts and scientists who frequently work with data analysis libraries such as `pandas`. 

Integrating `snowflake-connector-python` with `pandas` is a common practice that offers seamless data manipulation and transformation capabilities, facilitating the extraction, transformation, and loading (ETL) processes of data workflows.

### Installing the Snowflake Connector

Before diving into code examples, ensure you have the Snowflake connector installed in your Python environment. This can be done using pip:

```python
pip install snowflake-connector-python
```

### Establishing a Connection

To use the Snowflake module, the first step is to establish a connection using your Snowflake `account` details:

```python
from snowflake.connector import connect

# Define your connection parameters
conn = connect(user='YOUR_USERNAME',
               password='YOUR_PASSWORD',
               account='YOUR_ACCOUNT',
               warehouse='YOUR_WAREHOUSE',
               database='YOUR_DATABASE',
               schema='YOUR_SCHEMA')

print("Successfully connected to Snowflake!")
```

> Note: Replace `YOUR_USERNAME`, `YOUR_PASSWORD`, `YOUR_ACCOUNT`, etc., with your actual Snowflake credentials.

### Querying Data with `execute()` Method

Executing a query is straightforward with the `execute()` method. Here's how to perform a SELECT operation:

```python
# Create a cursor object
cur = conn.cursor()

# Execute a query
cur.execute("SELECT * FROM YOUR_TABLE LIMIT 10")

# Fetch the results
results = cur.fetchall()

for row in results:
    print(row)
```

> Note: Don't forget to replace `YOUR_TABLE` with the name of your actual table in Snowflake.

### Integrating with Pandas

The integration with `pandas` enables you to convert query `results` directly into a `pandas` DataFrame, offering a familiar and powerful environment for data analysis.

### `fetch_pandas_all()` Method

After executing a query, use the `fetch_pandas_all()` method to get the `results` as a `pandas` DataFrame:

```python
import pandas as pd

# Assuming `cur` is your cursor from a successful query
df = cur.fetch_pandas_all()

print(df.head())
```

### Best Practices

1. Always close your connection and cursor when you're done to free up resources:

```python
cur.close()
conn.close()
```

2. Securely manage your credentials using environment variables or secrets management tools instead of hard-coding them into your scripts.

3. Use parameterized queries or the provided methods of the connector to prevent SQL injection and ensure your queries are safe.

By leveraging the `snowflake-connector-python` alongside `pandas`, Python developers and data enthusiasts can efficiently interact with Snowflake, execute queries, and analyze data within a powerful data science ecosystem.  
  
## Group by Tool in `pandas`  

The `pandas` library is a fundamental tool for data manipulation and analysis in Python. It provides numerous functions for efficient data operations. One of the key functionalities is the `groupby` method, which allows for grouping data in a flexible way. In this article, we will dive into how to use the `pandas groupby` function to manage and analyze grouped data effectively.

### Understanding `groupby()` in Pandas

The `groupby` method in the pandas library is instrumental for segmenting data into groups based on some criteria. a pandas DataFrame can be grouped by one or more columns or even a combination of pandas Series and columns. This function is vital for performing statistical analysis, data summarization, and various transformations.

### How to Use `groupby()`

Using the `groupby()` function in pandas involves a few simple steps:

1. Identify the key(s) you want to group by.
2. Apply the `groupby()` function on your pandas DataFrame.
3. Specify the aggregation functions to summarize the grouped data.

> Note: Aggregation functions include operations like mean(), sum(), max(), min(), and many more.

### Example: Basic Grouping

Let's start with a simple example to group a pandas DataFrame by a single column.

```python
import pandas as pd

# Sample DataFrame
data = {'Category': ['A', 'B', 'A', 'C', 'B', 'C', 'A', 'B'],
        'Values': [10, 20, 15, 10, 25, 30, 5, 40]}
df = pd.DataFrame(data)

# Grouping by 'Category' column and calculating mean
grouped_df = df.groupby('Category').mean()

print(grouped_df)
```

This code Groups the DataFrame by the 'Category' column and calculates the mean of the 'Values' for each category.

### Example: Multiple Keys Grouping

You can also group by multiple columns for more detailed analysis.

```python
# Additional column for demonstration
data['Subcategory'] = ['X', 'Y', 'X', 'Y', 'X', 'Y', 'Y', 'X']
df = pd.DataFrame(data)

# Grouping by both 'Category' and 'Subcategory' columns
grouped_df = df.groupby(['Category', 'Subcategory']).sum()

print(grouped_df)
```

Here, the DataFrame is grouped by both 'Category' and 'Subcategory', and the sum of 'Values' is calculated for each group.

### Best Practices for Using `groupby()`

1. **Clean Data Before Grouping**: Ensure your data does not have missing values or inconsistencies that could affect your grouping.
2. **Use Appropriate Aggregations**: Select aggregation functions that make sense for your data and analysis objectives.
3. **Leverage Grouped Data**: Use the grouped object for further analysis or visualization to derive insights.

> Note: Remember that the result of a `groupby` operation is not a DataFrame, but a GroupBy object. You can convert it to a DataFrame by applying an aggregation method.
