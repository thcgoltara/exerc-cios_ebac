            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            CComo cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário acesse a página de Checkout na loja EBAC-SHOP

            Esquema do Cenário: Preenchimento - Dados obrigatórios
            Quando o usuário preencher os campos obrigatórios:
            Então o sistema deve permitir a finalização da compra

            Exemplos:
            | Nome      | Sobrenome | Pais     | Endereco           | Cidade  | CEP        | Telefone       | Endereco de e-mail           | Mensagem                   |
            | "Thyessa" | "Goltara" | "Brasil" | "Rua Castro Alves" | "Serra" | "29164077" | "27 996079001" | "thyessagoltara@outlook.com" | Finalize sua compra!       |
            | "Th"      | "Goltara" | "Brasil" | "Rua"              | "Serra" | "00000"    | "27 996079001" | "thyessagoltara@outlook.com" | "Permite finalizar Compra" | "Campos inválidos!" |

            Cenário: E-mail inválido
            Quando o usuário preencher os campos obrigatórios
            E indicar um e-mail com formato inválido "thyessa@gma.com"
            Então o sistema deve exibir a mensagem de erro: "e-mail inválido"
            
            Cenário: Campos vazios
            Quando o usuário não preencher ao menos um dos campos obrigatórios
            Então o sistema deve exibir a mensagem de erro: "Preencha todos os campos!"
