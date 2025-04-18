Profile: VAERSImmunizationpvac4
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac4
Title: "VAERS Immunization[pvac4]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|7.0.0"
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationpvac4
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac4
* vaccineCode -> "1941: source value based on ADERS - 22_PVac4_TypeBrand (22-4.1)"
* manufacturer.display -> "1942: source value based on ADERS - 22_PVac4_Mfgr (22-4.2)"
* lotNumber -> "1943: source value based on ADERS - 22_PVac4_Lot (22-4.3)"
* route -> "1944: source value based on ADERS - 22_PVac4_Route (22-4.4)"
* site -> "1945: source value based on ADERS - 22_PVac4_Site (22-4.5)"
* protocolApplied.doseNumberString -> "1946: source value based on ADERS - 22_PVac4_DoseInSeries (22-4.6)"
* occurrenceDateTime -> "1947: source value based on ADERS - 22_PVac4_Date (22-4.7)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"