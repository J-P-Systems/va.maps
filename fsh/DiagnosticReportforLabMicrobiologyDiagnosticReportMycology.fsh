Profile: DiagnosticReportforLabMicrobiologyDiagnosticReportMycology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabMicrobiologyDiagnosticReportMycology
Title: "Diagnostic Report for Lab: Microbiology {DiagnosticReport}: Mycology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
* ^status = #draft

Mapping: vista-to-DiagnosticReportforLabMicrobiologyDiagnosticReportMycology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabMicrobiologyDiagnosticReportMycology
* conclusion -> "1444: source value from MICROBIOLOGY - MYCOLOGY RPT REMARK > MYCOLOGY RPT REMARK - MYCOLOGY RPT REMARK (#63.05-21 > 63.38-.01)"

Mapping: cdw-to-DiagnosticReportforLabMicrobiologyDiagnosticReportMycology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabMicrobiologyDiagnosticReportMycology
* conclusion -> "Micro.MycologyReports.MycologyReportRemark"