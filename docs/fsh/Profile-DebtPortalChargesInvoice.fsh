Profile: DebtPortalChargesInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalChargesInvoice
Title: "Debt Portal: Charges Invoice"
Description: "This StructureDefinition contains the maps for VistA file INTEGRATED BILLING ACTION (350) to Invoice."
* ^status = #active
* lineItem.chargeItemReference and lineItem.priceComponent.amount and lineItem.priceComponent.type and lineItem.priceComponent.code.text MS
* lineItem.chargeItemReference only Reference(DebtPortalChargesChargeItem)
* lineItem.priceComponent.type = #base
* lineItem.priceComponent.code.text = "Total Charge"

Mapping: source-to-DebtPortalChargesInvoice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargesInvoice
* lineItem.chargeItemReference -> "1834: reference" "INTEGRATED BILLING ACTION - AR BILL NUMBER (350-.11) = Accounts Receivable - Bill Number (430-.01)"
* lineItem.priceComponent.amount -> "1840: source value from INTEGRATED BILLING ACTION - TOTAL CHARGE (350-.07)"
* lineItem.priceComponent.type -> "1840-1: fixed value = #base" "from mapParameter 1"
* lineItem.priceComponent.code.text -> "1840-2: fixed value = Total Charge" "from mapParameter 2"

Mapping: cdw-to-DebtPortalChargesInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargesInvoice
* lineItem.priceComponent.amount -> "IB.IBAction.TotalCharge"