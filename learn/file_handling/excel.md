Excel in Python is a trending topic among data analysts and professionals, providing a powerful combination of two of the most essential tools for data manipulation and analysis. Python's flexible programming language can be used to automate repetitive Excel tasks, manipulate complex datasets, and create insightful data visualizations. By integrating Python with Excel, users can leverage the strengths of both applications to enhance productivity, streamline workflows, and gain deeper insights into their data. In this article, we will explore the benefits of Excel in Python and how it can improve your data analysis capabilities.  
  
## How to Read Excel File in Python

Python is a great language to work with Excel. With the help of the Python Excel library, you can easily manipulate Excel files, analyze data, and automate tasks. Here are two examples of how to use Python with Excel:

### Reading and Writing Excel Files with `pandas`

To read and write Excel files with Python, you can use the `pandas` library. To install use `pip install "pandas[excel]"`. Here's a code snippet that reads an Excel file and saves it as a new file:

```python
import pandas as pd

df = pd.read_excel('input_file.xlsx')
df['new_column'] = df['old_column'] * 2
df.to_excel('output_file.xlsx', index=False)
```

In this example, we're using the `read_excel()` function to read an input file, then adding a new column and multiplying the old column with `2`, and finally saving the result to a new output file with the `to_excel()` function.

### Manipulating Excel Files with OpenPyXL

If you need more control over your Excel files, you can use the `OpenPyXL` library. To install use `pip install openpyxl`. Here's an example of how to add a new worksheet to an existing workbook:

```python
from openpyxl import load_workbook, Workbook

wb = load_workbook('existing_workbook.xlsx')
new_ws = wb.create_sheet('New Worksheet')
new_ws['A1'] = 'Hello, world!'
wb.save('existing_workbook.xlsx')
```

In this example, we're loading an existing workbook with `load_workbook()`, creating a new worksheet with `create_sheet()`, adding a value to cell `A1`, and finally saving the changes with `save()`.

### Reading and Writing Excel Files with `xlrd`

`Xlrd` is a library for reading data and formatting information from Excel files in the historical `.xls` format. Here is an example code snippet to read an Excel file using `xlrd`:

```python
import xlrd

# specify path and filename of Excel file
file_path = 'path/to/file/excel_file.xls'

# open workbook
workbook = xlrd.open_workbook(file_path)

# get sheet by name
worksheet = workbook.sheet_by_name('Sheet1')

# read data from cells
cell_value = worksheet.cell_value(0, 0)
```

In the example above, `xlrd` library is used to open the Excel file. `workbook.sheet_by_name` function is used to access the sheet named 'Sheet1'. `worksheet.cell_value` function is used to read data from the cells of the sheet. In the example, the value of cell A1 is read.  

 
## How to Create a New Excel Sheet in Python  

If you want to create a new Excel sheet in Python, you can use the `openpyxl` module. This module allows you to create, read, and modify Excel files.

### Code Example 1: `openpyxl`

```python
import openpyxl

# Create a new Excel workbook
workbook = openpyxl.Workbook()

# Activate the first sheet
sheet = workbook.active

# Rename the first sheet
sheet.title = "New Sheet"

# Save the workbook
workbook.save("new_excel_sheet.xlsx")
```

### Code Example 2: `xlwt`

```python
import xlwt

# Create a new workbook
workbook = xlwt.Workbook()

# Add a new sheet to the workbook
sheet = workbook.add_sheet("New Sheet")

# Save the workbook
workbook.save("new_excel_sheet.xls")
```

Both of these examples will create a new Excel sheet with the name `New Sheet` and save it to a file. You can modify the code to create sheets with different names or add data to the sheets.  
  
## How to Open Excel in Python Different Directory  

To open an Excel file from a different directory in Python, one can use the `os` module of Python and set the working directory to the desired directory. Then, use the `pandas` library to read the Excel file.

Here are two code examples:

```python
import os
import pandas as pd

### set working directory to desired directory

os.chdir('/path/to/directory')

### read Excel file using pandas

df = pd.read_excel('excel_file.xlsx')
```

```python
import pandas as pd

### read Excel file from a specific directory using pandas

df = pd.read_excel('/path/to/directory/excel_file.xlsx')
```

In both examples, `pd.read_excel()` function is used to read the Excel file. The first example uses `os.chdir()` to change the working directory to the desired directory before reading the file. The second example directly reads the Excel file from a specific directory. 

Using these codes, one can easily open an Excel file from a different directory in Python.  
