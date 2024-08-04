Profile: DebtPortalInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalInvoice
Title: "Debt Portal Invoice"
Description: "This StructureDefinition contains the maps for VistA file AR CCPC STATEMENTS (349.2) to Invoice"
* ^status = #draft
* totalPriceComponent ^slicing.discriminator.type = #pattern
* totalPriceComponent ^slicing.discriminator.path = "$this"
* totalPriceComponent ^slicing.rules = #open
* totalPriceComponent contains va-prev-bal 0..1 and va-total-charges 0..1 and va-total-credits 0..1 and va-new-balance 0..1 and va-admin-cost-bal 0..1 and va-marsh-fee 0..1 and va-court-cost 0..1 and va-principal-paid 0..1 and va-interest-paid 0..1 and va-admin-cost-paid 0..1 and va-marsh-fee-paid 0..1 and va-court-cost-paid 0..1
* recipient and totalNet and totalPriceComponent[va-prev-bal].amount and totalPriceComponent[va-prev-bal].type and totalPriceComponent[va-prev-bal].code.text and totalPriceComponent[va-total-charges].amount and totalPriceComponent[va-total-charges].type and totalPriceComponent[va-total-charges].code.text and totalPriceComponent[va-total-credits].amount and totalPriceComponent[va-total-credits].type and totalPriceComponent[va-total-credits].code.text and totalPriceComponent[va-new-balance].amount and totalPriceComponent[va-new-balance].type and totalPriceComponent[va-new-balance].code.text and lineItem.chargeItemReference and lineItem.priceComponent.amount and lineItem.priceComponent.type and note and paymentTerms and status and totalPriceComponent[va-admin-cost-bal].amount and totalPriceComponent[va-admin-cost-bal].type and totalPriceComponent[va-admin-cost-bal].code.text and totalPriceComponent[va-marsh-fee].amount and totalPriceComponent[va-marsh-fee].type and totalPriceComponent[va-marsh-fee].code.text and totalPriceComponent[va-court-cost].amount and totalPriceComponent[va-court-cost].type and totalPriceComponent[va-court-cost].code.text and totalPriceComponent[va-principal-paid].amount and totalPriceComponent[va-principal-paid].type and totalPriceComponent[va-principal-paid].code.text and totalPriceComponent[va-interest-paid].amount and totalPriceComponent[va-interest-paid].type and totalPriceComponent[va-interest-paid].code.text and totalPriceComponent[va-admin-cost-paid].amount and totalPriceComponent[va-admin-cost-paid].type and totalPriceComponent[va-admin-cost-paid].code.text and totalPriceComponent[va-marsh-fee-paid].amount and totalPriceComponent[va-marsh-fee-paid].type and totalPriceComponent[va-marsh-fee-paid].code.text and totalPriceComponent[va-court-cost-paid].amount and totalPriceComponent[va-court-cost-paid].type and totalPriceComponent[va-court-cost-paid].code.text MS
* recipient only Reference(DebtPortalPatient)
* lineItem.chargeItemReference only Reference(DebtPortalChargeItem)
* totalPriceComponent[va-prev-bal].type = #base
* totalPriceComponent[va-prev-bal].code.text = "Prev Bal"
* totalPriceComponent[va-total-charges].type = #base
* totalPriceComponent[va-total-charges].code.text = "Total Charges"
* totalPriceComponent[va-total-credits].type = #base
* totalPriceComponent[va-total-credits].code.text = "Total Credits"
* totalPriceComponent[va-new-balance].type = #base
* totalPriceComponent[va-new-balance].code.text = "New Balance"
* lineItem.priceComponent.type = #base
* status = #issued
* totalPriceComponent[va-admin-cost-bal].type = #surcharge
* totalPriceComponent[va-admin-cost-bal].code.text = "Administrative Cost Balance"
* totalPriceComponent[va-marsh-fee].type = #surcharge
* totalPriceComponent[va-marsh-fee].code.text = "Marshall Fee"
* totalPriceComponent[va-court-cost].type = #surcharge
* totalPriceComponent[va-court-cost].code.text = "Court Cost"
* totalPriceComponent[va-principal-paid].type = #base
* totalPriceComponent[va-principal-paid].code.text = "Principal Paid"
* totalPriceComponent[va-interest-paid].type = #surcharge
* totalPriceComponent[va-interest-paid].code.text = "Interest Paid"
* totalPriceComponent[va-admin-cost-paid].type = #surcharge
* totalPriceComponent[va-admin-cost-paid].code.text = "Administrative Cost Paid"
* totalPriceComponent[va-marsh-fee-paid].type = #surcharge
* totalPriceComponent[va-marsh-fee-paid].code.text = "Marshall Fee Paid"
* totalPriceComponent[va-court-cost-paid].type = #surcharge
* totalPriceComponent[va-court-cost-paid].code.text = "Court Cost Paid"

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
* totalPriceComponent[va-admin-cost-bal].amount -> "1866: source value from ACCOUNTS RECEIVABLE - ADMINISTRATIVE COST BALANCE (430-73)"
* totalPriceComponent[va-admin-cost-bal].type -> "1866-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-admin-cost-bal].code.text -> "1866-2: fixed value = Administrative Cost Balance" "from mapParameter 2"
* totalPriceComponent[va-marsh-fee].amount -> "1867: source value from ACCOUNTS RECEIVABLE - MARSHALL FEE (430-74)"
* totalPriceComponent[va-marsh-fee].type -> "1867-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-marsh-fee].code.text -> "1867-2: fixed value = Marshall Fee" "from mapParameter 2"
* totalPriceComponent[va-court-cost].amount -> "1868: source value from ACCOUNTS RECEIVABLE - COURT COST (430-75)"
* totalPriceComponent[va-court-cost].type -> "1868-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-court-cost].code.text -> "1868-2: fixed value = Court Cost" "from mapParameter 2"
* totalPriceComponent[va-principal-paid].amount -> "1869: source value from ACCOUNTS RECEIVABLE - TOTAL PAID PRINCIPAL (430-77)"
* totalPriceComponent[va-principal-paid].type -> "1869-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-principal-paid].code.text -> "1869-2: fixed value = Principal Paid" "from mapParameter 2"
* totalPriceComponent[va-interest-paid].amount -> "1870: source value from ACCOUNTS RECEIVABLE - TOTAL PAID INTEREST (430-78)"
* totalPriceComponent[va-interest-paid].type -> "1870-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-interest-paid].code.text -> "1870-2: fixed value = Interest Paid" "from mapParameter 2"
* totalPriceComponent[va-admin-cost-paid].amount -> "1871: source value from ACCOUNTS RECEIVABLE - TOTAL PAID ADMINISTRATIVE COST (430-79)"
* totalPriceComponent[va-admin-cost-paid].type -> "1871-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-admin-cost-paid].code.text -> "1871-2: fixed value = Administrative Cost Paid" "from mapParameter 2"
* totalPriceComponent[va-marsh-fee-paid].amount -> "1872: source value from ACCOUNTS RECEIVABLE - TOTAL PAID MARSHALL FEE (430-79.1)"
* totalPriceComponent[va-marsh-fee-paid].type -> "1872-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-marsh-fee-paid].code.text -> "1872-2: fixed value = Marshall Fee Paid" "from mapParameter 2"
* totalPriceComponent[va-court-cost-paid].amount -> "1873: source value from ACCOUNTS RECEIVABLE - TOTAL PAID COURT COST (430-79.2)"
* totalPriceComponent[va-court-cost-paid].type -> "1873-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-court-cost-paid].code.text -> "1873-2: fixed value = Court Cost Paid" "from mapParameter 2"

Mapping: cdw-to-DebtPortalInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalInvoice
* recipient -> "Dim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"
* totalPriceComponent[va-admin-cost-bal].amount -> "IB.AccountsReceivable.AdministrativeCostBalance"
* totalPriceComponent[va-marsh-fee].amount -> "IB.AccountsReceivable.MarshalFee"
* totalPriceComponent[va-court-cost].amount -> "IB.AccountsReceivable.CourtCost"
* totalPriceComponent[va-principal-paid].amount -> "IB.AccountsReceivable.TotalPrincipalPaid"
* totalPriceComponent[va-interest-paid].amount -> "IB.AccountsReceivable.TotalInterestPaid"
* totalPriceComponent[va-admin-cost-paid].amount -> "IB.AccountsReceivable.TotalAdministrativeCostPaid"
* totalPriceComponent[va-marsh-fee-paid].amount -> "IB.AccountsReceivable.TotalMarshalFeePaid"
* totalPriceComponent[va-court-cost-paid].amount -> "IB.AccountsReceivable.TotalCourtCostPaid"