Profile: LabObservationMicrobiologyBacteriologyObservationsputum
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservationsputum
Title: "Lab Observation: Microbiology Bacteriology Observation[sputum]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|7.0.0"
* valueString MS

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservationsputum
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservationsputum
* valueString -> "1517: source value based on MICROBIOLOGY - SPUTUM SCREEN (63.05-11.58)"
* status -> "2082: target not supported" "auto added because of must-support"
* category[Laboratory] -> "2084: target not supported" "auto added because of must-support"
* code -> "2085: target not supported" "auto added because of must-support"
* subject -> "2086: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2087: target not supported" "auto added because of must-support"
* dataAbsentReason -> "2090: target not supported" "auto added because of must-support"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservationsputum
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservationsputum
* valueString -> "Micro.Microbiology.SputumScreen"