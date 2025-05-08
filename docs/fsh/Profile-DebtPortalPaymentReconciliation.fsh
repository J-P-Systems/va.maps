Profile: DebtPortalPaymentReconciliation
Parent: http://hl7.org/fhir/StructureDefinition/PaymentReconciliation
Id: DebtPortalPaymentReconciliation
Title: "Debt Portal PaymentReconciliation"
Description: "This StructureDefinition contains the maps for VistA file AR TRANSACTION (433) to PaymentReconciliation."
* ^status = #active
* detail ^slicing.discriminator.type = #value
* detail ^slicing.discriminator.path = "$this"
* detail ^slicing.rules = #open
* detail contains va-principal-collected 0..1 and va-interest-collected 0..1 and va-admin-collected 0..1 and va-marshal-collected 0..1 and va-courtcost-collected 0..1
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.paymentIssuer named extension-PaymentReconciliation-paymentIssuer 0..1
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier named extension-PaymentReconciliation-allocation-identifier 0..1
* extension contains http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.target named extension-PaymentReconciliation-allocation-target 0..1
* identifier.value and identifier.type.text and status and created and extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.paymentIssuer].valueReference and disposition and paymentDate and paymentAmount.value and paymentAmount.currency and paymentIdentifier and extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier].valueIdentifier.value and extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier].valueIdentifier.type.text and extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.target].valueReference and detail[va-principal-collected].amount and detail[va-principal-collected].type.text and detail[va-interest-collected].amount and detail[va-interest-collected].type.text and detail[va-admin-collected].amount and detail[va-admin-collected].type.text and detail[va-marshal-collected].amount and detail[va-marshal-collected].type.text and detail[va-courtcost-collected].amount and detail[va-courtcost-collected].type.text MS
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.paymentIssuer].valueReference only Reference(DebtPortalPatient)
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.target].valueReference only Reference(DebtPortalInvoice)
* identifier.type.text = "Transaction Number"
* status = #active
* disposition obeys dppr-31-1982
* paymentAmount.currency = #USD
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier].valueIdentifier.type.text = "Bill Number"
* detail[va-principal-collected].type.text = "Principal Collected"
* detail[va-interest-collected].type.text = "Interest Collected"
* detail[va-admin-collected].type.text = "Administrative Charge Collected"
* detail[va-marshal-collected].type.text = "Marshal Fee Collected"
* detail[va-courtcost-collected].type.text = "Court Cost Collected"

Invariant: dppr-31-1982
Description: "If IEN = 34 OR 2 then source value from (433-12 > 430.3-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-DebtPortalPaymentReconciliation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalPaymentReconciliation
* identifier.value -> "1978: source value based on AR TRANSACTION - TRANSACTION NUMBER (433-.01)"
* identifier.type.text -> "1978-1: fixed value = Transaction Number" "generated from mapParameter line 1"
* status -> "1980: fixed value = #active"
* created -> "1984: source value based on AR TRANSACTION - DATE ENTERED (433-19)"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.paymentIssuer].valueReference -> "2032: reference based on AR TRANSACTION - BILL NUMBER > ACCOUNTS RECEIVABLE - DEBTOR (433-.03 > 430-9)"
* disposition -> "1982: source value based on AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - NAME (433-12 > 430.3-.01) if IEN = 34 OR 2" "Transaction type name = PAYMENT (IN FULL) when IEN = 34\nTransaction type name = PAYMENT (IN PART) when IEN = 2"
* paymentDate -> "1981: source value based on AR TRANSACTION - TRANSACTION DATE (433-11)"
* paymentAmount.value -> "1983: source value based on AR TRANSACTION - TRANS. AMOUNT (433-15)"
* paymentAmount.currency -> "1983-1: fixed value = #USD" "generated from mapParameter line 1"
* paymentIdentifier -> "1985: source value based on AR TRANSACTION - RECEIPT # (433-13)"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier].valueIdentifier.value -> "1979: source value based on AR TRANSACTION - BILL NUMBER (433-.03)"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier].valueIdentifier.type.text -> "1979-1: fixed value = Bill Number" "generated from mapParameter line 1"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.target].valueReference -> "2041: reference"
* detail[va-principal-collected].amount -> "1986: source value based on AR TRANSACTION - PRIN.COLLECTED (433-31)"
* detail[va-principal-collected].type.text -> "1986-1: fixed value = Principal Collected" "generated from mapParameter line 1"
* detail[va-interest-collected].amount -> "1987: source value based on AR TRANSACTION - INTEREST COLLECTED (433-32)"
* detail[va-interest-collected].type.text -> "1987-1: fixed value = Interest Collected" "generated from mapParameter line 1"
* detail[va-admin-collected].amount -> "1988: source value based on AR TRANSACTION - ADMIN.COLLECTED (433-33)"
* detail[va-admin-collected].type.text -> "1988-1: fixed value = Administrative Charge Collected" "generated from mapParameter line 1"
* detail[va-marshal-collected].amount -> "1989: source value based on AR TRANSACTION - MARSHAL FEE COLLECTED (433-34)"
* detail[va-marshal-collected].type.text -> "1989-1: fixed value = Marshal Fee Collected" "generated from mapParameter line 1"
* detail[va-courtcost-collected].amount -> "1990: source value based on AR TRANSACTION - COURT COST COLLECTED (433-35)"
* detail[va-courtcost-collected].type.text -> "1990-1: fixed value = Court Cost Collected" "generated from mapParameter line 1"

Mapping: cdw-to-DebtPortalPaymentReconciliation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalPaymentReconciliation
* identifier.value -> "IB.ARTransaction.TransactionNumber"
* created -> "IB.ARTransaction.EnteredDateTime"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.paymentIssuer].valueReference -> "IB.ARTransaction.AccountsReceivableIEN,IB.ARTransaction.PatientIEN,IB.ARTransactionComment.PatientIEN,IB.ARTransactionDescription.PatientIEN,IB.ARTransactionFiscalYear.PatientIEN\nIB.AccountsReceivable.ARDebtorIEN"
* disposition -> "IB.ARTransaction.ARTransactionTypeIEN\nDim.ARTransactionType.ARTransactionType"
* paymentDate -> "IB.ARTransaction.TransactionDateTime,IB.ARTransactionComment.TransactionDateTime,IB.ARTransactionDescription.TransactionDateTime,IB.ARTransactionFiscalYear.TransactionDateTime"
* paymentAmount.value -> "IB.ARTransaction.TransactionAmount"
* paymentIdentifier -> "IB.ARTransaction.ReceiptNumber"
* extension[http://hl7.org/fhir/5.0/StructureDefinition/extension-PaymentReconciliation.allocation.identifier].valueIdentifier.value -> "IB.ARTransaction.AccountsReceivableIEN,IB.ARTransaction.PatientIEN,IB.ARTransactionComment.PatientIEN,IB.ARTransactionDescription.PatientIEN,IB.ARTransactionFiscalYear.PatientIEN"
* detail[va-principal-collected].amount -> "IB.ARTransaction.PrincipaAmountCollected"
* detail[va-interest-collected].amount -> "IB.ARTransaction.InterestAmountCollected"
* detail[va-admin-collected].amount -> "IB.ARTransaction.AdministrativeAmountCollected"
* detail[va-marshal-collected].amount -> "IB.ARTransaction.MarshalFeeAmountCollected"
* detail[va-courtcost-collected].amount -> "IB.ARTransaction.CourtCostCollected"