Profile: ImmunizationObservation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ImmunizationObservation
Title: "Immunization {Observation}"
Description: "This StructureDefinition contains the maps for VistA file ? (#?) to Observation"
* ^status = #draft
* status obeys inv-44
* code obeys inv-45
* valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFImmunizationReaction

Invariant: inv-44
Description: "++: fixed value = #completed"
Severity: #warning

Invariant: inv-45
Description: "++: fixed value = http://loinc.org|31044-1"
Severity: #warning

Mapping: vista-to-ImmunizationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImmunizationObservation
* status -> "++: fixed value = #completed"
* code -> "++: fixed value = http://loinc.org|31044-1"
* valueCodeableConcept -> "1594: terminologyMaps using VF_ImmunizationReaction on V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV"
* valueCodeableConcept.coding.code -> "1595: source value from V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV"
* valueCodeableConcept.text -> "1596: source value from V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV"