***Settings***
Resource        base.robot

#Setup after | Teardown before
Test Setup      Nova sessão
Test Teardown   Encerra sessão

***Variables***
${login_user}           papito@ninjapixel.com
${login_passw}          pwd123
${login_usu_wrong}      papito@ninjapixel.com       
${login_passw_wrong}    pwd1234
${message}              Usuário e/ou senha inválidos

***Test Cases***
Login com sucesso
    Go to                       ${url}
    Input Text                  id=emailId                  ${login_user}
    Input Text                  id:passId                   ${login_passw}
    Click Button                Entrar
    Sleep                       3
    Wait Until Page Contains    Papito  
    Sleep                       3

Senha incorreta
    Go to                       ${url}
    Input Text                  id=emailId      ${login_usu_wrong}
    Input Text                  id:passId       ${login_passw_wrong}
    Click Button                Entrar
    Should Be Equal             ${message}      Usuário e/ou senha inválidos
    Sleep                       3