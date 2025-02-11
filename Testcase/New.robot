*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               http://automationexercise.com
${PRODUCT_XPATH}      //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
${CART_XPATH}         
${LOGIN_BUTTON_XPATH}    
${EMAIL_INPUT_XPATH}     
${PASSWORD_INPUT_XPATH}  
${SIGNIN_BUTTON_XPATH}   
${CART_INFO_XPATH}    

*** Test Cases ***
Click on 'Products' button
    Open Browser    ${URL}    chrome
    Click Element  //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a

Verify Products Page Navigation
    [Documentation]    ตรวจสอบว่าไปยังหน้า "All Products" สำเร็จ
    Wait Until Element Is Visible    ${PRODUCT_LIST_XPATH}    timeout=10
    Element Should Contain    ${PRODUCT_XPATH}    ${PRODUCTS_PAGE_TITLE}
    


    
   
