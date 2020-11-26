*** settings ***
Library     SeleniumLibrary
Resource        ../Resources/LoginKeywords.robot
Resource        ../Resources/DashboardScreen.robot
Resource        ../Resources/PolicyListingScreen.robot
Resource        ../Resources/PolicyDetailsScreen.robot
Library     ../TestData/ReadData.py



*** test cases ***
Test1
    Verify plan details of Ulip Policy


*** keywords ***

Verify plan details of Ulip Policy
     ${datarows}=  RNR  Sheet2
     ${cellvalue}=  RCD  Sheet2  12  1

    FOR  ${i}  IN RANGE  12  ${datarows}+1
      ${SiteUrl}=  RCD  Sheet2  ${i}  1
      ${Browser}=  RCD  Sheet2  ${i}  2
      ${UserID}=  RCD  Sheet2  ${i}  3
      ${Password}=  RCD  Sheet2  ${i}  4


     BuiltIn.exit for loop if      ${i}==100

      Set Suite Variable        ${SiteUrl}
      Set Suite Variable        ${Browser}
      Set Suite Variable        ${UserID}
      Set Suite Variable        ${Password}






     Open My Browser     ${SiteUrl}     ${Browser}
     set selenium speed      1seconds
     Enter UserID        ${UserID}
     Scroll page till checkuserID
     Click CheckUserID
     set selenium implicit wait     10seconds
     Click continue with existing ID
     set selenium implicit wait     10seconds
     Enter valid password       ${Password}
     set selenium speed      1seconds
     Click Submit
     set selenium implicit wait     25seconds
     Verify whatsapp PopUp
     Click policy details icon
     Close My Browsers
     END