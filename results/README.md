Projeto de Automação de Testes com Robot Framework
Descrição:
Este projeto contém scripts de automação de testes para a página de depoimentos do site https://teste-qa.icasei.com.br/depoimentos 
O objetivo é automatizar o processo de teste para garantir que os usuários possam enviar depoimentos corretamente.

Pré-requisitos
Python 3.12.4
Robot Framework 7.0
SeleniumLibrary
Browsers (Chrome) Versão 126.0.6478.127 - 64 bits

Execução dos Testes
Robot -d ./results enviarDepoimentos.robot

O teste visa identificar o motivo pelo qual um usuário não consegue enviar seu depoimento

1. Acessar a url: https://teste-qa.icasei.com.br/depoimentos
2. Clicar em "Enviar depoimentos" e validar o acesso à página
3. Selecionar o 5 estrelas
4. Clicar no campo do e-mail e inserir o mesmo
5. Clicar no campo experiência e inserir o texto desejado
6. Clicar na flag de autorização
7. Clicar em enviar e o depoimento não será enviado, pois está com erro no servidor
