Profile: LabObservationElectronMicroscopyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationElectronMicroscopyDiagnosticReport
Title: "Lab Observation: Electron Microscopy DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file EM (63.02) to us-core-diagnosticreport-lab"
* ^status = #draft
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-by 0..1 and va-at 0..1
* status and effectiveDateTime and issued and performer[va-by] and media.link and conclusion and identifier.value and identifier.system and performer[va-at] and basedOn and resultsInterpreter and specimen and presentedForm.data and code.text and code and code.coding.code and code.coding.system and category[LaboratorySlice] and code.coding and code.coding.display and subject and result and category.text MS
* performer[va-by] only Reference(Practitioner)
* performer[va-at] only Reference(Organization)
* basedOn only Reference(http://hl7.org/fhir/StructureDefinition/ServiceRequest)
* resultsInterpreter only Reference(Practitioner)
* specimen only Reference(LabObservationElectronMicroscopySpecimen)
* subject only Reference(Patient)
* result only Reference(LabObservationObservation)
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.52"
* code = http://loinc.org#50668-3 "Microscopic observation in Specimen by Electron microscopy Narrative"
* code.coding.system = "http://loinc.org"
* category[LaboratorySlice] = http://terminology.hl7.org/CodeSystem/v2-0074#LAB
* code.coding.system = "http://loinc.org"

Mapping: source-to-LabObservationElectronMicroscopyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* status -> "1414: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (63.02-.35 > 63.52-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1422: source value from EM - DATE/TIME SPECIMEN TAKEN (63.02-.01)"
* issued -> "1427: source value from EM - DATE REPORT COMPLETED (63.02-.03)"
* performer[va-by] -> "1432: reference from EM - RELEASED BY (63.02-.13)"
* media.link -> "1438: reference from EM - IMAGE (63.02-2005)"
* conclusion -> "1441: source value from EM - EM DIAGNOSIS (63.02-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* identifier.value -> "1604: source value from EM - ORDERED TEST > ORDERED TEST - IEN (63.02-.35 > 63.52-.001)"
* identifier.system -> "1604-1: fixed value = http://va.gov/identifiers/$Sta3n/63.52" "from mapParameter 1"
* performer[va-at] -> "1685: reference from EM - RELEASING SITE (63.02-.345)"
* basedOn -> "1689: reference from EM - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.02-.35 > 63.52-3)"
* resultsInterpreter -> "1696: reference from EM - PATHOLOGIST (63.02-.02)"
* specimen -> "1697: reference from EM - EM ACC # (63.02-.06)"
* presentedForm.data -> "1720: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - REPORT TEXT (63.02-.16 > 63.49-1 > 8925-2)" "HDR may be used to get the report"
* code.text -> "1812: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1699."
* code -> "1813: fixed value = http://loinc.org#50668-3 Microscopic observation in Specimen by Electron microscopy Narrative"
* code.coding.code -> "1814: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"
* code.coding.system -> "1814-1: fixed value = http://loinc.org" "from mapParameter 1"
* category[LaboratorySlice] -> "1419: fixed value = http://terminology.hl7.org/CodeSystem/v2-0074#LAB"
* code.coding -> "1420: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC (60-64 > 64-25 > 95.3)" "Typically LOINC. \nChanged VistA mapping to support some coded values and add the lab test name (non-standardized)"
* code.coding.code -> "1420-1: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - CODE (60-64 > 64-25 > 95.3-.01)" "from mapParameter 1"
* code.coding.system -> "1420-2: fixed value = http://loinc.org" "from mapParameter 2"
* code.coding.display -> "1420-3: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - DEFAULT LOINC CODE > LAB LOINC - COMPONENT (60-64 > 64-25 > 95.3-1)" "from mapParameter 3"
* subject -> "1421: reference from PATIENT - LABORATORY REFERENCE > LAB DATA - LRDFN (2-63 > 63-.01)" "Pointer from PATIENT (2)"
* result -> "1437: reference from See mapping for Lab Observation"
* code.text -> "1661: source value from LABORATORY TEST - NAME (60-.01)" "Added the lab test name (non-standardized)"
* category.text -> "1662: source value from LABORATORY TEST - NATIONAL VA LAB CODE > WKLD CODE - WKLD CODE LAB SECTION > WKLD CODE LAB SECT - NAME (60-64 > 64-13 > 64.21-.01)" "Lab Section"

Mapping: cdw-to-LabObservationElectronMicroscopyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN,Pathology.EMOrderedTest.DispositionLabCodeSID"
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime,Pathology.EMComment.SpecimenTakenDateTime,Pathology.EMDelayedComment.SpecimenTakenDateTime,Pathology.EMDiagnosis.SpecimenTakenDateTime,Pathology.EMGrossDescription.SpecimenTakenDateTime,Pathology.EMMicroscopicExam.SpecimenTakenDateTime,Pathology.EMOperativeFinding.SpecimenTakenDateTime,Pathology.EMOrderedTest.SpecimenTakenDateTime,Pathology.EMOrganTissueDisease.SpecimenTakenDateTime,Pathology.EMOrganTissueEtiology.SpecimenTakenDateTime,Pathology.EMOrganTissueFunction.SpecimenTakenDateTime,Pathology.EMOrganTissueMorphology.SpecimenTakenDateTime,Pathology.EMOrganTissueProcedure.SpecimenTakenDateTime,Pathology.EMPostOpDiagnosis.SpecimenTakenDateTime,Pathology.EMPreOpDiagnosis.SpecimenTakenDateTime,Pathology.EMSpecimen.SpecimenTakenDateTime,Pathology.EMSpecimenEPON.SpecimenTakenDateTime,Pathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime,Pathology.EMSupplement.SpecimenTakenDateTime,Pathology.EMSupplementDescript.SpecimenTakenDateTime,Pathology.EMTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* performer[va-by] -> "Pathology.ElectronMicroscopy.ReleasedByStaffIEN,Pathology.ElectronMicroscopy.ReleasedByStaffSID"
* performer[va-at] -> "Pathology.ElectronMicroscopy.ReleasingInstitutionIEN,Pathology.ElectronMicroscopy.ReleasingInstitutionSID"
* basedOn -> "Pathology.EMOrderedTest.CPRSOrderIEN,Pathology.EMOrderedTest.CPRSOrderSID"
* resultsInterpreter -> "Pathology.ElectronMicroscopy.PathologistStaffIEN,Pathology.ElectronMicroscopy.PathologistStaffSID"
* specimen -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"
* code.coding -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.code -> "Dim.LabChemTest.NationalVALabCodeIEN"
* code.coding.display -> "Dim.LabChemTest.NationalVALabCodeIEN"
* subject -> "Micro.AntibioticSensitivity.LRDFN,Micro.AntibioticSensitivityComment.LRDFN,Micro.BacteriologyReports.LRDFN,Micro.MicroAntibioticLevel.LRDFN,Micro.MicroAudit.LRDFN,Micro.Microbiology.LRDFN,Micro.MicroOrderedTest.LRDFN,Micro.MicroSterilityResults.LRDFN,Micro.MycobacteriologyReports.LRDFN,Micro.Mycology.LRDFN,Micro.MycologyReports.LRDFN,Micro.Parasitology.LRDFN,Micro.ParasitologyReports.LRDFN,Micro.ParasitologyStage.LRDFN,Micro.Virology.LRDFN,Micro.VirologyReports.LRDFN,Pathology.Autopsy.LRDFN,Pathology.CytoOrganTissueFunction.StaffIEN,SStaff.SMicroOrderedTest.LRDFN"
* code.text -> "Dim.LabChemTest.LabChemTestName"
* category.text -> "Dim.LabChemTest.NationalVALabCodeIEN"