Profile: LabObservationMicrobiologyParasitologyObservation-parasite
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyParasitologyObservation-parasite
Title: "Lab Observation: Microbiology Parasitology Observation-parasite"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString and code MS
* code = #1000

Mapping: vista-to-LabObservationMicrobiologyParasitologyObservation-parasite
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyParasitologyObservation-parasite
* valueString -> "1857: source value from MICROBIOLOGY - PARASITE > PARASITE - PARASITE > ETIOLOGY FIELD -  NAME (63.05-16 > 63.34-.01 > 61.2-.01)"
* code -> "1857-1: fixed value = #1000" "from mapParameter 1"

Mapping: cdw-to-LabObservationMicrobiologyParasitologyObservation-parasite
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyParasitologyObservation-parasite