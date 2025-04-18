Profile: DebtPortalInvoice
Parent: http://hl7.org/fhir/StructureDefinition/Invoice
Id: DebtPortalInvoice
Title: "Debt Portal Invoice"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Invoice."
* ^status = #active
* totalPriceComponent ^slicing.discriminator.type = #value
* totalPriceComponent ^slicing.discriminator.path = "$this"
* totalPriceComponent ^slicing.rules = #open
* totalPriceComponent contains va-orig-amt 0..1 and va-curr-bal 0..1 and va-amend-amt 0..1 and va-principal-bal 0..1 and va-interest-bal 0..1 and va-admin-cost-bal 0..1 and va-marsh-fee 0..1 and va-court-cost 0..1 and va-principal-paid 0..1 and va-interest-paid 0..1 and va-admin-cost-paid 0..1 and va-marsh-fee-paid 0..1 and va-court-cost-paid 0..1
* lineItem ^slicing.discriminator.type = #value
* lineItem ^slicing.discriminator.path = "$this"
* lineItem ^slicing.rules = #open
* lineItem contains va-charges 0..1 and va-interest 0..1
* lineItem[va-interest].priceComponent ^slicing.discriminator.type = #value
* lineItem[va-interest].priceComponent ^slicing.discriminator.path = "$this"
* lineItem[va-interest].priceComponent ^slicing.rules = #open
* lineItem[va-interest].priceComponent contains va-marshal-fee-charged 0..1 and va-court-cost-charged 0..1 and va-interest-charged 0..1 and va-admin-charged 0..1
* recipient and identifier and status and subject and date and issuer and account and totalPriceComponent[va-orig-amt].amount and totalPriceComponent[va-orig-amt].type and totalPriceComponent[va-orig-amt].code.text and totalPriceComponent[va-curr-bal].amount and totalPriceComponent[va-curr-bal].type and totalPriceComponent[va-curr-bal].code.text and totalPriceComponent[va-amend-amt].amount and totalPriceComponent[va-amend-amt].type and totalPriceComponent[va-amend-amt].code.text and totalPriceComponent[va-principal-bal].amount and totalPriceComponent[va-principal-bal].type and totalPriceComponent[va-principal-bal].code.text and totalPriceComponent[va-interest-bal].amount and totalPriceComponent[va-interest-bal].type and totalPriceComponent[va-interest-bal].code.text and totalPriceComponent[va-admin-cost-bal].amount and totalPriceComponent[va-admin-cost-bal].type and totalPriceComponent[va-admin-cost-bal].code.text and totalPriceComponent[va-marsh-fee].amount and totalPriceComponent[va-marsh-fee].type and totalPriceComponent[va-marsh-fee].code.text and totalPriceComponent[va-court-cost].amount and totalPriceComponent[va-court-cost].type and totalPriceComponent[va-court-cost].code.text and totalPriceComponent[va-principal-paid].amount and totalPriceComponent[va-principal-paid].type and totalPriceComponent[va-principal-paid].code.text and totalPriceComponent[va-interest-paid].amount and totalPriceComponent[va-interest-paid].type and totalPriceComponent[va-interest-paid].code.text and totalPriceComponent[va-admin-cost-paid].amount and totalPriceComponent[va-admin-cost-paid].type and totalPriceComponent[va-admin-cost-paid].code.text and totalPriceComponent[va-marsh-fee-paid].amount and totalPriceComponent[va-marsh-fee-paid].type and totalPriceComponent[va-marsh-fee-paid].code.text and totalPriceComponent[va-court-cost-paid].amount and totalPriceComponent[va-court-cost-paid].type and totalPriceComponent[va-court-cost-paid].code.text and lineItem[va-charges].chargeItemReference and lineItem[va-charges].priceComponent.amount and lineItem[va-charges].priceComponent.type and lineItem[va-charges].priceComponent.code.text and lineItem[va-interest].chargeItemReference and lineItem[va-interest].priceComponent[va-marshal-fee-charged].amount and lineItem[va-interest].priceComponent[va-marshal-fee-charged].type and lineItem[va-interest].priceComponent[va-marshal-fee-charged].code.text and lineItem[va-interest].priceComponent[va-court-cost-charged].amount and lineItem[va-interest].priceComponent[va-court-cost-charged].type and lineItem[va-interest].priceComponent[va-court-cost-charged].code.text and lineItem[va-interest].priceComponent[va-interest-charged].amount and lineItem[va-interest].priceComponent[va-interest-charged].type and lineItem[va-interest].priceComponent[va-interest-charged].code.text and lineItem[va-interest].priceComponent[va-admin-charged].amount and lineItem[va-interest].priceComponent[va-admin-charged].type and lineItem[va-interest].priceComponent[va-admin-charged].code.text MS
* recipient only Reference(DebtPortalPatient)
* subject only Reference(Patient)
* issuer only Reference(Organization)
* account only Reference(DebtPortalAccount)
* lineItem[va-charges].chargeItemReference only Reference(DebtPortalChargeItemcharges or DebtPortalChargeItemremoved)
* lineItem[va-interest].chargeItemReference only Reference(DebtPortalChargeIteminterest)
* recipient obeys dpi-17-1818
* status from http://va.gov/fhir/ValueSet/ARBillStatus
* status ^binding.description = "see mapping [VF_ARBillStatus](ConceptMap-VF-ARBillStatus.html)"
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
* lineItem[va-charges].chargeItemReference obeys dpi-17-1834
* lineItem[va-charges].chargeItemReference obeys dpi-17-2220
* lineItem[va-charges].priceComponent.type = #base
* lineItem[va-charges].priceComponent.code.text = "Total Charge"
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].amount obeys dpi-17-1999
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].type obeys dpi-17-1999-1
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].code.text obeys dpi-17-1999-2
* lineItem[va-interest].priceComponent[va-court-cost-charged].amount obeys dpi-17-2000
* lineItem[va-interest].priceComponent[va-court-cost-charged].type obeys dpi-17-2000-1
* lineItem[va-interest].priceComponent[va-court-cost-charged].code.text obeys dpi-17-2000-2
* lineItem[va-interest].priceComponent[va-interest-charged].amount obeys dpi-17-2001
* lineItem[va-interest].priceComponent[va-interest-charged].type obeys dpi-17-2001-1
* lineItem[va-interest].priceComponent[va-interest-charged].code.text obeys dpi-17-2001-2
* lineItem[va-interest].priceComponent[va-admin-charged].amount obeys dpi-17-2002
* lineItem[va-interest].priceComponent[va-admin-charged].type obeys dpi-17-2002-1
* lineItem[va-interest].priceComponent[va-admin-charged].code.text obeys dpi-17-2002-2

