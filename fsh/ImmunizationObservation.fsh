Profile: ImmunizationObservation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ImmunizationObservation
Title: "Immunization Observation"
Description: "This StructureDefinition contains the maps for VistA file V IMMUNIZATION (#9000010.11) to Observation"
* ^status = #draft
* status and code and valueCodeableConcept and valueCodeableConcept.coding.code and valueCodeableConcept.text MS
* valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFImmunizationReaction

Mapping: vista-to-ImmunizationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImmunizationObservation
* status -> "1674: fixed value = #completed"
* code -> "1675: fixed value = http://loinc.org|31044-1"
* valueCodeableConcept -> "1594: terminologyMaps using VF_ImmunizationReaction on V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV"
* valueCodeableConcept.coding.code -> "1595: source value from V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV"
* valueCodeableConcept.text -> "1596: source value from V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV"

Mapping: cdw-to-ImmunizationObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImmunizationObservation
* valueCodeableConcept -> "Immun.Immunization.Reaction"
* valueCodeableConcept.coding.code -> "Immun.Immunization.Reaction"
* valueCodeableConcept.text -> "Immun.Immunization.Reaction"