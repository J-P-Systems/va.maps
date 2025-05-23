Profile: ProcedureRadiology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureRadiology
Title: "Procedure: Radiology"
Description: "This StructureDefinition contains the maps for VistA file REGISTERED EXAMS (70.02) to us-core-procedure."
* ^status = #active
* status and statusReason.text and category.text and code.coding and code.coding.system and code.coding.code and code.coding.display and subject and encounter and performedDateTime and performer.actor and location MS
* subject only Reference(Patient)
* encounter only Reference(EncounterOutpatient)
* performer.actor only Reference(Practitioner)
* location only Reference(Location)
* status from http://va.gov/fhir/ValueSet/RadiologyProcedureStatus
* status ^binding.description = "see mapping [VF_RadiologyProcedureStatus](ConceptMap-VF-RadiologyProcedureStatus.html)"
* code.coding.system = "http://www.ama-assn.org/go/cpt"
* subject obeys pr-18-1510

Invariant: pr-18-1510
Description: "If 70-2 > 70.02 then reference /Patient based on (70-.01)"
Severity: #warning
Expression: "true"
* extension[http://hl7.org/fhir/StructureDefinition/elementdefinition-bestpractice].valueBoolean = true

Mapping: source-to-ProcedureRadiology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureRadiology
* status -> "1506: terminologyMaps using VF_RadiologyProcedureStatus on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - EXAM STATUS > EXAMINATION STATUS - STATUS (70.02-50 > 70.03-3 > 72-.01)"
* statusReason.text -> "1507: source value based on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - REASON FOR CANCELLATION > RAD/NUC MED REASON - REASON (70.02-50 > 70.03-3.5 > 75.2-.01)"
* category.text -> "1508: source value based on REGISTERED EXAMS - TYPE OF IMAGING > IMAGING TYPE - TYPE OF IMAGING (70.02-2 > 79.2-.01)"
* code.coding -> "1509: source value based on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT (70.02-50 > 70.03-2 > 71-9 > 81-)"
* code.coding.system -> "1509-1: fixed value = http://www.ama-assn.org/go/cpt" "generated from mapParameter line 1"
* code.coding.code -> "1509-2: source value based on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT - CPT CODE (70.02-50 > 70.03-2 > 71-9 > 81-.01)" "generated from mapParameter line 2"
* code.coding.display -> "1509-3: source value based on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT - SHORT NAME (70.02-50 > 70.03-2 > 71-9 > 81-2)" "generated from mapParameter line 3"
* subject -> "1510: reference based on RAD/NUC MED PATIENT - NAME (70-.01) if 70-2 > 70.02"
* encounter -> "1511: reference based on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - VISIT (70.02-50 > 70.03-27)"
* performedDateTime -> "1512: source value based on REGISTERED EXAMS - EXAM DATE (70.02-.01)" "required if the status is 'completed' or 'in-progress'"
* performer.actor -> "1513: reference based on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PRIMARY INTERPRETING STAFF (70.02-50 > 70.03-15)"
* location -> "1514: reference based on REGISTERED EXAMS - IMAGING LOCATION > IMAGING LOCATIONS - LOCATION (70.02-4 > 79.1-.01)"

Mapping: cdw-to-ProcedureRadiology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureRadiology
* category.text -> "Rad.RadiologyRegisteredExam.ImagingTypeIEN\nDim.ImagingType.ImagingType"
* subject -> "Patient.RadiologyPatient.PatientIEN\nRad.RadiologyExam.PatientIEN\nRad.RadiologyExamActivityLog.PatientIEN\nRad.RadiologyExamContrastMedia.PatientIEN\nRad.RadiologyExamCPTModifier.PatientIEN\nRad.RadiologyExamMedication.PatientIEN\nRad.RadiologyExamSecondaryDiagnosticCode.PatientIEN\nRad.RadiologyExamStatusList.PatientIEN\nRad.RadiologyFilmRegistry.PatientIEN\nRad.RadiologyRegisteredExam.PatientIEN"
* encounter -> "Rad.RadiologyExam.VisitIEN"
* performedDateTime -> "Rad.RadiologyExam.ExamDateTime\nRad.RadiologyExamActivityLog.ExamDateTime\nRad.RadiologyExamContrastMedia.ExamDateTime\nRad.RadiologyExamCPTModifier.ExamDateTime\nRad.RadiologyExamMedication.ExamDateTime\nRad.RadiologyExamSecondaryDiagnosticCode.ExamDateTime\nRad.RadiologyExamStatusList.ExamDateTime\nRad.RadiologyExamTechnologist.ExamDateTime\nRad.RadiologyRegisteredExam.ExamDateTime"
* performer.actor -> "Rad.RadiologyExam.PrimaryInterpretingStaffIEN"
* location -> "Rad.RadiologyRegisteredExam.RadiologyLocationIEN\nDim.RadiologyLocation.LocationIEN"

Mapping: sda-to-ProcedureRadiology
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: ProcedureRadiology
* performedDateTime -> "RadOrder.Result.FromTime"
* location -> "RadOrder.Result.EnteredAt\nRadOrder.Result.PerformedAt"