Profile: LabObservationElectronMicroscopyObservation
Parent: http://va.gov/fhir/StructureDefinition/LabObservationObservation
Id: LabObservationElectronMicroscopyObservation
Title: "Lab Observation: Electron Microscopy {Observation}"
Description: "This StructureDefinition contains the maps for VistA file EM (#63.02) to LabObservationObservation"
* ^status = #draft
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* specimen only Reference(LabObservationElectronMicroscopySpecimen)
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LabObservationElectronMicroscopyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopyObservation
* effectiveDateTime -> "1449: source value from EM - DATE/TIME SPECIMEN TAKEN (#63.02-.01)"
* note -> "1453: source value from EM - COMMENT > COMMENT - COMMENT (#63.02-.99 > 63.208-.01)"
* performer -> "1463: reference from EM - RELEASING SITE (#63.02-.345)"
* specimen -> "1658: reference from EM - EM ACC # (#63.02-.06)"
* identifier.value -> "1475: source value from EM - IEN (#63.02-.001)"
* code -> "1479: source value from EM - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.02-.35 > 63.52-13--> 60-100--> 60.01-95.03)"
* issued -> "1483: source value from EM - DATE REPORT COMPLETED (#63.02-.03)"
* status -> "1487: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.02-.35 > 63.52-10)"
* valueString -> "1495: source value from EM - GROSS DESCRIPTION (#63.02-1)"
* valueString -> "1496: source value from EM - MICROSCOPIC EXAMINATION (#63.02-1.1)"

Mapping: cdw-to-LabObservationElectronMicroscopyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopyObservation
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime\nPathology.EMComment.SpecimenTakenDateTime\nPathology.EMDelayedComment.SpecimenTakenDateTime\nPathology.EMDiagnosis.SpecimenTakenDateTime\nPathology.EMGrossDescription.SpecimenTakenDateTime\nPathology.EMMicroscopicExam.SpecimenTakenDateTime\nPathology.EMOperativeFinding.SpecimenTakenDateTime\nPathology.EMOrderedTest.SpecimenTakenDateTime\nPathology.EMOrganTissueDisease.SpecimenTakenDateTime\nPathology.EMOrganTissueFunction.SpecimenTakenDateTime\nPathology.EMOrganTissueProcedure.SpecimenTakenDateTime\nPathology.EMPostOpDiagnosis.SpecimenTakenDateTime\nPathology.EMPreOpDiagnosis.SpecimenTakenDateTime\nPathology.EMSpecimen.SpecimenTakenDateTime\nPathology.EMSpecimenEPON.SpecimenTakenDateTime\nPathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime\nPathology.EMSupplement.SpecimenTakenDateTime\nPathology.EMSupplementDescript.SpecimenTakenDateTime\nPathology.EMTIUReference.SpecimenTakenDateTime"
* note -> "Pathology.EMComment.ElectronicMicroscopyComment"
* performer -> "Pathology.ElectronMicroscopy.ReleasingInstitutionIEN"
* specimen -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN"