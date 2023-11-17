Profile: DiagnosticReportforLabCytopathologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabCytopathologyDiagnosticReport
Title: "Diagnostic Report for Lab: Cytopathology {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA CYTOPATHOLOGY (file 63.09) to FHIR DiagnosticReport"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)

Mapping: vista-to-DiagnosticReportforLabCytopathologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabCytopathologyDiagnosticReport
* identifier.value -> "1603: source value from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.09-.35 > 63.51-.001)"
* status -> "1418: terminologyMaps using VF_DiagnosticReportLabStatus on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.09-.35 > 63.51-10)" "US Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* code.text -> "1538: source value from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - LAB SECTION > LAB SECTION - NAME (#63.09-.35 > 63.09-9 > 62-6 > 62.2-.01)" "Use this map in addition to key 1521 to indicate the coded value of \"Laboratory report\" and include the type of report from VistA"
* effectiveDateTime -> "1426: source value from CYTOPATHOLOGY - DATE/TIME SPECIMEN TAKEN (#63.09-.01)"
* issued -> "1431: source value from CYTOPATHOLOGY - DATE REPORT COMPLETED (#63.09-.03)"
* performer -> "1436: reference from CYTOPATHOLOGY - RELEASED BY (#63.09-.13)"
* media.link -> "1440: reference from CYTOPATHOLOGY - CYTOPATHOLOGY DIAGNOSIS (#63.09-2005)"
* conclusion -> "1448: source value from CYTOPATHOLOGY - CYTOPATHOLOGY DIAGNOSIS (#63.09-1.4)" "Vista field is word processing so CodeableConcept cannot be used"

Mapping: cdw-to-DiagnosticReportforLabCytopathologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabCytopathologyDiagnosticReport
* status -> "Pathology.CytoOrderedTest.DispositionLabCodeIEN"
* effectiveDateTime -> "Pathology.CytoDelayedReportComment.SpecimenTakenDateTime\nPathology.CytoDiagnosis.SpecimenTakenDateTime\nPathology.CytoGrossDescription.SpecimenTakenDateTime\nPathology.CytoMicroscopicExam.SpecimenTakenDateTime\nPathology.CytoOpFinding.SpecimenTakenDateTime\nPathology.CytoOrderedTest.SpecimenTakenDateTime\nPathology.CytoOrganTissueDisease.SpecimenTakenDateTime\nPathology.CytoOrganTissueFunction.SpecimenTakenDateTime\nPathology.CytoOrganTissueProcedure.SpecimenTakenDateTime\nPathology.Cytopathology.SpecimenTakenDateTime\nPathology.CytoPostOpDiagnosis.SpecimenTakenDateTime\nPathology.CytoPreOpDiagnosis.SpecimenTakenDateTime\nPathology.CytoReportComment.SpecimenTakenDateTime\nPathology.CytoSpecimen.SpecimenTakenDateTime\nPathology.CytoStainBlock.SpecimenTakenDateTime\nPathology.CytoStainCytospin.SpecimenTakenDateTime\nPathology.CytoStainMembrane.SpecimenTakenDateTime\nPathology.CytoStainProcedure.SpecimenTakenDateTime\nPathology.CytoStainSlide.SpecimenTakenDateTime\nPathology.CytoSupplement.SpecimenTakenDateTime\nPathology.CytoSupplementDescript.SpecimenTakenDateTime\nPathology.CytoTIUReference.SpecimenTakenDateTime"
* issued -> "Pathology.Cytopathology.ReportCompletedDateTime"
* performer -> "Pathology.Cytopathology.ReleasedByStaffIEN"