Profile: ProcedureRadiology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureRadiology
Title: "Procedure: Radiology"
Description: "This StructureDefinition contains the maps for VistA file REGISTERED EXAMS (70.02) to us-core-procedure"
* ^status = #draft
* encounter and code.coding and code.coding.system and code.coding.code and code.coding.display and status and performer.actor and statusReason.text and subject and category.text and performedDateTime and location MS
* performer.actor only Reference(Practitioner)
* subject only Reference(Patient)
* code.coding.system = "http://www.ama-assn.org/go/cpt"
* status from http://va.gov/fhir/ValueSet/VSVFRadiologyProcedureStatus

Mapping: vista-to-ProcedureRadiology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureRadiology
* encounter -> "1511: reference from REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - VISIT (70.02-50 > 70.03-27)"
* code.coding -> "1509: source value from REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT (70.02-50 > 70.03-2 > 71-9 > 81-)"
* code.coding.system -> "1509-1: fixed value = http://www.ama-assn.org/go/cpt" "from mapParameter 1"
* code.coding.code -> "1509-2: source value from REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT - CPT CODE (70.02-50 > 70.03-2 > 71-9 > 81-.01)" "from mapParameter 2"
* code.coding.display -> "1509-3: source value from REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT - SHORT NAME (70.02-50 > 70.03-2 > 71-9 > 81-2)" "from mapParameter 3"
* status -> "1506: terminologyMaps using VF_RadiologyProcedureStatus on REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - EXAM STATUS > EXAMINATION STATUS - STATUS (70.02-50 > 70.03-3 > 72-.01)"
* performer.actor -> "1513: reference from REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - PRIMARY INTERPRETING STAFF (70.02-50 > 70.03-15)"
* statusReason.text -> "1507: source value from REGISTERED EXAMS - EXAMINATIONS > EXAMINATIONS - REASON FOR CANCELLATION > RAD/NUC MED REASON - REASON (70.02-50 > 70.03-3.5 > 75.2-.01)"
* subject -> "1510: reference from RAD/NUC MED PATIENT - NAME (70-.01) case 70-2 > 70.02"
* category.text -> "1508: source value from REGISTERED EXAMS - TYPE OF IMAGING > IMAGING TYPE - TYPE OF IMAGING (70.02-2 > 79.2-.01)"
* performedDateTime -> "1512: source value from REGISTERED EXAMS - EXAM DATE (70.02-.01)" "required if the status is 'completed' or 'in-progress'"
* location -> "1514: reference from REGISTERED EXAMS - IMAGING LOCATION > IMAGING LOCATIONS - LOCATION (70.02-4 > 79.1-.01)"

Mapping: cdw-to-ProcedureRadiology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureRadiology
* encounter -> "Rad.RadiologyExam.VisitIEN"
* performer.actor -> "Rad.RadiologyExam.PrimaryInterpretingStaffIEN"
* subject -> "Patient.RadiologyPatient.PatientIEN,Rad.RadiologyExam.PatientIEN,Rad.RadiologyExamActivityLog.PatientIEN,Rad.RadiologyExamContrastMedia.PatientIEN,Rad.RadiologyExamCPTModifier.PatientIEN,Rad.RadiologyExamMedication.PatientIEN,Rad.RadiologyExamSecondaryDiagnosticCode.PatientIEN,Rad.RadiologyExamStatusList.PatientIEN,Rad.RadiologyFilmRegistry.PatientIEN,Rad.RadiologyRegisteredExam.PatientIEN"
* category.text -> "Rad.RadiologyRegisteredExam.ImagingTypeIEN\nDim.ImagingType.ImagingType"
* performedDateTime -> "Rad.RadiologyExam.ExamDateTime,Rad.RadiologyExamActivityLog.ExamDateTime,Rad.RadiologyExamContrastMedia.ExamDateTime,Rad.RadiologyExamCPTModifier.ExamDateTime,Rad.RadiologyExamMedication.ExamDateTime,Rad.RadiologyExamSecondaryDiagnosticCode.ExamDateTime,Rad.RadiologyExamStatusList.ExamDateTime,Rad.RadiologyExamTechnologist.ExamDateTime,Rad.RadiologyRegisteredExam.ExamDateTime"
* location -> "Rad.RadiologyRegisteredExam.RadiologyLocationIEN\nDim.RadiologyLocation.LocationIEN"