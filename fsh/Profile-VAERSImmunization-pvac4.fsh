Profile: VAERSImmunization-pvac4
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization-pvac4
Title: "VAERS Immunization-pvac4"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime MS

Mapping: source-to-VAERSImmunization-pvac4
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-pvac4
* vaccineCode -> "1941: source value from ADERS - 22_PVac4_TypeBrand (A-22.41)"
* manufacturer.display -> "1942: source value from ADERS - 22_PVac4_Mfgr (A-22.42)"
* lotNumber -> "1943: source value from ADERS - 22_PVac4_Lot (A-22.43)"
* route -> "1944: source value from ADERS - 22_PVac4_Route (A-22.44)"
* site -> "1945: source value from ADERS - 22_PVac4_Site (A-22.45)"
* protocolApplied.doseNumberString -> "1946: source value from ADERS - 22_PVac4_DoseInSeries (A-22.46)"
* occurrenceDateTime -> "1947: source value from ADERS - 22_PVac4_Date (A-22.47)"

Mapping: cdw-to-VAERSImmunization-pvac4
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-pvac4