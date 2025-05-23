Profile: DebtPortalAccount
Parent: http://hl7.org/fhir/StructureDefinition/Account
Id: DebtPortalAccount
Title: "Debt Portal Account"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Account."
* ^status = #active
* extension contains http://va.gov/fhir/StructureDefinition/account-statementGenerationDay named account-statementGenerationDay 0..1
* identifier.value and identifier.system and identifier.type and status and subject and extension[http://va.gov/fhir/StructureDefinition/account-statementGenerationDay].valueInteger MS
* subject only Reference(Patient)
* identifier.system = "urn:oid:2.16.840.1.113883.4.349"
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#AN "Account number"
* status = #active

Mapping: source-to-DebtPortalAccount
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalAccount
* identifier.value -> "2003: transform using concat(Sta3n, text({IEN (.001)},\"0000000000000\", left({NAME (.01)}), 5) on ACCOUNTS RECEIVABLE - PATIENT > PATIENT (430-7 > 2-)" "concatenated from Sta3n, Patient.IEN (paded with leading 0's to make 13 digits), LEFT(LastName, 5)"
* identifier.system -> "2003-1: fixed value = urn:oid:2.16.840.1.113883.4.349" "generated from mapParameter line 1"
* identifier.type -> "2003-2: fixed value = http://terminology.hl7.org/CodeSystem/v2-0203#AN \"Account number\"" "generated from mapParameter line 2"
* status -> "2004: fixed value = #active"
* subject -> "2005: reference based on ACCOUNTS RECEIVABLE - PATIENT (430-7)"
* extension[http://va.gov/fhir/StructureDefinition/account-statementGenerationDay].valueInteger -> "2006: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STATEMENT DAY (430-9 > 340-.03)"

Mapping: cdw-to-DebtPortalAccount
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalAccount
* identifier.value -> "IB.AccountsReceivable.PatientIEN\nIB.AccountsReceivableComment.PatientIEN\nIB.AccountsReceivableDescription.PatientIEN\nIB.AccountsReceivableFiscalYear.PatientIEN\nIB.AccountsReceivableRepayDate.PatientIEN\nIB.AccountsReceivableTCSP.PatientIEN\nIB.AccountsReceivableTCSP.PatientSID"
* subject -> "IB.AccountsReceivable.PatientIEN\nIB.AccountsReceivableComment.PatientIEN\nIB.AccountsReceivableDescription.PatientIEN\nIB.AccountsReceivableFiscalYear.PatientIEN\nIB.AccountsReceivableRepayDate.PatientIEN\nIB.AccountsReceivableTCSP.PatientIEN\nIB.AccountsReceivableTCSP.PatientSID"
* extension[http://va.gov/fhir/StructureDefinition/account-statementGenerationDay].valueInteger -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.StatementGeneratedDay"