Profile: ObservationImagingResultEcho
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResultEcho
Title: "Observation Imaging Result: Echo"
Description: "This StructureDefinition contains the maps for VistA file ECHO (691) to us-core-observation-imaging."
* ^status = #draft
* identifier.value and identifier.system and status and subject and effectiveDateTime and issued and performer and valueString and interpretation and note and category MS
* performer only Reference(Practitioner)
* identifier.system = "http://va.gov/identifiers/$Sta3n/691"
* status from http://va.gov/fhir/ValueSet/ImageStatus
* interpretation from http://va.gov/fhir/ValueSet/ImageInterpretation
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging

Mapping: source-to-ObservationImagingResultEcho
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResultEcho
* identifier.value -> "1617: source value from ECHO - IEN (691-.001)"
* identifier.system -> "1617-1: fixed value = http://va.gov/identifiers/$Sta3n/691" "from mapParameter 1"
* status -> "1621: terminologyMaps using VF_ImageStatus on ECHO - RELEASE CODE (691-1506)"
* subject -> "1631: reference from ECHO - MEDICAL PATIENT (691-1)"
* effectiveDateTime -> "1634: source value from ECHO - DATE/TIME (691-.01)"
* issued -> "1637: source value from ECHO - DATE OF VERIFIED (691-1508)"
* performer -> "1640: reference from ECHO - CARDIOLOGY ATTENDING (691-39)"
* valueString -> "1643: source value from ECHO - FINDINGS > FINDINGS - FINDINGS (691-37 > 691.06-.01)" "Should Doppler findings be included? (691-34) Can have only 1 value in US Core."
* interpretation -> "1648: terminologyMaps using VF_ImageInterpretation on ECHO - SUMMARY (691-.03)"
* note -> "1650: source value from ECHO - OTHER CONCLUSION (691-38)"
* category -> "1624: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#imaging"
* dataAbsentReason -> "1796: target not supported" "Always has data"
* valueQuantity -> "1797: target not supported" "value is string"
* valueCodeableConcept -> "1798: target not supported" "value is string"