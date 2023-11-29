Profile: ImmunizationObservation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ImmunizationObservation
Title: "Immunization {Observation}"
Description: "This StructureDefinition contains the maps for VistA ? (file ?) to FHIR Observation"
* ^status = #draft
* code obeys inv-43
* status obeys inv-44
* valueCodeableConcept from http://va.gov/fhir/ValueSet/VSVFImmunizationReaction

Invariant: inv-43
Description: "1594: fixed value = http://loinc.org|31044-1"
Severity: #warning

Invariant: inv-44
Description: "++: fixed value = completed"
Severity: #warning

Mapping: vista-to-ImmunizationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImmunizationObservation
* code -> "1594: fixed value = http://loinc.org|31044-1" "identified byMHV\n@MZ: ref-issue Should be Observation"
* status -> "++: fixed value = completed"
* valueCodeableConcept -> "1595: terminologyMaps using VF_ImmunizationReaction on V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV\n@MZ: ref-issue Should be Observation"
* valueCodeableConcept.text -> "1596: source value from V IMMUNIZATION - REACTION (#9000010.11-.06)" "identified byMHV\n@MZ: ref-issue Should be Observation"