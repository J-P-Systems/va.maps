Profile: DebtPortalBillPatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Id: DebtPortalBillPatient
Title: "Debt Portal: Bill Patient"
Description: "This StructureDefinition contains the maps for VistA file ACCOUNTS RECEIVABLE (430) to Patient"
* ^status = #draft
* contact.address.line and contact.address.use and contact.address.city and contact.address.state and contact.address.postalCode and contact.telecom.value and contact.address.country and name MS
* contact.address.use = #billing

Mapping: source-to-DebtPortalBillPatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalBillPatient
* contact.address.line -> "1819: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STREET ADDRESS #1 (430-9 > 340-1.01)"
* contact.address.use -> "1819-1: fixed value = #billing" "from mapParameter 1"
* contact.address.line -> "1820: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STREET ADDRESS #2 (430-9 > 340-1.02)"
* contact.address.line -> "1821: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STREET ADDRESS #3 (430-9 > 340-1.03)"
* contact.address.city -> "1822: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - CITY (430-9 > 340-1.04)"
* contact.address.state -> "1823: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - STATE (430-9 > 340-1.05)"
* contact.address.postalCode -> "1824: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - ZIP CODE (430-9 > 340-1.06)"
* contact.telecom.value -> "1825: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - PHONE NUMBER (430-9 > 340-1.07)"
* contact.address.country -> "1826: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - FOREIGN COUNTRY CODE (430-9 > 340-1.08)"
* name -> "1827: source value from ACCOUNTS RECEIVABLE - DEBTOR > AR DEBTOR - DEBTOR (430-9 > 340-.01) case patient"

Mapping: cdw-to-DebtPortalBillPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalBillPatient
* contact.address.line -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.line -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.line -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.city -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.state -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.postalCode -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.telecom.value -> "IB.AccountsReceivable.ARDebtorIEN"
* contact.address.country -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.ForeignCountryCode"
* name -> "IB.AccountsReceivable.ARDebtorIEN\nDim.ARDebtor.InstitutionIEN,Dim.ARDebtor.InsuranceCompanyIEN,Dim.ARDebtor.PatientIEN,Dim.ARDebtor.StaffIEN,Dim.ARDebtor.VendorIEN"