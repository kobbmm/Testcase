*** Settings ***
Library    SeleniumLibrary
Documentation    TC-01: Valid Login Test Case for Sauce Demo

*** Variables ***
${URL}           https://automationexercise.com/
${BROWSER}       chrome
${VALID_USER}    standard_user
${PASSWORD}      secret_sauce

*** Test Cases ***
TC-01 Login Valid Test
    [Documentation]    Test login functionality with valid credentials
    [Setup]    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Login With Valid Credentials    ${VALID_USER}    ${PASSWORD}
    Check Login Success
    [Teardown]    Close Browser

*** Keywords ***
Login With Valid Credentials
    [Arguments]    ${username}    ${password}
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button

Check Login Success
    Page Should Contain Element    class=inventory_list
