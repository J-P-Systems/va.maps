Profile: DebtPortalPatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Id: DebtPortalPatient
Title: "Debt Portal Patient"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Patient."
* ^status = #active
* contact.address.line and contact.address.use and contact.address.city and contact.address.state and contact.address.postalCode and contact.telecom.value and contact.address.country and name.text and name.family and name.given and name.suffix MS
* contact.address.use = #billing
* name.text obeys dpp-17-1827
* name.family obeys dpp-17-1827-1
* name.given obeys dpp-17-1827-2
* name.suffix obeys dpp-17-1827-3

Invariant: dpp-17-1827
Description: "If type is PATIENT (#2) then source value from (430-9 > 340-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpp-17-1827-1
Description: "If type is PATIENT (#2) then fixed value LAST"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpp-17-1827-2
Description: "If type is PATIENT (#2) then fixed value FIRST & MIDDLE"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Invariant: dpp-17-1827-3
Description: "If type is PATIENT (#2) then fixed value SUFFIX"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-DebtPortalPatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalPatient
* contact.address.line -> "1819: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STREET ADDRESS #1 (430-9 > 340-1.01)"
* contact.address.use -> "1819-1: fixed value = #billing" "generated from mapParameter line 1"
* contact.address.line -> "1820: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STREET ADDRESS #2 (430-9 > 340-1.02)"
* contact.address.line -> "1821: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STREET ADDRESS #3 (430-9 > 340-1.03)"
* contact.address.city -> "1822: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - CITY (430-9 > 340-1.04)"
* contact.address.state -> "1823: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STATE (430-9 > 340-1.05)"
* contact.address.postalCode -> "1824: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - ZIP CODE (430-9 > 340-1.06)"
* contact.telecom.value -> "1825: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - PHONE NUMBER (430-9 > 340-1.07)"
* contact.address.country -> "1826: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - FOREIGN COUNTRY CODE (430-9 > 340-1.08)"
* name.text -> "1827: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - DEBTOR (430-9 > 340-.01) if type is PATIENT (#2)"
* name.family -> "1827-1: fixed value = LAST if type is PATIENT (#2)" "generated from mapParameter line 1"
* name.given -> "1827-2: fixed value = FIRST & MIDDLE if type is PATIENT (#2)" "generated from mapParameter line 2"
* name.suffix -> "1827-3: fixed value = SUFFIX if type is PATIENT (#2)" "generated from mapParameter line 3"

Mapping: cdw-to-DebtPortalPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalPatient
* contact.address.line -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.line -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.line -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.city -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.state -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.postalCode -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.telecom.value -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.country -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.ForeignCountryCode"
* name.text -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"