Profile: VAERSImmunizationvac1
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac1
Title: "VAERS Immunizationvac1"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* occurrenceDateTime and vaccineCode.text and route.text and manufacturer.display and lotNumber and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunizationvac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac1
* occurrenceDateTime -> "1875: transform using concat(4_VacDate, 4_VacTime)"
* vaccineCode.text -> "1878: source value from ADERS - 17_Vac1_TypeBrand" "coding.display not really makes sense, since there is no code"
* route.text -> "1879: source value from ADERS - 17_Vac1_Route"
* manufacturer.display -> "1883: source value from ADERS - 17_Vac1_Mfgr"
* lotNumber -> "1884: source value from ADERS - 17_Vac1_Lot"
* site -> "1885: source value from ADERS - 17_Vac1_Site"
* protocolApplied.doseNumberString -> "1886: source value from ADERS - 17_Vac1_DoseInSeries"

Mapping: cdw-to-VAERSImmunizationvac1
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunizationvac1