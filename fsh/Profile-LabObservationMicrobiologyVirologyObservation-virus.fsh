Profile: LabObservationMicrobiologyVirologyObservation-virus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyVirologyObservation-virus
Title: "Lab Observation: Microbiology Virology Observation-virus"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* code and valueString MS

Mapping: source-to-LabObservationMicrobiologyVirologyObservation-virus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyObservation-virus
* code -> "1529: fixed value = http://loinc.org#42808-6 Virus identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* valueString -> "1860: source value from MICROBIOLOGY - VIRUS > VIRUS - VIRUS > ETIOLOGY FIELD - NAME (63.05-36 > 63.43-.01 > 61.2-.01)"

Mapping: cdw-to-LabObservationMicrobiologyVirologyObservation-virus
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyVirologyObservation-virus