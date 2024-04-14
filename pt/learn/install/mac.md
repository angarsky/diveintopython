> [!NOTE]
> Leia este tutorial no site: https://diveintopython.org/pt/learn/install/mac

Instalar o Python em um computador Mac é um processo simples e direto que pode ser realizado em apenas alguns minutos.

## Como Instalar o Python no Mac OS

Para instalar o Python em um Mac OS, você pode seguir estes passos simples:

1. Vá até o site oficial do Python e faça o download da versão mais recente do Python para Mac.
2. Uma vez que o download esteja completo, abra o instalador e siga as instruções na tela.
3. Após o processo de instalação estar completo, você pode verificar a versão do Python no seu mac abrindo o aplicativo terminal e digitando `python3 --version`.
4. Se o Python estiver instalado com sucesso, o número da versão será exibido no Terminal.

Seguindo estes passos, você pode facilmente instalar o Python no macbook e começar a trabalhar com esta popular linguagem de programação. Lembre-se de baixar o Python para Mac do site oficial para garantir que você tenha a versão mais recente e mais segura do software.

### Como Instalar o Python com Brew

Para instalar o Python no macOS usando brew, siga estes passos simples:

1. Abra o terminal no seu macOS.
2. Instale o brew se você ainda não o fez, executando o comando:

```shell
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

3. Após a instalação, execute o comando:

```shell
brew install python
```

4. A última versão do Python será instalada no seu macOS.

Instalar o Python com brew no macOS é uma maneira simples e eficaz de obter a última versão do Python no seu sistema. Esse processo vai te economizar tempo e vai prevenir o erro: `python command not found` no macOS.

## Adicionar Python ao Caminho do MacOS

Para adicionar o Python ao caminho do macOS, siga estes passos simples:

1. Abra o aplicativo Terminal.
2. Digite `nano ~/.bash_profile` e pressione Enter.
3. Adicione a seguinte linha ao arquivo:

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/X.Y/bin"
```

Substitua `X.Y` pela versão do Python que você deseja adicionar ao path. Por exemplo, se você quiser adicionar o Python 3.9, a linha deve ser:

```shell
export PATH="$PATH:/Library/Frameworks/Python.framework/Versions/3.9/bin"
```

4. Salve o arquivo pressionando Ctrl+O, depois pressione Enter.
5. Feche o arquivo pressionando Ctrl+X.
6. Reinicie o aplicativo Terminal para que as mudanças tenham efeito.

Ao adicionar Python ao caminho do seu macOS, você pode acessá-lo facilmente de qualquer diretório no Terminal. Isso pode ser útil para executar scripts Python e gerenciar pacotes Python.

## Como Executar um Script Python no Mac

Se você está se perguntando como executar um script Python no seu Mac, há alguns passos simples que você pode seguir. Primeiro, você precisará garantir que o Python está instalado no seu computador. Você pode verificar isso abrindo seu aplicativo Terminal e digitando `python` na linha de comando.

Se o Python não estiver instalado, você pode baixá-lo do site oficial. Uma vez que você tenha instalado o Python, você pode usar o aplicativo Terminal para navegar até a pasta onde o seu script Python está localizado.

Para executar o script, simplesmente digite `python your_script.py` no terminal e pressione enter. Seu script deve ser executado imediatamente.

Em resumo, para executar um script Python no seu Mac, você precisa:
- Verificar se o Python está instalado
- Instalar o Python, se necessário
- Navegar até o script no Terminal
- Executar o script usando o comando `python your_script.py`.

Seguindo esses passos, você será capaz de executar scripts Python no seu Mac com facilidade.

## Desinstalar Python do Mac

Para desinstalar Python do Mac, siga estes passos:
1. Abra o Finder
2. Clique na pasta Aplicativos
3. Localize a aplicação Python e arraste-a para a lixeira
4. Esvazie a lixeira

Seguindo esses passos, você pode desinstalar com sucesso o Python do seu Mac. É importante notar que alguns aplicativos podem depender do Python, então você só deve desinstalá-lo se tiver certeza de que ele não é mais necessário. Certifique-se de fazer backup dos seus dados antes de realizar quaisquer passos de desinstalação.

## Como Atualizar o Python no Mac

Para atualizar o Python em um Mac, você pode usar o terminal para instalar a versão mais recente usando homebrew ou pyenv. Primeiro, verifique sua versão atual do Python digitando `python --version` no terminal. Depois, use o comando apropriado para instalar a versão mais recente. Para usuários do Homebrew, execute `brew upgrade python` e para usuários do pyenv, execute `pyenv install [latest-version]`. Atualizando o Python, você pode desfrutar dos recursos mais recentes e correções de bugs.

## Erro: `python command not found`

Se você está encontrando o erro **python command not found** no seu macOS, significa que seu sistema não consegue localizar a utilidade de linha de comando do Python.

Este problema pode surgir por várias razões, como uma versão desatualizada do macOS, caminho de instalação incorreto ou arquivos do sistema removidos por engano.

Para corrigir este problema, você pode tentar atualizar seu macOS para a versão mais recente ou reinstalar o Python. Alternativamente, você pode definir o caminho correto para o Python usando o terminal ou modificando as variáveis ambientais do seu sistema.

Em resumo, encontrar o erro `python command not found mac` é um problema comum entre os usuários do macOS. Mas com as etapas de solução de problemas corretas, você pode corrigi-lo rapidamente e continuar trabalhando em seus projetos Python.
