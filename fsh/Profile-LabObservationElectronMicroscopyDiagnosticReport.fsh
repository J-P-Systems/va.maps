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
* identifier.value and identifier.system and code.text and code and code.coding.code and code.coding.system and status and effectiveDateTime and issued and performer[va-by] and performer[va-at] and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.52"
* code = http://loinc.org#50668-3 "Microscopic observation in Specimen by Electron microscopy Narrative"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer[va-by] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* performer[va-at] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* specimen only Reference(LabObservationElectronMicroscopySpecimen)

Mapping: vista-to-LabObservationElectronMicroscopyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* identifier.value -> "1604: source value from EM - ORDERED TEST > ORDERED TEST - IEN (63.02-.35 > 63.52-.001)"
* identifier.system -> "1604-1: fixed value = http://va.gov/identifiers/$Sta3n/63.52" "from mapParameter 1"
* code.text -> "1812: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1699."
* code -> "1813: fixed value = http://loinc.org#50668-3 Microscopic observation in Specimen by Electron microscopy Narrative"
* code.coding.code -> "1814: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.02-.16 > 63.49-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"
* code.coding.system -> "1814-1: fixed value = http://loinc.org" "from mapParameter 1"
* status -> "1414: terminologyMaps using VF_DiagnosticReportLabStatus on EM - ORDERED TEST > ORDERED TEST - DISPOSITION (63.02-.35 > 63.52-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1422: source value from EM - DATE/TIME SPECIMEN TAKEN (63.02-.01)"
* issued -> "1427: source value from EM - DATE REPORT COMPLETED (63.02-.03)"
* performer[va-by] -> "1432: reference from EM - RELEASED BY (63.02-.13)"
* performer[va-at] -> "1685: reference from EM - RELEASING SITE (63.02-.345)"
* resultsInterpreter -> "1696: reference from EM - PATHOLOGIST (63.02-.02)"
* specimen -> "1697: reference from EM - EM ACC # (63.02-.06)"
* media.link -> "1438: reference from EM - IMAGE (63.02-2005)"
* conclusion -> "1441: source value from EM - EM DIAGNOSIS (63.02-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1720: source value from EM - TIU REFERENCE DATE/TIME - EM > TIU REFERENCE DATE/TIME - EM - TIU ENTRY POINTER - EM > TIU DOCUMENT - REPORT TEXT (63.02-.16 > 63.49-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-LabObservationElectronMicroscopyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationElectronMicroscopyDiagnosticReport
* status -> "Pathology.EMOrderedTest.DispositionLabCodeIEN,Pathology.EMOrderedTest.DispositionLabCodeSID"
* effectiveDateTime -> "Pathology.ElectronMicroscopy.SpecimenTakenDateTime,Pathology.EMComment.SpecimenTakenDateTime,Pathology.EMDelayedComment.SpecimenTakenDateTime,Pathology.EMDiagnosis.SpecimenTakenDateTime,Pathology.EMGrossDescription.SpecimenTakenDateTime,Pathology.EMMicroscopicExam.SpecimenTakenDateTime,Pathology.EMOperativeFinding.SpecimenTakenDateTime,Pathology.EMOrderedTest.SpecimenTakenDateTime,Pathology.EMOrganTissueDisease.SpecimenTakenDateTime,Pathology.EMOrganTissueEtiology.SpecimenTakenDateTime,Pathology.EMOrganTissueFunction.SpecimenTakenDateTime,Pathology.EMOrganTissueMorphology.SpecimenTakenDateTime,Pathology.EMOrganTissueProcedure.SpecimenTakenDateTime,Pathology.EMPostOpDiagnosis.SpecimenTakenDateTime,Pathology.EMPreOpDiagnosis.SpecimenTakenDateTime,Pathology.EMSpecimen.SpecimenTakenDateTime,Pathology.EMSpecimenEPON.SpecimenTakenDateTime,Pathology.EMSpecimenEPONProcedure.SpecimenTakenDateTime,Pathology.EMSupplement.SpecimenTakenDateTime,Pathology.EMSupplementDescript.SpecimenTakenDateTime,Pathology.EMTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.ElectronMicroscopy.ReportCompleteDateTime"
* performer[va-by] -> "Pathology.ElectronMicroscopy.ReleasedByStaffIEN,Pathology.ElectronMicroscopy.ReleasedByStaffSID"
* performer[va-at] -> "Pathology.ElectronMicroscopy.ReleasingInstitutionIEN,Pathology.ElectronMicroscopy.ReleasingInstitutionSID"
* resultsInterpreter -> "Pathology.ElectronMicroscopy.PathologistStaffIEN,Pathology.ElectronMicroscopy.PathologistStaffSID"
* specimen -> "Pathology.ElectronMicroscopy.ElectronMicroscopyAccession"