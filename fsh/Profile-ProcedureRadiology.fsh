Profile: ProcedureRadiology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureRadiology
Title: "Procedure: Radiology"
Description: "This StructureDefinition contains the maps for VistA file REGISTRED EXAMS (70.02) to us-core-procedure"
* ^status = #draft
* status and statusReason.text and category.text and code.coding and code.coding.system and code.coding.code and code.coding.display and subject and encounter and performedDateTime and performer.actor and location MS
* status from http://va.gov/fhir/ValueSet/VSVFRadiologyProcedureStatus
* code.coding.system = "http://www.ama-assn.org/go/cpt"

Mapping: vista-to-ProcedureRadiology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureRadiology
* status -> "1506: terminologyMaps using VF_RadiologyProcedureStatus on REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - EXAM STATUS > EXAMINATION STATUS - STATUS (70.02-50 > 70.03-3 > 72-.01)"
* statusReason.text -> "1507: source value from REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - REASON FOR CANCELLATION > RAD/NUC MED REASON - REASON (70.02-50 > 70.03-3.5 > 75.2-.01)"
* category.text -> "1508: source value from REGISTERED EXAMS - TYPE OF IMAGING > IMAGING TYPE - TYPE OF IMAGING (70.02-2 > 79.2-.01)"
* code.coding -> "1509: source value from REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT (70.02-50 > 70.03-2 > 71-9 > 81-)"
* code.coding.system -> "1509-1: fixed value = http://www.ama-assn.org/go/cpt" "from mapParameter 1"
* code.coding.code -> "1509-2: source value from REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT - CPT CODE (70.02-50 > 70.03-2 > 71-9 > 81-.01)" "from mapParameter 2"
* code.coding.display -> "1509-3: source value from REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT - SHORT NAME (70.02-50 > 70.03-2 > 71-9 > 81-2)" "from mapParameter 3"
* subject -> "1510: reference from RAD/NUC MED PATIENT - NAME (70-.01) case 70-2 > 70.02"
* encounter -> "1511: reference from REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - VISIT (70.02-50 > 70.03-27)"
* performedDateTime -> "1512: source value from REGISTERED EXAMS - EXAM DATE (70.02-.01)" "required if the status is 'completed' or 'in-progress'"
* performer.actor -> "1513: reference from REGISTRED EXAMS - EXAMINATIONS > EXAMINATIONS - PRIMARY INTERPRETING STAFF (70.02-50 > 70.03-15)"
* location -> "1514: reference from REGISTERED EXAMS - IMAGING LOCATION > IMAGING LOCATIONS - LOCATION (70.02-4 > 79.1-.01)"

Mapping: cdw-to-ProcedureRadiology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureRadiology
* category.text -> "Rad.RadiologyRegisteredExam.ImagingTypeIEN\nDim.ImagingType.ImagingType"
* subject -> "Patient.RadiologyPatient.PatientIEN,Rad.RadiologyExam.PatientIEN,Rad.RadiologyExamActivityLog.PatientIEN,Rad.RadiologyExamContrastMedia.PatientIEN,Rad.RadiologyExamCPTModifier.PatientIEN,Rad.RadiologyExamMedication.PatientIEN,Rad.RadiologyExamSecondaryDiagnosticCode.PatientIEN,Rad.RadiologyExamStatusList.PatientIEN,Rad.RadiologyFilmRegistry.PatientIEN,Rad.RadiologyRegisteredExam.PatientIEN"
* encounter -> "Rad.RadiologyExam.VisitIEN"
* performedDateTime -> "Rad.RadiologyExam.ExamDateTime,Rad.RadiologyExamActivityLog.ExamDateTime,Rad.RadiologyExamContrastMedia.ExamDateTime,Rad.RadiologyExamCPTModifier.ExamDateTime,Rad.RadiologyExamMedication.ExamDateTime,Rad.RadiologyExamSecondaryDiagnosticCode.ExamDateTime,Rad.RadiologyExamStatusList.ExamDateTime,Rad.RadiologyExamTechnologist.ExamDateTime,Rad.RadiologyRegisteredExam.ExamDateTime"
* performer.actor -> "Rad.RadiologyExam.PrimaryInterpretingStaffIEN"
* location -> "Rad.RadiologyRegisteredExam.RadiologyLocationIEN\nDim.RadiologyLocation.LocationIEN"