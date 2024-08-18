Profile: VAERSImmunization-vac3
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization-vac3
Title: "VAERS Immunization-vac3"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunization-vac3
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-vac3
* vaccineCode -> "1893: source value from ADERS - 17_Vac3_TypeBrand (A-17.31)"
* manufacturer.display -> "1894: source value from ADERS - 17_Vac3_Mfgr (A-17.32)"
* lotNumber -> "1895: source value from ADERS - 17_Vac3_Lot (A-17.33)"
* route -> "1896: source value from ADERS - 17_Vac3_Route (A-17.34)"
* site -> "1897: source value from ADERS - 17_Vac3_Site (A-17.35)"
* protocolApplied.doseNumberString -> "1898: source value from ADERS - 17_Vac3_DoseInSeries (A-17.36)"

Mapping: cdw-to-VAERSImmunization-vac3
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-vac3