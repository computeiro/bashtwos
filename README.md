# BashTwos

Scripts de produtividade

O nome do projeto é um trocadilho de tools (ferramentas) com o acrônimo do meu nome completo (WOS)


## window-toogle.sh

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

![alt Configuração no Linux Mint](https://github.com/computeiro/bashtwos/blob/master/readme-files/window-toogle-conf.png)

- No Linux Mint, abra a opção de "Teclado", aba "Atalhos"  \[1\]
- Vá em atalhos personalizado \[2\]
- Crie um atalho personalizado (4) ou clique em um que você queira editar \[3\]
- Dê um nome sugestivo ao seu atalho \[5\]
- Insira a path \[6\] `window-toogle.sh` `[Título ou trecho da Janela]` `[comando caso não econtre a janela]`
  - Quando os argumentos tiverm espaço coloque-os entre `"aspas duplas"`
  - Desta maneira o window-toogle.sh tentará encontrar a janela pelo título ou trecho informado, se encontrar colocará a janela em primeiro plano, senão irá executar o comando para inicializar a aplicação.
  - Lembre-se, caso encontre o apicativo e o mesmo já esteja em primeiro plano ele será minimizado, mas apertando o atalho novamente ele será colocado em primeiro plano.
- O no botão \[7\] "Atualizar" (modo edição) ou "Salvar" (criando um novo)
- Defina o atalho personalizado \[8\]
  - No Linux Mint você recebe um alerta em caso de conflito de atalhos
  - Recomendo que utilize atalhos començando com `Super` (janelinha do Windows)


## launch-slack.sh

Este script é uma extensão do window-toogle.sh, o propósito é o mesmo, colocar o Slack em primeiro plano.
O diferencial é que aqui eu uso o window-toogle.sh e além de colocar o Slack em primeiro plano eu envio um atalho para o Slack: `Ctrl` + `K`
Que faz o Slack abrir a janela de busca, sensato para mim pois 90% das vezes que eu preciso do Slack tenho que usar esse atalho, resolvo num só.
No caso dos 10% eu aperto `Esc` e tá tudo certo.

A configuração segue os passos do window-toogle.sh (ver tópico anterior), 
`/opt/bashtwos/launch-slack.sh "Slack |" "flatpak run com.slack.Slack/x86_64/stable"`

O atalho que eu configurei foi o `Win` + `K`

Quando os argumentos tiverm espaço coloque-os entre `"aspas duplas"`

**Observação:** Após efetuar essas configurações, você pode exportar seus atalhos personalizados e compartilhar com alguém que já tem o bashtwos ou mesmo pra você não precisar configurar tudo novamente quando formatar a máquina. 
Para exportar, instale o dconf-cli (caso não tenha) e no terminal digite:

`$ dconf dump /org/cinnamon/desktop/keybindings/ > meus-atalhos-dconf.xml`

Para importar:

`$ dconf load /org/cinnamon/desktop/keybindings/ < meus-atalhos-dconf.xml`



## configurar-ambiente.sh

Este script eu utilizo para configurar minha máquina quando eu formato-a

Basicamente instala as coisas que eu utilizo no meu Linux Mint


