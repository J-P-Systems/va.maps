Profile: LabObservationMicrobiologyVirologyObservationvirus
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Id: LabObservationMicrobiologyVirologyObservationvirus
Title: "Lab Observation: Microbiology Virology Observation[virus]"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (63.05) to us-core-observation-lab."
* ^status = #draft
* code and valueString MS
* code obeys lomvo-50-1529

Invariant: lomvo-50-1529
Description: "If (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) is NULL then fixed value http://loinc.org#42808-6 \"Virus identified in Isolate\""
Severity: #warning
Expression: "true"

Mapping: source-to-LabObservationMicrobiologyVirologyObservationvirus
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyVirologyObservationvirus
* code -> "1529: fixed value = http://loinc.org#42808-6 \"Virus identified in Isolate\" when MICROBIOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE > LAB LOINC (63.05-.35 > 63.5-13 > 60-100 > 60.01-95.3 > 95.3-) if NULL"
* valueString -> "1860: source value based on MICROBIOLOGY - VIRUS > VIRUS - VIRUS > ETIOLOGY FIELD - NAME (63.05-36 > 63.43-.01 > 61.2-.01)"
* status -> "2131: target not supported" "auto added because of must-support"
* category[Laboratory] -> "2133: target not supported" "auto added because of must-support"
* subject -> "2134: target not supported" "auto added because of must-support"
* effectiveDateTime -> "2135: target not supported" "auto added because of must-support"
* dataAbsentReason -> "2138: target not supported" "auto added because of must-support"