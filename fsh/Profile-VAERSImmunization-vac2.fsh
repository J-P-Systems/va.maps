Profile: VAERSImmunization-vac2
Parent: http://hl7.org/fhir/StructureDefinition/Immunization
Id: VAERSImmunization-vac2
Title: "VAERS Immunization-vac2"
Description: "This StructureDefinition contains the maps for ADERS to Immunization"
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString MS

Mapping: source-to-VAERSImmunization-vac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-vac2
* vaccineCode -> "1887: source value from ADERS - Vac2_TypeBrand (A-17.21)"
* manufacturer.display -> "1888: source value from ADERS - Vac2_Mfgr (A-17.22)"
* lotNumber -> "1889: source value from ADERS - Vac2_Lot (A-17.23)"
* route -> "1890: source value from ADERS - Vac2_Route (A-17.24)"
* site -> "1891: source value from ADERS - Vac2_Site (A-17.25)"
* protocolApplied.doseNumberString -> "1892: source value from ADERS - Vac2_DoseInSeries (A-17.26)"

Mapping: cdw-to-VAERSImmunization-vac2
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-vac2