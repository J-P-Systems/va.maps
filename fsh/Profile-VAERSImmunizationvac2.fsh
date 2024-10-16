Profile: VAERSImmunizationvac2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac2
Title: "VAERS Immunizationvac2"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunizationvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac2
* vaccineCode -> "1887: source value from ADERS - 17_Vac2_TypeBrand"
* manufacturer.display -> "1888: source value from ADERS - 17_Vac2_Mfgr"
* lotNumber -> "1889: source value from ADERS - 17_Vac2_Lot"
* route -> "1890: source value from ADERS - 17_Vac2_Route"
* site -> "1891: source value from ADERS - 17_Vac2_Site"
* protocolApplied.doseNumberString -> "1892: source value from ADERS - 17_Vac2_DoseInSeries"

Mapping: cdw-to-VAERSImmunizationvac2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunizationvac2