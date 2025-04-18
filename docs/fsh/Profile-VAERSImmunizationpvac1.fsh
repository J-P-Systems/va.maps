Profile: VAERSImmunizationpvac1
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac1
Title: "VAERS Immunization[pvac1]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|7.0.0"
* vaccineCode.text and manufacturer.display and lotNumber and route.text and site and protocolApplied.doseNumberString and occurrenceDateTime and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationpvac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac1
* vaccineCode.text -> "1920: source value based on ADERS - 22_PVac1_TypeBrand (22-1.1)" "type and brand name not mfr"
* manufacturer.display -> "1921: source value based on ADERS - 22_PVac1_Mfgr (22-1.2)" "reference back to org but we don't get a codeable just string"
* lotNumber -> "1922: source value based on ADERS - 22_PVac1_Lot (22-1.3)"
* route.text -> "1923: source value based on ADERS - 22_PVac1_Route (22-1.4)"
* site -> "1924: source value based on ADERS - 22_PVac1_Site (22-1.5)"
* protocolApplied.doseNumberString -> "1925: source value based on ADERS - 22_PVac1_DoseInSeries (22-1.6)"
* occurrenceDateTime -> "1926: source value based on ADERS - 22_PVac1_Date (22-1.7)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"