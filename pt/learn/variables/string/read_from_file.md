> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/variables/string/read-from-file

Para ler um arquivo em uma string em Python, você pode usar a função integrada `open()` para abrir o arquivo e ler seu conteúdo usando o método `read()`.

## Exemplo de Código para Ler um Arquivo de Texto

```python
with open('filename.txt', 'r') as file:
    data = file.read()
```

Neste exemplo, substitua `'filename.txt'` pelo nome do arquivo que você deseja ler. O argumento `'r'` especifica que o arquivo deve ser aberto no modo de leitura.

O comando `with` é usado para garantir que o arquivo seja fechado automaticamente quando o bloco dentro do comando `with` é finalizado. Isso ajuda a prevenir vazamentos de recursos.

O conteúdo do arquivo é então lido para a variável `data` utilizando o método `read()`.

Você pode então usar a variável `data` como uma string em seu código.
