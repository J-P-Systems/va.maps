Profile: LabObservationMicrobiologyMycologyObservationfungus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyMycologyObservationfungus
Title: "Lab Observation: Microbiology Mycology Observation[fungus]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|6.1.0"
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-compliesWithProfile"
* ^extension[=].valueCanonical = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab|7.0.0"
* code and valueString MS
* code obeys lommo-51-1527

Invariant: lommo-51-1527
Description: "If (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) is NULL then fixed value http://loinc.org#42804-5 \"Fungus identified in Isolate\""
Severity: #warning
Expression: "true"

Mapping: source-to-LabObservationMicrobiologyMycologyObservationfungus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyMycologyObservationfungus
* code -> "1527: fixed value = http://loinc.org#42804-5 \"Fungus identified in Isolate\" when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) if NULL"
* valueString -> "1858: source value based on MICROBIOLOGY - FUNGUS/YEAST > FUNGUS/YEAST - FUNGUS/YEAST > ETIOLOGY FIELD - NAME (63.05-20 > 63.37-.01 > 61.2-.01)"
* status -> "2101: target not supported" "auto added because of must-support"
* category[Laboratory] -> "2103: target not supported" "auto added because of must-support"
* subject -> "2104: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2105: target not supported" "auto added because of must-support"
* dataAbsentReason -> "2108: target not supported" "auto added because of must-support"