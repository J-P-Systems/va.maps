Profile: LabObservationElectronMicroscopyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationElectronMicroscopyDiagnosticReport
Title: "Lab Observation: Electron Microscopy DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file EM (#63.02) to us-core-diagnosticreport-lab"
* ^status = #draft
* identifier.value and basedOn and status and effectiveDateTime and issued and performer and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* specimen only Reference(LabObservationElectronMicroscopySpecimen)

Mapping: vista-to-LabObservationElectronMicroscopyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* identifier.value -> "1604: source value from EM - ORDERED TEST > ORDERED TEST - IEN (#63.02-.35 > 63.52-.001)"
* basedOn -> "1689: reference from EM - ORDERED TEST > ORDERED TEST - CPRS ORDER # (#63.02-.35 > 63.52-3)"
* status -> "1414: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.02-.35 > 63.52-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1422: source value from EM - DATE/TIME SPECIMEN TAKEN (#63.02-.01)"
* issued -> "1427: source value from EM - DATE REPORT COMPLETED (#63.02-.03)"
* performer -> "1432: reference from ELECTRON MICROSCOPY - RELEASED BY (#63.02-.13)"
* performer -> "1685: reference from ELECTRON MICROSCOPY - RELEASING SITE (#63.02-.345)"
* resultsInterpreter -> "1696: reference from EM - PATHOLOGIST (#63.02-.02)"
* specimen -> "1697: reference from EM - EM ACC # (#63.02-.06)"
* media.link -> "1438: reference from EM - IMAGE (#63.02-2005)"
* conclusion -> "1441: source value from EM - EM DIAGNOSIS (#63.02-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1720: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > REPORT TEXT (#63.02-.16 > 63.49-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-LabObservationElectronMicroscopyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* basedOn -> "Pathology.EMOrderedTest.CPRSOrderIEN"
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime\nPathology.EMComment.SpecimenTakenDateTime\nPathology.EMDelayedComment.SpecimenTakenDateTime\nPathology.EMDiagnosis.SpecimenTakenDateTime\nPathology.EMGrossDescription.SpecimenTakenDateTime\nPathology.EMMicroscopicExam.SpecimenTakenDateTime\nPathology.EMOperativeFinding.SpecimenTakenDateTime\nPathology.EMOrderedTest.SpecimenTakenDateTime\nPathology.EMOrganTissueDisease.SpecimenTakenDateTime\nPathology.EMOrganTissueFunction.SpecimenTakenDateTime\nPathology.EMOrganTissueProcedure.SpecimenTakenDateTime\nPathology.EMPostOpDiagnosis.SpecimenTakenDateTime\nPathology.EMPreOpDiagnosis.SpecimenTakenDateTime\nPathology.EMSpecimen.SpecimenTakenDateTime\nPathology.EMSpecimenEPON.SpecimenTakenDateTime\nPathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime\nPathology.EMSupplement.SpecimenTakenDateTime\nPathology.EMSupplementDescript.SpecimenTakenDateTime\nPathology.EMTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* performer -> "Pathology.ElectronMicroscopy.ReleasedByStaffIEN"
* performer -> "Pathology.ElectronMicroscopy.ReleasingInstitutionIEN"
* resultsInterpreter -> "Pathology.ElectronMicroscopy.PathologistStaffIEN"
* specimen -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"