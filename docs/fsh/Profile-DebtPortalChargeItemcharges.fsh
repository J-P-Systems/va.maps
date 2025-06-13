Profile: DebtPortalChargeItemcharges
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargeItemcharges
Title: "Debt Portal ChargeItem[charges]"
Description: "This StructureDefinition contains the maps for VistA file INTEGRATED BILLING ACTION (350) to ChargeItem."
* ^status = #active
* supportingInformation ^slicing.discriminator.type = #value
* supportingInformation ^slicing.discriminator.path = "$this"
* supportingInformation ^slicing.rules = #open
* supportingInformation contains va-arbillnbr 0..1
* service ^slicing.discriminator.type = #value
* service ^slicing.discriminator.path = "$this"
* service ^slicing.rules = #open
* service contains va-rxorig 0..1 and va-rxrefill 0..1 and va-rxpartial 0..1
* enteredDate and code.text and supportingInformation[va-arbillnbr].identifier.value and supportingInformation[va-arbillnbr].identifier.type.text and status and subject and identifier.value and identifier.type.text and context and occurrencePeriod.start and occurrencePeriod.end and service[va-rxorig] and service[va-rxrefill] and service[va-rxpartial] MS
* subject only Reference(Patient)
* context only Reference(EncounterOutpatient or EncounterInpatientEncounter)
* service[va-rxorig] only Reference(MedicationDispenseOriginal)
* service[va-rxrefill] only Reference(MedicationDispenseRefill)
* service[va-rxpartial] only Reference(MedicationDispensePartial)
* supportingInformation[va-arbillnbr].identifier.type.text = "Bill Number"
* status = #billed
* supportingInformation[va-arbillnbr].identifier.value obeys dpci-27-2218
* supportingInformation[va-arbillnbr].identifier.type.text obeys dpci-27-2218-1
* identifier.value = "Sta3n&\"-\"&{IEN (.001)}"
* identifier.type.text = "Sta3n - IBAction.IEN"
* context obeys dpci-27-2008
* context obeys dpci-27-2009
* service[va-rxorig] obeys dpci-27-2010
* service[va-rxrefill] obeys dpci-27-2011
* service[va-rxpartial] obeys dpci-27-2012

Invariant: dpci-27-2218
Description: "If AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - IEN = 1 OR 35 then source value from (350-.12)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpci-27-2218-1
Description: "If AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - IEN = 1 OR 35 then fixed value Transaction Number"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpci-27-2008
Description: "If {1.04>350} && Outpatient then reference /EncounterOutpatient based on (360-1.02 > 399-304>399.0304-20>409.68-.05)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpci-27-2009
Description: "If {1.04>350} && Inpatient then reference /EncounterInpatientEncounter based on (360-1.02 > 399-.08)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpci-27-2010
Description: "If {106>350} then reference /MedicationDispenseOriginal based on (52-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpci-27-2011
Description: "If {106>350} then reference /MedicationDispenseRefill based on (52-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpci-27-2012
Description: "If {106>350} then reference /MedicationDispensePartial based on (52-)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-DebtPortalChargeItemcharges
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargeItemcharges
* enteredDate -> "1835: source value based on INTEGRATED BILLING ACTION - DATE ENTRY ADDED (350-12)"
* code.text -> "1836: source value based on INTEGRATED BILLING ACTION - ACTION TYPE > IB ACTION TYPE - CHARGE CATEGORY (350-.03 > 350.1-.03)"
* supportingInformation[va-arbillnbr].identifier.value -> "1837: source value based on INTEGRATED BILLING ACTION - AR BILL NUMBER (350-.11)"
* supportingInformation[va-arbillnbr].identifier.type.text -> "1837-1: fixed value = Bill Number" "generated from mapParameter line 1"
* status -> "1838: fixed value = #billed" "Status values passed to AR include 'Billed', 'Cancelled', Co-Pay Exemption Cancellation', and 'Updated' (350-.05>350.21). For now hard code status as billed."
* subject -> "1839: reference based on INTEGRATED BILLING ACTION - PATIENT (350-.02)"
* supportingInformation[va-arbillnbr].identifier.value -> "2218: source value based on INTEGRATED BILLING ACTION - AR TRANSACTION NUMBER (350-.12) if AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - IEN = 1 OR 35"
* supportingInformation[va-arbillnbr].identifier.type.text -> "2218-1: fixed value = Transaction Number if AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - IEN = 1 OR 35" "generated from mapParameter line 1"
* identifier.value -> "2237: source value based on INTEGRATED BILLING ACTION - IEN (350-.001)" "The combination of Sta3n and IBAction-IEN make a unique identifier (per CDW documentation showing business keys)"
* identifier.value -> "2237-1: fixed value = Sta3n&\"-\"&{IEN (.001)}" "generated from mapParameter line 1"
* identifier.type.text -> "2237-2: fixed value = Sta3n - IBAction.IEN" "generated from mapParameter line 2"
* context -> "2008: reference based on IB-FB INTERFACE TRACKING - BILL/CLAIMS > BILL/CLAIMS - PROCEDURES > PROCEDURES - OUTPATIENT ENCOUNTER > OUTPATIENT ENCOUNTER - VISIT FILE ENTRY (360-1.02 > 399-304>399.0304-20>409.68-.05) if {1.04>350} && Outpatient" "Map path: 350 < 360-1.04 |360| 360-1.02 > 399-304 > 399.304-20 > 409.68-.05 > 9000010"
* context -> "2009: reference based on IB-FB INTERFACE TRACKING - BILL/CLAIMS > BILL/CLAIMS - PTF ENTRY NUMBER (360-1.02 > 399-.08) if {1.04>350} && Inpatient" "Map path: 350 < 360-1.04 |360| 360-1.02 > 399-08 > 45"
* occurrencePeriod.start -> "1973: source value based on INTEGRATED BILLING ACTION - DATE BILLED FROM (350-.14)"
* occurrencePeriod.end -> "1974: source value based on INTEGRATED BILLING ACTION - DATE BILLED TO (350-.15)"
* service[va-rxorig] -> "2010: reference based on PRESCRIPTION - (52-) if {106>350}"
* service[va-rxrefill] -> "2011: reference based on PRESCRIPTION - (52-) if {106>350}"
* service[va-rxpartial] -> "2012: reference based on PRESCRIPTION - (52-) if {106>350}"

Mapping: cdw-to-DebtPortalChargeItemcharges
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargeItemcharges
* enteredDate -> "IB.IBAction.EnteredDateTime"
* code.text -> "IB.IBAction.IBActionTypeIEN\nDim.IBActionType.AccountsReceivableCategory\nDim.IBActionType.ARCategoryIEN"
* supportingInformation[va-arbillnbr].identifier.value -> "IB.IBAction.ARBillNumber"
* subject -> "IB.IBAction.PatientIEN"
* supportingInformation[va-arbillnbr].identifier.value -> "IB.IBAction.ARTransactionNumber"
* occurrencePeriod.start -> "IB.IBAction.BillFromDateTime"
* occurrencePeriod.end -> "IB.IBAction.BillToDateTime"