#language: pt

Funcionalidade: Login na plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticacao) na plataforma  
Para visualizar meus pedidos

Contexto:
Dado que o usuario acesse a pagina de autenticacao na loja EBAC-SHOP

Cenario: Dados válidos - Tela de Checkout
Quando o usuario preencher os campos
E eles forem válidos
Entao o sistema redireciona o usuario para a tela de checkout

Cenario: Campos inválidos
Quando o usuario preencher os campos obrigatórios 
E ao menos um for inválido
Entao o sistema valida os campos e retorna a mensagem: "Usuario ou senha invalidos"



