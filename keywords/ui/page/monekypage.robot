*** Setting ***
Library    SeleniumLibrary

Resource    ../../../testdata/monkeyenv.robot
Resource    ../../../testdata/monkey_test_data.robot

*** Keywords ***
Open browser monkeydcar login form
    Open Browser    ${WEB_URL}    ${WEB_BROWSER}
    Maximize Browser Window
    Sleep    1
Verify email is empty
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${EMPTY}

Input email not include At and verify 
    Input text    //*[@id='email']    ${email_not_At}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_not_At}

Input email not text before At and verify 
    Input text    //*[@id='email']    ${email_not_text_before_At}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_not_text_before_At}

Input email not text after At and verify 
    Input text    //*[@id='email']    ${email_not_text_after_At}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_not_text_after_At}

Input email after At not dot and verify
    Input text    //*[@id='email']    ${email_after_At_not_dot}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_after_At_not_dot}

Input email after dot less than 2 and verify
    Input text    //*[@id='email']    ${email_after_dot_less_than_2}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_after_dot_less_than_2}

Input email after dot greater than 4 and verify
    Input text    //*[@id='email']    ${email_after_dot_greater_than_4}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_after_dot_greater_than_4}

Input email that not exist and verify
    Input text    //*[@id='email']    ${email_not_exist}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_not_exist}

Input correct email and verify
    Input text    //*[@id='email']    ${email_correct}
    ${email}    Get Value    //*[@id='email']
    Should Be Equal    ${email}    ${email_correct}

Verify password is empty
    ${password}    Get Value    //*[@id='password']
    Should Be Equal    ${password}    ${EMPTY}

Input wrong password and verify
    Input text    //*[@id='password']    ${password_wrong}
    ${password}    Get Value    //*[@id='password']
    Should Be Equal    ${password}    ${password_wrong}

Input correct password and verify
    Input text    //*[@id='password']    ${password_correct}
    ${password}    Get Value    //*[@id='password']
    Should Be Equal    ${password}    ${password_correct}

Click email
    Click Element    //*[@id='email']

Click password
    Click Element    //*[@id='password']

Click submit
    Click Element    //button[@type='submit']
    Sleep    1

Slow submit
    Click Element    //button[@type='submit']
    Sleep    3

Verify email display error message empty
    ${span_text}    Get Text    //span[@class='error']
    Should Contain    ${span_text}    ${error_message_email_empty}

Verify email diaply error mesage invalid
    ${span_text}    Get Text    //span[@class='error']
    Should Contain    ${span_text}    ${error_message_email_invalid}

Verify password display error message empty
    ${span_text}    Get Text    //span[@class='error']
    Should Contain    ${span_text}    ${error_message_password_empty}

Verify message error after click submit form
    ${span_text}    Get Text    //span[@class='error']
    Should Contain    ${span_text}    ${error_message_submit}
     
Check login success
    Page Should Contain Element    //div[@class='profile']