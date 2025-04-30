Profile: ImmunizationObservation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ImmunizationObservation
Title: "Immunization Observation"
Description: "This StructureDefinition contains the maps for VistA file V IMMUNIZATION (9000010.11) to Observation."
* ^status = #active
* status and code and valueCodeableConcept and valueCodeableConcept.coding.code and valueCodeableConcept.coding.system and valueCodeableConcept.text MS
* status = #completed
* code = http://loinc.org#31044-1
* valueCodeableConcept from http://va.gov/fhir/ValueSet/ImmunizationReaction
* valueCodeableConcept ^binding.description = "see mapping [VF_ImmunizationReaction](ConceptMap-VF-ImmunizationReaction.html)"
* valueCodeableConcept.coding.system = "http://va.gov/terminology/vistaDefinedTerms/9000010.11-.06"

Mapping: source-to-ImmunizationObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ImmunizationObservation
* status -> "1674: fixed value = #completed"
* code -> "1675: fixed value = http://loinc.org#31044-1"
* valueCodeableConcept -> "1594: terminologyMaps using VF_ImmunizationReaction on V IMMUNIZATION - REACTION (9000010.11-.06)" "identified byMHV"
* valueCodeableConcept.coding.code -> "1595: source value based on V IMMUNIZATION - REACTION (9000010.11-.06)" "identified byMHV"
* valueCodeableConcept.coding.system -> "1595-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/9000010.11-.06" "generated from mapParameter line 1"
* valueCodeableConcept.text -> "1596: source value based on V IMMUNIZATION - REACTION (9000010.11-.06)" "VA.gov recommends not using this; use AE data if necessary. Need identified by MHV for alignment with historical presentation."

Mapping: cdw-to-ImmunizationObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ImmunizationObservation
* valueCodeableConcept -> "Immun.Immunization.Reaction"
* valueCodeableConcept.coding.code -> "Immun.Immunization.Reaction"
* valueCodeableConcept.text -> "Immun.Immunization.Reaction"

Mapping: sda-to-ImmunizationObservation
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ImmunizationObservation
* valueCodeableConcept -> "Vaccination.Extension[VaccinationExtension].Reaction"
* valueCodeableConcept.coding.code -> "Vaccination.Extension[VaccinationExtension].Reaction"
* valueCodeableConcept.text -> "Vaccination.Extension[VaccinationExtension].Reaction"

Mapping: vpr-to-ImmunizationObservation
Id: vpr
Title: "Virtual Patient Record XML (VPR)"
Source: ImmunizationObservation
* valueCodeableConcept -> "immunization.reaction"
* valueCodeableConcept.coding.code -> "immunization.reaction"
* valueCodeableConcept.text -> "immunization.reaction"