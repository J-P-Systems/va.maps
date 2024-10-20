Profile: VAERSImmunization
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization
Id: VAERSImmunization
Title: "VAERS Immunization"
Description: "This StructureDefinition contains the maps for ADERS to us-core-immunization"
* ^status = #draft
* patient and status and primarySource MS
* patient only Reference(VAERSPatient)
* status = #completed
* primarySource = false

Mapping: source-to-VAERSImmunization
Id: aders
Title: "VA Adverse Drug Event Reporting System (VA ADERS)"
Source: VAERSImmunization
* patient -> "1876: reference from ADERS - 0_Pt_ICN_Full"
* status -> "null: fixed value = #completed" "because of must-support"
* statusReason -> "null: target not supported" "because of must-support: assume done"
* primarySource -> "null: fixed value = false" "because of must-support"

Mapping: cdw-to-VAERSImmunization
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: VAERSImmunization