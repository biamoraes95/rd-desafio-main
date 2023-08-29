#language: pt
#coding: utf-8

Funcionalidade: Realizar login

@cadastro
Cenario: Cadastro
Dado que o usuario esteja logado
E clica no Admin, no menu ao lado esquerdo
E clica em adicionar um novo Admin
Quando ele preenche todos os campos
Então ele clica no botão salvar e exibe a mensagem de sucesso
