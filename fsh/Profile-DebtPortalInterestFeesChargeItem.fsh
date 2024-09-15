Profile: DebtPortalInterestFeesChargeItem
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalInterestFeesChargeItem
Title: "Debt Portal: Interest/Fees ChargeItem"
Description: "This StructureDefinition contains the maps for VistA file AR TRANSACTION (433) to ChargeItem"
* ^status = #draft
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-tn 0..1 and va-bn 0..1
* enteredDate and code.text and identifier[va-tn] and identifier[va-tn].type.text and identifier[va-bn] and identifier[va-bn].type.text and status and occurrenceDateTime MS
* identifier[va-tn].type.text = "Transaction Number"
* identifier[va-bn].type.text = "Bill Number"
* status = #billed

Mapping: source-to-DebtPortalInterestFeesChargeItem
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalInterestFeesChargeItem
* enteredDate -> "1992: source value from AR TRANSACTION - DATE ENTERED (433-19)"
* code.text -> "1993: source value from AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - NAME (433-12 > 430.3-.01) case IEN = 12 OR 13" "Transaction type name = ADMIN.COST CHARGE when IEN = 12\nTransaction type name = INTEREST/ADM. CHARGE when IEN = 13"
* identifier[va-tn] -> "1994: source value from AR TRANSACTION - TRANSACTION NUMBER (433-.01)"
* identifier[va-tn].type.text -> "1994-1: fixed value = Transaction Number" "from mapParameter 1"
* identifier[va-bn] -> "1995: source value from AR TRANSACTION - TRANSACTION NUMBER (433-.03)"
* identifier[va-bn].type.text -> "1995-1: fixed value = Bill Number" "from mapParameter 1"
* status -> "1996: fixed value = #billed"
* occurrenceDateTime -> "1997: source value from AR TRANSACTION - TRANSACTION DATE (433-11)"
* enteredDate -> "1998: source value from AR TRANSACTION - DATE ENTERED (433-19)"

Mapping: cdw-to-DebtPortalInterestFeesChargeItem
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalInterestFeesChargeItem
* enteredDate -> "IB.ARTransaction.EnteredDateTime"
* code.text -> "IB.ARTransaction.ARTransactionTypeIEN\nDim.ARTransactionType.ARTransactionType"
* identifier[va-tn] -> "IB.ARTransaction.TransactionNumber"
* identifier[va-bn] -> "IB.ARTransaction.AccountsReceivableIEN,IB.ARTransaction.PatientIEN,IB.ARTransactionComment.PatientIEN,IB.ARTransactionDescription.PatientIEN,IB.ARTransactionFiscalYear.PatientIEN"
* occurrenceDateTime -> "IB.ARTransaction.TransactionDateTime,IB.ARTransactionComment.TransactionDateTime,IB.ARTransactionDescription.TransactionDateTime,IB.ARTransactionFiscalYear.TransactionDateTime"
* enteredDate -> "IB.ARTransaction.EnteredDateTime"