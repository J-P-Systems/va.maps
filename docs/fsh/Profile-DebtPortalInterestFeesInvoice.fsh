Profile: DebtPortalInterestFeesInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalInterestFeesInvoice
Title: "Debt Portal: Interest/Fees Invoice"
Description: "This StructureDefinition contains the maps for VistA file AR TRANSACTION (433) to Invoice."
* ^status = #active
* lineItem.priceComponent ^slicing.discriminator.type = #pattern
* lineItem.priceComponent ^slicing.discriminator.path = "$this"
* lineItem.priceComponent ^slicing.rules = #open
* lineItem.priceComponent contains va-marshal-fee-charged 0..1 and va-court-cost-charged 0..1 and va-interest-charged 0..1 and va-admin-charged 0..1
* lineItem.chargeItemReference and lineItem.priceComponent[va-marshal-fee-charged].amount and lineItem.priceComponent[va-marshal-fee-charged].type and lineItem.priceComponent[va-marshal-fee-charged].code.text and lineItem.priceComponent[va-court-cost-charged].amount and lineItem.priceComponent[va-court-cost-charged].type and lineItem.priceComponent[va-court-cost-charged].code.text and lineItem.priceComponent[va-interest-charged].amount and lineItem.priceComponent[va-interest-charged].type and lineItem.priceComponent[va-interest-charged].code.text and lineItem.priceComponent[va-admin-charged].amount and lineItem.priceComponent[va-admin-charged].type and lineItem.priceComponent[va-admin-charged].code.text MS
* lineItem.chargeItemReference only Reference(DebtPortalInterestFeesChargeItem)
* lineItem.priceComponent[va-marshal-fee-charged].type = #surcharge
* lineItem.priceComponent[va-marshal-fee-charged].code.text = "Marshal Fee Charged"
* lineItem.priceComponent[va-court-cost-charged].type = #surcharge
* lineItem.priceComponent[va-court-cost-charged].code.text = "Court Cost Charged"
* lineItem.priceComponent[va-interest-charged].type = #surcharge
* lineItem.priceComponent[va-interest-charged].code.text = "Interest Charged"
* lineItem.priceComponent[va-admin-charged].type = #surcharge
* lineItem.priceComponent[va-admin-charged].code.text = "Administrative Charged"

Mapping: source-to-DebtPortalInterestFeesInvoice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalInterestFeesInvoice
* lineItem.chargeItemReference -> "1991: reference"
* lineItem.priceComponent[va-marshal-fee-charged].amount -> "1999: source value from AR TRANSACTION - MARSHAL FEE (433-25)"
* lineItem.priceComponent[va-marshal-fee-charged].type -> "1999-1: fixed value = #surcharge" "from mapParameter 1"
* lineItem.priceComponent[va-marshal-fee-charged].code.text -> "1999-2: fixed value = Marshal Fee Charged" "from mapParameter 2"
* lineItem.priceComponent[va-court-cost-charged].amount -> "2000: source value from AR TRANSACTION - COURT COST (433-26)"
* lineItem.priceComponent[va-court-cost-charged].type -> "2000-1: fixed value = #surcharge" "from mapParameter 1"
* lineItem.priceComponent[va-court-cost-charged].code.text -> "2000-2: fixed value = Court Cost Charged" "from mapParameter 2"
* lineItem.priceComponent[va-interest-charged].amount -> "2001: source value from AR TRANSACTION - INT.CHARGE (433-27)"
* lineItem.priceComponent[va-interest-charged].type -> "2001-1: fixed value = #surcharge" "from mapParameter 1"
* lineItem.priceComponent[va-interest-charged].code.text -> "2001-2: fixed value = Interest Charged" "from mapParameter 2"
* lineItem.priceComponent[va-admin-charged].amount -> "2002: source value from AR TRANSACTION - ADM.CHARGE (433-28)"
* lineItem.priceComponent[va-admin-charged].type -> "2002-1: fixed value = #surcharge" "from mapParameter 1"
* lineItem.priceComponent[va-admin-charged].code.text -> "2002-2: fixed value = Administrative Charged" "from mapParameter 2"

Mapping: cdw-to-DebtPortalInterestFeesInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalInterestFeesInvoice
* lineItem.priceComponent[va-marshal-fee-charged].amount -> "IB.ARTransaction.MarshalFee"
* lineItem.priceComponent[va-court-cost-charged].amount -> "IB.ARTransaction.CourtCost"
* lineItem.priceComponent[va-interest-charged].amount -> "IB.ARTransaction.InterestCharge"
* lineItem.priceComponent[va-admin-charged].amount -> "IB.ARTransaction.AdministrativeCharge"