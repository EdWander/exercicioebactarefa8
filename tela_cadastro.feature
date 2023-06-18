      #language: pt

      Funcionalidade: Tela de cadastro
      Como cliente da Ebac-Shop
      Quero Concluir meu cadastro
      Para finalizar minha compra

      Contexto:
      Dado que eu acesse a tela de checkout da Ebac-Shop

      Cenário: Cadastro válida
      Quando eu digitar o Nome* "Edson"
      E Todos os campos obrigatórios corretamente
      Então deve exibir uma mensagem de boas vindas "Cadastro realizado, Seja Bem-vindo Edson Wander!"

      Cenário: Cadastro inválido campo vazio
      Quando eu deixar de preencher algum campo obrigatório
      OU preecher email com formato inválido
      Então deve exibir uma mensagem de alerta "Cadastro inválido, check as informações"

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
      | Fabio | Araujo    | EBAC        | Brasil   | Rua Augusta, 45     | São Paulo      | 25551751 | +49 170 857-5825    | fabioa@ebac.com.br     | Cadastro realizado com sucesso |
      | Pedro | Marco     | EBAC        | Alemanha | Gerstungen, 5       | Eisenach       | 25474    | 21 99947-5447    | pedrom@ebac.com.br     | Cadastro realizado com sucesso |
      | Edna  | Garcia    | EBAC        | Brasil   | Rua paula lemos, 85 | Rio de Janeiro | 24451574 | 21 99971-5448    | edna1@ebac.com.br      | Cadastro realizado com sucesso |

