***Settings***
Library     SeleniumLibrary

***Variables***
${url}                  http://pixel-web:3000/login 

***keywords***
Nova sessão
    Open Browser                 ${url}                     chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser