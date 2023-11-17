Profile: DiagnosticReportforLabMicrobiologyDiagnosticReportMycobacteriology
Parent: http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Id: DiagnosticReportforLabMicrobiologyDiagnosticReportMycobacteriology
Title: "Diagnostic Report for Lab: Microbiology {DiagnosticReport}: Mycobacteriology"
Description: "This StructureDefinition contains the maps for VistA MICROBIOLOGY (file 63.05) to FHIR DiagnosticReport"
* ^status = #draft

Mapping: vista-to-DiagnosticReportforLabMicrobiologyDiagnosticReportMycobacteriology
Id: vista
Title: "Veterans Health Information Systems Technology and Architecture (VistA)"
Source: DiagnosticReportforLabMicrobiologyDiagnosticReportMycobacteriology
* conclusion -> "1445: source value from MICROBIOLOGY - TB RPT REMARK > TB RPT REMARK - TB RPT REMARK (#63.05-27 > 63.41-.01)"

Mapping: cdw-to-DiagnosticReportforLabMicrobiologyDiagnosticReportMycobacteriology
Id: cdw
Title: "Clinical Data Warehouse (CDW)"
Source: DiagnosticReportforLabMicrobiologyDiagnosticReportMycobacteriology
* conclusion -> "Micro.MycobacteriologyReports.MycobacteriologyReportRemark"