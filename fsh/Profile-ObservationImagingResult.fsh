Profile: ObservationImagingResult
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResult
Title: "Observation Imaging Result"
Description: "This StructureDefinition contains the maps for VistA file undefined (undefined) to us-core-observation-imaging"
* ^status = #draft
* ^abstract = true

Mapping: vista-to-ObservationImagingResult
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResult
* dataAbsentReason -> "1796: target not supported" "Always has data"
* valueQuantity -> "1797: target not supported" "value is string"
* valueCodeableConcept -> "1798: target not supported" "value is string"

Mapping: cdw-to-ObservationImagingResult
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ObservationImagingResult