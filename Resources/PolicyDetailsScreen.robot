*** settings ***
Library     SeleniumLibrary
Variables   ../PageElements/Locators.py

*** keywords ***


Click on plan details
    element should be visible       ${Plandetail}
    element should be enabled       ${Plandetail}
    click element       ${Plandetail}


Scroll page till joinlife
    scroll element into view        ${Scroll_Page_till_Joint_Life_sumAssured}

Plan Details Verification
    ${PoNum}  Get Text  ${PolicyNumberLocator}
    Run Keyword IF  "${PoNum}"=="${PolicyNumber}"  Verify Policy owner name


Verify Policy owner name
    ${OwName}  Get Text  ${OwnerNameLocator}
    Run Keyword IF  "${OwName}"=="${OwnerName}"  Verify CLientID

Verify CLientID
    ${CID}  Get Text  ${ClientIDLocator}
    Run Keyword IF  "${CID}"=="${ClientID}"  Verify PlanName

Verify PlanName
    ${Pname}  Get Text  ${PlanNameLocator}
    Run Keyword IF  "${Pname}"=="${PlanName}"  Verify PurposeOfInsurance

Verify PurposeOfInsurance
    ${PoI}  Get Text  ${PurposeOfInsuranceLocator}
    Run Keyword IF  "${PoI}"=="${PurposeOfInsurance}"  Verify E-InsuranceNumber

Verify E-InsuranceNumber
    ${EIN}  Get Text  ${e-InsuranceNumberLocator}
    Run Keyword IF  "${EIN}"=="${e-InsuranceNumber}"  Verify PolicyIssuanceDate

Verify PolicyIssuanceDate
    ${PID}  Get Text  ${PolicyIssuanceDateLocator}
    Run Keyword IF  "${PID}"=="${PolicyIssuanceDate}"  Verify PremiumPaymentTerm

Verify PremiumPaymentTerm
    ${PPT}  Get Text  ${PremiumPaymentTermLocator}
    Run Keyword IF  "${PPT}"=="${PremiumPaymentTerm}"  Verify PolicyTerm

Verify PolicyTerm
    ${PT}  Get Text  ${PolicyTermLocator}
    Run Keyword IF  "${PT}"=="${PolicyTerm}"  Verify MaturityDate

Verify MaturityDate
    ${MD}  Get Text  ${MaturityDateLocator}
    Run Keyword IF  "${MD}"=="${MaturityDate}"  Verify PayorName

Verify PayorName
    ${PayName}  Get Text  ${PayorNameLocator}
    Run Keyword IF  "${PayName}"=="${PayorName}"  Verify InsuredName

Verify InsuredName
    ${IName}  Get Text  ${InsuredNameLocator}
    Run Keyword IF  "${IName}"=="${InsuredName}"  Verify BaseSumAssured

Verify BaseSumAssured
    ${Relation}  Get Text  ${BaseSumAssuredLocator}
    Run Keyword IF  "${Relation}"=="${BaseSumAssured}"  Verify Relationship

Verify Relationship
    ${Relation}  Get Text  ${RelatioshipLocator}
    Run Keyword IF  "${Relation}"=="${Relationship}"  Verify JointLifeName


Verify JointLifeName
    ${JLName}  Get Text  ${JointLifeNameLocator}
    Run Keyword IF  "${JLName}"=="${JointLifeName}"  Verify JointLifeSumAssured
    ...  ELSE  Verify RiderSumAssured




Verify JointLifeSumAssured
    ${JLSA}  Get Text  ${JointLifeSumAssuredLocator}
    Run Keyword IF  "${JLSA}"=="${JointLifeSumAssured}"  Verify RiderSumAssured

Verify RiderSumAssured
    ${RSA}  Get Text  ${RiderSumAssuredLocator}
    Run Keyword IF  "${RSA}"=="${RiderSumAssured}"  Capture plan details screenshot
    ...  ELSE  Capture plan details screenshot

GetText_Method
    Get Text  ${PolicyNumberLocator}

#screenshot
Capture plan details screenshot
    ${PNumber}  Get Text  ${PolicyNumberLocator}
    Run Keyword IF  "${PNumber}"=="002270891"  PN002270891
    ...  ELSE IF  "${PNumber}"=="003689330"  PN003689330
    ...  ELSE IF  "${PNumber}"=="008029522"  PN008029522
    ...  ELSE IF  "${PNumber}"=="002243532"  PN002243532

PN002270891
    Capture page screenshot    P_Num-002270891.png

PN003689330
    Capture page screenshot    P_Num-003689330.png

PN008029522
    Capture page screenshot    P_Num-008029522.png

PN002243532
    Capture page screenshot    P_Num-002243532.png
