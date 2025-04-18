Profile: DebtPortalChargeItemremoved
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargeItemremoved
Title: "Debt Portal ChargeItem[removed]"
Description: "This StructureDefinition contains the maps for VistA file INTEGRATED BILLING ACTION (350) to ChargeItem."
* ^status = #active
* partOf and code.text MS
* partOf only Reference(DebtPortalChargeItemcharges)
* partOf obeys dpci-27-2219
* code.text obeys dpci-27-2029

Invariant: dpci-27-2219
Description: "If INTEGRATED BILLING ACTION - PARENT CHARGE <> INTEGRATED BILLING ACTION - IEN then reference ChargeItemcharges based on (350-.09)"
Severity: #warning
Expression: "true"

Invariant: dpci-27-2029
Description: "If NOT NULL and  INTEGRATED BILLING ACTION - PARENT CHARGE (350-.09) <> INTEGRATED BILLING ACTION - IEN (350-.001) then source value from (350-.1 > 350.3-.01)"
Severity: #warning
Expression: "true"

Mapping: source-to-DebtPortalChargeItemremoved
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargeItemremoved
* partOf -> "2219: reference based on INTEGRATED BILLING ACTION - PARENT CHARGE (350-.09) if INTEGRATED BILLING ACTION - PARENT CHARGE <> INTEGRATED BILLING ACTION - IEN"
* code.text -> "2029: source value based on INTEGRATED BILLING ACTION - CANCELLATION REASON > IB CHARGE REMOVE REASONS - NAME (350-.1 > 350.3-.01) if NOT NULL and  INTEGRATED BILLING ACTION - PARENT CHARGE (350-.09) <> INTEGRATED BILLING ACTION - IEN (350-.001)"

Mapping: cdw-to-DebtPortalChargeItemremoved
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargeItemremoved
* partOf -> "IB.IBAction.ParentIBActionIEN"
* code.text -> "IB.IBAction.IBChargeRemoveReasonIEN\nDim.IBChargeRemoveReason.ChargeRemoveReason"