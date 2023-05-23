With a rich set of libraries and frameworks, Python enables developers to write efficient and maintainable code easily. In this headline package, we will explore some of the most important features of Python and how it can be used to solve real-world problems.

## How to Install Package

To install a specific version of a Python package, you can use the pip package manager. First, open your command prompt or terminal and execute the following command:

```shell
pip install package_name==desired_version
```

Replace `package_name` with the name of the package you want to install and `desired_version` with the specific version number you wish to install.

Alternatively, if the package is available on GitHub, you can install it directly using pip by specifying the GitHub repository URL. Run the following command in your command prompt or terminal:

```shell
pip install git+https://github.com/username/repository.git
```

Replace `username/repository` with the GitHub username and repository name of the package you want to install.

### Installing a specific version of the requests package:

```shell
pip install requests==2.23.0
```

## Python Package vs Module  

In Python, a module is a file that contains Python definitions and statements. A package is a collection of modules. A package can have sub-packages, which in turn can contain modules and sub-packages.
 
Modules can be imported using the `import` statement:

```python
import module_name
```

Packages can be imported similarly using the `import` statement. For example, to import a module `module_name` from a package `package_name`:

```python
import package_name.module_name
```

Modules and packages provide an efficient way to organize code and reduce code duplication. Modules provide a way to modularize code and reuse it across multiple files. Packages provide a way to modularize modules and reuse them across multiple projects.

Python provides a rich set of built-in modules and there are thousands of third-party modules available on the internet. Using these modules can help reduce development time and improve code quality.

In summary, modules and packages are the fundamental building blocks of Python code organization and reuse, which play a significant role in developing complex applications quickly and efficiently.

```python
import math

# use functions from math module
print(math.sqrt(25))
```

```python
import pandas as pd

# read csv file using pandas
df = pd.read_csv('data.csv')

# print first few rows of the dataframe
print(df.head())
```  
  
## Update Package With pip  

Pip is a package manager for Python language that helps in managing package installation and updates. Updating a package is essential to get the latest version, which includes new features, bug fixes, and security patches. Here are two ways to update a package in Python using pip.

### Update Using `pip install`

To upgrade a single package using pip, open the command prompt or terminal and run the following command:

```python
pip install --upgrade package_name
```

### Update with `pip freeze`

To upgrade all the packages installed on your system, use the following command:

```python
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}
```
By running this command in your command prompt, it will first collect all the packages installed on your system and then update them to the latest version. 



