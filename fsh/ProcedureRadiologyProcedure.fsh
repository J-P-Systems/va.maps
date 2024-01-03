Profile: ProcedureRadiologyProcedure
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Id: ProcedureRadiologyProcedure
Title: "Procedure: Radiology {Procedure}"
Description: "This StructureDefinition contains the maps for VistA file EXAMINATIONS (#70.03) to us-core-procedure"
* ^status = #draft
* performer.actor only Reference(http://hl7.org/fhir/StructureDefinition/Practitioner)

Mapping: vista-to-ProcedureRadiologyProcedure
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: ProcedureRadiologyProcedure
* status -> "1506: source value from EXAMINATIONS - EXAM STATUS > EXAMINATION STATUS - STATUS (#70.03-3 > 72-.01)"
* statusReason.text -> "1507: source value from EXAMINATIONS - REASON FOR CANCELLATION > RAD/NUC MED REASON - REASON (#70.03-3.5 > 75.2-.01)"
* category.text -> "1508: source value from REGISTERED EXAMS - TYPE OF IMAGING > IMAGING TYPE - TYPE OF IMAGING (#70.02-2 > 79.2-.01)"
* code.coding -> "1509: source value from EXAMINATIONS - PROCEDURE > RAD/NUC MED PROCEDURES - CPT CODE > CPT (#70.03-2 > 71-9 > 81-)"
* subject -> "1510: reference from RAD/NUC MED PATIENT - NAME (#70-.01)"
* encounter -> "1511: reference from EXAMINATIONS - VISIT (#70.03-27)"
* performedDateTime -> "1512: source value from REGISTERED EXAMS - EXAM DATE (#70.02-.01)" "required if the status is 'completed' or 'in-progress'"
* performer.actor -> "1513: reference from EXAMINATIONS - PRIMARY INTERPRETING STAFF (#70.03-15)"
* location -> "1514: reference from REGISTERED EXAMS - IMAGING LOCATION > IMAGING LOCATIONS - LOCATION (#70.02-4 > 79.1-.01)"

Mapping: cdw-to-ProcedureRadiologyProcedure
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: ProcedureRadiologyProcedure
* status -> "Dim.RadiologyExamStatus.RadiologyExamStatus"
* statusReason.text -> "Dim.RadiologyHoldCancelReason.RadiologyHoldCancelReason"
* category.text -> "Dim.ImagingType.ImagingType"
* performedDateTime -> "Rad.RadiologyExam.ExamDateTime\nRad.RadiologyExamActivityLog.ExamDateTime\nRad.RadiologyExamContrastMedia.ExamDateTime\nRad.RadiologyExamCPTModifier.ExamDateTime\nRad.RadiologyExamMedication.ExamDateTime\nRad.RadiologyExamSecondaryDiagnosticCode.ExamDateTime\nRad.RadiologyExamStatusList.ExamDateTime\nRad.RadiologyExamTechnologist.ExamDateTime\nRad.RadiologyRegisteredExam.ExamDateTime"