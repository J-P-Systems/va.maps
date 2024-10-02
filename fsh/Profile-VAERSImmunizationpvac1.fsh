Profile: VAERSImmunizationpvac1
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac1
Title: "VAERS Immunizationpvac1"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode.text and manufacturer.display and lotNumber and route.text and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: source-to-VAERSImmunizationpvac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac1
* vaccineCode.text -> "1920: source value from ADERS - 22_PVac1_TypeBrand" "type and brand name not mfr"
* manufacturer.display -> "1921: source value from ADERS - 22_PVac1_Mfgr" "reference back to org but we don't get a codeable just string"
* lotNumber -> "1922: source value from ADERS - 22_PVac1_Lot"
* route.text -> "1923: source value from ADERS - 22_PVac1_Route"
* site -> "1924: source value from ADERS - 22_PVac1_Site"
* protocolApplied.doseNumberString -> "1925: source value from ADERS - 22_PVac1_DoseInSeries"
* occurrenceDateTime -> "1926: source value from ADERS - 22_PVac1_Date"

Mapping: cdw-to-VAERSImmunizationpvac1
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunizationpvac1