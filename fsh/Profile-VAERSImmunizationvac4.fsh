Profile: VAERSImmunizationvac4
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac4
Title: "VAERS Immunizationvac4"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunizationvac4
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac4
* vaccineCode -> "1899: source value from ADERS - 17_Vac4_TypeBrand"
* manufacturer.display -> "1900: source value from ADERS - 17_Vac4_Mfgr"
* lotNumber -> "1901: source value from ADERS - 17_Vac4_Lot"
* route -> "1902: source value from ADERS - 17_Vac4_Route"
* site -> "1903: source value from ADERS - 17_Vac4_Site"
* protocolApplied.doseNumberString -> "1904: source value from ADERS - 17_Vac4_DoseInSeries"

Mapping: cdw-to-VAERSImmunizationvac4
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunizationvac4