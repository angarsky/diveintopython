> [!NOTE]
> Вы можете прочитать эту статью на сайте: https://diveintopython.org/ru/learn/file-handling/pdf

PDF является широко используемым форматом документов для цифровых публикаций. Python, с другой стороны, является универсальным языком программирования с огромным `range` применений в современном цифровом мире. Когда используются вместе, Python может стать эффективным инструментом для манипулирования и извлечения информации из документов [PDF](https://en.wikipedia.org/wiki/PDF). В этой статье мы рассмотрим различные способы использования Python для обработки PDF и как он может помочь нам повысить нашу продуктивность и эффективность.

### Использование Python с PDF

Для работы с файлами PDF в Python доступно множество библиотек. Некоторые из популярных библиотек для использования Python с PDF – это PyPDF2, reportlab и fpdf.

### Чтение PDF с Python

Чтобы прочитать PDF `file`, вы можете использовать библиотеку [PyPDF2](https://pypi.org/project/PyPDF2/). Вот пример:

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

### Генерация PDF с Помощью Python

Чтобы создавать новые файлы PDF с нуля, вы можете использовать библиотеку [reportlab](https://pypi.org/project/reportlab/) или `fpdf`. Вот пример использования `reportlab`:

```python
from reportlab.pdfgen import canvas

# Create a new PDF file
pdf_file = canvas.Canvas('example.pdf')

# Add text to the PDF
pdf_file.drawString(100, 750, "Hello World")

# Save and close the PDF file
pdf_file.save()
```

Аналогично, вы можете использовать библиотеку `fpdf` для создания PDF.

### Редактирование PDF с Помощью Python

Для редактирования существующих файлов PDF вы можете использовать библиотеку [PyPDF2](https://pypi.org/project/PyPDF2/). Вот пример поворота страниц в файле PDF:

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

В итоге, Python предлагает несколько библиотек для работы с PDF файлами, позволяя вам программно читать, создавать и редактировать PDF.

### Как Извлечь Текст из PDF с Помощью Python

Чтобы извлечь `text` из PDF с помощью Python, вы можете использовать библиотеки [PyPDF2](https://pypi.org/project/PyPDF2/) или [pdfminer](https://pypi.org/project/pdfminer/). Эти библиотеки позволяют вам анализировать PDF и извлекать содержимое `text`.

### Пример Использования `PyPDF2`

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

### Пример Использования `pdfminer`

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

Оба этих метода позволят вам извлечь содержимое `text` из PDF с помощью Python.

### Как Объединить Страницы PDF

Объединение нескольких файлов PDF в один документ является обычной задачей при обработке документов. Библиотека [PyPDF2](https://pypi.org/project/PyPDF2/) в Python позволяет легко объединять несколько файлов PDF в один документ.

### Объединение Двух Страниц PDF с Использованием `PyPDF2`

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

### Объединение Целых PDF Файлов с Использованием `PyPDF2`

```python
from PyPDF2 import PdfFileMerger

pdfs = ['file1.pdf', 'file2.pdf']
merger = PdfFileMerger()

for pdf in pdfs:
    merger.append(open(pdf, 'rb'))

with open('merged_pdf.pdf', 'wb') as f:
    merger.write(f)
```

Используя приведенные выше примеры кода, вы можете объединять несколько страниц PDF или целые PDF файлы на Python с помощью библиотеки [PyPDF2](https://pypi.org/project/PyPDF2/). Объединяя файлы PDF, вы можете легко создать один документ, который легче управлять и распространять.

### Как Удалить Водяной Знак с PDF

Удаление водяного знака из PDF файлов на Python легко и может быть выполнено с помощью нескольких библиотек. Вот некоторые решения для удаления водяных знаков с использованием библиотек [PyPDF2](https://pypi.org/project/PyPDF2/) и `PyMuPDF`.

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

С помощью этих простых решений вы можете легко удалить водяные знаки из файлов PDF, используя Python и библиотеки [PyPDF2](https://pypi.org/project/PyPDF2/) и PyMuPDF.  
  
### Как Конвертировать `HTML` в PDF

Конвертация `HTML` в PDF является обычной задачей в веб-разработке. К счастью, Python предоставляет несколько библиотек для безупречного выполнения этой задачи. Вот два примера того, как конвертировать `HTML` в PDF с использованием популярных библиотек Python:

### Использование Библиотеки `pdfkit`

```python
import pdfkit

pdfkit.from_file('path/to/file.html', 'path/to/output.pdf')
```

### Использование Библиотеки `weasyprint`

```python
from weasyprint import HTML

HTML('path/to/file.html').write_pdf('path/to/output.pdf')
```

Обе библиотеки предоставляют возможность конвертировать `HTML` в PDF всего за несколько строк кода, что делает их легко интегрируемыми в любой проект на Python. Не забудьте установить необходимые библиотеки с помощью pip перед реализацией решения.
