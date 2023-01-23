#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto
E escolher a quantidade
Para inserir no Carrinho

Contexto:
Dado que o usuário selecione um produto na EBAC-SHOP

Cenário: Seleções obrigatórios
Quando o usuário seleciona uma cor, tamanho e quantidade
Então o sistema habilita a inclusão do produto no carrinho 

Cenário: Não preenchimento - seleções obrigatórias
Quando o usuário não seleciona ao menos um dos campos cor e quantidade
Então o sistema não habilita a função comprar 

Cenário: 10 produtos por venda
Quando o usuário seleciona ao menos um dos campos cor e tamanho
E adiciona 11 produtos ao seu carrinho
Então o sistema exibe a mensagem "Apenas 10 produtos por venda"

Cenário: Seleção de produto - Limpar
E selecione ao menos um dos campos cor e quantidade
Quando o usuário seleciona a função "limpar"
Então o sistema deve limpar todos os campos marcados

