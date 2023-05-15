Zip files are a popular way to compress and bundle multiple files into a single archive. They are commonly used for tasks such as file compression, data backup, and file distribution. 
  
## How to zip file in python  

Zipping or compressing files in Python is a useful way to save space on your hard drive and make it easier to transfer files over the internet. The `zipfile` module in Python provides functionalities to create, read, write, append, and extract ZIP files.

### How to Zip a Single File

You can use the `zipfile` module to create a zip file containing a single file. Here is how you can do it:

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# name of the source file
file_name = 'file_to_compress.txt'

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add the source file to the zip file
zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

In the above code, we first imported the `zipfile` module. Then we defined the name of the zip file and the name of the source file. We created a `ZipFile` object and added the source file to it using the `write()` method. We then closed the zip file using the `close()` method.

### How to Zip Multiple Files

You can also create a zip file containing multiple files. Here is an example:

```python
import zipfile

# name of the new Zip file
zip_file_name = 'new_zip_file.zip'

# names of the source files
file_names = ['file_to_compressed1.txt',
              'file_to_compressed2.txt',
              'file_to_compressed3.txt'
             ]

# Create a ZipFile Object
zip_object = zipfile.ZipFile(zip_file_name, 'w')

# Add multiple files to the zip file
for file_name in file_names:
    zip_object.write(file_name, compress_type=zipfile.ZIP_DEFLATED)

# Close the Zip File
zip_object.close()
```

In the above example, we defined the names of multiple source files in a list. We then added each of these files to the zip file using a `for` loop and the `write()` method. Finally, we closed the zip file using the `close()` method.

To compress the zip file even further, you can set the `compress_type` argument to `zipfile.ZIP_DEFLATED`. This applies the [DEFLATE](https://en.wikipedia.org/wiki/DEFLATE) compression method to the files being zipped.  
  
## How to unzip file in python  

It is straightforward to extract zip files in Python using the `zipfile` module. Here are two ways to do it:

```python
### Code example 1
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    zip_ref.extractall('destination_folder')
```

In this example, we first import the `zipfile` module. We then create an instance of the `ZipFile` class for the zip file we want to extract. The `r` argument indicates that we want to read from the zip file, and `myzipfile.zip` is the name of the file we want to extract.

The `extractall()` method extracts all files from the zip file and saves them into the specified `destination_folder`. If `destination_folder` does not exist, it will be created.

```python
### Code example 2
import zipfile

with zipfile.ZipFile('myzipfile.zip', 'r') as zip_ref:
    for file in zip_ref.namelist():
        if file.endswith('.txt'):
            zip_ref.extract(file, 'destination_folder')
```

In this example, we again import the `zipfile` module and create an instance of the `ZipFile` class. We then loop through all files in the zip file using `namelist()`. If a file has a `.txt` extension, we extract it to `destination_folder`.

By using these two code examples, you can easily extract files from zip files in Python. Remember to adjust the file paths and naming to fit your specific needs.  
