Profile: LabObservationCytopathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationCytopathologyDiagnosticReport
Title: "Lab Observation: Cytopathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (63.09) to us-core-diagnosticreport-lab"
* ^status = #draft
* performer ^slicing.discriminator.type = #pattern
* performer ^slicing.discriminator.path = "$this"
* performer ^slicing.rules = #open
* performer contains va-by 0..1 and va-at 0..1
* identifier.value and identifier.system and basedOn and code.text and code and code.coding.code and code.coding.system and status and effectiveDateTime and issued and performer[va-by] and performer[va-at] and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* identifier.system = "http://va.gov/identifiers/$Sta3n/63.51"
* code = http://loinc.org#26438-2 "Cytology studies (set)"
* code.coding.system = "http://loinc.org"
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer[va-by] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* performer[va-at] only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization)
* specimen only Reference(LabObservationCytopathologySpecimen)

Mapping: vista-to-LabObservationCytopathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationCytopathologyDiagnosticReport
* identifier.value -> "1603: source value from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (63.09-.35 > 63.51-.001)"
* identifier.system -> "1603-1: fixed value = http://va.gov/identifiers/$Sta3n/63.51" "from mapParameter 1"
* basedOn -> "1688: reference from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (63.09-.35 > 63.51-3)"
* code.text -> "1815: source value from CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - NAME (63.09-.16 > 63.47-1 > 8925-.01 > 8925.1-.01)" "Per KBS discussion, this value should be Local Title + Specimen.type.text. The local title is this map row; Specimen.type.text is key 1695."
* code -> "1816: fixed value = http://loinc.org#26438-2 Cytology studies (set)"
* code.coding.code -> "1817: source value from SURGICAL PATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - DOCUMENT TYPE > TIU DOCUMENT DEFINITION - VHA ENTERPRISE STANDARD TITLE > TIU VHA ENTERPRISE STANDARD TITLE - CODING SYSTEM > CODING SYSTEM - CODE > CODE - CODE (63.09-.16 > 63.47-1 > 8925-.01 > 8925.1-1501 > 8926.1-2 > 8926.12-.02 > 8926.121-.01)"
* code.coding.system -> "1817-1: fixed value = http://loinc.org" "from mapParameter 1"
* status -> "1418: terminologyMaps using VF_DiagnosticReportLabStatus on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (63.09-.35 > 63.51-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1426: source value from CYTOPATHOLOGY - DATE/TIME SPECIMEN TAKEN (63.09-.01)"
* issued -> "1431: source value from CYTOPATHOLOGY - DATE REPORT COMPLETED (63.09-.03)"
* performer[va-by] -> "1436: reference from CYTOPATHOLOGY - RELEASED BY (63.09-.13)"
* performer[va-at] -> "1684: reference from CYTOPATHOLOGY - RELEASING SITE (63.09-.345)"
* resultsInterpreter -> "1694: reference from CYTOPATHOLOGY - PATHOLOGIST/CYTOTECHNOLOGIST (63.09-.02)"
* specimen -> "1692: reference from CYTOPATHOLOGY - CYTOPATH ACC # (63.09-.06)"
* media.link -> "1440: reference from CYTOPATHOLOGY - IMAGE (63.09-2005)"
* conclusion -> "1448: source value from CYTOPATHOLOGY - CYTOPATHOLOGY DIAGNOSIS (63.09-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1719: source value from CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - REPORT TEXT (63.09-.16 > 63.47-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-LabObservationCytopathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationCytopathologyDiagnosticReport
* basedOn -> "Pathology.CytoOrderedTest.CPRSOrderIEN,Pathology.CytoOrderedTest.CPRSOrderSID"
* status -> "Pathology.CytoOrderedTest.DispositionLabCodeIEN,Pathology.CytoOrderedTest.DispositionLabCodeSID"
* effectiveDateTime -> "Pathology.CytoDelayedReportComment.SpecimenTakenDateTime,Pathology.CytoDiagnosis.SpecimenTakenDateTime,Pathology.CytoGrossDescription.SpecimenTakenDateTime,Pathology.CytoMicroscopicExam.SpecimenTakenDateTime,Pathology.CytoOpFinding.SpecimenTakenDateTime,Pathology.CytoOrderedTest.SpecimenTakenDateTime,Pathology.CytoOrganTissueDisease.SpecimenTakenDateTime,Pathology.CytoOrganTissueEtiology.SpecimenTakenDateTime,Pathology.CytoOrganTissueFunction.SpecimenTakenDateTime,Pathology.CytoOrganTissueMorphology.SpecimenTakenDateTime,Pathology.CytoOrganTissueProcedure.SpecimenTakenDateTime,Pathology.Cytopathology.SpecimenTakenDateTime,Pathology.CytoPostOpDiagnosis.SpecimenTakenDateTime,Pathology.CytoPreOpDiagnosis.SpecimenTakenDateTime,Pathology.CytoReportComment.SpecimenTakenDateTime,Pathology.CytoSpecimen.SpecimenTakenDateTime,Pathology.CytoStainBlock.SpecimenTakenDateTime,Pathology.CytoStainCytospin.SpecimenTakenDateTime,Pathology.CytoStainMembrane.SpecimenTakenDateTime,Pathology.CytoStainProcedure.SpecimenTakenDateTime,Pathology.CytoStainSlide.SpecimenTakenDateTime,Pathology.CytoSupplement.SpecimenTakenDateTime,Pathology.CytoSupplementDescript.SpecimenTakenDateTime,Pathology.CytoTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.Cytopathology.ReportCompletedDateTime"
* performer[va-by] -> "Pathology.Cytopathology.ReleasedByStaffIEN,Pathology.Cytopathology.ReleasedByStaffSID"
* performer[va-at] -> "Pathology.Cytopathology.ReleasingInstitutionIEN,Pathology.Cytopathology.ReleasingInstitutionSID"
* resultsInterpreter -> "Pathology.Cytopathology.PathologistStaffIEN,Pathology.Cytopathology.PathologistStaffSID"
* specimen -> "Pathology.Cytopathology.CytopathAccessionNumber"