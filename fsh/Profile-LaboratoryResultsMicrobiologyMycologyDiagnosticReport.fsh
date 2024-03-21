Profile: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Title: "Laboratory Results: Microbiology Mycology DiagnosticReport"
Description: "This StructureDefinition contains the maps for VistA file MICROBIOLOGY (#63.05) to us-core-diagnosticreport-lab"
* ^status = #draft
* conclusion MS

Mapping: vista-to-LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
* conclusion -> "1444: source value from MICROBIOLOGY - MYCOLOGY RPT REMARK > MYCOLOGY RPT REMARK - MYCOLOGY RPT REMARK (#63.05-21 > 63.38-.01)"

Mapping: cdw-to-LaboratoryResultsMicrobiologyMycologyDiagnosticReport
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: LaboratoryResultsMicrobiologyMycologyDiagnosticReport
* conclusion -> "Micro.MycologyReports.MycologyReportRemark"