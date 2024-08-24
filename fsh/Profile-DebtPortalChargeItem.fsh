Profile: DebtPortalChargeItem
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargeItem
Title: "Debt Portal ChargeItem"
Description: "This StructureDefinition contains the maps for VistA file INTEGRATED BILLING ACTION (350) to ChargeItem"
* ^status = #draft
* enteredDate and code.text and identifier and status and subject and occurrencePeriod.start and occurrencePeriod.end MS
* subject only Reference(DebtPortalPatient)
* status = #billed

Mapping: source-to-DebtPortalChargeItem
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargeItem
* enteredDate -> "1835: source value from INTEGRATED BILLING ACTION - DATE ENTRY ADDED (350-12)"
* code.text -> "1836: source value from INTEGRATED BILLING ACTION - ACTION TYPE > IB ACTION TYPES - NAME (350-.03 > 350.1-.01)"
* identifier -> "1837: source value from INTEGRATED BILLING ACTION - AR BILL NUMBER (350-.11)"
* status -> "1838: fixed value = #billed" "Status values passed to AR include 'Billed', 'Cancelled', Co-Pay Exemption Cancellation', and 'Updated' (350-.05>350.21). For now hard code status as billed."
* subject -> "1839: reference from INTEGRATED BILLING ACTION - PATIENT (350-.02)"
* occurrencePeriod.start -> "1840: source value from INTEGRATED BILLING ACTION - DATE BILLED FROM (350-.14)"
* occurrencePeriod.end -> "1841: source value from INTEGRATED BILLING ACTION - DATE BILLED TO (350-.15)"

Mapping: cdw-to-DebtPortalChargeItem
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargeItem
* enteredDate -> "IB.IBAction.EnteredDateTime"
* code.text -> "IB.IBAction.IBActionTypeIEN\nDim.IBActionType.IBActionType"
* identifier -> "IB.IBAction.ARBillNumber"
* subject -> "IB.IBAction.PatientIEN"
* occurrencePeriod.start -> "IB.IBAction.BillFromDateTime"
* occurrencePeriod.end -> "IB.IBAction.BillToDateTime"