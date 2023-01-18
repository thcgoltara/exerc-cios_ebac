#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticacao) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que o usuario acesse a pagina de autenticacao na loja EBAC-SHOP

Cenario: Ao inserir dados validos deve ser direcionado para a tela de checkout
Quando o usuario informa o e-mail valido "thyessagoltara@outlook.com"
E a senha valida "123456"
Entao o sistema redireciona o usuario para a tela de checkout

Cenario: Ao inserir um dos campos invalidos deve exibir uma mensagem de alerta “Usuario ou senha invalidos”
Quando o usuario informa o e-mail invalido "thyessaxxxxXa@outlook.com"
E a senha invalida "oioio"
Entao o sistema valida os campos e retorna a mensagem: "Usuario ou senha invalidos"



