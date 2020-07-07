*** Settings ***

Library  SeleniumLibrary
Library  String
Resource  ../Resources/PO/Userlogin.robot
Resource  ../Resources/PO/EmployeeList.robot
Resource  ../Globalvariables/BoundaryVariables.robot
Resource  ../Globalvariables/xpath.robot

*** Keywords ***
                                                                                                   #Forgot Password

This test case is to test the forgot password under lower boundary Upper boundary mixed-match wrong data practical data conditions
        Reload Page
        sleep  15s
        click element  ${Pop-Up}
        sleep  5s
        click element  ${User button}
        sleep  2s
        Click element  ${Forgot password}
        sleep  5s
        Click Element  ${Submit}
        wait until page contains  Please enter email.
        input text  ${Input mail}  ${Lower Boundary String}
        Click Element  ${Submit}
        wait until page contains  Please enter valid email.
        Click Element  ${Forgot password Tab Close}
        click element  ${User button}
        sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${Upper Boundary String}
        Click Element  ${Submit}
        wait until page contains  Please enter valid email.
        sleep  5s
        Click Element  ${Forgot password Tab Close}
        click element  ${User button}
        sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${Mixed Match String}
        Click Element  ${Submit}
        wait until page contains  Please enter valid email.
        sleep  5s
        Click Element  ${Forgot password Tab Close}
        click element  ${User button}
        sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${upper boundary number}
        Click Element  ${Submit}
        sleep  5s
        Click Element  ${Phone Number Submit}
        wait until page contains  Invalid Mobile number
        Click Element  ${Phone Number Tab Close}
        sleep  5s
        Click Element  ${Forgot password Tab Close}
        click element  ${User button}
        sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${Wrong Email address}
        Click Element  ${Submit}
        wait until page contains  Email does not exist. Please enter a different email.
        sleep  5s
        Click Element  ${Forgot password Tab Close}
        click element  ${User button}
        sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${Real Email address}
        Click Element  ${Submit}
        wait until page contains  An e-mail has been sent to farookh5a5@sasi.ac.in with password reset instructions.
        sleep  5s
        Click Element  ${Forgot password Tab Close}
        click element  ${User button}
        Sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${Wrong Phone Number}
        Click Element  ${Submit}
        Sleep  10s
        Click Element  ${Phone Number Submit}
        Sleep  5s
        Click Element  ${Phone Number Tab Close}
        sleep  20s
        Click Element  ${User Button Close}
        click element  ${User button}
        Sleep  2s
        Click element  ${Forgot password}
        input text  ${Input mail}  ${Real Phone Number}
        Click Element  ${Submit}
        Sleep  10s
        Click Element  ${Phone Number Submit}
        Sleep  5s
        Click Element  ${Phone Number Tab Close}
        sleep  5s
        wait until page contains  An e-mail has been sent to farookh5a5@sasi.ac.in with password reset instructions.
        sleep  5s



                                                 # Emergency Contact
