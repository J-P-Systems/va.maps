Profile: VAERSImmunizationpvac2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac2
Title: "VAERS Immunization[pvac2]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|7.0.0"
* vaccineCode.text and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationpvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac2
* vaccineCode.text -> "1927: source value based on ADERS - 22_PVac2_TypeBrand (22-2.1)"
* manufacturer.display -> "1928: source value based on ADERS - 22_PVac2_Mfgr (22-2.2)"
* lotNumber -> "1929: source value based on ADERS - 22_PVac2_Lot (22-2.3)"
* route -> "1930: source value based on ADERS - 22_PVac2_Route (22-2.4)"
* site -> "1931: source value based on ADERS - 22_PVac2_Site (22-2.5)"
* protocolApplied.doseNumberString -> "1932: source value based on ADERS - 22_PVac2_DoseInSeries (22-2.6)"
* occurrenceDateTime -> "1933: source value based on ADERS - 22_PVac2_Date (22-2.7)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"