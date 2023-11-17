Profile: LabObservationSurgicalPathologyObservation
Parent: http://va.gov/fhir/StructureDefinition/LabObservationObservation
Id: LabObservationSurgicalPathologyObservation
Title: "Lab Observation: Surgical Pathology {Observation}"
Description: "This StructureDefinition contains the maps for VistA SURGICAL PATHOLOGY (file 63.08) to FHIR Observation"
* ^status = #draft
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* specimen only Reference(LabObservationSurgicalPathologySpecimen)
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LabObservationSurgicalPathologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathologyObservation
* effectiveDateTime -> "1451: source value from SURGICAL PATHOLOGY - DATE/TIME SPECIMEN TAKEN (#63.08-.01)"
* note -> "1461: source value from SURGICAL PATHOLOGY - COMMENT > COMMENT - COMMENT (#63.08-.99 > 63.98-.01)"
* performer -> "1465: reference from SURGICAL PATHOLOGY - RELEASING SITE (#63.08-.345)"
* specimen -> "++: reference from SURGICAL PATHOLOGY - SURGICAL PATH ACC # (#63.08-.06)"
* identifier.value -> "1477: source value from SURGICAL PATHOLOGY - IEN (#63.08-.001)"
* code -> "1481: source value from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.08-.35 > 63.53-13 > 60-100 > 60.01-95.03)"
* issued -> "1485: source value from SURGICAL PATHOLOGY - DATE REPORT COMPLETED (#63.08-.03)"
* status -> "1493: terminologyMaps using VF_DiagnosticReportLabStatus on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.08-.35 > 63.53-10)"
* valueString -> "1498: source value from SURGICAL PATHOLOGY - GROSS DESCRIPTION (#63.08-1)"
* valueString -> "1499: source value from SURGICAL PATHOLOGY - MICROSCOPIC DESCRIPTION (#63.08-1.1)"

Mapping: cdw-to-LabObservationSurgicalPathologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologyObservation
* effectiveDateTime -> "Pathology.SurgicalPathology.SpecimenTakenDateTime\nPathology.SurgPathComment.SpecimenTakenDateTime\nPathology.SurgPathDelayedComment.SpecimenTakenDateTime\nPathology.SurgPathDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathFrozenSection.SpecimenTakenDateTime\nPathology.SurgPathGrossDescription.SpecimenTakenDateTime\nPathology.SurgPathMicroscopicExam.SpecimenTakenDateTime\nPathology.SurgPathOpFindings.SpecimenTakenDateTime\nPathology.SurgPathOrderedTest.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueDisease.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueFunction.SpecimenTakenDateTime\nPathology.SurgPathOrganTissueProcedure.SpecimenTakenDateTime\nPathology.SurgPathPostOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathPreOpDiagnosis.SpecimenTakenDateTime\nPathology.SurgPathSpecimen.SpecimenTakenDateTime\nPathology.SurgPathSupplement.SpecimenTakenDateTime\nPathology.SurgPathSupplementDescript.SpecimenTakenDateTime\nPathology.SurgPathTIUReference.SpecimenTakenDateTime"
* note -> "Pathology.SurgPathComment.SurgicalPathologyComment"
* performer -> "Pathology.SurgicalPathology.ReleasingInstitutionIEN"
* issued -> "Pathology.SurgicalPathology.ReportCompletedDateTime"
* status -> "Pathology.SurgPathOrderedTest.DispositionLabCodeIEN"