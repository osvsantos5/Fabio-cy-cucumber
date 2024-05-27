import { Given, When, Then} from '@badeball/cypress-cucumber-preprocessor';

Given(`que eu esteja na tela de cadastro de produtos`, () => {
    cy.visit('login') // adicionei para corrigir erro, estava validando no login e causando erro lá
    cy.fixture('usuario-admin').then((usuario) =>{
        cy.login(usuario.email, usuario.senha)
   })
    cy.get('h1').should('contain', 'Bem Vindo') // adicionei para corrigir erro, estava validando no login e causando erro lá
});

When(`eu inseir {string}, {int}, {string}, {int}`, (nome, preco, descricao, quantidade) => {
    let nomeProduto = `${nome}-${Date.now()}`
    cy.cadastrarProduto(nomeProduto, preco, descricao ,quantidade)
});

Then(`deve validar o {string} do produto na lista`, (nome) => {
    cy.get('.jumbotron').should('contain', nome)
});