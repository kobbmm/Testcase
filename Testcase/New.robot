*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}               http://automationexercise.com
${EXPECTED_PRODUCT}  https://automationexercise.com/products
${PRODUCT_PATH}      https://automationexercise.com/products?search=Men%20Tshirt
${PRODUCT_XPATH}     //*[@id="header"]/div/div/div/div[2]/div/ul/li[2]/a
${PRODUCT_NAME}      Men Tshirt
${PRODUCT_RESULT}    /html/body/section[2]/div/div/div[2]/div/h2
${SEARCHED_PRODUCTS_TEXT}   Men Tshirt
${PRODUCT_VERIFY}    //*[@id="advertisement"]
${PRODUCT_VISIBLE}   
${ADD_CART}          /html/body/section[2]/div/div/div[2]/div/div[2]/div/div[1]/div[2]/div/a
${ADD_CART_VERIFY}   //*[@id="cartModal"]/div/div

*** Test Cases ***

Click on 'Products' button
    Open Browser    ${URL}    chrome
    Click Element   ${PRODUCT_XPATH}
    Location Should Be    ${EXPECTED_PRODUCT}   # ตรวจสอบ URL ว่าตรงกับที่คาดหวัง

Search Product Name
    Input Text      //*[@id="search_product"]  ${PRODUCT_NAME}
    Click Button    //*[@id="submit_search"]
    Location Should Be   ${PRODUCT_PATH}   # ตรวจสอบ URL หลังจากการค้นหา
    Page Should Contain   ${SEARCHED_PRODUCTS_TEXT}   # ตรวจสอบว่า 'SEARCHED PRODUCTS' ปรากฏบนหน้า


products visible verify
    
    