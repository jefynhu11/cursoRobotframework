*** Settings ***
Library                         SeleniumLibrary

Test Setup                      Open Browser            browser=chrome
Test Teardown                   Close All Browsers

*** Variables ***
${URL_GOOGLE}                   http://www.google.com/

*** Test Cases ***
Scenario 01: Google search
    Go To                   ${URL_GOOGLE}
    Input Text              name=q                      Clima porto alegre
    Sleep                   5

Scenario 02: Automation Praction
    Go To                   http://www.automationpractice.com/index.php
    Sleep                   5