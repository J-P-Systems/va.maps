Profile: DebtPortalBillInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalBillInvoice
Title: "Debt Portal: Bill Invoice"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Invoice."
* ^status = #active
* totalPriceComponent ^slicing.discriminator.type = #pattern
* totalPriceComponent ^slicing.discriminator.path = "$this"
* totalPriceComponent ^slicing.rules = #open
* totalPriceComponent contains va-orig-amt 0..1 and va-curr-bal 0..1 and va-amend-amt 0..1 and va-principal-bal 0..1 and va-interest-bal 0..1 and va-admin-cost-bal 0..1 and va-marsh-fee 0..1 and va-court-cost 0..1 and va-principal-paid 0..1 and va-interest-paid 0..1 and va-admin-cost-paid 0..1 and va-marsh-fee-paid 0..1 and va-court-cost-paid 0..1
* recipient and identifier and status and subject and date and issuer and totalPriceComponent[va-orig-amt].amount and totalPriceComponent[va-orig-amt].type and totalPriceComponent[va-orig-amt].code.text and totalPriceComponent[va-curr-bal].amount and totalPriceComponent[va-curr-bal].type and totalPriceComponent[va-curr-bal].code.text and totalPriceComponent[va-amend-amt].amount and totalPriceComponent[va-amend-amt].type and totalPriceComponent[va-amend-amt].code.text and totalPriceComponent[va-principal-bal].amount and totalPriceComponent[va-principal-bal].type and totalPriceComponent[va-principal-bal].code.text and totalPriceComponent[va-interest-bal].amount and totalPriceComponent[va-interest-bal].type and totalPriceComponent[va-interest-bal].code.text and totalPriceComponent[va-admin-cost-bal].amount and totalPriceComponent[va-admin-cost-bal].type and totalPriceComponent[va-admin-cost-bal].code.text and totalPriceComponent[va-marsh-fee].amount and totalPriceComponent[va-marsh-fee].type and totalPriceComponent[va-marsh-fee].code.text and totalPriceComponent[va-court-cost].amount and totalPriceComponent[va-court-cost].type and totalPriceComponent[va-court-cost].code.text and totalPriceComponent[va-principal-paid].amount and totalPriceComponent[va-principal-paid].type and totalPriceComponent[va-principal-paid].code.text and totalPriceComponent[va-interest-paid].amount and totalPriceComponent[va-interest-paid].type and totalPriceComponent[va-interest-paid].code.text and totalPriceComponent[va-admin-cost-paid].amount and totalPriceComponent[va-admin-cost-paid].type and totalPriceComponent[va-admin-cost-paid].code.text and totalPriceComponent[va-marsh-fee-paid].amount and totalPriceComponent[va-marsh-fee-paid].type and totalPriceComponent[va-marsh-fee-paid].code.text and totalPriceComponent[va-court-cost-paid].amount and totalPriceComponent[va-court-cost-paid].type and totalPriceComponent[va-court-cost-paid].code.text MS
* recipient only Reference(DebtPortalBillPatient)
* subject only Reference(Patient)
* status from http://va.gov/fhir/ValueSet/ARBillStatus
* totalPriceComponent[va-orig-amt].type = #informational
* totalPriceComponent[va-orig-amt].code.text = "Original Amount"
* totalPriceComponent[va-curr-bal].type = #base
* totalPriceComponent[va-curr-bal].code.text = "Current Balance"
* totalPriceComponent[va-amend-amt].type = #base
* totalPriceComponent[va-amend-amt].code.text = "Amended Amount"
* totalPriceComponent[va-principal-bal].type = #base
* totalPriceComponent[va-principal-bal].code.text = "Principal Balance"
* totalPriceComponent[va-interest-bal].type = #surcharge
* totalPriceComponent[va-interest-bal].code.text = "Interest Balance"
* totalPriceComponent[va-admin-cost-bal].type = #surcharge
* totalPriceComponent[va-admin-cost-bal].code.text = "Administrative Cost Balance"
* totalPriceComponent[va-marsh-fee].type = #surcharge
* totalPriceComponent[va-marsh-fee].code.text = "Marshal Fee"
* totalPriceComponent[va-court-cost].type = #surcharge
* totalPriceComponent[va-court-cost].code.text = "Court Cost"
* totalPriceComponent[va-principal-paid].type = #base
* totalPriceComponent[va-principal-paid].code.text = "Principal Paid"
* totalPriceComponent[va-interest-paid].type = #surcharge
* totalPriceComponent[va-interest-paid].code.text = "Interest Paid"
* totalPriceComponent[va-admin-cost-paid].type = #surcharge
* totalPriceComponent[va-admin-cost-paid].code.text = "Administrative Cost Paid"
* totalPriceComponent[va-marsh-fee-paid].type = #surcharge
* totalPriceComponent[va-marsh-fee-paid].code.text = "Marshal Fee Paid"
* totalPriceComponent[va-court-cost-paid].type = #surcharge
* totalPriceComponent[va-court-cost-paid].code.text = "Court Cost Paid"

