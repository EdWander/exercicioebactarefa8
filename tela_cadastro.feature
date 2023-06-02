      #language: pt

      Funcionalidade: Tela de cadastro
      Como cliente da Ebac-Shop
      Quero Concluir meu cadastro
      Para finalizar minha compra

      Contexto:
      Dado que eu acesse a tela de checkout da Ebac-Shop

      Cenário: Cadastro válida
      Quando eu digitar o Nome* "Edson"
      E Sobrenome* "Wander"
      E Nome da empresa(opcional) "EBAC"
      E País* "Brasil"
      E Endereço* "Rua Dr silveiro, 655"
      E Cidade* "Rio de janeiro"
      E CEP* "24417-586"
      E Telefone* "21 99584-6325"
      E Endereço de e-mail* "edsonw@ebac.com.br"
      Então deve exibir uma mensagem de cadastro realizado "Olá Edson Wander"

      Cenário: Cadastro inválida campo vazio
      Quando eu digitar o Nome* "Edson"
      E Sobrenome* ""
      E Nome da empresa(opcional) "EBAC"
      E País* ""
      E Endereço* "Rua Dr silveiro, 655"
      E Cidade* "Rio de janeiro"
      E CEP* "24417-586"
      E Telefone* ""
      E Endereço de e-mail* "edsonw@ebac.com.br"
      Então deve exibir uma mensagem de alerta "Campos vazios"

      Cenário: Cadastro com e-mail inválido
      Quando eu digitar o Nome* "Edson"
      E Sobrenome* "Wander"
      E Nome da empresa(opcional) "EBAC"
      E País* "Brasil"
      E Endereço* "Rua Dr silveiro, 655"
      E Cidade* "Rio de janeiro"
      E CEP* "24417-586"
      E Telefone* "21 99584-6325"
      E Endereço de e-mail* "edsonwebac"
      Então deve exibir uma mensagem de erro "E-mail em formato inválido"

      Cenário: Cadastrar multiplos usuários
      Quando eu digitar o <nome>
      E o <sobrenome>
      E <nome_empresa>
      E <pais>
      E <endereco>
      E <cidade>
      E <cep>
      E <telefone>
      E <endereco_email>
      Então deve exibir a <mensagem> de sucesso

      Exemplos:
      | nome  | sobrenome | nomeEmpresa | país     | endereço            | cidade         | cep      | telefone         | email                  | mensagem                       |
      | Edson | Wander    | EBAC        | Brasil   | Rua do ouvidor, 655 | Rio de Janeiro | 24451751 | 21 98547-5748    | edsonw@ebac.com.br     | Cadastro realizado com sucesso |
      | Vania | Costa     | EBAC        | EUA      | Roosevelt, 800      | Chicago        | 75484    | +1 (547)858-7548 | vaniacosta@ebac.com.br | Cadastro realizado com sucesso |
      | Fabio | Araujo    | EBAC        | Brasil   | Rua Augusta, 45     | São Paulo      | 25551751 | 11 99857-5825    | fabioa@ebac.com.br     | Cadastro realizado com sucesso |
      | Pedro | Marco     | EBAC        | Alemanha | Gerstungen, 5       | Eisenach       | 25474    | 21 99947-5447    | pedrom@ebac.com.br     | Cadastro realizado com sucesso |
      | Edna  | Garcia    | EBAC        | Brasil   | Rua paula lemos, 85 | Rio de Janeiro | 24451574 | 21 99971-5448    | edna1@ebac.com.br      | Cadastro realizado com sucesso |

