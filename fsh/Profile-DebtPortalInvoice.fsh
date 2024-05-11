Profile: DebtPortalInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalInvoice
Title: "Debt Portal Invoice"
Description: "This StructureDefinition contains the maps for VistA file AR CCPC STATEMENTS (349.2) to Invoice"
* ^status = #draft
* recipient and totalNet and totalPriceComponent.amount and lineItem.chargeItemReference and lineItem.priceComponent.amount and note and paymentTerms and status MS
* recipient only Reference(DebtPortalPatient)
* lineItem.chargeItemReference only Reference(DebtPortalChargeItem)
* status = #issued

Mapping: vista-to-DebtPortalInvoice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalInvoice
* recipient -> "1818: reference from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - DEBTOR (349.2-.01 > 340-.01) case patient"
* totalNet -> "1828: source value from AR CCPC STATEMENTS - AMOUNT DUE (349.2-.04)"
* totalPriceComponent.amount -> "1829: source value from AR CCPC STATEMENTS - PREV BAL (349.2-.05)"
* totalPriceComponent.amount -> "1830: source value from AR CCPC STATEMENTS - TOTAL CHARGES (349.2-.06)"
* totalPriceComponent.amount -> "1831: source value from AR CCPC STATEMENTS - TOTAL CREDITS (349.2-.07)"
* totalPriceComponent.amount -> "1832: source value from AR CCPC STATEMENTS - NEW BALANCE (349.2-.08)"
* lineItem.chargeItemReference -> "1834: reference from AR CCPC STATEMENTS - PD LINE (349.2-20)"
* lineItem.priceComponent.amount -> "1840: source value from AR CCPC STATEMENTS - PD LINE > PD LINE - TRANSACTION AMOUNT (349.2-20 > 349.21-2)"
* note -> "1841: source value from AR CCPC STATEMENTS - SPECIAL NOTICES (349.2-30)"
* paymentTerms -> "1842: source value from AR CCPC STATEMENTS - PARAGRAPH CODES (349.2-40)" "This might need to be an extension so the mapping is symantically correct"
* status -> "1843: fixed value = #issued"

Mapping: cdw-to-DebtPortalInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalInvoice
* recipient -> "Dim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"