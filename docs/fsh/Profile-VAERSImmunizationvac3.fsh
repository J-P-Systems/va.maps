Profile: VAERSImmunizationvac3
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac3
Title: "VAERS Immunization[vac3]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac3
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac3
* occurrenceDateTime -> "2020: target not supported"
* vaccineCode -> "1893: source value from ADERS - 17_Vac3_TypeBrand"
* manufacturer.display -> "1894: source value from ADERS - 17_Vac3_Mfgr"
* lotNumber -> "1895: source value from ADERS - 17_Vac3_Lot"
* route -> "1896: source value from ADERS - 17_Vac3_Route"
* site -> "1897: source value from ADERS - 17_Vac3_Site"
* protocolApplied.doseNumberString -> "1898: source value from ADERS - 17_Vac3_DoseInSeries"
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"