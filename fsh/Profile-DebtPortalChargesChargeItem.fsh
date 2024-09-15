Profile: DebtPortalChargesChargeItem
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargesChargeItem
Title: "Debt Portal: Charges ChargeItem"
Description: "This StructureDefinition contains the maps for VistA file INTEGRATED BILLING ACTION (350) to ChargeItem"
* ^status = #draft
* enteredDate and code.text and identifier and status and subject and occurrencePeriod.start and occurrencePeriod.end MS
* subject only Reference(DebtPortalBillPatient)
* status = #billed

Mapping: source-to-DebtPortalChargesChargeItem
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargesChargeItem
* enteredDate -> "1835: source value from INTEGRATED BILLING ACTION - DATE ENTRY ADDED (350-12)"
* code.text -> "1836: source value from INTEGRATED BILLING ACTION - ACTION TYPE > IB ACTION TYPES - CHARGE CATEGORY (350-.03 > 350.1-.03)"
* identifier -> "1837: source value from INTEGRATED BILLING ACTION - AR BILL NUMBER (350-.11)"
* status -> "1838: fixed value = #billed" "Status values passed to AR include 'Billed', 'Cancelled', Co-Pay Exemption Cancellation', and 'Updated' (350-.05>350.21). For now hard code status as billed."
* subject -> "1839: reference from INTEGRATED BILLING ACTION - PATIENT (350-.02)"
* occurrencePeriod.start -> "1973: source value from INTEGRATED BILLING ACTION - DATE BILLED FROM (350-.14)"
* occurrencePeriod.end -> "1974: source value from INTEGRATED BILLING ACTION - DATE BILLED TO (350-.15)"

Mapping: cdw-to-DebtPortalChargesChargeItem
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargesChargeItem
* enteredDate -> "IB.IBAction.EnteredDateTime"
* code.text -> "IB.IBAction.IBActionTypeIEN\nDim.IBActionType.AccountsReceivableCategory,Dim.IBActionType.ARCategoryIEN"
* identifier -> "IB.IBAction.ARBillNumber"
* subject -> "IB.IBAction.PatientIEN"
* occurrencePeriod.start -> "IB.IBAction.BillFromDateTime"
* occurrencePeriod.end -> "IB.IBAction.BillToDateTime"