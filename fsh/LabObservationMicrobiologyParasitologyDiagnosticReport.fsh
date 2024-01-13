Profile: LabObservationMicrobiologyParasitologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LabObservationMicrobiologyParasitologyDiagnosticReport
Title: "Lab Observation: Microbiology Parasitology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LabObservationMicrobiologyParasitologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LabObservationMicrobiologyParasitologyDiagnosticReport
* conclusion -> "1443: source value from MICROBIOLOGY - PARASITE RPT REMARK > PARASITE RPT REMARK - PARASITE RPT REMARK (#63.05-17 > 63.36-.01)"

Mapping: cdw-to-LabObservationMicrobiologyParasitologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LabObservationMicrobiologyParasitologyDiagnosticReport
* conclusion -> "Micro.ParasitologyReports.ParasitologyReportRemark"