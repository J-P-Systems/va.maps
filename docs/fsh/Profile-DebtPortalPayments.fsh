Profile: DebtPortalPayments
Parent: http://hl7.org/fhir/StructureDefinition/PaymentReconciliation
Id: DebtPortalPayments
Title: "Debt Portal: Payments"
Description: "This StructureDefinition contains the maps for VistA file AR TRANSACTION (433) to PaymentReconciliation"
* ^status = #draft
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier contains va-tn 0..1 and va-bn 0..1
* detail ^slicing.discriminator.type = #pattern
* detail ^slicing.discriminator.path = "$this"
* detail ^slicing.rules = #open
* detail contains va-principal-collected 0..1 and va-interest-collected 0..1 and va-admin-collected 0..1 and va-marshal-collected 0..1 and va-courtcost-collected 0..1
* identifier[va-tn].value and identifier[va-tn].type.text and identifier[va-bn].value and identifier[va-bn].type.text and status and created and disposition and paymentDate and paymentAmount and paymentIdentifier and detail[va-principal-collected].amount and detail[va-principal-collected].type.text and detail[va-interest-collected].amount and detail[va-interest-collected].type.text and detail[va-admin-collected].amount and detail[va-admin-collected].type.text and detail[va-marshal-collected].amount and detail[va-marshal-collected].type.text and detail[va-courtcost-collected].amount and detail[va-courtcost-collected].type.text MS
* identifier[va-tn].type.text = "Transaction Number"
* identifier[va-bn].type.text = "Bill Number"
* status = #active
* detail[va-principal-collected].type.text = "Principal Collected"
* detail[va-interest-collected].type.text = "Interest Collected"
* detail[va-admin-collected].type.text = "Administrative Charge Collected"
* detail[va-marshal-collected].type.text = "Marshal Fee Collected"
* detail[va-courtcost-collected].type.text = "Court Cost Collected"

Mapping: source-to-DebtPortalPayments
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalPayments
* identifier[va-tn].value -> "1978: source value from AR TRANSACTION - TRANSACTION NUMBER (433-.01)"
* identifier[va-tn].type.text -> "1978-1: fixed value = Transaction Number" "from mapParameter 1"
* identifier[va-bn].value -> "1979: source value from AR TRANSACTION - BILL NUMBER (433-.03)"
* identifier[va-bn].type.text -> "1979-1: fixed value = Bill Number" "from mapParameter 1"
* status -> "1980: fixed value = #active"
* created -> "1984: source value from AR TRANSACTION - DATE ENTERED (433-19)"
* disposition -> "1982: source value from AR TRANSACTION - TRANSACTION TYPE > ACCOUNTS RECEIVABLE TRANS.TYPE - NAME (433-12 > 430.3-.01) case IEN = 34 OR 2" "Transaction type name = PAYMENT (IN FULL) when IEN = 34\nTransaction type name = PAYMENT (IN PART) when IEN = 2"
* paymentDate -> "1981: source value from AR TRANSACTION - TRANSACTION DATE (433-11)"
* paymentAmount -> "1983: source value from AR TRANSACTION - TRANS. AMOUNT (433-15)"
* paymentIdentifier -> "1985: source value from AR TRANSACTION - RECEIPT # (433-13)"
* detail[va-principal-collected].amount -> "1986: source value from AR TRANSACTION - PRIN.COLLECTED (433-31)"
* detail[va-principal-collected].type.text -> "1986-1: fixed value = Principal Collected" "from mapParameter 1"
* detail[va-interest-collected].amount -> "1987: source value from AR TRANSACTION - INTEREST COLLECTED (433-32)"
* detail[va-interest-collected].type.text -> "1987-1: fixed value = Interest Collected" "from mapParameter 1"
* detail[va-admin-collected].amount -> "1988: source value from AR TRANSACTION - ADMIN.COLLECTED (433-33)"
* detail[va-admin-collected].type.text -> "1988-1: fixed value = Administrative Charge Collected" "from mapParameter 1"
* detail[va-marshal-collected].amount -> "1989: source value from AR TRANSACTION - MARSHAL FEE COLLECTED (433-34)"
* detail[va-marshal-collected].type.text -> "1989-1: fixed value = Marshal Fee Collected" "from mapParameter 1"
* detail[va-courtcost-collected].amount -> "1990: source value from AR TRANSACTION - COURT COST COLLECTED (433-35)"
* detail[va-courtcost-collected].type.text -> "1990-1: fixed value = Court Cost Collected" "from mapParameter 1"

Mapping: cdw-to-DebtPortalPayments
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalPayments
* identifier[va-tn].value -> "IB.ARTransaction.TransactionNumber"
* identifier[va-bn].value -> "IB.ARTransaction.AccountsReceivableIEN,IB.ARTransaction.PatientIEN,IB.ARTransactionComment.PatientIEN,IB.ARTransactionDescription.PatientIEN,IB.ARTransactionFiscalYear.PatientIEN"
* created -> "IB.ARTransaction.EnteredDateTime"
* disposition -> "IB.ARTransaction.ARTransactionTypeIEN\nDim.ARTransactionType.ARTransactionType"
* paymentDate -> "IB.ARTransaction.TransactionDateTime,IB.ARTransactionComment.TransactionDateTime,IB.ARTransactionDescription.TransactionDateTime,IB.ARTransactionFiscalYear.TransactionDateTime"
* paymentAmount -> "IB.ARTransaction.TransactionAmount"
* paymentIdentifier -> "IB.ARTransaction.ReceiptNumber"
* detail[va-principal-collected].amount -> "IB.ARTransaction.PrincipaAmountCollected"
* detail[va-interest-collected].amount -> "IB.ARTransaction.InterestAmountCollected"
* detail[va-admin-collected].amount -> "IB.ARTransaction.AdministrativeAmountCollected"
* detail[va-marshal-collected].amount -> "IB.ARTransaction.MarshalFeeAmountCollected"
* detail[va-courtcost-collected].amount -> "IB.ARTransaction.CourtCostCollected"