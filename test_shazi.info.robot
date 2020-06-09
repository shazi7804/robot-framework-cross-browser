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
${LOGINURL}    https://shazi.info
${TITLE}        Mr. 沙先生 – 沒有標準的 SOP，但是卻有不怎麼樣的經驗談。

*** Test Cases ***
Test this
    Open Browser To Login Page

*** Keywords ***
Open Browser To Login Page
    Open Browser  ${LOGINURL}  ${BROWSER}
    Title Should Be  ${TITLE}

