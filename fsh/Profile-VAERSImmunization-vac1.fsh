Profile: VAERSImmunization-vac1
Parent: http://hl7.org/fhir/StructureDefinition/Immunization
Id: VAERSImmunization-vac1
Title: "VAERS Immunization-vac1"
Description: "This StructureDefinition contains the maps for ADERS to Immunization"
* ^status = #draft
* occurrenceDateTime and patient and vaccineCode.text and route.text and manufacturer.display and lotNumber and site and protocolApplied.doseNumberString MS
* patient only Reference(VAERSPatient)

Mapping: source-to-VAERSImmunization-vac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization-vac1
* occurrenceDateTime -> "1875: transform using concat(4_VacDate, 4_VacTime) on ADERS - (A-)"
* patient -> "1876: reference from ADERS - Pt_ICN_Full (A-0)"
* vaccineCode.text -> "1878: source value from ADERS - Vac1_TypeBrand (A-17.11)" "coding.display not really makes sense, since there is no code"
* route.text -> "1879: source value from l (A-17.12)"
* manufacturer.display -> "1883: source value from ADERS - Vac1_Mfgr (A-17.13)"
* lotNumber -> "1884: source value from ADERS - Vac1_Lot (A-17.14)"
* site -> "1885: source value from ADERS - Vac1_Site (A-17.15)"
* protocolApplied.doseNumberString -> "1886: source value from ADERS - Vac1_DoseInSeries (A-17.16)"

Mapping: cdw-to-VAERSImmunization-vac1
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization-vac1