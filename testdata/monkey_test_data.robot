*** Variables ***
# Only type form
# email is empty check
# password is empty check
# not has @
# not has text befoe @
# not has text after @
# text after @ not contain .
# text after . less than 2
# text after . greater than 4

${email_not_At}    earthtestgmail.com
${email_not_text_before_At}    @gmail.com
${email_not_text_after_At}    earthtest@
${email_after_At_not_dot}    earthtest@gmailcom
${email_after_dot_less_than_2}    earthtest@gmail.c
${email_after_dot_greater_than_4}    earthtest@gmail.commm

${error_message_email_empty}   Email is required
${error_message_password_empty}    Password is required
${error_message_email_invalid}    Please enter a valid email
${error_message_submit}    email or password is invalid

${email_correct}    jenny.kim@gmail.com
${email_not_exist}    earthtestt@gmail.com
${password_correct}    earth
${password_wrong}    earthh


# Click submit
# correct email but not in db
# correct email but not correct password
# correct email and password