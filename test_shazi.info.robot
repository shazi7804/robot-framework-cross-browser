*** Settings ** *
Documentation     A suite of cases.

Library             SeleniumLibrary

# the browser will be opened in the start-up of the suite
# which browser? the one that's the value of the variable
Suite Setup
Suite Teardown      Close Browser   # and closed when the suite finishes

*** Variables ** *
# the variable will hold the name of the target browser
${BROWSER}      Chrome  Firefox
# ${LOGINURL}    https://shazi.info
${LOGINURL}    https://www.104.com.tw
# ${TITLE}        Mr. 沙先生 – 沒有標準的 SOP，但是卻有不怎麼樣的經驗談。
${TITLE}       104人力銀行 - 找工作、徵才、找優質工作、幸福企業的求職徵才平台

*** Test Cases ** *
Test this
    Open Browser To Login Page



*** Keywords ***
Open Browser To Login Page
    Open Browser  ${LOGINURL}  ${BROWSER}
    Title Should Be  ${TITLE}

