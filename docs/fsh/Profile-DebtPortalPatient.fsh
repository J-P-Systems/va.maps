Profile: DebtPortalPatient
Parent: http://va.gov/fhir/StructureDefinition/Patient
Id: DebtPortalPatient
Title: "Debt Portal Patient"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Patient."
* ^status = #active
* contact.address.line and contact.address.use and contact.address.city and contact.address.state and contact.address.postalCode and contact.telecom.value and contact.address.country and contact.name.text and contact.name.family and contact.name.given and contact.name.suffix MS
* contact.address.use = #billing
* contact.name.family = "LAST"
* contact.name.given = "FIRST & MIDDLE"
* contact.name.suffix = "SUFFIX"

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
* contact.name.text -> "1827: source value based on ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - DEBTOR (430-9 > 340-.01)" "Add NAME to subpath of VARIABLE POINTER"
* contact.name.family -> "1827-1: fixed value = LAST" "generated from mapParameter line 1"
* contact.name.given -> "1827-2: fixed value = FIRST & MIDDLE" "generated from mapParameter line 2"
* contact.name.suffix -> "1827-3: fixed value = SUFFIX" "generated from mapParameter line 3"

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
* contact.name.text -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.InstitutionIEN\nDim.ARDebtor.InsuranceCompanyIEN\nDim.ARDebtor.PatientIEN\nDim.ARDebtor.StaffIEN\nDim.ARDebtor.VendorIEN"