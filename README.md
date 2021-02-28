# Bashutils

Scripts de produtividade 


## Script: window-toogle.sh

*Para que serve:* 
Na minha rotina de trabalho possuo várias aplicações abertas ao mesmo tempo e em vários monitores, este script me economiza tempo encontrando estes aplicativos através de atalhos mnemônicos.
Se eu preciso do navegador Chrome eu aperto o atalho (`Win` + `C`) e o mesmo é exibido em primeiro plano, se necessário é incializado, senão é evidenciada a instância do navegador que já estava rodando.
Caso o navegador já estava em evidência ele é minimizado.

Poucos atalhos no Mint usam a tecla `Win` (bandeirinha do Windows ou Super)
Seguem outros aplicativos e atalhos minemônicos que não conflitam com o Linux Mint Cinnamon:

Eclipse  = `Win` + `J` (J de Java, propósito para o qual eu o uso)
Sublime  = `Win` + `S` (meu bloco de notas)
VS Code  = `Win` + `V` (utilizo para HTML e FrameWorks JavaScript)
Firefox  = `Win` + `F` (Navegador alternativo)
Terminal =  `Ctrl` + `Alt` + `T` (Atalho nativo do SO, mas neste contexto só tenho um terminal aberto com várias abas seu eu precisar)


*Como configurar:*

Você deve verificar o esquema de de atalhos personalizados do seu sistema operacional, no Linux Mint segue conforme a imagem a seguir:

![alt Configuração no Linux Mint](https://github.com/computeiro/bashutils/blob/master/readme-files/window-toogle.png)

- Abra a opção de atalhos (1)
- Vá em atalhos personalizado (2)
- Crie um atalho personalizado (3) ou clique em um que você queira editar (4)
- Dê um nome sugestivo ao seu atalho (5)
- Insira a path do `window-toogle.sh` `[Título ou trecho da Janela]` `[comando caso não econtre a janela]`
  Desta maneira o window-toogle.sh tentará encontrar a janela pelo título ou trecho informado, se encontrar colocará a janela em primeiro plano, senão irá executar o comando para inicializar a aplicação.
  Lembre-se, caso encontre o apicativo e o mesmo já esteja em primeiro plano ele será minimizado, mas apertando o atalho novamente ele será colocado em primeiro plano.