Invariant: dpi-17-1818
Description: "If type is PATIENT (#2) then reference Patient based on (430-9 > 340-.01)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-1834
Description: "If INTEGRATED BILLING ACTION - PARENT CHARGE = INTEGRATED BILLING ACTION - IEN then reference ChargeItemcharges based on (null)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2220
Description: "If INTEGRATED BILLING ACTION - PARENT CHARGE <> INTEGRATED BILLING ACTION - IEN then reference ChargeItemremoved based on (null)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-1999
Description: "If 433-.03 == 430 then source value from (433-25)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-1999-1
Description: "If 433-.03 == 430 then fixed value #surcharge"
Severity: #warning
Expression: "true"

Invariant: dpi-17-1999-2
Description: "If 433-.03 == 430 then fixed value Marshal Fee Charged"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2000
Description: "If 433-.03 == 430 then source value from (433-26)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2000-1
Description: "If 433-.03 == 430 then fixed value #surcharge"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2000-2
Description: "If 433-.03 == 430 then fixed value Court Cost Charged"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2001
Description: "If 433-.03 == 430 then source value from (433-27)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2001-1
Description: "If 433-.03 == 430 then fixed value #surcharge"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2001-2
Description: "If 433-.03 == 430 then fixed value Interest Charged"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2002
Description: "If 433-.03 == 430 then source value from (433-28)"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2002-1
Description: "If 433-.03 == 430 then fixed value #surcharge"
Severity: #warning
Expression: "true"

Invariant: dpi-17-2002-2
Description: "If 433-.03 == 430 then fixed value Administrative Charged"
Severity: #warning
Expression: "true"

