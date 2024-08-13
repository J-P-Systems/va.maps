Profile: LabObservationMicrobiologyMycologyObservation-fungus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycologyObservation-fungus
Title: "Lab Observation: Microbiology Mycology Observation-fungus"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab"
* ^status = #draft
* valueString and code MS

Mapping: vista-to-LabObservationMicrobiologyMycologyObservation-fungus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycologyObservation-fungus
* valueString -> "1858: source value from MICROBIOLOGY - FUNGUS/YEAST > FUNGUS/YEAST - FUNGUS/YEAST > ETIOLOGY FIELD - NAME (63.05-20 > 63.37-.01 > 61.2-.01)"
* code -> "1527: fixed value = http://loinc.org#42804-5 Fungus identified in Isolate when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"

Mapping: cdw-to-LabObservationMicrobiologyMycologyObservation-fungus
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyMycologyObservation-fungus