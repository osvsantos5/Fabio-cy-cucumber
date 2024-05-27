#language: pt
Funcionalidade: Login

Contexto: 
Dado que eu esteja na tela de login do serverest

Cenário: Deve fazer login com sucesso
Quando eu inserir email e senha corretamente
Então deve direcionar para o dashboard

Cenário: Deve fazer login com sucesso usando exemplo de dados
Quando eu inserir email: "fabio@araujo.com" e senha : "teste@123"
Então deve direcionar para o dashboard

Cenário: Deve validar erro ao fazer login com usuário ou senha invalidos
Quando eu inserir email: "qqcoisa@teste.com" e senha : "teste111@123"
Então deve exibir uma mensagem de erro

Esquema do Cenário: Deve fazer login com sucesso usando tabela
Quando eu inserir <email> e <senha> 
Então deve direcionar para o dashboard

Exemplos:
    | email | senha | 
    | "fabio@araujo.com"  | "teste@123" | 
    | "abelrosenbaum@test.com"  | "Test;123" | 
    | "gsyu@emailteste.com"  | "teste" | 