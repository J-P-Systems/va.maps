Profile: LabObservationMicrobiologyMycobacteriologyObservationmycobact
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycobacteriologyObservationmycobact
Title: "Lab Observation: Microbiology Mycobacteriology Observation[mycobact]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* code and valueString MS
* code obeys lommo-61-1526

Invariant: lommo-61-1526
Description: "63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-: if NULL then http://loinc.org#9825-1 \"Mycobacterium sp identified in Isolate\""
Severity: #warning

Mapping: source-to-LabObservationMicrobiologyMycobacteriologyObservationmycobact
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycobacteriologyObservationmycobact
* code -> "1526: fixed value = http://loinc.org#9825-1 \"Mycobacterium sp identified in Isolate\" when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* valueString -> "1859: source value from MICROBIOLOGY - MYCOBACTERIUM > MYCOBACTERIUM - MYCOBACTERIUM > ETIOLOGY FIELD - NAME (63.05-26 > 63.39-.01 > 61.2-.01)"