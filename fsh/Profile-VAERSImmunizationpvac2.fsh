Profile: VAERSImmunizationpvac2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac2
Title: "VAERS Immunizationpvac2"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode.text and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: source-to-VAERSImmunizationpvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac2
* vaccineCode.text -> "1927: source value from ADERS - 22_PVac2_TypeBrand"
* manufacturer.display -> "1928: source value from ADERS - 22_PVac2_Mfgr"
* lotNumber -> "1929: source value from ADERS - 22_PVac2_Lot"
* route -> "1930: source value from ADERS - 22_PVac2_Route"
* site -> "1931: source value from ADERS - 22_PVac2_Site"
* protocolApplied.doseNumberString -> "1932: source value from ADERS - 22_PVac2_DoseInSeries"
* occurrenceDateTime -> "1933: source value from ADERS - 22_PVac2_Date"

Mapping: cdw-to-VAERSImmunizationpvac2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunizationpvac2