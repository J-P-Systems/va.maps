Profile: VAERSImmunization-pvac1
Parent: http://hl7.org/fhir/StructureDefinition/Immunization
Id: VAERSImmunization-pvac1
Title: "VAERS Immunization-pvac1"
Description: "This StructureDefinition contains the maps for ADERS to Immunization"
* ^status = #draft
* vaccineCode.text and manufacturer.display and lotNumber and route.text and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: source-to-VAERSImmunization-pvac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-pvac1
* vaccineCode.text -> "1920: source value from ADERS - PVac1_TypeBrand (A-22.11)" "type and brand name not mfr"
* manufacturer.display -> "1921: source value from ADERS - PVac1_Mfgr (A-22.12)" "reference back to org but we don't get a codeable just string"
* lotNumber -> "1922: source value from ADERS - PVac1_Lot (A-22.13)"
* route.text -> "1923: source value from ADERS - PVac1_Route (A-22.14)"
* site -> "1924: source value from ADERS - PVac1_Site (A-22.15)"
* protocolApplied.doseNumberString -> "1925: source value from ADERS - PVac1_DoseInSeries (A-22.16)"
* occurrenceDateTime -> "1926: source value from ADERS - PVac1_Date (A-22.17)"

Mapping: cdw-to-VAERSImmunization-pvac1
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-pvac1