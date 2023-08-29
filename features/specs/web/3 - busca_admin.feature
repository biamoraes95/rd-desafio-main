#language: pt
#coding: utf-8

Funcionalidade: Realizar busca do admin

@busca_admin
Cenario: Busca
Dado que esteja criado um novo admin
E ele acessa a area de busca
Quando ele preenche o nome do admin
Então exibe as informações do novo admin