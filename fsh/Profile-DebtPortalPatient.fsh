Profile: DebtPortalPatient
Parent: http://hl7.org/fhir/StructureDefinition/Patient
Id: DebtPortalPatient
Title: "Debt Portal Patient"
Description: "This StructureDefinition contains the maps for VistA file AR CCPC STATEMENTS (349.2) to Patient"
* ^status = #draft
* contact.address.line and contact.address.city and contact.address.state and contact.address.postalCode and contact.telecom.value and contact.address.country and name MS

Mapping: vista-to-DebtPortalPatient
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DebtPortalPatient
* contact.address.line -> "1819: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - STREET ADDRESS #1 (349.2-.01 > 340-1.01)"
* contact.address.line -> "1820: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - STREET ADDRESS #2 (349.2-.01 > 340-1.02)"
* contact.address.line -> "1821: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - STREET ADDRESS #3 (349.2-.01 > 340-1.03)"
* contact.address.city -> "1822: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - CITY (349.2-.01 > 340-1.04)"
* contact.address.state -> "1823: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - STATE (349.2-.01 > 340-1.05)"
* contact.address.postalCode -> "1824: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - ZIP CODE (349.2-.01 > 340-1.06)"
* contact.telecom.value -> "1825: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - PHONE NUMBER (349.2-.01 > 340-1.07)"
* contact.address.country -> "1826: source value from AR CCPC STATEMENTS - PATIENT > AR DEBTOR - FOREIGN COUNTRY CODE (349.2-.01 > 340-1.08)"
* name -> "1827: source value from AR CCPC STATEMENTS - PATIENT NAME (349.2-.03)"

Mapping: cdw-to-DebtPortalPatient
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DebtPortalPatient
* contact.address.country -> "Dim.ARDebtor.ForeignCountryCode"