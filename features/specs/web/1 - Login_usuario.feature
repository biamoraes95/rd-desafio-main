#language: pt
#coding: utf-8

Funcionalidade: Fazer login

-Eu como usuario
-Quero logar no sistema com sucesso

@login_usuario
Cenario: Fazer login com sucesso
Dado que o eu tenho um usuario
|username|Admin|
|Password|admin123|
Quando eu faco login
Então eu verifico se estou logado no sistema