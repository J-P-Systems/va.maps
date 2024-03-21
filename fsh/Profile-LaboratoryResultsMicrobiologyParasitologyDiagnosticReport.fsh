Profile: LaboratoryResultsMicrobiologyParasitologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsMicrobiologyParasitologyDiagnosticReport
Title: "Laboratory Results: Microbiology Parasitology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LaboratoryResultsMicrobiologyParasitologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyParasitologyDiagnosticReport
* conclusion -> "1443: source value from MICROBIOLOGY - PARASITE RPT REMARK > PARASITE RPT REMARK - PARASITE RPT REMARK (#63.05-17 > 63.36-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyParasitologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyParasitologyDiagnosticReport
* conclusion -> "Micro.ParasitologyReports.ParasitologyReportRemark"