*** Settings ***
Documentation    Desafio Icasei
Library          SeleniumLibrary    timeout=1000

*** Variables ***

${Browser}             chrome
${url}                 https://teste-qa.icasei.com.br/depoimentos
${Pagina}              //h2[@class='sc-3d36fcd-1 jbRKmg'][contains(.,'Enviar depoimento')]   
${EnviarDocumentos}    //span[@class='sc-5188c1bd-0 iATNDF'][contains(.,'Enviar depoimento')]
${Avaliar}             //select[contains(@name,'avalie')]
${5estrelas}           //option[@value='5'][contains(.,'5 estrelas')] 
${email}               //input[contains(@name,'email')]
${texto}               //textarea[contains(@class,'sc-a351ce4a-0 bUGjte')]
${enviar}              //button[@type='submit']
${emailCadastrado}     //label[@for='email'][contains(.,'E-mail cadastrado no iCasei')]
${ClickExperiencia}    //label[@for='depoimento'][contains(.,'Conte como foi sua experiência')]
${check}               //span[contains(@class,'sc-822edd55-0 Rwmip')] 

*** Test Cases ***

Abrir o Browser
    Open Browser    ${url}     ${Browser}
    Maximize Browser Window

Validar acesso à Pagina
    Double Click Element   locator=${EnviarDocumentos}
    Wait Until Element Is Visible    locator=${Pagina}  

Selecionar a avaliação
    Click Element   locator=${Avaliar} 
    Click Element    locator=${5estrelas} 

Clicar no campo E-mail cadastrado
    Click Element    locator=${emailCadastrado}

Inserir e-mail
    Input Text    locator=${email}     text=datg2702@hotmail.com

Clicar em experiência
    Click Element    locator=${ClickExperiencia}

Inserir depoimento
    Input Text    locator=${texto}    text=Não é possível enviar o depoimento

Click no chek autorizo
    Click Element    locator=${check} 

Clicar em enviar
    Click Element    locator=${enviar}    


    



    

    

    

