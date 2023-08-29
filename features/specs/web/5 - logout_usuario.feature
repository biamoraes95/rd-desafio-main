#language: pt
#coding: utf-8

Funcionalidade: Realizar logout do usuario 

@logout_usuario 
Cenario: Realizar logout
Dado que o usuario esteja logado
E clica no perfil
Quando clicar em "logout"
Então vai exibir com sucesso a tela de login