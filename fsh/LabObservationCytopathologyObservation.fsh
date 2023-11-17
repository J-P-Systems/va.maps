Profile: LabObservationCytopathologyObservation
Parent: http://va.gov/fhir/StructureDefinition/LabObservationObservation
Id: LabObservationCytopathologyObservation
Title: "Lab Observation: Cytopathology {Observation}"
Description: "This StructureDefinition contains the maps for VistA CYTOPATHOLOGY (file 63.09) to FHIR Observation"
* ^status = #draft
* performer only Reference(http://hl7.org/fhir/StructureDefinition/Organization)
* specimen only Reference(LabObservationCytopathologySpecimen)
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus

Mapping: vista-to-LabObservationCytopathologyObservation
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationCytopathologyObservation
* effectiveDateTime -> "1452: source value from CYTOPATHOLOGY - DATE/TIME SPECIMEN TAKEN (#63.09-.01)"
* note -> "1462: source value from CYTOPATHOLOGY - COMMENT > COMMENT - COMMENT (#63.09-.99 > 63.908-.01)"
* performer -> "1466: reference from CYTOPATHOLOGY - RELEASING SITE (#63.09-.345)"
* specimen -> "+: reference from CYTOPATHOLOGY - CYTOPATH ACC # (#63.09-.06)"
* identifier.value -> "1478: source value from CYTOPATHOLOGY - IEN (#63.09-.001)"
* code -> "1482: source value from CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - LAB TEST ORDERED > LABORATORY TEST - SITE/SPECIMEN > SITE/SPECIMEN - LOINC CODE (#63.09-.35 > 63.51-13 > 60-100 > 60.01-95.03)"
* issued -> "1486: source value from CYTOPATHOLOGY - DATE REPORT COMPLETED (#63.09-.03)"
* status -> "1494: terminologyMaps using VF_DiagnosticReportLabStatus on CYTOPATHOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.09-.35 > 63.51-10)"
* valueString -> "1500: source value from CYTOPATHOLOGY - GROSS DESCRIPTION (#63.09-1)"
* valueString -> "1501: source value from CYTOPATHOLOGY - MICROSCOPIC EXAMINATION (#63.09-1.1)"

Mapping: cdw-to-LabObservationCytopathologyObservation
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationCytopathologyObservation
* effectiveDateTime -> "Pathology.CytoDelayedReportComment.SpecimenTakenDateTime\nPathology.CytoDiagnosis.SpecimenTakenDateTime\nPathology.CytoGrossDescription.SpecimenTakenDateTime\nPathology.CytoMicroscopicExam.SpecimenTakenDateTime\nPathology.CytoOpFinding.SpecimenTakenDateTime\nPathology.CytoOrderedTest.SpecimenTakenDateTime\nPathology.CytoOrganTissueDisease.SpecimenTakenDateTime\nPathology.CytoOrganTissueFunction.SpecimenTakenDateTime\nPathology.CytoOrganTissueProcedure.SpecimenTakenDateTime\nPathology.Cytopathology.SpecimenTakenDateTime\nPathology.CytoPostOpDiagnosis.SpecimenTakenDateTime\nPathology.CytoPreOpDiagnosis.SpecimenTakenDateTime\nPathology.CytoReportComment.SpecimenTakenDateTime\nPathology.CytoSpecimen.SpecimenTakenDateTime\nPathology.CytoStainBlock.SpecimenTakenDateTime\nPathology.CytoStainCytospin.SpecimenTakenDateTime\nPathology.CytoStainMembrane.SpecimenTakenDateTime\nPathology.CytoStainProcedure.SpecimenTakenDateTime\nPathology.CytoStainSlide.SpecimenTakenDateTime\nPathology.CytoSupplement.SpecimenTakenDateTime\nPathology.CytoSupplementDescript.SpecimenTakenDateTime\nPathology.CytoTIUReference.SpecimenTakenDateTime"
* note -> "Pathology.CytoReportComment.CytopathologyComment"
* performer -> "Pathology.Cytopathology.ReleasingInstitutionIEN"
* issued -> "Pathology.Cytopathology.ReportCompletedDateTime"
* status -> "Pathology.CytoOrderedTest.DispositionLabCodeIEN"