Profile: LaboratoryResultsMicrobiologyMycobacteriologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsMicrobiologyMycobacteriologyDiagnosticReport
Title: "Laboratory Results: Microbiology Mycobacteriology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LaboratoryResultsMicrobiologyMycobacteriologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyMycobacteriologyDiagnosticReport
* conclusion -> "1445: source value from MICROBIOLOGY - TB RPT REMARK > TB RPT REMARK - TB RPT REMARK (#63.05-27 > 63.41-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyMycobacteriologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyMycobacteriologyDiagnosticReport
* conclusion -> "Micro.MycobacteriologyReports.MycobacteriologyReportRemark"