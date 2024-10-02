Profile: LabObservationMicrobiologyBacteriologyObservationbacteria
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservationbacteria
Title: "Lab Observation: Microbiology Bacteriology Observationbacteria"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* code and valueString MS

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservationbacteria
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservationbacteria
* code -> "1525: fixed value = http://loinc.org#42803-7 Bacteria identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* valueString -> "1497: source value from MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM > ETIOLOGY FIELD - NAME (63.05-12 > 63.3-.01 > 61.2-.01)" "Where does organism quantity get mapped?\n\nPer LEAF 63, the values in the SNOMED field (61.2-2) are legacy versions of SNOMED with no URI; this will be maped to valueString rather than a codeable concept."

Mapping: cdw-to-LabObservationMicrobiologyBacteriologyObservationbacteria
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyBacteriologyObservationbacteria