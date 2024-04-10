Profile: ObservationEXAM
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ObservationEXAM
Title: "Observation EXAM"
Description: "This StructureDefinition contains the maps for VistA file V EXAM (9000010.13) to Observation"
* ^status = #draft
* code.coding and subject and encounter and interpretation and valueQuantity.value and valueQuantity and note.text and effectiveDateTime and status and performer and category MS
* interpretation.extension contains http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap named 11179-permitted-value-conceptmap 0..1
* interpretation.extension[11179-permitted-value-conceptmap].valueCanonical = "http://va.gov/fhir/ConceptMap/CMVFExamResultInterpretation"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam

Mapping: vista-to-ObservationEXAM
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationEXAM
* code.coding -> "1580: source value from V EXAM - EXAM > EXAM (9000010.13-.01 > 9999999.15-)" "in CDW through ExamSID"
* code.coding -> "1581: source value from V EXAM - EXAM > EXAM - CODE MAPPINGS > CODE MAPPINGS (9000010.13-.01 > 9999999.15-210>9999999.18)" "in CDW through ExamSID"
* subject -> "1582: reference from V EXAM - PATIENT NAME > PATIENT/IHS - NAME (9000010.13-.02 > 9000001-.01)" "in CDW through PatientSID"
* encounter -> "1583: reference from V EXAM - VISIT (9000010.13-.03)"
* interpretation -> "1584: transform using VF_ExamResultInterpretation on V EXAM - RESULT (9000010.13-.04)"
* valueQuantity.value -> "1585: source value from V EXAM - MAGNITUDE (9000010.13-220)"
* valueQuantity -> "1586: source value from V EXAM - UCUM CODE (9000010.13-221)"
* note.text -> "1587: source value from V EXAM - COMMENTS (9000010.13-81101)"
* effectiveDateTime -> "1588: source value from V EXAM - EVENT DATE AND TIME (9000010.13-1201)"
* status -> "1589: fixed value = #final"
* performer -> "1590: reference from V EXAM - ENCOUNTER PROVIDER (9000010.13-1204)"
* category -> "1591: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#exam"

Mapping: cdw-to-ObservationEXAM
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ObservationEXAM
* encounter -> "Outpat.VExam.VisitDateTime"
* interpretation -> "Outpat.VExam.AbnormalNormal"
* note.text -> "Outpat.VExam.Comments"
* effectiveDateTime -> "Outpat.VExam.EventDateTime"