# monkeyrobot

## Description

Testing via robot framework for education, aim to test the input form in login page.  

### There are 3 folder:
1. **keywords** collect keywords for using in testcases such input and verify email&password, and click submit button.
2. **testcases** collect all testcases.
3. **testdata** for storing environment variables and test data.

## Running test
**Prerequisite**: You need to install python and robot framework in local that can check via `robot --version`.  
First, change the directory to testcases and run the command as below.  
```
robot monkey.robot
```
