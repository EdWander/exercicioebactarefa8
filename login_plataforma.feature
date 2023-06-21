#language: pt

Funcionalidade: Tela de login
Como cliente da Ebac-Shop
Quero Fazer o login na plataforma
Para visualizar meus pedidos

Contexto:
Dado que eu acesse a tela de checkout da Ebac-Shop

Cenário: Autenticação válida
Quando eu digitar o usuário "carlos@ebac.com.br"
E a senha "Senha25@"
Então deve exibir uma mensagem de boas vindas "Olá Carlos"

Cenário: Usuário e/ou senha errada
Quando eu digitar o usuário "riodes@ebac.com.br"
E a senha "Senha225@"
Então deve exibir uma mensagem de alerta: "Usuário ou/e senha inválidos"
