Profile: LabObservationMicrobiologyBacteriologyObservationurine
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservationurine
Title: "Lab Observation: Microbiology Bacteriology Observation[urine]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/MicrobiologyUrineScreenResult

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservationurine
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservationurine
* valueCodeableConcept.coding -> "1516: terminologyMaps using VF_MicrobiologyUrineScreenResult on MICROBIOLOGY - URINE SCREEN (63.05-11.57)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservationurine
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservationurine
* valueCodeableConcept.coding -> "Micro.Microbiology.UrineScreen"