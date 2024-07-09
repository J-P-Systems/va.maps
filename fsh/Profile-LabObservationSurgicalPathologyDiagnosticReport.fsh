Profile: LabObservationSurgicalPathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationSurgicalPathologyDiagnosticReport
Title: "Lab Observation: Surgical Pathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (63.08) to us-core-diagnosticreport-lab"
* ^status = #draft
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-by 0..1 and va-at 0..1
* identifier.value and identifier.system and basedOn and code.text and code and code.coding.code and code.coding.system and status and effectiveDateTime and issued and performer[va-by] and performer[va-at] and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.53"
* code = http://loinc.org#27898-6 "Pathology studies (set)"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer[va-by] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* performer[va-at] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* specimen only Reference(LabObservationSurgicalPathologySpecimen)

Mapping: vista-to-LabObservationSurgicalPathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationSurgicalPathologyDiagnosticReport
* identifier.value -> "1606: source value from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (63.08-.35 > 63.53-.001)"
* identifier.system -> "1606-1: fixed value = http://va.gov/identifiers/$Sta3n/63.53" "from mapParameter 1"
* basedOn -> "1691: reference from SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.08-.35 > 63.53-3)"
* code.text -> "1809: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.08-.16 > 63.19-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1703."
* code -> "1810: fixed value = http://loinc.org#27898-6 Pathology studies (set)"
* code.coding.code -> "1811: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.08-.16 > 63.19-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"
* code.coding.system -> "1811-1: fixed value = http://loinc.org" "from mapParameter 1"
* status -> "1417: terminologyMaps using VF_DiagnosticReportLabStatus on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (63.08-.35 > 63.53-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1425: source value from SURGICAL PATHOLOGY - DATE/TIME SPECIMEN TAKEN (63.08-.01)"
* issued -> "1430: source value from SURGICAL PATHOLOGY - DATE REPORT COMPLETED (63.08-.03)"
* performer[va-by] -> "1435: reference from SURGICAL PATHOLOGY - RELEASED BY (63.08-.13)"
* performer[va-at] -> "1686: reference from SURGICAL PATHOLOGY - RELEASING SITE (63.08-.345)"
* resultsInterpreter -> "1700: reference from SURGICAL PATHOLOGY - PATHOLOGIST (63.08-.02)"
* specimen -> "1701: reference from SURGICAL PATHOLOGY - SURGICAL PATH ACC # (63.08-.06)"
* media.link -> "1439: reference from SURGICAL PATHOLOGY - IMAGE (63.08-2005)"
* conclusion -> "1447: source value from SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (63.08-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1721: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > REPORT TEXT (63.08-.16 > 63.19-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-LabObservationSurgicalPathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationSurgicalPathologyDiagnosticReport
* basedOn -> "Pathology.SurgPathOrderedTest.CPRSOrderIEN,Pathology.SurgPathOrderedTest.CPRSOrderSID"
* status -> "Pathology.SurgPathOrderedTest.DispositionLabCodeIEN,Pathology.SurgPathOrderedTest.DispositionLabCodeSID"
* effectiveDateTime -> "Pathology.SurgicalPathology.SpecimenTakenDateTime,Pathology.SurgPathComment.SpecimenTakenDateTime,Pathology.SurgPathDelayedComment.SpecimenTakenDateTime,Pathology.SurgPathDiagnosis.SpecimenTakenDateTime,Pathology.SurgPathFrozenSection.SpecimenTakenDateTime,Pathology.SurgPathGrossDescription.SpecimenTakenDateTime,Pathology.SurgPathMicroscopicExam.SpecimenTakenDateTime,Pathology.SurgPathOpFindings.SpecimenTakenDateTime,Pathology.SurgPathOrderedTest.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueDisease.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueEtiology.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueFunction.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueMorphology.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueProcedure.SpecimenTakenDateTime,Pathology.SurgPathPostOpDiagnosis.SpecimenTakenDateTime,Pathology.SurgPathPreOpDiagnosis.SpecimenTakenDateTime,Pathology.SurgPathSpecimen.SpecimenTakenDateTime,Pathology.SurgPathSupplement.SpecimenTakenDateTime,Pathology.SurgPathSupplementDescript.SpecimenTakenDateTime,Pathology.SurgPathTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.SurgicalPathology.ReportCompletedDateTime"
* performer[va-by] -> "Pathology.SurgicalPathology.ReleasedByStaffIEN"
* performer[va-at] -> "Pathology.SurgicalPathology.ReleasingInstitutionIEN"
* resultsInterpreter -> "Pathology.SurgicalPathology.PathologistStaffIEN"
* specimen -> "Pathology.SurgicalPathology.SurgicalPathologyShortAccessionNumber"