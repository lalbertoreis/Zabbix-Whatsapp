#######################################################################
#####           Script de Alerta Zabbix para Whatsapp             #####
#####                                                             #####
#####           Versao: 1.0                                       #####
#####           Autor: Luiz Alberto Reis                          #####     
#####                                                             #####
#####           Baseado no alerta via Slack abaixo                #####
#####     https://github.com/ericoc/zabbix-slack-alertscript      #####
#####                                                             #####
#####                                                             #####
#######################################################################
#####                                                             #####
#####        Valores recebidos neste script como parametro        #####
#####                                                             #####
##### TO="$1"           (Numero do Celular ou ID do Grupo)        #####
##### SUBJ="$2"         (Assunto do alerta)                       #####
##### MSG="$3"          (Mensagem de alerta enviada pelo Zabbix)  #####
#####                                                             #####
#######################################################################
#!/bin/bash
#Parametros de envio do CURL
#ALTERE O IP
#ALTERE O TOKEN
#ALTERE O SESSIONKEY
ALTERE A SESSION
curl -X POST http://IP:3333/sendText -H "Content-Type: application/json" -H "apitoken: TOKEN" -H "sessionkey: SESSIONKEY" --data-binary @- <<DATA
{
  "session":"SESSION",
  "number":"$1",
  "text":"$2\n\n$3",
  "isGroup": true
}

