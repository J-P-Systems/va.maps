Profile: LabObservationMicrobiologyBacteriologyObservationbacteria
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyBacteriologyObservationbacteria
Title: "Lab Observation: Microbiology Bacteriology Observation[bacteria]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|7.0.0"
* code and valueString MS
* code obeys lombo-57-1525

Invariant: lombo-57-1525
Description: "If (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) is NULL then fixed value http://loinc.org#42803-7 \"Bacteria identified in Isolate\""
Severity: #warning
Expression: "true"

Mapping: source-to-LabObservationMicrobiologyBacteriologyObservationbacteria
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyBacteriologyObservationbacteria
* code -> "1525: fixed value = http://loinc.org#42803-7 \"Bacteria identified in Isolate\" when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) if NULL"
* valueString -> "1497: source value based on MICROBIOLOGY - ORGANISM > ORGANISM - ORGANISM > ETIOLOGY FIELD - NAME (63.05-12 > 63.3-.01 > 61.2-.01)" "Where does organism quantity get mapped?\n\nPer LEAF 63, the values in the SNOMED field (61.2-2) are legacy versions of SNOMED with no URI; this will be maped to valueString rather than a codeable concept."
* status -> "2065: target not supported" "auto added because of must-support"
* category[Laboratory] -> "2067: target not supported" "auto added because of must-support"
* subject -> "2068: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2069: target not supported" "auto added because of must-support"
* dataAbsentReason -> "2072: target not supported" "auto added because of must-support"