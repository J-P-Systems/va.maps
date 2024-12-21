Profile: DebtPortalChargesChargeItem
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargesChargeItem
Title: "Debt Portal: Charges ChargeItem"
Description: "This StructureDefinition contains the maps for VistA file INTEGRATED BILLING ACTION (350) to ChargeItem."
* ^status = #active
* service ^slicing.discriminator.type = #pattern
* service ^slicing.discriminator.path = "$this"
* service ^slicing.rules = #open
* service contains va-rxorig 0..1 and va-rxrefill 0..1 and va-rxpartial 0..1
* enteredDate and code.text and identifier and status and subject and context and occurrencePeriod.start and occurrencePeriod.end and service[va-rxorig] and service[va-rxrefill] and service[va-rxpartial] MS
* subject only Reference(DebtPortalBillPatient)
* context only Reference(EncounterOutpatient or EncounterInpatientEncounter)
* service[va-rxorig] only Reference(MedicationDispenseOriginal)
* service[va-rxrefill] only Reference(MedicationDispenseRefill)
* service[va-rxpartial] only Reference(MedicationDispensePartial)
* status = #billed

Mapping: source-to-DebtPortalChargesChargeItem
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargesChargeItem
* enteredDate -> "1835: source value from INTEGRATED BILLING ACTION - DATE ENTRY ADDED (350-12)"
* code.text -> "1836: source value from INTEGRATED BILLING ACTION - ACTION TYPE > IB ACTION TYPE - CHARGE CATEGORY (350-.03 > 350.1-.03)"
* code.text -> "2029: source value from INTEGRATED BILLING ACTION - CANCELLATION REASON (350-.1) case NOT NULL"
* identifier -> "1837: source value from INTEGRATED BILLING ACTION - AR BILL NUMBER (350-.11)"
* status -> "1838: fixed value = #billed" "Status values passed to AR include 'Billed', 'Cancelled', Co-Pay Exemption Cancellation', and 'Updated' (350-.05>350.21). For now hard code status as billed."
* subject -> "1839: reference from INTEGRATED BILLING ACTION - PATIENT (350-.02)"
* context -> "2008: reference from IB-FB INTERFACE TRACKING - BILL/CLAIMS > BILL/CLAIMS - PROCEDURES > PROCEDURES - OUTPATIENT ENCOUNTER > OUTPATIENT ENCOUNTER - VISIT FILE ENTRY (360-1.02 > 399-304>399.0304-20>409.68-.05) case Outpatient" "Map path: 350 < 360-1.04 |360| 360-1.02 > 399-304 > 399.304-20 > 409.68-.05 > 9000010"
* context -> "2009: reference from IB-FB INTERFACE TRACKING - BILL/CLAIMS > BILL/CLAIMS - PTF ENTRY NUMBER (360-1.02 > 399-.08) case Inpatient" "Map path: 350 < 360-1.04 |360| 360-1.02 > 399-08 > 45"
* occurrencePeriod.start -> "1973: source value from INTEGRATED BILLING ACTION - DATE BILLED FROM (350-.14)"
* occurrencePeriod.end -> "1974: source value from INTEGRATED BILLING ACTION - DATE BILLED TO (350-.15)"
* service[va-rxorig] -> "2010: reference from PRESCRIPTION - IB NUMBER > INTEGRATED BILLING ACTION (52-106 > 350-)"
* service[va-rxrefill] -> "2011: reference from PRESCRIPTION - IB NUMBER > INTEGRATED BILLING ACTION (52-106 > 350-)"
* service[va-rxpartial] -> "2012: reference from PRESCRIPTION - IB NUMBER > INTEGRATED BILLING ACTION (52-106 > 350-)"

Mapping: cdw-to-DebtPortalChargesChargeItem
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargesChargeItem
* enteredDate -> "IB.IBAction.EnteredDateTime"
* code.text -> "IB.IBAction.IBActionTypeIEN\nDim.IBActionType.AccountsReceivableCategory,Dim.IBActionType.ARCategoryIEN"
* code.text -> "IB.IBAction.IBChargeRemoveReasonIEN"
* identifier -> "IB.IBAction.ARBillNumber"
* subject -> "IB.IBAction.PatientIEN"
* occurrencePeriod.start -> "IB.IBAction.BillFromDateTime"
* occurrencePeriod.end -> "IB.IBAction.BillToDateTime"