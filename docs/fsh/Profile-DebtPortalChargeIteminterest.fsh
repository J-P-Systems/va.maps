Profile: DebtPortalChargeIteminterest
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargeIteminterest
Title: "Debt Portal ChargeItem[interest]"
Description: "This StructureDefinition contains the maps for VistA file AR TRANSACTION (433) to ChargeItem."
* ^status = #active
* enteredDate and code.text and identifier.value and identifier.type.text and supportingInformation.identifier.value and supportingInformation.identifier.type.text and status and occurrenceDateTime MS
* code.text obeys dpci-28-1993
* identifier.type.text = "Transaction Number"
* supportingInformation.identifier.type.text = "Bill Number"
* status = #billed

Invariant: dpci-28-1993
Description: "If IEN = 12 OR 13 then source value from (433-12 > 430.3-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-DebtPortalChargeIteminterest
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargeIteminterest
* enteredDate -> "1992: source value based on AR TRANSACTION - DATE ENTERED (433-19)"
* code.text -> "1993: source value based on AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - NAME (433-12 > 430.3-.01) if IEN = 12 OR 13" "Transaction type name = ADMIN.COST CHARGE when IEN = 12\nTransaction type name = INTEREST/ADM. CHARGE when IEN = 13"
* identifier.value -> "1994: source value based on AR TRANSACTION - TRANSACTION NUMBER (433-.01)"
* identifier.type.text -> "1994-1: fixed value = Transaction Number" "generated from mapParameter line 1"
* supportingInformation.identifier.value -> "1995: source value based on AR TRANSACTION - BILL NUMBER (433-.03)"
* supportingInformation.identifier.type.text -> "1995-1: fixed value = Bill Number" "generated from mapParameter line 1"
* status -> "1996: fixed value = #billed"
* occurrenceDateTime -> "1997: source value based on AR TRANSACTION - TRANSACTION DATE (433-11)"

Mapping: cdw-to-DebtPortalChargeIteminterest
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargeIteminterest
* enteredDate -> "IB.ARTransaction.EnteredDateTime"
* code.text -> "IB.ARTransaction.ARTransactionTypeIEN\nDim.ARTransactionType.ARTransactionType"
* identifier.value -> "IB.ARTransaction.TransactionNumber"
* supportingInformation.identifier.value -> "IB.ARTransaction.AccountsReceivableIEN,IB.ARTransaction.PatientIEN,IB.ARTransactionComment.PatientIEN,IB.ARTransactionDescription.PatientIEN,IB.ARTransactionFiscalYear.PatientIEN"
* occurrenceDateTime -> "IB.ARTransaction.TransactionDateTime,IB.ARTransactionComment.TransactionDateTime,IB.ARTransactionDescription.TransactionDateTime,IB.ARTransactionFiscalYear.TransactionDateTime"