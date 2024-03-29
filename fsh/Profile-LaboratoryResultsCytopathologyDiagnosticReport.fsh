Profile: LaboratoryResultsCytopathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsCytopathologyDiagnosticReport
Title: "Laboratory Results: Cytopathology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file CYTOPATHOLOGY (#63.09) to us-core-diagnosticreport-lab"
* ^status = #draft
* identifier.value and basedOn and status and effectiveDateTime and issued and performer and resultsInterpreter and specimen and media.link and conclusion and presentedForm.data MS
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* specimen only Reference(LaboratoryResultsCytopathologySpecimen)

Mapping: vista-to-LaboratoryResultsCytopathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsCytopathologyDiagnosticReport
* identifier.value -> "1603: source value from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.09-.35 > 63.51-.001)"
* basedOn -> "1688: reference from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - CPRS ORDER # (#63.09-.35 > 63.51-3)"
* status -> "1418: terminologyMaps using VF_DiagnosticReportLabStatus on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.09-.35 > 63.51-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1426: source value from CYTOPATHOLOGY - DATE/TIME SPECIMEN TAKEN (#63.09-.01)"
* issued -> "1431: source value from CYTOPATHOLOGY - DATE REPORT COMPLETED (#63.09-.03)"
* performer -> "1436: reference from CYTOPATHOLOGY - RELEASED BY (#63.09-.13)"
* performer -> "1684: reference from CYTOPATHOLOGY - RELEASING SITE (#63.09-.345)"
* resultsInterpreter -> "1694: reference from CYTOPATHOLOGY - PATHOLOGIST/CYTOTECHNOLOGIST (#63.09-.02)"
* specimen -> "1692: reference from CYTOPATHOLOGY - CYTOPATH ACC # (#63.09-.06)"
* media.link -> "1440: reference from CYTOPATHOLOGY - CYTOPATHOLOGY DIAGNOSIS (#63.09-2005)"
* conclusion -> "1448: source value from CYTOPATHOLOGY - CYTOPATHOLOGY DIAGNOSIS (#63.09-1.4)" "Vista field is word processing so CodeableConcept cannot be used"
* presentedForm.data -> "1719: source value from CYTOPATHOLOGY - TIU REFERENCE DATE/TIME - CY > TIU REFERENCE DATE/TIME - CY - TIU ENTRY POINTER - CY > TIU DOCUMENT - REPORT TEXT (#63.09-.16 > 63.47-1 > 8925-2)" "HDR may be used to get the report"

Mapping: cdw-to-LaboratoryResultsCytopathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsCytopathologyDiagnosticReport
* basedOn -> "Pathology.CytoOrderedTest.CPRSOrderIEN"
* status -> "Pathology.CytoOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.CytoDelayedReportComment.SpecimenTakenDateTime,Pathology.CytoDiagnosis.SpecimenTakenDateTime,Pathology.CytoGrossDescription.SpecimenTakenDateTime,Pathology.CytoMicroscopicExam.SpecimenTakenDateTime,Pathology.CytoOpFinding.SpecimenTakenDateTime,Pathology.CytoOrderedTest.SpecimenTakenDateTime,Pathology.CytoOrganTissueDisease.SpecimenTakenDateTime,Pathology.CytoOrganTissueFunction.SpecimenTakenDateTime,Pathology.CytoOrganTissueProcedure.SpecimenTakenDateTime,Pathology.Cytopathology.SpecimenTakenDateTime,Pathology.CytoPostOpDiagnosis.SpecimenTakenDateTime,Pathology.CytoPreOpDiagnosis.SpecimenTakenDateTime,Pathology.CytoReportComment.SpecimenTakenDateTime,Pathology.CytoSpecimen.SpecimenTakenDateTime,Pathology.CytoStainBlock.SpecimenTakenDateTime,Pathology.CytoStainCytospin.SpecimenTakenDateTime,Pathology.CytoStainMembrane.SpecimenTakenDateTime,Pathology.CytoStainProcedure.SpecimenTakenDateTime,Pathology.CytoStainSlide.SpecimenTakenDateTime,Pathology.CytoSupplement.SpecimenTakenDateTime,Pathology.CytoSupplementDescript.SpecimenTakenDateTime,Pathology.CytoTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.Cytopathology.ReportCompletedDateTime"
* performer -> "Pathology.Cytopathology.ReleasedByStaffIEN"
* performer -> "Pathology.Cytopathology.ReleasingInstitutionIEN"
* resultsInterpreter -> "Pathology.Cytopathology.PathologistStaffIEN"
* specimen -> "Pathology.Cytopathology.CytopathAccessionNumber"