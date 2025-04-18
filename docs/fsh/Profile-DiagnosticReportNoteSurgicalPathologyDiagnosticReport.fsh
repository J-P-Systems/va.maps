Profile: DiagnosticReportNoteSurgicalPathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note
Id: DiagnosticReportNoteSurgicalPathologyDiagnosticReport
Title: "Diagnostic Report Note: Surgical Pathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file SURGICAL PATHOLOGY (63.08) to us-core-diagnosticreport-note."
* ^status = #active
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-by 0..1 and va-at 0..1
* identifier.value and identifier.system and basedOn and code.text and code and code.coding.code and code.coding.system and status and category and subject and encounter and effectiveDateTime and issued and performer[va-by] and performer[va-at] and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* basedOn only Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest)
* subject only Reference(Patient)
* encounter only Reference(EncounterOutpatient)
* performer[va-by] only Reference(Practitioner)
* performer[va-at] only Reference(Organization)
* resultsInterpreter only Reference(Practitioner)
* specimen only Reference(DiagnosticReportNoteSurgicalPathologySpecimen)
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.53"
* code = http://loinc.org#27898-6 "Pathology studies (set)"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/DiagnosticReportLabStatus
* status ^binding.description = "see mapping [VF_DiagnosticReportLabStatus](ConceptMap-VF-DiagnosticReportLabStatus.html)"
* category = http://loinc.org#LP7839-6 "Pathology"

Mapping: source-to-DiagnosticReportNoteSurgicalPathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportNoteSurgicalPathologyDiagnosticReport
* identifier.value -> "1606: source value based on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (63.08-.35 > 63.53-.001)"
* identifier.system -> "1606-1: fixed value = http://va.gov/identifiers/$Sta3n/63.53" "generated from mapParameter line 1"
* basedOn -> "1691: reference based on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.08-.35 > 63.53-3)"
* code.text -> "1809: source value based on SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.08-.16 > 63.19-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1703."
* code -> "1810: fixed value = http://loinc.org#27898-6 \"Pathology studies (set)\""
* code.coding.code -> "1811: source value based on SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.08-.16 > 63.19-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)" "Made inactive but reactivated; after reviewing discussion with KBST from 4/25/2024 this should be included with the fixed value as it's the \"standardized title\" in TIU. See LEAF 90. Include if not null and include in addition to the fixed .code value."
* code.coding.system -> "1811-1: fixed value = http://loinc.org" "generated from mapParameter line 1"
* status -> "1417: terminologyMaps using VF_DiagnosticReportLabStatus on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (63.08-.35 > 63.53-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* category -> "2206: fixed value = http://loinc.org#LP7839-6 \"Pathology\""
* subject -> "2212: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)"
* encounter -> "2207: reference based on SURGICAL PATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # > ORDER - ORDER #  < TEST - PCE VISIT # (63.08-.35 > 63.53-3>100-.01<69.03-12)"
* effectiveDateTime -> "1425: source value based on SURGICAL PATHOLOGY - DATE/TIME SPECIMEN TAKEN (63.08-.01)"
* issued -> "1430: source value based on SURGICAL PATHOLOGY - DATE REPORT COMPLETED (63.08-.03)"
* performer[va-by] -> "1435: reference based on SURGICAL PATHOLOGY - RELEASED BY (63.08-.13)"
* performer[va-at] -> "1686: reference based on SURGICAL PATHOLOGY - RELEASING SITE (63.08-.345)"
* resultsInterpreter -> "1700: reference based on SURGICAL PATHOLOGY - PATHOLOGIST (63.08-.02)"
* specimen -> "1701: reference based on SURGICAL PATHOLOGY - SURGICAL PATH ACC # (63.08-.06)"
* media.link -> "1439: reference based on SURGICAL PATHOLOGY - IMAGE (63.08-2005)" "More information about the image may be available if stakeholders identify requirements."
* conclusion -> "1447: source value based on SURGICAL PATHOLOGY - SURGICAL PATH DIAGNOSIS (63.08-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1721: source value based on SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - SP > TIU REFERENCE DATE/TIME - SP - TIU ENTRY POINTER - SP > TIU DOCUMENT - REPORT TEXT (63.08-.16 > 63.19-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-DiagnosticReportNoteSurgicalPathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportNoteSurgicalPathologyDiagnosticReport
* basedOn -> "Pathology.SurgPathOrderedTest.CPRSOrderIEN,Pathology.SurgPathOrderedTest.CPRSOrderSID"
* status -> "Pathology.SurgPathOrderedTest.DispositionLabCodeIEN,Pathology.SurgPathOrderedTest.DispositionLabCodeSID"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"
* effectiveDateTime -> "Pathology.SurgicalPathology.SpecimenTakenDateTime,Pathology.SurgPathComment.SpecimenTakenDateTime,Pathology.SurgPathDelayedComment.SpecimenTakenDateTime,Pathology.SurgPathDiagnosis.SpecimenTakenDateTime,Pathology.SurgPathFrozenSection.SpecimenTakenDateTime,Pathology.SurgPathGrossDescription.SpecimenTakenDateTime,Pathology.SurgPathMicroscopicExam.SpecimenTakenDateTime,Pathology.SurgPathOpFindings.SpecimenTakenDateTime,Pathology.SurgPathOrderedTest.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueDisease.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueEtiology.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueFunction.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueMorphology.SpecimenTakenDateTime,Pathology.SurgPathOrganTissueProcedure.SpecimenTakenDateTime,Pathology.SurgPathPostOpDiagnosis.SpecimenTakenDateTime,Pathology.SurgPathPreOpDiagnosis.SpecimenTakenDateTime,Pathology.SurgPathSpecimen.SpecimenTakenDateTime,Pathology.SurgPathSupplement.SpecimenTakenDateTime,Pathology.SurgPathSupplementDescript.SpecimenTakenDateTime,Pathology.SurgPathTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.SurgicalPathology.ReportCompletedDateTime"
* performer[va-by] -> "Pathology.SurgicalPathology.ReleasedByStaffIEN"
* performer[va-at] -> "Pathology.SurgicalPathology.ReleasingInstitutionIEN"
* resultsInterpreter -> "Pathology.SurgicalPathology.PathologistStaffIEN"
* specimen -> "Pathology.SurgicalPathology.SurgicalPathologyShortAccessionNumber"

Mapping: sda-to-DiagnosticReportNoteSurgicalPathologyDiagnosticReport
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DiagnosticReportNoteSurgicalPathologyDiagnosticReport
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"