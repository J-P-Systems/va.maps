Profile: DebtPortalInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalInvoice
Title: "Debt Portal Invoice"
Description: "This StructureDefinition contains the maps for VistA file AR CCPC STATEMENTS (349.2) to Invoice"
* ^status = #draft
* totalPriceComponent ^slicing.discriminator.type = #pattern
* totalPriceComponent ^slicing.discriminator.path = "$this"
* totalPriceComponent ^slicing.rules = #open
* totalPriceComponent contains va-prev-bal 0..1 and va-total-charges 0..1 and va-total-credits 0..1 and va-new-balance 0..1
* recipient and totalNet and totalPriceComponent[va-prev-bal].amount and totalPriceComponent[va-prev-bal].type and totalPriceComponent[va-prev-bal].code.text and totalPriceComponent[va-total-charges].amount and totalPriceComponent[va-total-charges].type and totalPriceComponent[va-total-charges].code.text and totalPriceComponent[va-total-credits].amount and totalPriceComponent[va-total-credits].type and totalPriceComponent[va-total-credits].code.text and totalPriceComponent[va-new-balance].amount and totalPriceComponent[va-new-balance].type and totalPriceComponent[va-new-balance].code.text and lineItem.chargeItemReference and lineItem.priceComponent.amount and lineItem.priceComponent.type and note and paymentTerms and status MS
* recipient only Reference(DebtPortalPatient)
* totalPriceComponent[va-prev-bal].type = #base
* totalPriceComponent[va-prev-bal].code.text = "Prev Bal"
* totalPriceComponent[va-total-charges].type = #base
* totalPriceComponent[va-total-charges].code.text = "Total Charges"
* totalPriceComponent[va-total-credits].type = #base
* totalPriceComponent[va-total-credits].code.text = "Total Credits"
* totalPriceComponent[va-new-balance].type = #base
* totalPriceComponent[va-new-balance].code.text = "New Balance"
* lineItem.chargeItemReference only Reference(DebtPortalChargeItem)
* lineItem.priceComponent.type = #base
* status = #issued

Mapping: vista-to-DebtPortalInvoice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalInvoice
* recipient -> "1818: reference from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - DEBTOR (349.2-.01 > 340-.01) case patient"
* totalNet -> "1828: source value from AR CCPC STATEMENTS - AMOUNT DUE (349.2-.04)"
* totalPriceComponent[va-prev-bal].amount -> "1829: source value from AR CCPC STATEMENTS - PREV BAL (349.2-.05)"
* totalPriceComponent[va-prev-bal].type -> "1829-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-prev-bal].code.text -> "1829-2: fixed value = Prev Bal" "from mapParameter 2"
* totalPriceComponent[va-total-charges].amount -> "1830: source value from AR CCPC STATEMENTS - TOTAL CHARGES (349.2-.06)"
* totalPriceComponent[va-total-charges].type -> "1830-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-total-charges].code.text -> "1830-2: fixed value = Total Charges" "from mapParameter 2"
* totalPriceComponent[va-total-credits].amount -> "1831: source value from AR CCPC STATEMENTS - TOTAL CREDITS (349.2-.07)"
* totalPriceComponent[va-total-credits].type -> "1831-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-total-credits].code.text -> "1831-2: fixed value = Total Credits" "from mapParameter 2"
* totalPriceComponent[va-new-balance].amount -> "1832: source value from AR CCPC STATEMENTS - NEW BALANCE (349.2-.08)"
* totalPriceComponent[va-new-balance].type -> "1832-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-new-balance].code.text -> "1832-2: fixed value = New Balance" "from mapParameter 2"
* lineItem.chargeItemReference -> "1834: reference from AR CCPC STATEMENTS - PD LINE (349.2-20)"
* lineItem.priceComponent.amount -> "1840: source value from AR CCPC STATEMENTS - PD LINE > PD LINE - TRANSACTION AMOUNT (349.2-20 > 349.21-2)"
* lineItem.priceComponent.type -> "1840-1: fixed value = #base" "from mapParameter 1"
* note -> "1841: source value from AR CCPC STATEMENTS - SPECIAL NOTICES (349.2-30)"
* paymentTerms -> "1842: source value from AR CCPC STATEMENTS - PARAGRAPH CODES (349.2-40)" "This might need to be an extension so the mapping is symantically correct"
* status -> "1843: fixed value = #issued"

Mapping: cdw-to-DebtPortalInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalInvoice
* recipient -> "Dim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"