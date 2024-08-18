Profile: ObservationEXAM
Parent: http://hl7.org/fhir/StructureDefinition/Observation
Id: ObservationEXAM
Title: "Observation EXAM"
Description: "This StructureDefinition contains the maps for VistA file V EXAM (9000010.13) to Observation"
* ^status = #draft
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains va-code 0..1 and va-sct 0..1
* subject and code.coding[va-code] and code.coding[va-code].system and code.coding[va-code].code and code.coding[va-code].display and code.coding[va-sct] and code.coding[va-sct].system and code.coding[va-sct].code and encounter and interpretation and valueQuantity.value and valueQuantity and valueQuantity.unit and valueQuantity.code and note.text and effectiveDateTime and status and performer and category MS
* subject only Reference(Patient)
* performer only Reference(Practitioner)
* code.coding[va-code].system = "http://va.gov/terminology/vistaDefinedTerms/9999999.15"
* code.coding[va-sct].system = "urn:see-termmap-in-mapParameter"
* interpretation.extension contains http://hl7.org/fhir/StructureDefinition/11179-permitted-value-conceptmap named 11179-permitted-value-conceptmap 0..1
* interpretation.extension[11179-permitted-value-conceptmap].valueCanonical = "http://va.gov/fhir/ConceptMap/CMVFExamResultInterpretation"
* status = #final
* category = http://terminology.hl7.org/CodeSystem/observation-category#exam

Mapping: source-to-ObservationEXAM
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ObservationEXAM
* subject -> "1582: reference from V EXAM - PATIENT NAME > PATIENT/IHS - NAME (9000010.13-.02 > 9000001-.01)" "in CDW through PatientSID"
* code.coding[va-code] -> "1580: source value from V EXAM - EXAM > EXAM (9000010.13-.01 > 9999999.15-)" "in CDW through ExamSID"
* code.coding[va-code].system -> "1580-1: fixed value = http://va.gov/terminology/vistaDefinedTerms/9999999.15" "from mapParameter 1"
* code.coding[va-code].code -> "1580-2: source value from V EXAM - EXAM > EXAM - NAME (9000010.13-.01 > 9999999.15-.01)" "from mapParameter 2"
* code.coding[va-code].display -> "1580-3: source value from V EXAM - EXAM > EXAM - PRINT NAME (9000010.13-.01 > 9999999.15-200)" "from mapParameter 3"
* code.coding[va-sct] -> "1581: source value from V EXAM - EXAM > EXAM - CODE MAPPINGS > CODE MAPPINGS (9000010.13-.01 > 9999999.15-210>9999999.18)" "in CDW through ExamSID"
* code.coding[va-sct].system -> "1581-1: fixed value = urn:see-termmap-in-mapParameter" "from mapParameter 1"
* code.coding[va-sct].code -> "1581-2: source value from V EXAM - EXAM > EXAM - CODE MAPPINGS > CODE MAPPINGS - CODE (9000010.13-.01 > 9999999.15-210>9999999.18-1)" "from mapParameter 2"
* encounter -> "1583: reference from V EXAM - VISIT (9000010.13-.03)"
* interpretation -> "1584: transform using VF_ExamResultInterpretation on V EXAM - RESULT (9000010.13-.04)"
* valueQuantity.value -> "1585: source value from V EXAM - MAGNITUDE (9000010.13-220)"
* valueQuantity -> "1586: source value from V EXAM - UCUM CODE > UCUM CODES (9000010.13-221 > 757.5-)"
* valueQuantity.unit -> "1586-1: source value from V EXAM - UCUM CODE > UCUM CODES - DESCRIPTION OF THE UNIT (9000010.13-221 > 757.5-.01)" "from mapParameter 1"
* valueQuantity.code -> "1586-2: source value from V EXAM - UCUM CODE > UCUM CODES - UCUM CODE (9000010.13-221 > 757.5-1)" "from mapParameter 2"
* note.text -> "1587: source value from V EXAM - COMMENTS (9000010.13-81101)"
* effectiveDateTime -> "1588: source value from V EXAM - EVENT DATE AND TIME (9000010.13-1201)"
* status -> "1589: fixed value = #final"
* performer -> "1590: reference from V EXAM - ENCOUNTER PROVIDER (9000010.13-1204)"
* category -> "1591: fixed value = http://terminology.hl7.org/CodeSystem/observation-category#exam"

Mapping: cdw-to-ObservationEXAM
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ObservationEXAM
* subject -> "Outpat.VExam.PatientIEN"
* code.coding[va-code] -> "Outpat.VExam.ExamIEN"
* code.coding[va-code].code -> "Outpat.VExam.ExamIEN\nDim.Exam.Exam"
* code.coding[va-code].display -> "Outpat.VExam.ExamIEN"
* code.coding[va-sct] -> "Outpat.VExam.ExamIEN"
* code.coding[va-sct].code -> "Outpat.VExam.ExamIEN"
* encounter -> "Outpat.VExam.VisitDateTime,Outpat.VExam.VisitIEN"
* interpretation -> "Outpat.VExam.AbnormalNormal"
* valueQuantity.unit -> "Dim.UCUMCode.DescriptionOfTheUnit"
* valueQuantity.code -> "Dim.UCUMCode.UCUMCode"
* note.text -> "Outpat.VExam.Comments"
* effectiveDateTime -> "Outpat.VExam.EventDateTime"
* performer -> "Outpat.VExam.EncounterProviderIEN"