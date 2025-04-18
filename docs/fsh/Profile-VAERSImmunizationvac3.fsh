Profile: VAERSImmunizationvac3
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac3
Title: "VAERS Immunization[vac3]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac3
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac3
* occurrenceDateTime -> "2020: target not supported"
* vaccineCode -> "1893: source value based on ADERS - 17_Vac3_TypeBrand (17-3.1)"
* manufacturer.display -> "1894: source value based on ADERS - 17_Vac3_Mfgr (17-3.2)"
* lotNumber -> "1895: source value based on ADERS - 17_Vac3_Lot (17-3.3)"
* route -> "1896: source value based on ADERS - 17_Vac3_Route (17-3.4)"
* site -> "1897: source value based on ADERS - 17_Vac3_Site (17-3.5)"
* protocolApplied.doseNumberString -> "1898: source value based on ADERS - 17_Vac3_DoseInSeries (17-3.6)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"