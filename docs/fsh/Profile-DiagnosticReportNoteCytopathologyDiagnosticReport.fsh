Profile: DiagnosticReportNoteCytopathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note
Id: DiagnosticReportNoteCytopathologyDiagnosticReport
Title: "Diagnostic Report Note: Cytopathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (63.09) to us-core-diagnosticreport-note."
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
* specimen only Reference(DiagnosticReportNoteCytopathologySpecimen)
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.51"
* code = http://loinc.org#26438-2 "Cytology studies (set)"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/DiagnosticReportLabStatus
* status ^binding.description = "see mapping [VF_DiagnosticReportLabStatus](ConceptMap-VF-DiagnosticReportLabStatus.html)"
* category = http://loinc.org#LP7839-6 "Pathology"

Mapping: source-to-DiagnosticReportNoteCytopathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportNoteCytopathologyDiagnosticReport
* identifier.value -> "1603: source value based on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (63.09-.35 > 63.51-.001)"
* identifier.system -> "1603-1: fixed value = http://va.gov/identifiers/$Sta3n/63.51" "generated from mapParameter line 1"
* basedOn -> "1688: reference based on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.09-.35 > 63.51-3)"
* code.text -> "1815: source value based on CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.09-.16 > 63.47-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1695."
* code -> "1816: fixed value = http://loinc.org#26438-2 \"Cytology studies (set)\""
* code.coding.code -> "1817: source value based on CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.09-.16 > 63.47-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)" "Made inactive but reactivated; after reviewing discussion with KBST from 4/25/2024 this should be included with the fixed value as it's the \"standardized title\" in TIU. See LEAF 90. Include if not null and include in addition to the fixed .code value."
* code.coding.system -> "1817-1: fixed value = http://loinc.org" "generated from mapParameter line 1"
* status -> "1418: terminologyMaps using VF_DiagnosticReportLabStatus on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (63.09-.35 > 63.51-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* category -> "2210: fixed value = http://loinc.org#LP7839-6 \"Pathology\""
* subject -> "2214: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)"
* encounter -> "2211: reference based on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # > ORDER - ORDER #  < TEST - PCE VISIT # (63.09-.35 > 63.53-3>100-.01<69.03-12)"
* effectiveDateTime -> "1426: source value based on CYTOPATHOLOGY - DATE/TIME SPECIMEN TAKEN (63.09-.01)"
* issued -> "1431: source value based on CYTOPATHOLOGY - DATE REPORT COMPLETED (63.09-.03)"
* performer[va-by] -> "1436: reference based on CYTOPATHOLOGY - RELEASED BY (63.09-.13)"
* performer[va-at] -> "1684: reference based on CYTOPATHOLOGY - RELEASING SITE (63.09-.345)"
* resultsInterpreter -> "1694: reference based on CYTOPATHOLOGY - PATHOLOGIST/CYTOTECHNOLOGIST (63.09-.02)"
* specimen -> "1692: reference based on CYTOPATHOLOGY - CYTOPATH ACC # (63.09-.06)"
* media.link -> "1440: reference based on CYTOPATHOLOGY - IMAGE (63.09-2005)" "More information about the image may be available if stakeholders identify requirements."
* conclusion -> "1448: source value based on CYTOPATHOLOGY - CYTOPATHOLOGY DIAGNOSIS (63.09-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1719: source value based on CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - REPORT TEXT (63.09-.16 > 63.47-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-DiagnosticReportNoteCytopathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportNoteCytopathologyDiagnosticReport
* basedOn -> "Pathology.CytoOrderedTest.CPRSOrderIEN,Pathology.CytoOrderedTest.CPRSOrderSID"
* status -> "Pathology.CytoOrderedTest.DispositionLabCodeIEN,Pathology.CytoOrderedTest.DispositionLabCodeSID"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"
* effectiveDateTime -> "Pathology.CytoDelayedReportComment.SpecimenTakenDateTime,Pathology.CytoDiagnosis.SpecimenTakenDateTime,Pathology.CytoGrossDescription.SpecimenTakenDateTime,Pathology.CytoMicroscopicExam.SpecimenTakenDateTime,Pathology.CytoOpFinding.SpecimenTakenDateTime,Pathology.CytoOrderedTest.SpecimenTakenDateTime,Pathology.CytoOrganTissueDisease.SpecimenTakenDateTime,Pathology.CytoOrganTissueEtiology.SpecimenTakenDateTime,Pathology.CytoOrganTissueFunction.SpecimenTakenDateTime,Pathology.CytoOrganTissueMorphology.SpecimenTakenDateTime,Pathology.CytoOrganTissueProcedure.SpecimenTakenDateTime,Pathology.Cytopathology.SpecimenTakenDateTime,Pathology.CytoPostOpDiagnosis.SpecimenTakenDateTime,Pathology.CytoPreOpDiagnosis.SpecimenTakenDateTime,Pathology.CytoReportComment.SpecimenTakenDateTime,Pathology.CytoSpecimen.SpecimenTakenDateTime,Pathology.CytoStainBlock.SpecimenTakenDateTime,Pathology.CytoStainCytospin.SpecimenTakenDateTime,Pathology.CytoStainMembrane.SpecimenTakenDateTime,Pathology.CytoStainProcedure.SpecimenTakenDateTime,Pathology.CytoStainSlide.SpecimenTakenDateTime,Pathology.CytoSupplement.SpecimenTakenDateTime,Pathology.CytoSupplementDescript.SpecimenTakenDateTime,Pathology.CytoTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.Cytopathology.ReportCompletedDateTime"
* performer[va-by] -> "Pathology.Cytopathology.ReleasedByStaffIEN,Pathology.Cytopathology.ReleasedByStaffSID"
* performer[va-at] -> "Pathology.Cytopathology.ReleasingInstitutionIEN,Pathology.Cytopathology.ReleasingInstitutionSID"
* resultsInterpreter -> "Pathology.Cytopathology.PathologistStaffIEN,Pathology.Cytopathology.PathologistStaffSID"
* specimen -> "Pathology.Cytopathology.CytopathAccessionNumber"

Mapping: sda-to-DiagnosticReportNoteCytopathologyDiagnosticReport
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DiagnosticReportNoteCytopathologyDiagnosticReport
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"
* issued -> "Documents.ToTime"
* performer[va-by] -> "Documents.Extension[DocumentExtension].CareProviders"
* resultsInterpreter -> "Documents.Clinician,Documents.EnteredBy"