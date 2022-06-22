*** Settings ***
Library    SeleniumLibrary
Library    Collections    
Test Setup    Log    Test Begins 
Test Teardown    Log    Test completed      
Suite Setup    Log    Suite begins    
Suite Teardown    Log    Suite Completed     
*** Variables ***
${a}=    3
${b}=    6
${URL}    https://www.google.com/
${URL1}    https://opensource-demo.orangehrmlive.com/
@{List_Var}    nishant    100     RRR
*** Test Cases ***
First Test cases
    Log    HelloWorld
    Log     ${a}
    ${c}    Evaluate    ${a}*${b}
    Log    ${c}  
    &{Dic_Var}   Create Dictionary    age=36    place=delhi    name=virat
    Log    ${List_Var}[0]
    Log     ${Dic_Var}[age]
    Append To List   ${List_Var}    ${Dic_Var}   
    Log    ${List_Var}
    Log    ${List_Var}[3][name]
    Log    Test executed by %{username}
    Log    ${Test_Name}
    
Selenium demo
    Open Browser    ${URL1}    chrome
    Maximize Browser Window
    Set Browser Implicit Wait    2s
    #${title}    Get Title
    Title Should Be    OrangeHRM
    #Input Text    name=q    robotframework    
    Input Text    id=txtUsername    admin
    Input Password    id=txtPassword   1234  
    Click Element    id=btnLogin
    Page Should Contain Element    //span[text()='Invalid credentials']   
    Select Checkbox    locator   
    Click Button    locator  
    Wait Until Element Is Not Visible    locator             
    Wait Until Page Contains    "Stay signed in"     10   
    Wait Until Page Does Not Contain Element    locator    
    Close Browser
    Log     hello nishant
    Set Browser Implicit Wait    value    
   Click Link    locator    
      