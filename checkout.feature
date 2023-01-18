            #language: pt

            Funcionalidade: Tela de cadastro - Checkout
            CComo cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que o usuário acesse a página de Checkout na loja EBAC-SHOP

            Esquema do Cenário: Deve ser cadastrado com todos os dados obrigatórios, marcado com asteriscos
            Quando o usuário preencher os campos obrigatórios:
            <Nome> <Sobrenome> <Pais> <Endereco> <Cidade> <CEP> <Telefone> <Endereco de e-mail>
            Então o sistema deve permitir a finalização da compra

            Exemplos:
            | Nome      | Sobrenome | Pais     | Endereco           | Cidade  | CEP        | Telefone       | Endereco de e-mail           | Mensagem                   |
            | "Thyessa" | "Goltara" | "Brasil" | "Rua Castro Alves" | "Serra" | "29164077" | "27 996079001" | "thyessagoltara@outlook.com" | Finalize sua compra!       |
            | "Th"      | "Goltara" | "Brasil" | "Rua"              | "Serra" | "00000"    | "27 996079001" | "thyessagoltara@outlook.com" | "Permite finalizar Compra" | "Campos inválidos!" |

            Cenário: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            Quando o usuário preencher os campos obrigatórios:
            <Nome> <Sobrenome> <Pais> <Endereco> <Cidade> <CEP> <Telefone> <Endereco de e-mail>
            E indicar um e-mail com formato inválido "thyessa@gma.com"
            Então o sistema deve exibir a mensagem de erro: "e-mail inválido"
            
            Cenário: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta. 
            Quando o usuário não preencher ao menos um dos campos obrigatórios:
            <Nome> <Sobrenome> <Pais> <Endereco> <Cidade> <CEP> <Telefone> <Endereco de e-mail>
            Então o sistema deve exibir a mensagem de erro: "Preencha todos os campos!"