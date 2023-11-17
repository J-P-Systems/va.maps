Profile: ObservationEXAMObservation
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ObservationEXAMObservation
Title: "Observation EXAM {Observation}"
Description: "This StructureDefinition contains the maps for VistA V EXAM (file 9000010.13) to FHIR Observation"
* ^status = #draft
* status obeys inv-20
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner)
* category obeys inv-21

Invariant: inv-20
Description: "1589: fixed value = final"
Severity: #warning

Invariant: inv-21
Description: "1591: fixed value = http://terminology.hl7.org/CodeSystem/observation-category|exam"
Severity: #warning

Mapping: vista-to-ObservationEXAMObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationEXAMObservation
* code.coding -> "1580: source value from V EXAM - EXAM > EXAM (#9000010.13-.01 > 9999999.15-)" "in CDW through ExamSID"
* code.coding -> "1581: source value from V EXAM - EXAM > EXAM – CODE MAPPINGS (#9000010.13-.01 > 9999999.15-210)" "in CDW through ExamSID"
* subject -> "1582: reference from V EXAM - PATIENT NAME > PATIENT/IHS - NAME (#9000010.13-.02 > 9000001-.01)" "in CDW through PatientSID"
* encounter -> "1583: reference from V EXAM - VISIT (#9000010.13-.03)"
* interpretation -> "1584: transform using VF_ExamResultInterpretation on V EXAM - RESULT (#9000010.13-.04)"
* valueQuantity.value -> "1585: source value from V EXAM - MAGNITUDE (#9000010.13-220)"
* valueQuantity -> "1586: source value from V EXAM - UCUM CODE (#9000010.13-221)"
* note.text -> "1587: source value from V EXAM - COMMENTS (#9000010.13-81101)"
* effectiveDateTime -> "1588: source value from V EXAM - EVENT DATE AND TIME (#9000010.13-1201)"
* status -> "1589: fixed value = final"
* performer -> "1590: reference from V EXAM - ENCOUNTER PROVIDER (#9000010.13-1204)"
* category -> "1591: fixed value = http://terminology.hl7.org/CodeSystem/observation-category|exam"

Mapping: cdw-to-ObservationEXAMObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ObservationEXAMObservation
* encounter -> "Outpat.VExam.VisitDateTime"
* interpretation -> "Outpat.VExam.AbnormalNormal"
* note.text -> "Outpat.VExam.Comments"
* effectiveDateTime -> "Outpat.VExam.EventDateTime"