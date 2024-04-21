> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/file-handling/pdf

PDF é um formato de documento amplamente utilizado para publicações digitais. Python, por outro lado, é uma linguagem de programação versátil com uma vasta gama de aplicações no mundo digital de hoje. Quando usados em conjunto, Python pode se tornar uma ferramenta eficiente na manipulação e extração de informações de documentos [PDF](https://en.wikipedia.org/wiki/PDF). Neste artigo, exploraremos as diferentes maneiras de como Python pode ser usado para o processamento de PDF e como ele pode nos ajudar a melhorar nossa produtividade e eficiência.

## Bibliotecas Python para PDF

Para trabalhar com arquivos PDF em Python, várias bibliotecas estão disponíveis. Algumas das bibliotecas populares para usar Python com PDF são PyPDF2, reportlab e fpdf.

## Lendo PDF com Python

Para ler um arquivo `file`, você pode usar a biblioteca [PyPDF2](https://pypi.org/project/PyPDF2/). Aqui está um exemplo:

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

## Gerando PDF com Python

Para gerar novos arquivos PDF do zero, você pode usar a biblioteca [reportlab](https://pypi.org/project/reportlab/) ou `fpdf`. Aqui está um exemplo usando `reportlab`:

```python
from reportlab.pdfgen import canvas

# Create a new PDF file
pdf_file = canvas.Canvas('example.pdf')

# Add text to the PDF
pdf_file.drawString(100, 750, "Hello World")

# Save and close the PDF file
pdf_file.save()
```

Da mesma forma, você pode usar a biblioteca `fpdf` para criar PDF.

## Editando PDF com Python

Para editar arquivos PDF existentes, você pode usar a biblioteca [PyPDF2](https://pypi.org/project/PyPDF2/). Aqui está um exemplo para rotacionar as páginas em um arquivo PDF:

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

Em resumo, o Python oferece várias bibliotecas para trabalhar com arquivos PDF, permitindo que você leia, gere e edite PDFs de forma programática.

## Como Extrair Texto de um PDF com Python

Para extrair `text` de um PDF com Python, você pode usar as bibliotecas `PyPDF2` ou [pdfminer](https://pypi.org/project/pdfminer/). Essas bibliotecas permitem que você analise o PDF e extraia o conteúdo de `text`.

### Exemplo 1: Usando `PyPDF2`

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

### Exemplo 2: Usando `pdfminer`

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

Ambos esses métodos permitirão que você extraia conteúdo de `text` de um PDF com Python.

## Como Combinar Páginas de PDF

Mesclar vários arquivos PDF em um único documento é uma tarefa comum no processamento de documentos. A biblioteca `PyPDF2` em Python facilita a mesclagem de vários arquivos PDF em um único documento.

### Mesclar Duas Páginas de PDF Usando `PyPDF2`

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

### Mesclar arquivos PDF inteiros Usando `PyPDF2`

```python
from PyPDF2 import PdfFileMerger

pdfs = ['file1.pdf', 'file2.pdf']
merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(open(pdf, 'rb'))

with open('merged_pdf.pdf', 'wb') as f:
    merger.write(f)
```

Usando os exemplos de código acima, você pode mesclar várias páginas de PDF ou arquivos PDF inteiros em Python usando a biblioteca `PyPDF2`. Ao combinar arquivos PDF, você pode facilmente criar um único documento que é mais fácil de gerenciar e distribuir.

## Como Remover Marca D'água de PDF

Remover marca d'água de arquivos PDF em Python é fácil e pode ser feito usando várias bibliotecas. Aqui estão algumas soluções para remover marcas d'água usando as bibliotecas `PyPDF2` e `PyMuPDF`.

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

Com essas soluções simples, você pode facilmente remover marcas d'água de arquivos PDF usando Python e as bibliotecas `PyPDF2` e PyMuPDF.

## Como converter `HTML` para PDF

Converter `HTML` para PDF é uma tarefa comum no desenvolvimento web. Felizmente, Python oferece várias bibliotecas para realizar essa tarefa sem esforço. Aqui estão dois exemplos de como converter `HTML` para PDF usando bibliotecas populares de Python:

### Usando a biblioteca `pdfkit`

```python
import pdfkit

pdfkit.from_file('path/to/file.html', 'path/to/output.pdf')
```

### Usando a biblioteca `weasyprint`

```python
from weasyprint import HTML

HTML('path/to/file.html').write_pdf('path/to/output.pdf')
```

Ambas as bibliotecas oferecem a capacidade de converter `HTML` em PDF com apenas algumas linhas de código, facilitando a incorporação em qualquer projeto Python. Não esqueça de instalar as bibliotecas necessárias usando pip antes de implementar a solução.
