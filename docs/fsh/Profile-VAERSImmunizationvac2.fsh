Profile: VAERSImmunizationvac2
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunizationvac2
Title: "VAERS Immunization[vac2]"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization."
* ^status = #draft
* vaccineCode and manufacturer.display and lotNumber and route and site and protocolApplied.doseNumberString and patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunizationvac2
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunizationvac2
* occurrenceDateTime -> "2019: target not supported"
* vaccineCode -> "1887: source value based on ADERS - 17_Vac2_TypeBrand (17-2.1)"
* manufacturer.display -> "1888: source value based on ADERS - 17_Vac2_Mfgr (17-2.2)"
* lotNumber -> "1889: source value based on ADERS - 17_Vac2_Lot (17-2.3)"
* route -> "1890: source value based on ADERS - 17_Vac2_Route (17-2.4)"
* site -> "1891: source value based on ADERS - 17_Vac2_Site (17-2.5)"
* protocolApplied.doseNumberString -> "1892: source value based on ADERS - 17_Vac2_DoseInSeries (17-2.6)"
* patient -> "1876: reference based on ADERS - 0_Pt_ICN_Full (0)"
* status -> "2026: fixed value = #completed" "because of must-support"
* statusReason -> "2027: target not supported" "because of must-support: assume done"
* primarySource -> "2028: fixed value = false" "because of must-support"