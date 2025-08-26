*** Keywords ***
# เอาไว้เก็บ Keywords ใช้ซ้ำ เช่น Login, Logout, Open Browser
*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL_LOGIN}    http://localhost:5173/login
${BROWSER}      chrome
${USERNAME}     bonus
${PASSWORD}     123456

${INPUT_USERNAME}   input[name="username"]
${INPUT_PASSWORD}   input[name="password"]
${BTN_LOGIN}        button[type="submit"]

*** Keywords ***
Open Browser And Login
    Open Browser    ${URL_LOGIN}    ${BROWSER}
    Maximize Browser Window
    Input Text      ${INPUT_USERNAME}    ${USERNAME}
    Input Text      ${INPUT_PASSWORD}    ${PASSWORD}
    Click Button    ${BTN_LOGIN}
