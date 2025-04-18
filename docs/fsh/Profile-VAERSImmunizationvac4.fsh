Profile: VAERSImmunizationvac4
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac4
Title: "VAERS Immunization[vac4]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|7.0.0"
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac4
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac4
* occurrenceDateTime -> "2021: target not supported"
* vaccineCode -> "1899: source value based on ADERS - 17_Vac4_TypeBrand (17-4.1)"
* manufacturer.display -> "1900: source value based on ADERS - 17_Vac4_Mfgr (17-4.2)"
* lotNumber -> "1901: source value based on ADERS - 17_Vac4_Lot (17-4.3)"
* route -> "1902: source value based on ADERS - 17_Vac4_Route (17-4.4)"
* site -> "1903: source value based on ADERS - 17_Vac4_Site (17-4.5)"
* protocolApplied.doseNumberString -> "1904: source value based on ADERS - 17_Vac4_DoseInSeries (17-4.6)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"