Profile: ObservationImagingResultEKG
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-imaging
Id: ObservationImagingResultEKG
Title: "Observation Imaging Result: EKG"
Description: "This StructureDefinition contains the maps for VistA file ELECTROCARDIOGRAM (EKG) (691.5) to us-core-observation-imaging."
* ^status = #draft
* identifier.value and identifier.system and status and subject and effectiveDateTime and issued and performer and valueString and interpretation and note and category MS
* performer only Reference(Practitioner)
* identifier.system = "http://va.gov/identifiers/$Sta3n/691.5"
* status from http://va.gov/fhir/ValueSet/ImageStatus
* interpretation from http://va.gov/fhir/ValueSet/ImageInterpretation
* category = http://terminology.hl7.org/CodeSystem/observation-category#imaging

Mapping: source-to-ObservationImagingResultEKG
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationImagingResultEKG
* identifier.value -> "1618: source value from ELECTROCARDIOGRAM (EKG) - IEN (691.5-.001)"
* identifier.system -> "1618-1: fixed value = http://va.gov/identifiers/$Sta3n/691.5" "from mapParameter 1"
* status -> "1622: terminologyMaps using VF_ImageStatus on ELECTROCARDIOGRAM (EKG) - RELEASE STATUS (691.5-1506)"
* subject -> "1632: reference from ELECTROCARDIOGRAM (EKG) - MEDICAL PATIENT (691.5-1)"
* effectiveDateTime -> "1635: source value from ELECTROCARDIOGRAM (EKG) - DATE/TIME (691.5-.01)"
* issued -> "1638: source value from ELECTROCARDIOGRAM (EKG) - DATE OF VERIFIED (691.5-1508)"
* performer -> "1641: reference from ELECTROCARDIOGRAM (EKG) - INTERPRETED BY (691.5-12)"
* valueString -> "1644: source value from ELECTROCARDIOGRAM (EKG) - INTERPRETATION CODE (RHYTHM) > INTERPRETATION CODE (RHYTHM) - INTERPRETATION CODE (RHYTHM) > ECG INTERPRETATION - INTERPRETATION (691.5-14 > 691.54-.01 > 693.3-.01)"
* valueString -> "1645: source value from ELECTROCARDIOGRAM (EKG) - INTERPRETATION CODE (CONFIG) > INTERPRETATION CODE (CONFIG) - INTERPRETATION CODE (CONFIG) > ECG INTERPRETATION - INTERPRETATION (691.5-14.1 > 691.55-.01 > 693.3-.01)"
* valueString -> "1646: source value from ELECTROCARDIOGRAM (EKG) - INTERPRETATION CODE (PACING) > INTERPRETATION CODE (PACING) - INTERPRETATION CODE (PACING) > ECG INTERPRETATION - INTERPRETATION (691.5-14.2 > 691.56-.01 > 693.3-.01)"
* interpretation -> "1649: terminologyMaps using VF_ImageInterpretation on ELECTROCARDIOGRAM (EKG) - SUMMARY (691.5-.03)"
* note -> "1651: source value from ELECTROCARDIOGRAM (EKG) - COMMENT (691.5-17)"
* category -> "1624: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#imaging"
* dataAbsentReason -> "1796: target not supported" "Always has data"
* valueQuantity -> "1797: target not supported" "value is string"
* valueCodeableConcept -> "1798: target not supported" "value is string"