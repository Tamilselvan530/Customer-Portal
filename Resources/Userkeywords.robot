*** settings ***
Library     C:/Users/SS372669/PycharmProjects/Customer_Portal/TestData/ReadData.py

*** test cases ***
Test1
   ${datarows}=  RNR  Sheet1
   ${cellvalue}=  RCD  Sheet1  2  1

    FOR  ${i}  IN RANGE  2  ${datarows}+1
      ${PolicyNumber}=  RCD  Sheet1  ${i}  1
      ${OwnerName}=  RCD  Sheet1  ${i}  2
     exit for loop if    ${i}==5

    \   log to console      ${PolicyNumber}
    \   log to console      ${OwnerName}

*** keywords ***
RNR
    [Arguments]  ${Sheetname}
    ${maxr}=  fetch_number_of_rows  ${Sheetname}
    [return]  ${maxr}

RCD
    [Arguments]  ${Sheetname}  ${row}  ${column}
    ${celldata}=  fetch_cell_data  ${Sheetname}  ${row}  ${column}
    [return]  ${celldata}

