Profile: LabObservationMicrobiologyBacteriologyObservationsputum
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservationsputum
Title: "Lab Observation: Microbiology Bacteriology Observation[sputum]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString MS

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservationsputum
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservationsputum
* valueString -> "1517: source value from MICROBIOLOGY - SPUTUM SCREEN (63.05-11.58)"

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservationsputum
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservationsputum
* valueString -> "Micro.Microbiology.SputumScreen"