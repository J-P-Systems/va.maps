Profile: VAERSImmunizationpvac2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationpvac2
Title: "VAERS Immunization[pvac2]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization|6.1.0"
* vaccineCode.text and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and occurrenceDateTime and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationpvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationpvac2
* vaccineCode.text -> "1927: source value from ADERS - 22_PVac2_TypeBrand"
* manufacturer.display -> "1928: source value from ADERS - 22_PVac2_Mfgr"
* lotNumber -> "1929: source value from ADERS - 22_PVac2_Lot"
* route -> "1930: source value from ADERS - 22_PVac2_Route"
* site -> "1931: source value from ADERS - 22_PVac2_Site"
* protocolApplied.doseNumberString -> "1932: source value from ADERS - 22_PVac2_DoseInSeries"
* occurrenceDateTime -> "1933: source value from ADERS - 22_PVac2_Date"
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"