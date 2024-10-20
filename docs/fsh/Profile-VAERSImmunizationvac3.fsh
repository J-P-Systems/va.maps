Profile: VAERSImmunizationvac3
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac3
Title: "VAERS Immunization[vac3]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunizationvac3
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac3
* vaccineCode -> "1893: source value from ADERS - 17_Vac3_TypeBrand"
* manufacturer.display -> "1894: source value from ADERS - 17_Vac3_Mfgr"
* lotNumber -> "1895: source value from ADERS - 17_Vac3_Lot"
* route -> "1896: source value from ADERS - 17_Vac3_Route"
* site -> "1897: source value from ADERS - 17_Vac3_Site"
* protocolApplied.doseNumberString -> "1898: source value from ADERS - 17_Vac3_DoseInSeries"

Mapping: cdw-to-VAERSImmunizationvac3
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunizationvac3