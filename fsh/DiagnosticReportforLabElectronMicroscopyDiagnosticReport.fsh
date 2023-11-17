Profile: DiagnosticReportforLabElectronMicroscopyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabElectronMicroscopyDiagnosticReport
Title: "Diagnostic Report for Lab: Electron Microscopy {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA EM (file 63.02) to FHIR DiagnosticReport"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-DiagnosticReportforLabElectronMicroscopyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabElectronMicroscopyDiagnosticReport
* identifier.value -> "1604: source value from EM - ORDERED TEST > ORDERED TEST - IEN (#63.02-.35 > 63.52-.001)"
* status -> "1414: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.02-.35 > 63.52-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* code.text -> "1534: source value from EM - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - LAB SECTION > LAB SECTION - NAME (#63.02-.35 > 63.52-9 > 62-6 > 62.2-.01)" "Use this map in addition to key 1521 to indicate the coded value of \"Laboratory report\" and include the type of report from VistA"
* effectiveDateTime -> "1422: source value from EM - DATE/TIME SPECIMEN TAKEN (#63.02-.01)"
* issued -> "1427: source value from EM - DATE REPORT COMPLETED (#63.02-.03)"
* performer -> "1432: source value from ELECTRON MICROSCOPY - RELEASED BY (#63.02-.13)"
* media.link -> "1438: reference from EM - IMAGE (#63.02-2005)"
* conclusion -> "1441: source value from EM - EM DIAGNOSIS (#63.02-1.4)" "Vista field is word processing so CodeableConcept cannot be used"

Mapping: cdw-to-DiagnosticReportforLabElectronMicroscopyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabElectronMicroscopyDiagnosticReport
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime\nPathology.EMComment.SpecimenTakenDateTime\nPathology.EMDelayedComment.SpecimenTakenDateTime\nPathology.EMDiagnosis.SpecimenTakenDateTime\nPathology.EMGrossDescription.SpecimenTakenDateTime\nPathology.EMMicroscopicExam.SpecimenTakenDateTime\nPathology.EMOperativeFinding.SpecimenTakenDateTime\nPathology.EMOrderedTest.SpecimenTakenDateTime\nPathology.EMOrganTissueDisease.SpecimenTakenDateTime\nPathology.EMOrganTissueFunction.SpecimenTakenDateTime\nPathology.EMOrganTissueProcedure.SpecimenTakenDateTime\nPathology.EMPostOpDiagnosis.SpecimenTakenDateTime\nPathology.EMPreOpDiagnosis.SpecimenTakenDateTime\nPathology.EMSpecimen.SpecimenTakenDateTime\nPathology.EMSpecimenEPON.SpecimenTakenDateTime\nPathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime\nPathology.EMSupplement.SpecimenTakenDateTime\nPathology.EMSupplementDescript.SpecimenTakenDateTime\nPathology.EMTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* performer -> "Pathology.ElectronMicroscopy.ReleasedByStaffIEN"