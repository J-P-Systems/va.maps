Profile: VAERSImmunizationpvac3
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac3
Title: "VAERS Immunization[pvac3]"
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

Mapping: source-to-VAERSImmunizationpvac3
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac3
* vaccineCode -> "1934: source value based on ADERS - 22_PVac3_TypeBrand (22-3.1)"
* manufacturer.display -> "1935: source value based on ADERS - 22_PVac3_Mfgr (22-3.2)"
* lotNumber -> "1936: source value based on ADERS - 22_PVac3_Lot (22-3.3)"
* route -> "1937: source value based on ADERS - 22_PVac3_Route (22-3.4)"
* site -> "1938: source value based on ADERS - 22_PVac3_Site (22-3.5)"
* protocolApplied.doseNumberString -> "1939: source value based on ADERS - 22_PVac3_DoseInSeries (22-3.6)"
* occurrenceDateTime -> "1940: source value based on ADERS - 22_PVac3_Date (22-3.7)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"