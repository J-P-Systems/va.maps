Profile: DiagnosticReportNoteElectronMicroscopyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-note
Id: DiagnosticReportNoteElectronMicroscopyDiagnosticReport
Title: "Diagnostic Report Note: Electron Microscopy DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file EM (63.02) to us-core-diagnosticreport-note."
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
* specimen only Reference(DiagnosticReportNoteElectronMicroscopySpecimen)
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.52"
* code = http://loinc.org#50668-3 "Microscopic observation in Specimen by Electron microscopy Narrative"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/DiagnosticReportLabStatus
* status ^binding.description = "see mapping [VF_DiagnosticReportLabStatus](ConceptMap-VF-DiagnosticReportLabStatus.html)"
* category = http://loinc.org#LP7839-6 "Pathology"

Mapping: source-to-DiagnosticReportNoteElectronMicroscopyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportNoteElectronMicroscopyDiagnosticReport
* identifier.value -> "1604: source value based on EM - ORDERED TEST > ORDERED TEST - IEN (63.02-.35 > 63.52-.001)"
* identifier.system -> "1604-1: fixed value = http://va.gov/identifiers/$Sta3n/63.52" "generated from mapParameter line 1"
* basedOn -> "1689: reference based on EM - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.02-.35 > 63.52-3)"
* code.text -> "1812: source value based on EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1699."
* code -> "1813: fixed value = http://loinc.org#50668-3 \"Microscopic observation in Specimen by Electron microscopy Narrative\""
* code.coding.code -> "1814: source value based on EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)" "Made inactive but reactivated; after reviewing discussion with KBST from 4/25/2024 this should be included with the fixed value as it's the \"standardized title\" in TIU. See LEAF 90. Include if not null and include in addition to the fixed .code value."
* code.coding.system -> "1814-1: fixed value = http://loinc.org" "generated from mapParameter line 1"
* status -> "1414: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (63.02-.35 > 63.52-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* category -> "2208: fixed value = http://loinc.org#LP7839-6 \"Pathology\""
* subject -> "2213: reference based on PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)"
* encounter -> "2209: reference based on EM - ORDERED TEST > ORDERED TEST - CPRS ORDER # > ORDER - ORDER #  < TEST - PCE VISIT # (63.02-.35 > 63.53-3>100-.01<69.03-12)"
* effectiveDateTime -> "1422: source value based on EM - DATE/TIME SPECIMEN TAKEN (63.02-.01)"
* issued -> "1427: source value based on EM - DATE REPORT COMPLETED (63.02-.03)"
* performer[va-by] -> "1432: reference based on EM - RELEASED BY (63.02-.13)"
* performer[va-at] -> "1685: reference based on EM - RELEASING SITE (63.02-.345)"
* resultsInterpreter -> "1696: reference based on EM - PATHOLOGIST (63.02-.02)"
* specimen -> "1697: reference based on EM - EM ACC # (63.02-.06)"
* media.link -> "1438: reference based on EM - IMAGE (63.02-2005)" "More information about the image may be available if stakeholders identify requirements."
* conclusion -> "1441: source value based on EM - EM DIAGNOSIS (63.02-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1720: source value based on EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - REPORT TEXT (63.02-.16 > 63.49-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-DiagnosticReportNoteElectronMicroscopyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportNoteElectronMicroscopyDiagnosticReport
* basedOn -> "Pathology.EMOrderedTest.CPRSOrderIEN,Pathology.EMOrderedTest.CPRSOrderSID"
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN,Pathology.EMOrderedTest.DispositionLabCodeSID"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime,Pathology.EMComment.SpecimenTakenDateTime,Pathology.EMDelayedComment.SpecimenTakenDateTime,Pathology.EMDiagnosis.SpecimenTakenDateTime,Pathology.EMGrossDescription.SpecimenTakenDateTime,Pathology.EMMicroscopicExam.SpecimenTakenDateTime,Pathology.EMOperativeFinding.SpecimenTakenDateTime,Pathology.EMOrderedTest.SpecimenTakenDateTime,Pathology.EMOrganTissueDisease.SpecimenTakenDateTime,Pathology.EMOrganTissueEtiology.SpecimenTakenDateTime,Pathology.EMOrganTissueFunction.SpecimenTakenDateTime,Pathology.EMOrganTissueMorphology.SpecimenTakenDateTime,Pathology.EMOrganTissueProcedure.SpecimenTakenDateTime,Pathology.EMPostOpDiagnosis.SpecimenTakenDateTime,Pathology.EMPreOpDiagnosis.SpecimenTakenDateTime,Pathology.EMSpecimen.SpecimenTakenDateTime,Pathology.EMSpecimenEPON.SpecimenTakenDateTime,Pathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime,Pathology.EMSupplement.SpecimenTakenDateTime,Pathology.EMSupplementDescript.SpecimenTakenDateTime,Pathology.EMTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* performer[va-by] -> "Pathology.ElectronMicroscopy.ReleasedByStaffIEN,Pathology.ElectronMicroscopy.ReleasedByStaffSID"
* performer[va-at] -> "Pathology.ElectronMicroscopy.ReleasingInstitutionIEN,Pathology.ElectronMicroscopy.ReleasingInstitutionSID"
* resultsInterpreter -> "Pathology.ElectronMicroscopy.PathologistStaffIEN,Pathology.ElectronMicroscopy.PathologistStaffSID"
* specimen -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"

Mapping: sda-to-DiagnosticReportNoteElectronMicroscopyDiagnosticReport
Id: sda
Title: "Summary Document Architecure (SDA)"
Source: DiagnosticReportNoteElectronMicroscopyDiagnosticReport
* subject -> "Patient.Extension[PatientExtension].VeteranLrdfn"