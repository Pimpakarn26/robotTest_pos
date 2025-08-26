*** Variables ***
${MENU_PROMOTION}        //*[@id="root"]/div/aside/div/nav/div/a[2]
${BTN_ADD_PROMO}         id=create-promotion-button
${INPUT_PROMO_NAME}      id=create-promotion-name-input
${INPUT_PROMO_START}     id=create-promotion-start-date
${INPUT_PROMO_END}       id=create-promotion-end-date
${INPUT_PROMO_PRODUCT}   id=create-promotion-product-combobox
${LABEL_ORIGINAL_PRICE}  id=original-price
${LOT_SELECTOR}          //*[@id="root"]/div/main/div/div/div[3]/div/div[1]/div[3]/div
${INPUT_PROMO_PRICE}     id=create-promotion-price-input
${BTN_CONFIRM}           xpath=//button[contains(text(),"ยืนยัน")]

*** Keywords ***
Go To Promotion Page
    Click Element    ${MENU_PROMOTION}

Click Add Promotion
    Click Element    ${BTN_ADD_PROMO}

Fill Promotion Form
    [Arguments]    ${promo_name}    ${start_date}    ${end_date}    ${product}    ${promo_price}
    Input Text    ${INPUT_PROMO_NAME}    ${promo_name}
    Input Text    ${INPUT_PROMO_START}   ${start_date}
    Input Text    ${INPUT_PROMO_END}     ${end_date}
    Input Text    ${INPUT_PROMO_PRODUCT} ${product}
    Page Should Contain Element    ${LABEL_ORIGINAL_PRICE}
    Click Element    ${LOT_SELECTOR}
    Input Text    ${INPUT_PROMO_PRICE}   ${promo_price}

Confirm Promotion
    Click Element    ${BTN_CONFIRM}