Mapping: source-to-DebtPortalBillInvoice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalBillInvoice
* recipient -> "1818: reference from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - DEBTOR (430-9 > 340-.01) case patient"
* identifier -> "1975: source value from ACCOUNTS RECEIVABLE - BILL NO. (430-.01)"
* status -> "1843: terminologyMaps using VF_ARBillStatus on ACCOUNTS RECEIVABLE - CURRENT STATUS > ACCOUNTS RECEIVABLE TRANS.TYPE - NAME (430-8 > 430.3-.01)"
* subject -> "1976: reference from ACCOUNTS RECEIVABLE - PATIENT > PATIENT (430-7 > 2-)"
* date -> "1977: source value from ACCOUNTS RECEIVABLE - DATE BILL PREPARED (430-10)"
* issuer -> "2007: source value from ACCOUNTS RECEIVABLE - SITE (430-12)"
* totalPriceComponent[va-orig-amt].amount -> "1828: source value from ACCOUNTS RECEIVABLE - ORIGINAL AMOUNT (430-3)"
* totalPriceComponent[va-orig-amt].type -> "1828-1: fixed value = #informational" "from mapParameter 1"
* totalPriceComponent[va-orig-amt].code.text -> "1828-2: fixed value = Original Amount" "from mapParameter 2"
* totalPriceComponent[va-curr-bal].amount -> "1829: source value from ACCOUNTS RECEIVABLE - CURRENT BALANCE (430-11)"
* totalPriceComponent[va-curr-bal].type -> "1829-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-curr-bal].code.text -> "1829-2: fixed value = Current Balance" "from mapParameter 2"
* totalPriceComponent[va-amend-amt].amount -> "1830: source value from ACCOUNTS RECEIVABLE - AMENDED AMOUNT (430-35)"
* totalPriceComponent[va-amend-amt].type -> "1830-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-amend-amt].code.text -> "1830-2: fixed value = Amended Amount" "from mapParameter 2"
* totalPriceComponent[va-principal-bal].amount -> "1831: source value from ACCOUNTS RECEIVABLE - PRINCIPAL BALANCE (430-71)"
* totalPriceComponent[va-principal-bal].type -> "1831-1: fixed value = #base" "from mapParameter 1"
* totalPriceComponent[va-principal-bal].code.text -> "1831-2: fixed value = Principal Balance" "from mapParameter 2"
* totalPriceComponent[va-interest-bal].amount -> "1832: source value from ACCOUNTS RECEIVABLE - INTEREST BALANCE (430-72)"
* totalPriceComponent[va-interest-bal].type -> "1832-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-interest-bal].code.text -> "1832-2: fixed value = Interest Balance" "from mapParameter 2"
* totalPriceComponent[va-admin-cost-bal].amount -> "1866: source value from ACCOUNTS RECEIVABLE - ADMINISTRATIVE COST BALANCE (430-73)"
* totalPriceComponent[va-admin-cost-bal].type -> "1866-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-admin-cost-bal].code.text -> "1866-2: fixed value = Administrative Cost Balance" "from mapParameter 2"
* totalPriceComponent[va-marsh-fee].amount -> "1867: source value from ACCOUNTS RECEIVABLE - MARSHAL FEE (430-74)"
* totalPriceComponent[va-marsh-fee].type -> "1867-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-marsh-fee].code.text -> "1867-2: fixed value = Marshal Fee" "from mapParameter 2"
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
* totalPriceComponent[va-marsh-fee-paid].amount -> "1872: source value from ACCOUNTS RECEIVABLE - TOTAL PAID MARSHAL FEE (430-79.1)"
* totalPriceComponent[va-marsh-fee-paid].type -> "1872-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-marsh-fee-paid].code.text -> "1872-2: fixed value = Marshal Fee Paid" "from mapParameter 2"
* totalPriceComponent[va-court-cost-paid].amount -> "1873: source value from ACCOUNTS RECEIVABLE - TOTAL PAID COURT COST (430-79.2)"
* totalPriceComponent[va-court-cost-paid].type -> "1873-1: fixed value = #surcharge" "from mapParameter 1"
* totalPriceComponent[va-court-cost-paid].code.text -> "1873-2: fixed value = Court Cost Paid" "from mapParameter 2"

