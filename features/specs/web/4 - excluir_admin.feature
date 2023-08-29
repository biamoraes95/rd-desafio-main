#language: pt
#coding: utf-8

Funcionalidade: Excluir o admin

@excluir_admin
Cenario: Excluir admin
Dado que esteja na tela do Admin
E visualize os dados do novo Admin
E clique no botão de excluir
Quando clicar em excluir
Então vai excluir o novo Admin, exibindo a mensagem de sucesso