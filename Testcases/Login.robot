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
     ${datarows}=  RNR  Sheet1
     ${cellvalue}=  RCD  Sheet1  2  1

    FOR  ${i}  IN RANGE  2  ${datarows}+1
      ${SiteUrl}=  RCD  Sheet1  ${i}  1
      ${Browser}=  RCD  Sheet1  ${i}  2
      ${UserID}=  RCD  Sheet1  ${i}  3
      ${Password}=  RCD  Sheet1  ${i}  4
      ${ViewDetailsLocator}=  RCD  Sheet1  ${i}  5
      ${PolicyNumberLocator}=  RCD  Sheet1  ${i}  6
      ${PolicyNumber}=  RCD  Sheet1  ${i}  7
      ${OwnerNameLocator}=  RCD  Sheet1  ${i}  8
      ${OwnerName}=  RCD  Sheet1  ${i}  9
      ${ClientIDLocator}=  RCD  Sheet1  ${i}  10
      ${ClientID}=  RCD  Sheet1  ${i}  11
      ${PlanNameLocator}=  RCD  Sheet1  ${i}  12
      ${PlanName}=  RCD  Sheet1  ${i}  13
      ${PurposeOfInsuranceLocator}=  RCD  Sheet1  ${i}  14
      ${PurposeOfInsurance}=  RCD  Sheet1  ${i}  15
      ${e-InsuranceNumberLocator}=  RCD  Sheet1  ${i}  16
      ${e-InsuranceNumber}=  RCD  Sheet1  ${i}  17
      ${PolicyIssuanceDateLocator}=  RCD  Sheet1  ${i}  18
      ${PolicyIssuanceDate}=  RCD  Sheet1  ${i}  19
      ${PremiumPaymentTermLocator}=  RCD  Sheet1  ${i}  20
      ${PremiumPaymentTerm}=  RCD  Sheet1  ${i}  21
      ${PolicyTermLocator}=  RCD  Sheet1  ${i}  22
      ${PolicyTerm}=  RCD  Sheet1  ${i}  23
      ${MaturityDateLocator}=  RCD  Sheet1  ${i}  24
      ${MaturityDate}=  RCD  Sheet1  ${i}  25
      ${PayorNameLocator}=  RCD  Sheet1  ${i}  26
      ${PayorName}=  RCD  Sheet1  ${i}  27
      ${InsuredNameLocator}=  RCD  Sheet1  ${i}  28
      ${InsuredName}=  RCD  Sheet1  ${i}  29
      ${JointLifeNameLocator}=  RCD  Sheet1  ${i}  30
      ${JointLifeName}=  RCD  Sheet1  ${i}  31
      ${RelatioshipLocator}=  RCD  Sheet1  ${i}  32
      ${Relationship}=  RCD  Sheet1  ${i}  33
      ${BaseSumAssuredLocator}=  RCD  Sheet1  ${i}  34
      ${BaseSumAssured}=  RCD  Sheet1  ${i}  35
      ${RiderSumAssuredLocator}=  RCD  Sheet1  ${i}  36
      ${RiderSumAssured}=  RCD  Sheet1  ${i}  37
      ${JointLifeSumAssuredLocator}=  RCD  Sheet1  ${i}  38
      ${JointLifeSumAssured}=  RCD  Sheet1  ${i}  39

     BuiltIn.exit for loop if      ${i}==3

      Set Suite Variable        ${SiteUrl}
      Set Suite Variable        ${Browser}
      Set Suite Variable        ${UserID}
      Set Suite Variable        ${Password}
      Set Suite Variable        ${ViewDetailsLocator}
      Set Suite Variable        ${PolicyNumberLocator}
      Set Suite Variable        ${PolicyNumber}
      Set Suite Variable        ${OwnerNameLocator}
      Set Suite Variable        ${OwnerName}
      Set Suite Variable        ${ClientIDLocator}
      Set Suite Variable        ${ClientID}
      Set Suite Variable        ${PlanNameLocator}
      Set Suite Variable        ${PlanName}
      Set Suite Variable        ${PurposeOfInsuranceLocator}
      Set Suite Variable        ${PurposeOfInsurance}
      Set Suite Variable        ${e-InsuranceNumberLocator}
      Set Suite Variable        ${e-InsuranceNumber}
      Set Suite Variable        ${PolicyIssuanceDateLocator}
      Set Suite Variable        ${PolicyIssuanceDate}
      Set Suite Variable        ${PremiumPaymentTermLocator}
      Set Suite Variable        ${PremiumPaymentTerm}
      Set Suite Variable        ${PolicyTermLocator}
      Set Suite Variable        ${PolicyTerm}
      Set Suite Variable        ${MaturityDateLocator}
      Set Suite Variable        ${MaturityDate}
      Set Suite Variable        ${PayorNameLocator}
      Set Suite Variable        ${PayorName}
      Set Suite Variable        ${InsuredNameLocator}
      Set Suite Variable        ${InsuredName}
      Set Suite Variable        ${JointLifeNameLocator}
      Set Suite Variable        ${JointLifeName}
      Set Suite Variable        ${RelatioshipLocator}
      Set Suite Variable        ${Relationship}
      Set Suite Variable        ${BaseSumAssuredLocator}
      Set Suite Variable        ${BaseSumAssured}
      Set Suite Variable        ${RiderSumAssuredLocator}
      Set Suite Variable        ${RiderSumAssured}
      Set Suite Variable        ${JointLifeSumAssuredLocator}
      Set Suite Variable        ${JointLifeSumAssured}





     Open My Browser     ${SiteUrl}     ${Browser}
     set selenium speed      1seconds
     Enter UserID        ${UserID}
     Scroll page till checkuserID
     Click CheckUserID
     Click continuw with existing ID
     set selenium implicit wait     10seconds
     Enter valid password       ${Password}
     set selenium speed      1seconds
     Click Submit
     set selenium implicit wait     25seconds
     Click popUp cross icon
     Click policy details icon
     Click Ulip link
     Click view details button      ${ViewDetailsLocator}
     Policy details
     set selenium implicit wait     15seconds
     Click on plan details
     set selenium speed      1seconds
     Plan Details Verification
     set selenium speed      1seconds
     Capture plan details screenshot
     Close My Browsers
     END