Mapping: source-to-DebtPortalInvoice
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalInvoice
* recipient -> "1818: reference based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - DEBTOR (430-9 > 340-.01) if type is PATIENT (#2)" "The data in CDW does not support Invoice.recipient and Invoice.subject being different. It is assumed that the recipient will always be the subject and to avoid having duplicate patient references, it is recommended to use Invoice.recipient for the reference to the patient."
* identifier -> "1975: source value based on ACCOUNTS RECEIVABLE - BILL NO. (430-.01)"
* status -> "1843: terminologyMaps using VF_ARBillStatus on ACCOUNTS RECEIVABLE - CURRENT STATUS > ACCOUNTS RECEIVABLE TRANS.TYPE - NAME (430-8 > 430.3-.01)"
* subject -> "1976: reference based on ACCOUNTS RECEIVABLE - PATIENT (430-7)" "The data in CDW does not support Invoice.recipient and Invoice.subject being different. It is assumed that the recipient will always be the subject and to avoid having duplicate patient references, it is recommended to use Invoice.recipient for the reference to the patient."
* date -> "1977: source value based on ACCOUNTS RECEIVABLE - DATE BILL PREPARED (430-10)"
* issuer -> "2007: reference based on ACCOUNTS RECEIVABLE - SITE (430-12)"
* account -> "2221: reference"
* totalPriceComponent[va-orig-amt].amount -> "1828: source value based on ACCOUNTS RECEIVABLE - ORIGINAL AMOUNT (430-3)"
* totalPriceComponent[va-orig-amt].type -> "1828-1: fixed value = #informational" "generated from mapParameter line 1"
* totalPriceComponent[va-orig-amt].code.text -> "1828-2: fixed value = Original Amount" "generated from mapParameter line 2"
* totalPriceComponent[va-curr-bal].amount -> "1829: source value based on ACCOUNTS RECEIVABLE - CURRENT BALANCE (430-11)"
* totalPriceComponent[va-curr-bal].type -> "1829-1: fixed value = #base" "generated from mapParameter line 1"
* totalPriceComponent[va-curr-bal].code.text -> "1829-2: fixed value = Current Balance" "generated from mapParameter line 2"
* totalPriceComponent[va-amend-amt].amount -> "1830: source value based on ACCOUNTS RECEIVABLE - AMENDED AMOUNT (430-35)"
* totalPriceComponent[va-amend-amt].type -> "1830-1: fixed value = #base" "generated from mapParameter line 1"
* totalPriceComponent[va-amend-amt].code.text -> "1830-2: fixed value = Amended Amount" "generated from mapParameter line 2"
* totalPriceComponent[va-principal-bal].amount -> "1831: source value based on ACCOUNTS RECEIVABLE - PRINCIPAL BALANCE (430-71)"
* totalPriceComponent[va-principal-bal].type -> "1831-1: fixed value = #base" "generated from mapParameter line 1"
* totalPriceComponent[va-principal-bal].code.text -> "1831-2: fixed value = Principal Balance" "generated from mapParameter line 2"
* totalPriceComponent[va-interest-bal].amount -> "1832: source value based on ACCOUNTS RECEIVABLE - INTEREST BALANCE (430-72)"
* totalPriceComponent[va-interest-bal].type -> "1832-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-interest-bal].code.text -> "1832-2: fixed value = Interest Balance" "generated from mapParameter line 2"
* totalPriceComponent[va-admin-cost-bal].amount -> "1866: source value based on ACCOUNTS RECEIVABLE - ADMINISTRATIVE COST BALANCE (430-73)"
* totalPriceComponent[va-admin-cost-bal].type -> "1866-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-admin-cost-bal].code.text -> "1866-2: fixed value = Administrative Cost Balance" "generated from mapParameter line 2"
* totalPriceComponent[va-marsh-fee].amount -> "1867: source value based on ACCOUNTS RECEIVABLE - MARSHAL FEE (430-74)"
* totalPriceComponent[va-marsh-fee].type -> "1867-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-marsh-fee].code.text -> "1867-2: fixed value = Marshal Fee" "generated from mapParameter line 2"
* totalPriceComponent[va-court-cost].amount -> "1868: source value based on ACCOUNTS RECEIVABLE - COURT COST (430-75)"
* totalPriceComponent[va-court-cost].type -> "1868-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-court-cost].code.text -> "1868-2: fixed value = Court Cost" "generated from mapParameter line 2"
* totalPriceComponent[va-principal-paid].amount -> "1869: source value based on ACCOUNTS RECEIVABLE - TOTAL PAID PRINCIPAL (430-77)"
* totalPriceComponent[va-principal-paid].type -> "1869-1: fixed value = #base" "generated from mapParameter line 1"
* totalPriceComponent[va-principal-paid].code.text -> "1869-2: fixed value = Principal Paid" "generated from mapParameter line 2"
* totalPriceComponent[va-interest-paid].amount -> "1870: source value based on ACCOUNTS RECEIVABLE - TOTAL PAID INTEREST (430-78)"
* totalPriceComponent[va-interest-paid].type -> "1870-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-interest-paid].code.text -> "1870-2: fixed value = Interest Paid" "generated from mapParameter line 2"
* totalPriceComponent[va-admin-cost-paid].amount -> "1871: source value based on ACCOUNTS RECEIVABLE - TOTAL PAID ADMINISTRATIVE COST (430-79)"
* totalPriceComponent[va-admin-cost-paid].type -> "1871-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-admin-cost-paid].code.text -> "1871-2: fixed value = Administrative Cost Paid" "generated from mapParameter line 2"
* totalPriceComponent[va-marsh-fee-paid].amount -> "1872: source value based on ACCOUNTS RECEIVABLE - TOTAL PAID MARSHAL FEE (430-79.1)"
* totalPriceComponent[va-marsh-fee-paid].type -> "1872-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-marsh-fee-paid].code.text -> "1872-2: fixed value = Marshal Fee Paid" "generated from mapParameter line 2"
* totalPriceComponent[va-court-cost-paid].amount -> "1873: source value based on ACCOUNTS RECEIVABLE - TOTAL PAID COURT COST (430-79.2)"
* totalPriceComponent[va-court-cost-paid].type -> "1873-1: fixed value = #surcharge" "generated from mapParameter line 1"
* totalPriceComponent[va-court-cost-paid].code.text -> "1873-2: fixed value = Court Cost Paid" "generated from mapParameter line 2"
* lineItem[va-charges].chargeItemReference -> "1834: reference if INTEGRATED BILLING ACTION - PARENT CHARGE = INTEGRATED BILLING ACTION - IEN" "INTEGRATED BILLING ACTION - AR BILL NUMBER (350-.11) = Accounts Receivable - Bill Number (430-.01)"
* lineItem[va-charges].chargeItemReference -> "2220: reference if INTEGRATED BILLING ACTION - PARENT CHARGE <> INTEGRATED BILLING ACTION - IEN"
* lineItem[va-charges].priceComponent.amount -> "1840: source value based on INTEGRATED BILLING ACTION - TOTAL CHARGE (350-.07)"
* lineItem[va-charges].priceComponent.type -> "1840-1: fixed value = #base" "generated from mapParameter line 1"
* lineItem[va-charges].priceComponent.code.text -> "1840-2: fixed value = Total Charge" "generated from mapParameter line 2"
* lineItem[va-interest].chargeItemReference -> "1991: reference"
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].amount -> "1999: source value based on AR TRANSACTION - MARSHAL FEE (433-25) if 433-.03 == 430"
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].type -> "1999-1: fixed value = #surcharge if 433-.03 == 430" "generated from mapParameter line 1"
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].code.text -> "1999-2: fixed value = Marshal Fee Charged if 433-.03 == 430" "generated from mapParameter line 2"
* lineItem[va-interest].priceComponent[va-court-cost-charged].amount -> "2000: source value based on AR TRANSACTION - COURT COST (433-26) if 433-.03 == 430"
* lineItem[va-interest].priceComponent[va-court-cost-charged].type -> "2000-1: fixed value = #surcharge if 433-.03 == 430" "generated from mapParameter line 1"
* lineItem[va-interest].priceComponent[va-court-cost-charged].code.text -> "2000-2: fixed value = Court Cost Charged if 433-.03 == 430" "generated from mapParameter line 2"
* lineItem[va-interest].priceComponent[va-interest-charged].amount -> "2001: source value based on AR TRANSACTION - INT.CHARGE (433-27) if 433-.03 == 430"
* lineItem[va-interest].priceComponent[va-interest-charged].type -> "2001-1: fixed value = #surcharge if 433-.03 == 430" "generated from mapParameter line 1"
* lineItem[va-interest].priceComponent[va-interest-charged].code.text -> "2001-2: fixed value = Interest Charged if 433-.03 == 430" "generated from mapParameter line 2"
* lineItem[va-interest].priceComponent[va-admin-charged].amount -> "2002: source value based on AR TRANSACTION - ADM.CHARGE (433-28) if 433-.03 == 430"
* lineItem[va-interest].priceComponent[va-admin-charged].type -> "2002-1: fixed value = #surcharge if 433-.03 == 430" "generated from mapParameter line 1"
* lineItem[va-interest].priceComponent[va-admin-charged].code.text -> "2002-2: fixed value = Administrative Charged if 433-.03 == 430" "generated from mapParameter line 2"

Mapping: cdw-to-DebtPortalInvoice
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalInvoice
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
* lineItem[va-charges].priceComponent.amount -> "IB.IBAction.TotalCharge"
* lineItem[va-interest].priceComponent[va-marshal-fee-charged].amount -> "IB.ARTransaction.MarshalFee"
* lineItem[va-interest].priceComponent[va-court-cost-charged].amount -> "IB.ARTransaction.CourtCost"
* lineItem[va-interest].priceComponent[va-interest-charged].amount -> "IB.ARTransaction.InterestCharge"
* lineItem[va-interest].priceComponent[va-admin-charged].amount -> "IB.ARTransaction.AdministrativeCharge"