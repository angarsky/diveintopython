> [!NOTE]
> Lee este tutorial en la página web: https://diveintopython.org/es/learn/file-handling/pdf

PDF es un formato de documento ampliamente utilizado `for` publicaciones digitales. Python, por otro lado, es un lenguaje de programación versátil con una amplia `range` de aplicaciones en el mundo digital de hoy. Cuando se utilizan juntos, Python puede convertirse en una herramienta eficiente para manipular y extraer información de documentos [PDF](https://en.wikipedia.org/wiki/PDF). En este artículo, exploraremos las diferentes formas en que Python se puede usar `for` el procesamiento de PDF y cómo puede ayudarnos a mejorar nuestra productividad y eficiencia.

## Bibliotecas de PDF en Python

Para trabajar con archivos PDF en Python, hay diversas bibliotecas disponibles. Algunas de las bibliotecas populares para usar Python con PDF son PyPDF2, reportlab y fpdf.

## Leyendo PDF con Python

Para leer un archivo `file`, puedes usar la biblioteca [PyPDF2](https://pypi.org/project/PyPDF2/). Aquí tienes un ejemplo:

```python
import json
import PyPDF2

# Open the PDF file
pdf_file = open('example.pdf', 'rb')

# Create a PDF reader object
pdf_reader = PyPDF2.PdfFileReader(pdf_file)

# Get the number of pages in the PDF file
num_pages = pdf_reader.numPages

# Loop through all the pages and extract the text
for page in range(num_pages):
    page_obj = pdf_reader.getPage(page)
    print(page_obj.extractText())
    
# Close the PDF file
pdf_file.close()
```

## Generando PDF con Python

Para generar nuevos archivos PDF desde cero, puedes usar la biblioteca [reportlab](https://pypi.org/project/reportlab/) o `fpdf`. Aquí hay un ejemplo usando `reportlab`:

```python
from reportlab.pdfgen import canvas

# Create a new PDF file
pdf_file = canvas.Canvas('example.pdf')

# Add text to the PDF
pdf_file.drawString(100, 750, "Hello World")

# Save and close the PDF file
pdf_file.save()
```

De igual manera, puedes usar la biblioteca `fpdf` para crear PDF.

## Editando PDF con Python

Para editar archivos PDF existentes, puedes usar la biblioteca [PyPDF2](https://pypi.org/project/PyPDF2/). Aquí tienes un ejemplo para rotar las páginas de un archivo PDF:

```python
import PyPDF2

# Open the PDF file
pdf_file = open('example.pdf', 'rb')

# Create a PDF reader object
pdf_reader = PyPDF2.PdfFileReader(pdf_file)

# Create a PDF writer object
pdf_writer = PyPDF2.PdfFileWriter()

# Rotate the pages and add them to the PDF writer
for page in range(pdf_reader.numPages):
    page_obj = pdf_reader.getPage(page)
    page_obj.rotateClockwise(90)
    pdf_writer.addPage(page_obj)
    
# Save the rotated PDF file
with open('example_rotated.pdf', 'wb') as pdf_output:
    pdf_writer.write(pdf_output)
    
# Close the PDF files
pdf_file.close()
pdf_output.close()
```

En resumen, Python proporciona múltiples bibliotecas para trabajar con archivos PDF, lo que te permite leer, generar y editar PDFs de manera programática.

## Cómo Extraer Texto de un PDF con Python

Para extraer `text` de un PDF con Python, puedes usar las bibliotecas `PyPDF2` o [pdfminer](https://pypi.org/project/pdfminer/). Estas bibliotecas te permiten analizar el PDF y extraer el contenido de `text`.

### Ejemplo 1: Usando `PyPDF2`

```python
import PyPDF2

pdf_file = open('file.pdf', 'rb')
pdf_reader = PyPDF2.PdfFileReader(pdf_file)

text = ''
for page_num in range(pdf_reader.numPages):
    page = pdf_reader.getPage(page_num)
    text += page.extractText()

print(text)
```

### Ejemplo 2: Usando `pdfminer`

```python
from pdfminer.pdfinterp import PDFResourceManager, PDFPageInterpreter
from pdfminer.converter import TextConverter
from pdfminer.layout import LAParams
from pdfminer.pdfpage import PDFPage
from io import StringIO

def pdf_to_text(pdf_path):
    manager = PDFResourceManager()
    output = StringIO()
    converter = TextConverter(manager, output, laparams=LAParams())
    interpreter = PDFPageInterpreter(manager, converter)

    with open(pdf_path, 'rb') as file:
        for page in PDFPage.get_pages(file, check_extractable=True):
            interpreter.process_page(page)

        text = output.getvalue()

    return text
```

Ambos métodos te permitirán extraer contenido de `text` de un PDF con Python.

## Cómo Combinar Páginas PDF

Combinar múltiples archivos PDF en un solo documento es una tarea común en el procesamiento de documentos. La biblioteca `PyPDF2` en Python facilita la combinación de múltiples archivos PDF en un solo documento.

### Combinar Dos Páginas PDF Usando `PyPDF2`

```python
import PyPDF2

# Open the first PDF file
pdf1 = PyPDF2.PdfFileReader(open('file1.pdf', 'rb'))

# Open the second PDF file
pdf2 = PyPDF2.PdfFileReader(open('file2.pdf', 'rb'))

# Merge the two PDF files
output = PyPDF2.PdfFileWriter()
output.addPage(pdf1.getPage(0))
output.addPage(pdf2.getPage(0))

# Save the merged PDF file
with open('merged.pdf', 'wb') as f:
    output.write(f)
```

### Fusionar archivos PDF completos usando `PyPDF2`

```python
from PyPDF2 import PdfFileMerger

pdfs = ['file1.pdf', 'file2.pdf']
merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(open(pdf, 'rb'))

with open('merged_pdf.pdf', 'wb') as f:
    merger.write(f)
```

Utilizando los ejemplos de código anteriores, puedes fusionar múltiples páginas PDF o archivos PDF enteros en Python usando la biblioteca `PyPDF2`. Al combinar archivos PDF, puedes crear fácilmente un único documento que es más fácil de manejar y distribuir.

## Cómo quitar la marca de agua de un PDF

Quitar la marca de agua de archivos PDF en Python es fácil y se puede hacer utilizando varias bibliotecas. Aquí hay algunas soluciones para eliminar marcas de agua usando las bibliotecas `PyPDF2` y `PyMuPDF`.

```python
# Solution 1
import PyPDF2

# Open the PDF file
pdf = open('filename.pdf', 'rb')

# Create a PDFReader object
pdf_reader = PyPDF2.PdfReader()

# Create a PDFWriter object
pdf_writer = PyPDF2.PdfWriter()

# Iterate over the pages in the PDF file
for page in pdf_reader:
    # Remove the watermark 
    page.mergePage(None)
    # Add the page to the PDFWriter object
    pdf_writer.addPage(page)

# Save the PDF with the watermark removed
with open('filename_nw.pdf', 'wb') as f:
    pdf_writer.write(f)
```

```python
import fitz
# Solution 2
# Open the PDF file
pdf = fitz.open('filename.pdf')

# Iterate over the pages in the PDF file
for page in pdf:
    # Get the annotations on the page
    annotations = page.annots()
    # Iterate through the annotations
    for annotation in annotations:
        # Check if the annotation is a watermark
        if annotation.type[0] == 8:
            # Remove the annotation
            page.deleteAnnot(annotation)
    
# Save the PDF with the watermark removed
pdf.save('filename_nw.pdf')
```

Con estas soluciones simples, puedes eliminar fácilmente marcas de agua de archivos PDF utilizando Python y las bibliotecas `PyPDF2` y PyMuPDF.

## Cómo convertir `HTML` a PDF

Convertir `HTML` a PDF es una tarea común en el desarrollo web. Afortunadamente, Python ofrece varias bibliotecas para lograr esta tarea sin esfuerzo. Aquí hay dos ejemplos de cómo convertir `HTML` a PDF utilizando bibliotecas populares de Python:

### Usando la biblioteca `pdfkit`

```python
import pdfkit

pdfkit.from_file('path/to/file.html', 'path/to/output.pdf')
```

### Usando la biblioteca `weasyprint`

```python
from weasyprint import HTML

HTML('path/to/file.html').write_pdf('path/to/output.pdf')
```

Ambas bibliotecas ofrecen la capacidad de convertir `HTML` a PDF con solo unas pocas líneas de código, facilitando su incorporación en cualquier proyecto de Python. No olvides instalar las bibliotecas requeridas usando pip antes de implementar la solución.
