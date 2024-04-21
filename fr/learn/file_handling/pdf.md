> [!NOTE]
> Lisez ce tutoriel sur le site: https://diveintopython.org/fr/learn/file-handling/pdf

Le PDF est un format de document largement utilisé pour les publications numériques. Python, d'autre part, est un langage de programmation polyvalent avec une vaste `range` d'applications dans le monde numérique d'aujourd'hui. Utilisés ensemble, Python peut devenir un outil efficace pour manipuler et extraire des informations des documents [PDF](https://en.wikipedia.org/wiki/PDF). Dans cet article, nous explorerons les différentes manières dont Python peut être utilisé pour le traitement des PDF, et comment cela peut nous aider à améliorer notre productivité et efficacité.

## Bibliothèques Python pour PDF

Pour travailler avec des fichiers PDF en Python, il existe diverses bibliothèques disponibles. Parmi les bibliothèques populaires pour utiliser Python avec PDF figurent PyPDF2, reportlab et fpdf.

## Lire un PDF avec Python

Pour lire un fichier PDF, vous pouvez utiliser la bibliothèque [PyPDF2](https://pypi.org/project/PyPDF2/). Voici un exemple :

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

## Générer des PDF avec Python

Pour générer de nouveaux fichiers PDF à partir de zéro, vous pouvez utiliser la bibliothèque [reportlab](https://pypi.org/project/reportlab/) ou `fpdf`. Voici un exemple utilisant `reportlab` :

```python
from reportlab.pdfgen import canvas

# Create a new PDF file
pdf_file = canvas.Canvas('example.pdf')

# Add text to the PDF
pdf_file.drawString(100, 750, "Hello World")

# Save and close the PDF file
pdf_file.save()
```

De même, vous pouvez utiliser la bibliothèque `fpdf` pour créer des PDF.

## Édition de PDF avec Python

Pour modifier des fichiers PDF existants, vous pouvez utiliser la bibliothèque [PyPDF2](https://pypi.org/project/PyPDF2/). Voici un exemple pour faire pivoter les pages dans un fichier PDF :

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

En résumé, Python propose plusieurs bibliothèques pour travailler avec des fichiers PDF, vous permettant de lire, générer et modifier des PDF de manière programmatique.

## Comment extraire du texte d'un PDF avec Python

Pour extraire du `texte` d'un PDF avec Python, vous pouvez utiliser les bibliothèques `PyPDF2` ou [pdfminer](https://pypi.org/project/pdfminer/). Ces bibliothèques vous permettent d'analyser le PDF et d'extraire le contenu du `texte`.

### Exemple 1 : Utilisation de `PyPDF2`

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

### Exemple 2 : Utilisation de `pdfminer`

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

Ces deux méthodes vous permettront d'extraire le contenu de `text` d'un PDF avec Python.

## Comment combiner des pages PDF

Fusionner plusieurs fichiers PDF en un seul document est une tâche courante dans le traitement de documents. La bibliothèque `PyPDF2` en Python facilite la fusion de plusieurs fichiers PDF en un seul document.

### Fusionner deux pages PDF en utilisant `PyPDF2`

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

### Fusionner des fichiers PDF entiers en utilisant `PyPDF2`

```python
from PyPDF2 import PdfFileMerger

pdfs = ['file1.pdf', 'file2.pdf']
merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(open(pdf, 'rb'))

with open('merged_pdf.pdf', 'wb') as f:
    merger.write(f)
```

En utilisant les exemples de code ci-dessus, vous pouvez fusionner plusieurs pages PDF ou des fichiers PDF entiers en Python en utilisant la bibliothèque `PyPDF2`. En combinant des fichiers PDF, vous pouvez facilement créer un document unique qui est plus facile à gérer et à distribuer.

## Comment supprimer un filigrane d'un PDF

Supprimer un filigrane de fichiers PDF en Python est facile et peut être réalisé en utilisant un certain nombre de bibliothèques. Voici quelques solutions pour supprimer les filigranes en utilisant les bibliothèques `PyPDF2` et `PyMuPDF`.

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

Avec ces solutions simples, vous pouvez facilement supprimer les filigranes des fichiers PDF en utilisant Python et les bibliothèques `PyPDF2` et PyMuPDF.

## Comment convertir `HTML` en PDF

Convertir `HTML` en PDF est une tâche courante dans le développement web. Heureusement, Python propose plusieurs bibliothèques pour accomplir cette tâche sans effort. Voici deux exemples de comment convertir `HTML` en PDF en utilisant des bibliothèques Python populaires :

### En utilisant la bibliothèque `pdfkit`

```python
import pdfkit

pdfkit.from_file('path/to/file.html', 'path/to/output.pdf')
```

### Utilisation de la bibliothèque `weasyprint`

```python
from weasyprint import HTML

HTML('path/to/file.html').write_pdf('path/to/output.pdf')
```

Les deux bibliothèques offrent la capacité de convertir `HTML` en PDF avec juste quelques lignes de code, facilitant ainsi son intégration dans tout projet Python. N'oubliez pas d'installer les bibliothèques requises en utilisant pip avant de mettre en œuvre la solution.
