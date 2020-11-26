*** settings ***
Library     SeleniumLibrary
Variables   ../PageElements/Locators.py

*** keywords ***

Click policy details icon
    click element       ${PolicyDetails_Icon}