Profile: ObservationImagingResult
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResult
Title: "Observation Imaging Result"
Description: "This StructureDefinition contains the maps for VistA file undefined (#undefined) to us-core-observation-imaging"
* ^status = #draft
* category MS
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging

Mapping: vista-to-ObservationImagingResult
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResult
* category -> "1624: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#imaging"