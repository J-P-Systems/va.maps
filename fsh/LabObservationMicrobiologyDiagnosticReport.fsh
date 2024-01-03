Profile: LabObservationMicrobiologyDiagnosticReport
Parent: http://va.gov/fhir/StructureDefinition/LabObservationDiagnosticReport
Id: LabObservationMicrobiologyDiagnosticReport
Title: "Lab Observation: Microbiology {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to LabObservationDiagnosticReport"
* ^status = #draft
* status from http://va.gov/fhir/ValueSet/VSVFDiagnosticReportLabStatus
* performer only Reference(http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner)
* result only Reference(LabObservationMicrobiologyObservation)

Mapping: vista-to-LabObservationMicrobiologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyDiagnosticReport
* identifier.value -> "1605: source value from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - IEN (#63.05-.35 > 63.5-.001)"
* status -> "1416: terminologyMaps using VF_DiagnosticReportLabStatus on MICROBIOLOGY - ORDERED TEST > ORDERED TEST - DISPOSITION (#63.05-.35 > 63.5-10)" "disposition based on HL7 Table 0123 status codes\n\nUS Core 5 has new constraints: if status is partial, preliminary, final, ammended, corrected or appended effective[x] and issued are required"
* effectiveDateTime -> "1424: source value from MICROBIOLOGY - DATE/TIME SPECIMEN TAKEN (#63.05-.01)"
* issued -> "1429: source value from MICROBIOLOGY - DATE REPORT COMPLETED (#63.05-.03)"
* performer -> "1434: reference from MICROBIOLOGY - VERIFY PERSON (#63.05-.04)" "US Core Practitioner is must support resource"
* result -> "++: reference"

Mapping: cdw-to-LabObservationMicrobiologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyDiagnosticReport
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime\nMicro.AntibioticSensitivityComment.SpecimenTakenDateTime\nMicro.BacteriologyReports.SpecimenTakenDateTime\nMicro.MicroAntibioticLevel.SpecimenTakenDateTime\nMicro.MicroAudit.SpecimenTakenDateTime\nMicro.Microbiology.SpecimenTakenDateTime\nMicro.MicroOrderedTest.SpecimenTakenDateTime\nMicro.MicroSterilityResults.SpecimenTakenDateTime\nMicro.MycobacteriologyReports.SpecimenTakenDateTime\nMicro.Mycology.SpecimenTakenDateTime\nMicro.MycologyReports.SpecimenTakenDateTime\nMicro.Parasitology.SpecimenTakenDateTime\nMicro.ParasitologyReports.SpecimenTakenDateTime\nMicro.ParasitologyStage.SpecimenTakenDateTime\nSStaff.SMicroOrderedTest.SpecimenTakenDateTime\nMicro.Virology.SpecimenTakenDateTime\nMicro.VirologyReports.SpecimenTakenDateTime"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"