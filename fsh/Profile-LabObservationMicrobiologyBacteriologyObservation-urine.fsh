Profile: LabObservationMicrobiologyBacteriologyObservation-urine
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservation-urine
Title: "Lab Observation: Microbiology Bacteriology Observation-urine"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding from http://va.gov/fhir/ValueSet/VSVFMicrobiologyUrineScreenResult

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservation-urine
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservation-urine
* valueCodeableConcept.coding -> "1516: terminologyMaps using VF_MicrobiologyUrineScreenResult on MICROBIOLOGY - URINE SCREEN (63.05-11.57)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservation-urine
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservation-urine
* valueCodeableConcept.coding -> "Micro.Microbiology.UrineScreen"