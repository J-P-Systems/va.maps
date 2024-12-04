Profile: DebtPortalAccount
Parent: http://hl7.org/fhir/StructureDefinition/Account
Id: DebtPortalAccount
Title: "Debt Portal: Account"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Account"
* ^status = #active
* extension contains http://va.gov/fhir/StructureDefinition/account-statementGeneratedDay named account-statementGeneratedDay 0..1
* identifier and status and subject and extension[http://va.gov/fhir/StructureDefinition/account-statementGeneratedDay].valueInteger MS
* subject only Reference(Patient)
* status = #active

Mapping: source-to-DebtPortalAccount
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalAccount
* identifier -> "2003: transform using concat(Sta3n, text({IEN (.001)},\"0000000000000\", left({NAME (.01)}), 5) on ACCOUNTS RECEIVABLE - PATIENT > PATIENT (430-7 > 2-)" "concatenated from Sta3n, Patient.IEN (paded with leading 0's to make 13 digits), LEFT(LastName, 5)"
* status -> "2004: fixed value = #active"
* subject -> "2005: reference from ACCOUNTS RECEIVABLE - PATIENT > PATIENT (430-7 > 2-) case patient"
* extension[http://va.gov/fhir/StructureDefinition/account-statementGeneratedDay].valueInteger -> "2006: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STATEMENT DAY (430-9 > 340-.03)"

Mapping: cdw-to-DebtPortalAccount
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalAccount
* identifier -> "IB.AccountsReceivable.PatientIEN,IB.AccountsReceivableComment.PatientIEN,IB.AccountsReceivableDescription.PatientIEN,IB.AccountsReceivableFiscalYear.PatientIEN,IB.AccountsReceivableRepayDate.PatientIEN,IB.AccountsReceivableTCSP.PatientIEN,IB.AccountsReceivableTCSP.PatientSID"
* subject -> "IB.AccountsReceivable.PatientIEN,IB.AccountsReceivableComment.PatientIEN,IB.AccountsReceivableDescription.PatientIEN,IB.AccountsReceivableFiscalYear.PatientIEN,IB.AccountsReceivableRepayDate.PatientIEN,IB.AccountsReceivableTCSP.PatientIEN,IB.AccountsReceivableTCSP.PatientSID"
* extension[http://va.gov/fhir/StructureDefinition/account-statementGeneratedDay].valueInteger -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.StatementGeneratedDay"