Profile: LabObservationMicrobiologyVirologyObservation-virus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyVirologyObservation-virus
Title: "Lab Observation: Microbiology Virology Observation-virus"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString MS

Mapping: vista-to-LabObservationMicrobiologyVirologyObservation-virus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyObservation-virus
* valueString -> "1860: source value from MICROBIOLOGY - VIRUS > VIRUS - VIRUS > ETIOLOGY FIELD -  NAME (63.05-36 > 63.43-.01 > 61.2-.01)"

Mapping: cdw-to-LabObservationMicrobiologyVirologyObservation-virus
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyVirologyObservation-virus