Mapping: cdw-to-DebtPortalBillInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalBillInvoice
* recipient -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"
* identifier -> "IB.AccountsReceivable.BillNumber,IB.AccountsReceivableTCSP.BillNumber"
* status -> "IB.AccountsReceivable.ARTransactionTypeIEN\nDim.ARTransactionType.ARTransactionType"
* subject -> "IB.AccountsReceivable.PatientIEN,IB.AccountsReceivableComment.PatientIEN,IB.AccountsReceivableDescription.PatientIEN,IB.AccountsReceivableFiscalYear.PatientIEN,IB.AccountsReceivableRepayDate.PatientIEN,IB.AccountsReceivableTCSP.PatientIEN,IB.AccountsReceivableTCSP.PatientSID"
* date -> "IB.AccountsReceivable.BillPreparedDateTime,IB.AccountsReceivableComment.BillPreparedDateTime,IB.AccountsReceivableDescription.BillPreparedDateTime,IB.AccountsReceivableFiscalYear.BillPreparedDateTime,IB.AccountsReceivableRepayDate.BillPreparedDateTime,IB.AccountsReceivableTCSP.BillPreparedDateTime"
* issuer -> "IB.AccountsReceivable.InstitutionIEN"
* totalPriceComponent[va-orig-amt].amount -> "IB.AccountsReceivable.OriginalBillAmount"
* totalPriceComponent[va-curr-bal].amount -> "IB.AccountsReceivable.CurrentBalance"
* totalPriceComponent[va-amend-amt].amount -> "IB.AccountsReceivable.BillAmendAmount"
* totalPriceComponent[va-principal-bal].amount -> "IB.AccountsReceivable.PrincipalBalance"
* totalPriceComponent[va-interest-bal].amount -> "IB.AccountsReceivable.InterestBalance"
* totalPriceComponent[va-admin-cost-bal].amount -> "IB.AccountsReceivable.AdministrativeCostBalance"
* totalPriceComponent[va-marsh-fee].amount -> "IB.AccountsReceivable.MarshalFee"
* totalPriceComponent[va-court-cost].amount -> "IB.AccountsReceivable.CourtCost"
* totalPriceComponent[va-principal-paid].amount -> "IB.AccountsReceivable.TotalPrincipalPaid"
* totalPriceComponent[va-interest-paid].amount -> "IB.AccountsReceivable.TotalInterestPaid"
* totalPriceComponent[va-admin-cost-paid].amount -> "IB.AccountsReceivable.TotalAdministrativeCostPaid"
* totalPriceComponent[va-marsh-fee-paid].amount -> "IB.AccountsReceivable.TotalMarshalFeePaid"
* totalPriceComponent[va-court-cost-paid].amount -> "IB.AccountsReceivable.TotalCourtCostPaid"