# Manual de configuração para enviar alertas do Zabbix via Whatsapp

<a href="https://github.com/lalbertoreis/Zabbix-Whatsapp/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/lalbertoreis/Zabbix-Whatsapp"></a>
<img alt="GitHub all releases" src="https://img.shields.io/github/downloads/lalbertoreis/Zabbix-Whatsapp/total">

### Importante:

Este projeto usa como base o [MYZAP](https://github.com/billbarsch/myzap/edit/myzap2.0), um servidor de API do whatsapp, que utiliza um navegador virtual sem interface gráfica que abre o whatsapp web e executa todos os comandos via código possibilitando assim a automação de todas as funções.

Esta API que segue os mesmos termos de serviço do WhatsApp. É importante que você leia atentamente a estes termos. Você é responsável pelo uso da ferramenta e pelas conseqüências do mau uso. Reforçamos que a API não é destinada para prática de SPAM e que o envio de mensagens indesejadas, viola os termos de serviço do WhatsApp. A violação dos termos pode acarretar no bloqueio e banimento definitivo de sua conta no WhatsApp.

### Testar o myzap sem instalação

Para testar o myzap rodando em ambiente de produção gratuitamente: <a href="https://whatsapp-v2.apibrasil.com.br/start" target="_blank"> Clique aqui </a>

### Configuração do Zabbix

Devemos copiar o arquivo mwhatsapp_alerts.sh para o diretório de alertscripts do seu zabbix. Normalmente ele fica localizado no caminho: /usr/lib/zabbix/alertscripts

Lembre-se de atibuir permissão de execução para o arquivo (chmod 755 msteams_alerts.sh)

Após copiar o arquivo para seu Zabbix, devemos acessar o FrontEnd para configurar o Tipo de Mídias para o envio da Ação.

Acesse o menu Administração > Tipo de Mídias
- Clique no botão "Criar tipo de mídia"
- Selecione o tipo de midia "Script"
- No Nome coloque um de fácil identificação. Ex: Whatsapp
- Em Nome Script, coloque o nome do arquivo que você colocou na sua pasta do Alertscripts do Zabbix. Ex: mwhatsapp_alerts.sh
- No Parâmetros do script, adicione 3 linhas:
    - Na primeira adicione: {ALERT.SENDTO}
    - Na segunda adicione: {ALERT.SUBJECT}
    - Na terceira adicione: {ALERT.MESSAGE}
- Clique em Adicionar para adicionar o tipo de mídia.

![ConfiguracaoZabbix](https://github.com/lalbertoreis/Zabbix-Whatsapp/blob/main/img/Configuracao%20Midia.PNG)

Agora que temos o tipo de mídia configurado, devemos atribuir um numero ou ID de um grupo para um usuário no seu Zabbix que receberá esses alertas.

- Acesse o menu Administração > Usuários
- Clique em "Criar usuário"
- No Apelido, você pode colocar um de fácil entendimento. Ex: Whatsapp
- Em Nome, coloque sua preferencia. Ex: Whatsapp
- Atribua o grupo de permissão que desejar
- Digite uma senha
- Clique em atualizar

![ConfiguracaoZabbixUsuario](https://github.com/lalbertoreis/Zabbix-Whatsapp/blob/main/img/Criacao%20Usuario.PNG)

Agora devemos acessar a aba Mídia do usuário e atribuir um numero ou ID do grupo para receber os alertas.
- Clique em Adicionar
- No Tipo, selecione a Mídia MS Teams que criamos.
- Em Enviar Para, coloque o numero ou ID do grupo que irá receber as mensagens.
- Selecionar as severidades de acordo com o seu ambiente
- Clique em Adicionar para adicionar a mídia ao usuário
- Clique em Adicionar para atualizar o usuário

![ConfiguracaoZabbixUsuarioMidia](https://github.com/lalbertoreis/Zabbix-Whatsapp/blob/main/img/Configuracao%20Acao.PNG)

Agora que temos o tipo de mídia configurado e o usuário criado para receber os alertas, podemos configurar a Ação como qualquer outra.

- Acesse o menu Configuração > Ações
- Clique em "Criar ação"
- No Nome, você pode colocar um de fácil entendimento. Ex: Alerta Whatsapp
- Em Condições você pode escolher as sevidade das triggers que irá executar o alerta

![ActionOperation](https://github.com/lalbertoreis/Zabbix-MSTeams/blob/main/img/Configura%C3%A7%C3%A3o%20Zabbix%20A%C3%A7%C3%A3o%20Opera%C3%A7%C3%A3o.png)

Ainda em ações, mude de aba para Operações, onde irá configurar o avento de incidentes.

![ActionOperation](https://github.com/lalbertoreis/Zabbix-Whatsapp/blob/main/img/Incidentes.PNG)

Em Operação de recuperação, configure a mensagem que irá receber ao resolver o problema

![RecoverOperation](https://github.com/lalbertoreis/Zabbix-Whatsapp/blob/main/img/Incidente%20Resolvido.PNG)

Espero que este manual seja util para você e que traga valor para seus projetos.

Luiz Alberto Reis

<div> 
    
  <a href = "mailto:luizalbertonreis@gmail.com"><img src="https://img.shields.io/badge/-Gmail-%23333?style=for-the-badge&logo=gmail&logoColor=white" target="_blank"></a>
  <a href="https://www.linkedin.com/in/luiz-alberto-reis-47807a128" target="_blank"><img src="https://img.shields.io/badge/-LinkedIn-%230077B5?style=for-the-badge&logo=linkedin&logoColor=white" target="_blank"></a>  
    
</div>
