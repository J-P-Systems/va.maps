Profile: LabObservationMicrobiologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyDiagnosticReport
Title: "Lab Observation: Microbiology {DiagnosticReport}"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
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
* code.text -> "1536: source value from MICROBIOLOGY - ORDERED TEST > ORDERED TEST - COLLECTION SAMPLE > COLLECTION SAMPLE - LAB SECTION > LAB SECTION - NAME (#63.05-.35 > 63.5-9 > 62-6 > 62.2-.01)" "Use this map in addition to key 1521 to indicate the coded value of \"Laboratory report\" and include the type of report from VistA"
* effectiveDateTime -> "1424: source value from MICROBIOLOGY - DATE/TIME SPECIMEN TAKEN (#63.05-.01)"
* issued -> "1429: source value from MICROBIOLOGY - DATE REPORT COMPLETED (#63.05-.03)"
* performer -> "1434: reference from MICROBIOLOGY - VERIFY PERSON (#63.05-.04)" "US Core Practitioner is must support resource"
* result -> "++: reference from null (#null)"

Mapping: cdw-to-LabObservationMicrobiologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyDiagnosticReport
* effectiveDateTime -> "Micro.AntibioticSensitivity.SpecimenTakenDateTime\nMicro.AntibioticSensitivityComment.SpecimenTakenDateTime\nMicro.BacteriologyReports.SpecimenTakenDateTime\nMicro.MicroAntibioticLevel.SpecimenTakenDateTime\nMicro.MicroAudit.SpecimenTakenDateTime\nMicro.Microbiology.SpecimenTakenDateTime\nMicro.MicroOrderedTest.SpecimenTakenDateTime\nMicro.MicroSterilityResults.SpecimenTakenDateTime\nMicro.MycobacteriologyReports.SpecimenTakenDateTime\nMicro.Mycology.SpecimenTakenDateTime\nMicro.MycologyReports.SpecimenTakenDateTime\nMicro.Parasitology.SpecimenTakenDateTime\nMicro.ParasitologyReports.SpecimenTakenDateTime\nMicro.ParasitologyStage.SpecimenTakenDateTime\nSStaff.SMicroOrderedTest.SpecimenTakenDateTime\nMicro.Virology.SpecimenTakenDateTime\nMicro.VirologyReports.SpecimenTakenDateTime"
* issued -> "Micro.Microbiology.ReportCompletedDateTime"