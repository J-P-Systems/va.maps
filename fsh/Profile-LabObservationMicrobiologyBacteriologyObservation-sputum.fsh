Profile: LabObservationMicrobiologyBacteriologyObservation-sputum
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservation-sputum
Title: "Lab Observation: Microbiology Bacteriology Observation-sputum"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString MS

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservation-sputum
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservation-sputum
* valueString -> "1517: source value from MICROBIOLOGY - SPUTUM SCREEN (63.05-11.58)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservation-sputum
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservation-sputum
* valueString -> "Micro.Microbiology.SputumScreen"