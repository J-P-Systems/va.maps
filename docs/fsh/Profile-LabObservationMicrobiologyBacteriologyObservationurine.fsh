Profile: LabObservationMicrobiologyBacteriologyObservationurine
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservationurine
Title: "Lab Observation: Microbiology Bacteriology Observation[urine]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|7.0.0"
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/MicrobiologyUrineScreenResult
* valueCodeableConcept.coding ^binding.description = "see mapping [VF_MicrobiologyUrineScreenResult](ConceptMap-VF-MicrobiologyUrineScreenResult.html)"

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservationurine
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservationurine
* valueCodeableConcept.coding -> "1516: terminologyMaps using VF_MicrobiologyUrineScreenResult on MICROBIOLOGY - URINE SCREEN (63.05-11.57)"
* status -> "2073: target not supported" "auto added because of must-support"
* category[Laboratory] -> "2075: target not supported" "auto added because of must-support"
* code -> "2076: target not supported" "auto added because of must-support"
* subject -> "2077: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2078: target not supported" "auto added because of must-support"
* dataAbsentReason -> "2081: target not supported" "auto added because of must-support"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservationurine
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservationurine
* valueCodeableConcept.coding -> "Micro.Microbiology.UrineScreen"