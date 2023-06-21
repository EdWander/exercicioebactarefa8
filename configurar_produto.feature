#language: pt

Funcionalidade: Tela de cadastro
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que eu acesse o carrinho da Ebac-Shop

Cenário: Operação válida
Quando eu escolher a cor "blue"
E o tamanho "L"
E a quantidade "9"
Então deve exibir uma mensagem de operação realizada: "Produto inserido com sucesso"

Cenário: Operação inválida por quantidade
Quando eu escolher a cor "blue"
E o tamanho "L"
E a quantidade "11"
Então deve exibir uma mensagem de operação inválida: "Limite de 10 produtos por venda"

Cenário: Limpar
Quando eu escolher a cor "blue"
E o tamanho "L"
E a quantidade "11"
E clicar no botão "limpar"
Então deve voltar a estado original