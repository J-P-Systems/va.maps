Profile: LabObservationMicrobiologyVirologyObservationvirus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyVirologyObservationvirus
Title: "Lab Observation: Microbiology Virology Observation[virus]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension.url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension.valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* code and valueString MS
* code obeys lomvo-50-1529

Invariant: lomvo-50-1529
Description: "63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-: if NULL then http://loinc.org#42808-6 \"Virus identified in Isolate\""
Severity: #warning

Mapping: source-to-LabObservationMicrobiologyVirologyObservationvirus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyObservationvirus
* code -> "1529: fixed value = http://loinc.org#42808-6 \"Virus identified in Isolate\" when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) case NULL"
* valueString -> "1860: source value from MICROBIOLOGY - VIRUS > VIRUS - VIRUS > ETIOLOGY FIELD - NAME (63.05-36 > 63.43-.01 > 61.2-.01)"