*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    open browser    https://demo.automationtesting.in/Windows.html      chrome
    maximize browser window
    click element   xpath://*[@id="Tabbed"]/a
    switch window   locator=Selenium    #https://www.selenium.dev/
    click element   xpath://*[@id="announcement-banner"]/div/div/div/h4/a
    sleep   3
    close all browsers