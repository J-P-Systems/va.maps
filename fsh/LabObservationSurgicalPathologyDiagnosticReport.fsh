Profile: LabObservationSurgicalPathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationSurgicalPathologyDiagnosticReport
Title: "Lab Observation: Surgical Pathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (#63.08) to us-core-diagnosticreport-lab"
* ^status = #draft
* identifier.value and status and effectiveDateTime and issued and performer and result and media.link and conclusion MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* result only Reference(LabObservationSurgicalPathologyObservation)

Mapping: vista-to-LabObservationSurgicalPathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathologyDiagnosticReport
* identifier.value -> "1606: source value from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.08-.35 > 63.53-.001)"
* status -> "1417: terminologyMaps using VF_DiagnosticReportLabStatus on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.08-.35 > 63.53-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1425: source value from SURGICAL PATHOLOGY- DATE/TIME SPECIMEN TAKEN (#63.08-.01)"
* issued -> "1430: source value from SURGICAL PATHOLOGY - DATE REPORT COMPLETED (#63.08-.03)"
* performer -> "1435: reference from SURGICAL PATHOLOGY - RELEASED BY (#63.08-.13)"
* result -> "++: reference"
* media.link -> "1439: reference from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (#63.08-2005)"
* conclusion -> "1447: source value from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (#63.08-1.4)" "Vista field is word processing so CodeableConcept cannot be used"

Mapping: cdw-to-LabObservationSurgicalPathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologyDiagnosticReport
* status -> "Pathology.SurgPathOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.SurgicalPathology.SpecimenTakenDateTime\nPathology.SurgPathComment.SpecimenTakenDateTime\nPathology.SurgPathDelayedComment.SpecimenTakenDateTime\nPathology.SurgPathDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathFrozenSection.SpecimenTakenDateTime\nPathology.SurgPathGrossDescription.SpecimenTakenDateTime\nPathology.SurgPathMicroscopicExam.SpecimenTakenDateTime\nPathology.SurgPathOpFindings.SpecimenTakenDateTime\nPathology.SurgPathOrderedTest.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueDisease.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueFunction.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueProcedure.SpecimenTakenDateTime\nPathology.SurgPathPostOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathPreOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathSpecimen.SpecimenTakenDateTime\nPathology.SurgPathSupplement.SpecimenTakenDateTime\nPathology.SurgPathSupplementDescript.SpecimenTakenDateTime\nPathology.SurgPathTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.SurgicalPathology.ReportCompletedDateTime"
* performer -> "Pathology.SurgicalPathology.ReleasedByStaffIEN"