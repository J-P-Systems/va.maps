Profile: VAERSImmunizationvac2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac2
Title: "VAERS Immunization[vac2]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac2
* occurrenceDateTime -> "2019: target not supported"
* vaccineCode -> "1887: source value from ADERS - 17_Vac2_TypeBrand"
* manufacturer.display -> "1888: source value from ADERS - 17_Vac2_Mfgr"
* lotNumber -> "1889: source value from ADERS - 17_Vac2_Lot"
* route -> "1890: source value from ADERS - 17_Vac2_Route"
* site -> "1891: source value from ADERS - 17_Vac2_Site"
* protocolApplied.doseNumberString -> "1892: source value from ADERS - 17_Vac2_DoseInSeries"
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"