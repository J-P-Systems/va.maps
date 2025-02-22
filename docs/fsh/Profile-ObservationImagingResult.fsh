Profile: ObservationImagingResult
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResult
Title: "Observation Imaging Result"
Description: "This StructureDefinition contains the maps for VistA file undefined (undefined) to us-core-observation-imaging."
* ^status = #draft
* ^abstract = true
* category[imaging] MS
* category[imaging] = http://terminology.hl7.org/CodeSystem/observation-category#imaging

Mapping: source-to-ObservationImagingResult
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResult
* category[imaging] -> "1624: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#imaging"
* dataAbsentReason -> "1796: target not supported" "Always has data"