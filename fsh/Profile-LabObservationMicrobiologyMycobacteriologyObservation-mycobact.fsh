Profile: LabObservationMicrobiologyMycobacteriologyObservation-mycobact
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycobacteriologyObservation-mycobact
Title: "Lab Observation: Microbiology Mycobacteriology Observation-mycobact"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString and code MS

Mapping: vista-to-LabObservationMicrobiologyMycobacteriologyObservation-mycobact
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologyObservation-mycobact
* valueString -> "1859: source value from MICROBIOLOGY - MYCOBACTERIUM > MYCOBACTERIUM - MYCOBACTERIUM > ETIOLOGY FIELD - NAME (63.05-26 > 63.39-.01 > 61.2-.01)"
* code -> "1526: fixed value = http://loinc.org#9825-1 Mycobacterium sp identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"

Mapping: cdw-to-LabObservationMicrobiologyMycobacteriologyObservation-mycobact
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycobacteriologyObservation-mycobact