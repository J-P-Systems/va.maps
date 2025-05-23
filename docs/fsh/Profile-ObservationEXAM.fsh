Profile: ObservationEXAM
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ObservationEXAM
Title: "Observation EXAM"
Description: "This StructureDefinition contains the maps for VistA file V EXAM (9000010.13) to Observation."
* ^status = #draft
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains va-code 0..1 and va-sct 0..1
* code.coding[va-code] and code.coding[va-code].system and code.coding[va-code].code and code.coding[va-code].display and code.coding[va-sct] and code.coding[va-sct].system and code.coding[va-sct].code and subject and encounter and interpretation and valueQuantity.value and valueQuantity and valueQuantity.unit and valueQuantity.code and note.text and effectiveDateTime and status and performer and category MS
* subject only Reference(Patient)
* encounter only Reference(EncounterOutpatient)
* performer only Reference(Practitioner)
* code.coding[va-code].system = "http://va.gov/terminology/vistaDefinedTerms/9999999.15"
* code.coding[va-sct].system = "urn:see-termmap-in-mapParameter"
* interpretation ^comment = "see mapping [VF_ExamResultInterpretation](ConceptMap-VF-ExamResultInterpretation.html)"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam

Mapping: source-to-ObservationEXAM
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationEXAM
* code.coding[va-code] -> "1580: source value based on V EXAM - EXAM > EXAM (9000010.13-.01 > 9999999.15-)" "in CDW through ExamSID"
* code.coding[va-code].system -> "1580-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/9999999.15" "generated from mapParameter line 1"
* code.coding[va-code].code -> "1580-2: source value based on V EXAM - EXAM > EXAM - NAME (9000010.13-.01 > 9999999.15-.01)" "generated from mapParameter line 2"
* code.coding[va-code].display -> "1580-3: source value based on V EXAM - EXAM > EXAM - PRINT NAME (9000010.13-.01 > 9999999.15-200)" "generated from mapParameter line 3"
* code.coding[va-sct] -> "1581: source value based on V EXAM - EXAM > EXAM - CODE MAPPINGS > CODE MAPPINGS (9000010.13-.01 > 9999999.15-210>9999999.18)" "in CDW through ExamSID"
* code.coding[va-sct].system -> "1581-1: fixed value = urn:see-termmap-in-mapParameter" "generated from mapParameter line 1"
* code.coding[va-sct].code -> "1581-2: source value based on V EXAM - EXAM > EXAM - CODE MAPPINGS > CODE MAPPINGS - CODE (9000010.13-.01 > 9999999.15-210>9999999.18-1)" "generated from mapParameter line 2"
* subject -> "1582: reference based on V EXAM - PATIENT NAME > PATIENT/IHS - NAME (9000010.13-.02 > 9000001-.01)" "in CDW through PatientSID"
* encounter -> "1583: reference based on V EXAM - VISIT (9000010.13-.03)"
* interpretation -> "1584: transform using VF_ExamResultInterpretation on V EXAM - RESULT (9000010.13-.04)"
* valueQuantity.value -> "1585: source value based on V EXAM - MAGNITUDE (9000010.13-220)"
* valueQuantity -> "1586: source value based on V EXAM - UCUM CODE > UCUM CODES (9000010.13-221 > 757.5-)"
* valueQuantity.unit -> "1586-1: source value based on V EXAM - UCUM CODE > UCUM CODES - DESCRIPTION OF THE UNIT (9000010.13-221 > 757.5-.01)" "generated from mapParameter line 1"
* valueQuantity.code -> "1586-2: source value based on V EXAM - UCUM CODE > UCUM CODES - UCUM CODE (9000010.13-221 > 757.5-1)" "generated from mapParameter line 2"
* note.text -> "1587: source value based on V EXAM - COMMENTS (9000010.13-81101)"
* effectiveDateTime -> "1588: source value based on V EXAM - EVENT DATE AND TIME (9000010.13-1201)"
* status -> "1589: fixed value = #final"
* performer -> "1590: reference based on V EXAM - ENCOUNTER PROVIDER (9000010.13-1204)"
* category -> "1591: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#exam"

Mapping: cdw-to-ObservationEXAM
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ObservationEXAM
* code.coding[va-code] -> "Outpat.VExam.ExamIEN"
* code.coding[va-code].code -> "Outpat.VExam.ExamIEN\nDim.Exam.Exam"
* code.coding[va-code].display -> "Outpat.VExam.ExamIEN"
* code.coding[va-sct] -> "Outpat.VExam.ExamIEN"
* code.coding[va-sct].code -> "Outpat.VExam.ExamIEN"
* subject -> "Outpat.VExam.PatientIEN"
* encounter -> "Outpat.VExam.VisitDateTime\nOutpat.VExam.VisitIEN"
* interpretation -> "Outpat.VExam.AbnormalNormal"
* valueQuantity.unit -> "Dim.UCUMCode.DescriptionOfTheUnit"
* valueQuantity.code -> "Dim.UCUMCode.UCUMCode"
* note.text -> "Outpat.VExam.Comments"
* effectiveDateTime -> "Outpat.VExam.EventDateTime"
* performer -> "Outpat.VExam.EncounterProviderIEN"

Mapping: sda-to-ObservationEXAM
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ObservationEXAM
* code.coding[va-code] -> "PhysicalExam.PhysExamCode\nPhysicalExam.PhysExamCode[PhysExam].Description"
* code.coding[va-code].code -> "PhysicalExam.PhysExamCode\nPhysicalExam.PhysExamCode[PhysExam].Description"
* code.coding[va-code].display -> "PhysicalExam.PhysExamCode\nPhysicalExam.PhysExamCode[PhysExam].Description"
* code.coding[va-sct] -> "PhysicalExam.PhysExamCode\nPhysicalExam.PhysExamCode[PhysExam].Description"
* code.coding[va-sct].code -> "PhysicalExam.PhysExamCode\nPhysicalExam.PhysExamCode[PhysExam].Description"
* encounter -> "PhysicalExam.EncounterNumber\nPhysicalExam.EnteredAt\nPhysicalExam.EnteredBy\nPhysicalExam.EnteredOn"
* interpretation -> "PhysicalExam.PhysExamObsValue"
* valueQuantity.value -> "PhysicalExam.Extension[PhysicalExamExtension].ResultValue"
* valueQuantity -> "PhysicalExam.Extension[PhysicalExamExtension].Units"
* valueQuantity.unit -> "PhysicalExam.Extension[PhysicalExamExtension].Units"
* valueQuantity.code -> "PhysicalExam.Extension[PhysicalExamExtension].Units"
* note.text -> "PhysicalExam.NoteText"
* effectiveDateTime -> "PhysicalExam.PhysExamTime"