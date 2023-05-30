*** Settings ***
Library           SeleniumLibrary
Resource    ../keywords/ui/page/monekypage.robot

# Test Teardown     Close All Browsers

*** Test Cases ***
Verify input empty in email
    [Tags]    email empty
    Open browser monkeydcar login form
    Click email
    Click password
    Verify email display error message empty
    Reload Page
    Close Browser

Verify input empty in password
    [Tags]    password empty
    Open browser monkeydcar login form
    Click password
    Click email
    Verify password display error message empty
    Reload Page
    Close Browser

Verify email not containe At 
    [Tags]    email not include @
    Open browser monkeydcar login form
    Input email not include At and verify
    Verify email diaply error mesage invalid
    Reload Page
    Close Browser

Verify email not text before @
    [Tags]    email not text before @
    Open browser monkeydcar login form
    Input email not text before At and verify
    Verify email diaply error mesage invalid
    Reload Page
    Close Browser

Verify email not text after @
    [Tags]    email not text after @
    Open browser monkeydcar login form
    Input email not text after At and verify
    Verify email diaply error mesage invalid
    Reload Page
    Close Browser

Verify email not dot after @
    [Tags]    email not dot after @
    Open browser monkeydcar login form
    Input email after At not dot and verify
    Verify email diaply error mesage invalid
    Reload Page
    Close Browser

Verify email char after dot less than 2
    [Tags]    email char after dot less than 2
    Open browser monkeydcar login form
    Input email after dot less than 2 and verify
    Verify email diaply error mesage invalid
    Reload Page
    Close Browser

Verify email char after dot greater than 4
    [Tags]    email char after dot greater than 4
    Open browser monkeydcar login form
    Input email after dot greater than 4 and verify
    Verify email diaply error mesage invalid
    Reload Page
    Close Browser

Verify email that not in system
    [Tags]    email not in system
    Open browser monkeydcar login form
    Input email that not exist and verify
    Input correct password and verify
    Click submit
    Verify message error after click submit form
    Reload Page
    Close Browser

Verify email with wrong password
    [Tags]    email with wrong password
    Open browser monkeydcar login form
    Input correct email and verify
    Input wrong password and verify
    Click submit
    Verify message error after click submit form
    Reload Page
    Close Browser

Verify correct email and password
    [Tags]    correct email and password
    Open browser monkeydcar login form
    Input correct email and verify
    Input correct password and verify
    Slow submit
    Check login success
    Reload Page
    Close Browser

