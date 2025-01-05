*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
MultipleBrowserTest
    open browser    https://www.google.com/     chrome
    maximize browser window
    sleep   3

    open browser    https://www.binge.com/     chrome
    maximize browser window

    switch browser  1
    ${title1}      get title
    log to console     ${title1}

    switch browser  2
    ${title2}     get title
    log to console  ${title2}