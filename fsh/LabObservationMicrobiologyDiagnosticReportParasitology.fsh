Profile: LabObservationMicrobiologyDiagnosticReportParasitology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyDiagnosticReportParasitology
Title: "Lab Observation: Microbiology {DiagnosticReport}: Parasitology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
* ^status = #draft

Mapping: vista-to-LabObservationMicrobiologyDiagnosticReportParasitology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyDiagnosticReportParasitology
* conclusion -> "1443: source value from MICROBIOLOGY - PARASITE RPT REMARK > PARASITE RPT REMARK - PARASITE RPT REMARK (#63.05-17 > 63.36-.01)"

Mapping: cdw-to-LabObservationMicrobiologyDiagnosticReportParasitology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyDiagnosticReportParasitology
* conclusion -> "Micro.ParasitologyReports.ParasitologyReportRemark"