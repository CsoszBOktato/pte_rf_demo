*** Settings ***
Documentation    Simple test script
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}=    https://www.google.com
${EXPECTED_TITLE}    Google

*** Test Cases ***
Open Google And Check The Title
    Open Browser    ${URL}    ${BROWSER}
    Title Should Be    ${EXPECTED_TITLE}
    [Teardown]    Close Browser
