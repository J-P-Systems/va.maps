Profile: DebtPortalChargeItem
Parent: http://hl7.org/fhir/StructureDefinition/ChargeItem
Id: DebtPortalChargeItem
Title: "Debt Portal ChargeItem"
Description: "This StructureDefinition contains the maps for VistA file AR CCPC STATEMENTS (349.2) to ChargeItem"
* ^status = #draft
* enteredDate and code.text and identifier and status and subject MS
* status = #billed
* subject only Reference(DebtPortalPatient)

Mapping: vista-to-DebtPortalChargeItem
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalChargeItem
* enteredDate -> "1835: source value from AR CCPC STATEMENTS - PD LINE > PD LINE - DATE POSTED (349.2-20 > 349.21-.01)"
* code.text -> "1836: source value from AR CCPC STATEMENTS - PD LINE > PD LINE - TRANSACTION DESCRIPTION (349.2-20 > 349.21-1)"
* identifier -> "1837: source value from AR CCPC STATEMENTS - PD LINE > PD LINE - BILL REF. NO. (349.2-20 > 349.21-3)"
* status -> "1838: fixed value = #billed"
* subject -> "1839: reference from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - DEBTOR (349.2-.01 > 340-.01)"

Mapping: cdw-to-DebtPortalChargeItem
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalChargeItem
* subject -> "Dim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"