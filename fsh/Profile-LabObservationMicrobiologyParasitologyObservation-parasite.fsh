Profile: LabObservationMicrobiologyParasitologyObservation-parasite
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyParasitologyObservation-parasite
Title: "Lab Observation: Microbiology Parasitology Observation-parasite"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* code and valueString MS

Mapping: vista-to-LabObservationMicrobiologyParasitologyObservation-parasite
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyParasitologyObservation-parasite
* code -> "1528: fixed value = http://loinc.org#42807-8 Parasite identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* valueString -> "1857: source value from MICROBIOLOGY - PARASITE > PARASITE - PARASITE > ETIOLOGY FIELD -  NAME (63.05-16 > 63.34-.01 > 61.2-.01)"

Mapping: cdw-to-LabObservationMicrobiologyParasitologyObservation-parasite
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyParasitologyObservation-parasite