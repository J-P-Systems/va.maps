Profile: LaboratoryResultsSurgicalPathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsSurgicalPathologyDiagnosticReport
Title: "Laboratory Results: Surgical Pathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (#63.08) to us-core-diagnosticreport-lab"
* ^status = #draft
* identifier.value and basedOn and status and effectiveDateTime and issued and performer and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* specimen only Reference(LaboratoryResultsSurgicalPathologySpecimen)

Mapping: vista-to-LaboratoryResultsSurgicalPathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsSurgicalPathologyDiagnosticReport
* identifier.value -> "1606: source value from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.08-.35 > 63.53-.001)"
* basedOn -> "1691: reference from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (#63.08-.35 > 63.53-3)"
* status -> "1417: terminologyMaps using VF_DiagnosticReportLabStatus on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.08-.35 > 63.53-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1425: source value from SURGICAL PATHOLOGY- DATE/TIME SPECIMEN TAKEN (#63.08-.01)"
* issued -> "1430: source value from SURGICAL PATHOLOGY - DATE REPORT COMPLETED (#63.08-.03)"
* performer -> "1435: reference from SURGICAL PATHOLOGY - RELEASED BY (#63.08-.13)"
* performer -> "1686: reference from SURGICAL PATHOLOGY - RELEASING SITE (#63.08-.345)"
* resultsInterpreter -> "1700: reference from SURGICAL PATHOLOGY - PATHOLOGIST (#63.08-.02)"
* specimen -> "1701: reference from SURGICAL PATHOLOGY - SURGICAL PATH ACC # (#63.08-.06)"
* media.link -> "1439: reference from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (#63.08-2005)"
* conclusion -> "1447: source value from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (#63.08-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1721: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > REPORT TEXT (#63.08-.16 > 63.19-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-LaboratoryResultsSurgicalPathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsSurgicalPathologyDiagnosticReport
* basedOn -> "Pathology.SurgPathOrderedTest.CPRSOrderIEN"
* status -> "Pathology.SurgPathOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.SurgicalPathology.SpecimenTakenDateTime\nPathology.SurgPathComment.SpecimenTakenDateTime\nPathology.SurgPathDelayedComment.SpecimenTakenDateTime\nPathology.SurgPathDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathFrozenSection.SpecimenTakenDateTime\nPathology.SurgPathGrossDescription.SpecimenTakenDateTime\nPathology.SurgPathMicroscopicExam.SpecimenTakenDateTime\nPathology.SurgPathOpFindings.SpecimenTakenDateTime\nPathology.SurgPathOrderedTest.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueDisease.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueFunction.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueProcedure.SpecimenTakenDateTime\nPathology.SurgPathPostOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathPreOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathSpecimen.SpecimenTakenDateTime\nPathology.SurgPathSupplement.SpecimenTakenDateTime\nPathology.SurgPathSupplementDescript.SpecimenTakenDateTime\nPathology.SurgPathTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.SurgicalPathology.ReportCompletedDateTime"
* performer -> "Pathology.SurgicalPathology.ReleasedByStaffIEN"
* performer -> "Pathology.SurgicalPathology.ReleasingInstitutionIEN"
* resultsInterpreter -> "Pathology.SurgicalPathology.PathologistStaffIEN"
* specimen -> "Pathology.SurgicalPathology.SurgicalPathologyShortAccessionNumber"