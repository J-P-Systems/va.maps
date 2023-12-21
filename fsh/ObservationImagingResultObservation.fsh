Profile: ObservationImagingResultObservation
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResultObservation
Title: "Observation Imaging Result {Observation}"
Description: "This StructureDefinition contains the maps for VistA ? (file ?) to FHIR Observation"
* ^status = #draft
* category.coding.code obeys inv-46

Invariant: inv-46
Description: "1624: fixed value = imaging"
Severity: #warning

Mapping: vista-to-ObservationImagingResultObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResultObservation
* category.coding.code -> "1624: fixed value = imaging"