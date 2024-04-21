> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/modules/packages

Com um conjunto rico de bibliotecas e frameworks, Python permite que desenvolvedores escrevam código eficiente e mantível facilmente. Neste pacote destaque, exploraremos algumas das características mais importantes do Python e como ele pode ser usado para resolver problemas do mundo real.

## Pacote Python vs Módulo  

Em Python, um [módulo](https://docs.python.org/3/glossary.html#term-module) é um arquivo que contém definições e declarações de Python. Um pacote é uma coleção de módulos. Um pacote pode ter sub-pacotes, que por sua vez podem conter módulos e sub-pacotes.

Módulos podem ser importados usando a declaração `import`:

```python
import module_name
```

Pacotes podem ser importados de maneira semelhante usando a instrução `import`. Por exemplo, para importar um módulo `module_name` de um pacote `package_name`:

```python
import package_name.module_name
```

Módulos e pacotes fornecem uma maneira eficiente de organizar código e reduzir a duplicação de código. Módulos fornecem uma maneira de modularizar o código e reutilizá-lo em vários arquivos. Pacotes fornecem uma maneira de modularizar módulos e reutilizá-los em vários projetos.

Python proporciona um rico conjunto de módulos integrados e há milhares de módulos de terceiros disponíveis na internet. Usar esses módulos pode ajudar a reduzir o tempo de desenvolvimento e melhorar a qualidade do código.

Em resumo, módulos e pacotes são os blocos de construção fundamentais da organização e reutilização do código em Python, os quais desempenham um papel significativo no desenvolvimento rápido e eficiente de aplicações complexas.

```python3
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

## Como Instalar um Pacote

Para instalar uma versão específica de um [pacote](https://docs.python.org/3/glossary.html#term-package) Python, você pode usar o gerenciador de pacotes pip. Primeiro, abra seu prompt de comando ou terminal e execute o seguinte comando:

```shell
pip install package_name==desired_version
```

Substitua `package_name` pelo nome do pacote que você deseja instalar e `desired_version` pela versão específica que deseja instalar.

Alternativamente, se o pacote estiver disponível no GitHub, você pode instalá-lo diretamente usando pip, especificando a URL do repositório GitHub. Execute o seguinte comando no seu prompt de comando ou terminal:

```shell
pip install git+https://github.com/username/repository.git
```

Substitua `username/repository` pelo nome de usuário e nome do repositório do GitHub do pacote que você deseja instalar.

### Instalando uma Versão Específica do Pacote `requests`

```shell
pip install requests==2.23.0
```

## Atualizar Pacote Com `pip`

Pip é um gerenciador de pacotes para a linguagem Python que auxilia na gestão da instalação e atualização de pacotes. Atualizar um pacote é essencial para obter a versão mais recente, que inclui novos recursos, correções de bugs e patches de segurança. Aqui estão duas maneiras de atualizar um pacote em Python usando pip.

### Atualizar Usando `pip install`

Para atualizar um único pacote usando pip, abra o prompt de comando ou terminal e execute o seguinte comando:

```python
pip install --upgrade package_name
```

### Atualize com `pip freeze`

Para atualizar todos os pacotes instalados no seu sistema, use o seguinte comando:

```python
pip freeze | %{$_.split('==')[0]} | %{pip install --upgrade $_}
```

Ao executar este comando no seu prompt de comando, ele primeiro coletará todos os pacotes instalados no seu sistema e, em seguida, atualizará todos para a versão mais recente.
