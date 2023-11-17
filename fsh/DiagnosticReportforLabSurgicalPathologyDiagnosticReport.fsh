Profile: DiagnosticReportforLabSurgicalPathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabSurgicalPathologyDiagnosticReport
Title: "Diagnostic Report for Lab: Surgical Pathology {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA SURGICAL PATHOLOGY (file 63.08) to FHIR DiagnosticReport"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)

Mapping: vista-to-DiagnosticReportforLabSurgicalPathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabSurgicalPathologyDiagnosticReport
* identifier.value -> "1606: source value from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.08-.35 > 63.53-.001)"
* status -> "1417: terminologyMaps using VF_DiagnosticReportLabStatus on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.08-.35 > 63.53-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* code.text -> "1537: source value from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - LAB SECTION > LAB SECTION - NAME (#63.08-.35 > 63.08-9 > 62-6 > 62.2-.01)" "Use this map in addition to key 1521 to indicate the coded value of \"Laboratory report\" and include the type of report from VistA"
* effectiveDateTime -> "1425: source value from SURGICAL PATHOLOGY- DATE/TIME SPECIMEN TAKEN (#63.08-.01)"
* issued -> "1430: source value from SURGICAL PATHOLOGY - DATE REPORT COMPLETED (#63.08-.03)"
* performer -> "1435: reference from SURGICAL PATHOLOGY - RELEASED BY (#63.08-.13)"
* media.link -> "1439: reference from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (#63.08-2005)"
* conclusion -> "1447: source value from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (#63.08-1.4)" "Vista field is word processing so CodeableConcept cannot be used"

Mapping: cdw-to-DiagnosticReportforLabSurgicalPathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabSurgicalPathologyDiagnosticReport
* status -> "Pathology.SurgPathOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.SurgicalPathology.SpecimenTakenDateTime\nPathology.SurgPathComment.SpecimenTakenDateTime\nPathology.SurgPathDelayedComment.SpecimenTakenDateTime\nPathology.SurgPathDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathFrozenSection.SpecimenTakenDateTime\nPathology.SurgPathGrossDescription.SpecimenTakenDateTime\nPathology.SurgPathMicroscopicExam.SpecimenTakenDateTime\nPathology.SurgPathOpFindings.SpecimenTakenDateTime\nPathology.SurgPathOrderedTest.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueDisease.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueFunction.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueProcedure.SpecimenTakenDateTime\nPathology.SurgPathPostOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathPreOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathSpecimen.SpecimenTakenDateTime\nPathology.SurgPathSupplement.SpecimenTakenDateTime\nPathology.SurgPathSupplementDescript.SpecimenTakenDateTime\nPathology.SurgPathTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.SurgicalPathology.ReportCompletedDateTime"
* performer -> "Pathology.SurgicalPathology.ReleasedByStaffIEN"