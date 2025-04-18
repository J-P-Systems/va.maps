Profile: VAERSImmunizationvac1
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac1
Title: "VAERS Immunization[vac1]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* occurrenceDateTime and vaccineCode.text and route.text and manufacturer.display and lotNumber and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac1
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac1
* occurrenceDateTime -> "1875: transform using concat(4_VacDate, 4_VacTime)"
* vaccineCode.text -> "1878: source value based on ADERS - 17_Vac1_TypeBrand (17-1.1)" "coding.display not really makes sense, since there is no code"
* route.text -> "1879: source value based on ADERS - 17_Vac1_Route (17-1.4)"
* manufacturer.display -> "1883: source value based on ADERS - 17_Vac1_Mfgr (17-1.2)"
* lotNumber -> "1884: source value based on ADERS - 17_Vac1_Lot (17-1.3)"
* site -> "1885: source value based on ADERS - 17_Vac1_Site (17-1.5)"
* protocolApplied.doseNumberString -> "1886: source value based on ADERS - 17_Vac1_DoseInSeries (17-1.6)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"