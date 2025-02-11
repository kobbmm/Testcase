*** Settings ***
Library           SeleniumLibrary
Suite Setup       Open Browser    https://translate.google.co.th/?sl=vi&tll=th&op=translate    Chrome
Suite Teardown    Close Browser
 
*** Variables ***
${ENGWORD}       DOG
 
*** Keywords ***
Input ENG WORD
    [Arguments]    ${ENGWORD}
    Input Text    //*[@id="yDmH0d"]/c-wiz/div/div[2]/c-wiz/div[2]/c-wiz/div[1]/div[2]/div[2]/div/c-wiz/span/span/div/textarea    ${ENGWORD}



*** Test Cases ***
Check Translate Result
    Input ENG WORD    ${ENGWORD}
    Wait Until Element Contains    //*[@id="yDmH0d"]/c-wiz/div/div[2]/c-wiz/div[2]/c-wiz/div[1]/div[2]/div[2]/c-wiz/div[1]/div[6]/div/div[1]/span[1]/span/span    สุนัข 