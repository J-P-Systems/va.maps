Profile: LabObservationElectronMicroscopyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationElectronMicroscopyDiagnosticReport
Title: "Lab Observation: Electron Microscopy DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file EM (#63.02) to us-core-diagnosticreport-lab"
* ^status = #draft
* identifier.value and status and effectiveDateTime and issued and performer and result and media.link and conclusion MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* result only Reference(LabObservationElectronMicroscopyObservation)

Mapping: vista-to-LabObservationElectronMicroscopyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* identifier.value -> "1604: source value from EM - ORDERED TEST > ORDERED TEST - IEN (#63.02-.35 > 63.52-.001)"
* status -> "1414: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.02-.35 > 63.52-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1422: source value from EM - DATE/TIME SPECIMEN TAKEN (#63.02-.01)"
* issued -> "1427: source value from EM - DATE REPORT COMPLETED (#63.02-.03)"
* performer -> "1432: source value from ELECTRON MICROSCOPY - RELEASED BY (#63.02-.13)"
* result -> "++: reference"
* media.link -> "1438: reference from EM - IMAGE (#63.02-2005)"
* conclusion -> "1441: source value from EM - EM DIAGNOSIS (#63.02-1.4)" "Vista field is word processing so CodeableConcept cannot be used"

Mapping: cdw-to-LabObservationElectronMicroscopyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime\nPathology.EMComment.SpecimenTakenDateTime\nPathology.EMDelayedComment.SpecimenTakenDateTime\nPathology.EMDiagnosis.SpecimenTakenDateTime\nPathology.EMGrossDescription.SpecimenTakenDateTime\nPathology.EMMicroscopicExam.SpecimenTakenDateTime\nPathology.EMOperativeFinding.SpecimenTakenDateTime\nPathology.EMOrderedTest.SpecimenTakenDateTime\nPathology.EMOrganTissueDisease.SpecimenTakenDateTime\nPathology.EMOrganTissueFunction.SpecimenTakenDateTime\nPathology.EMOrganTissueProcedure.SpecimenTakenDateTime\nPathology.EMPostOpDiagnosis.SpecimenTakenDateTime\nPathology.EMPreOpDiagnosis.SpecimenTakenDateTime\nPathology.EMSpecimen.SpecimenTakenDateTime\nPathology.EMSpecimenEPON.SpecimenTakenDateTime\nPathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime\nPathology.EMSupplement.SpecimenTakenDateTime\nPathology.EMSupplementDescript.SpecimenTakenDateTime\nPathology.EMTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* performer -> "Pathology.ElectronMicroscopy.ReleasedByStaffIEN"