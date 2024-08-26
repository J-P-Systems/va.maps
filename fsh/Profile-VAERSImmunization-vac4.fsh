Profile: VAERSImmunization-vac4
Parent: http://hl7.org/fhir/StructureDefinition/Immunization
Id: VAERSImmunization-vac4
Title: "VAERS Immunization-vac4"
Description: "This StructureDefinition contains the maps for ADERS to Immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunization-vac4
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-vac4
* vaccineCode -> "1899: source value from ADERS - Vac4_TypeBrand (A-17.41)"
* manufacturer.display -> "1900: source value from ADERS - Vac4_Mfgr (A-17.42)"
* lotNumber -> "1901: source value from ADERS - Vac4_Lot (A-17.43)"
* route -> "1902: source value from ADERS - Vac4_Route (A-17.44)"
* site -> "1903: source value from ADERS - Vac4_Site (A-17.45)"
* protocolApplied.doseNumberString -> "1904: source value from ADERS - Vac4_DoseInSeries (A-17.46)"

Mapping: cdw-to-VAERSImmunization-vac4
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-vac4